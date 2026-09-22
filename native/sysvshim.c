/*
 * sysvshim.c —— 用户态补上 System V 信号量（Android 内核 CONFIG_SYSVIPC=n）
 *
 * 背景：WPS 的账号 SDK / qing IPC 用 semget+semop 做跨进程互斥（"qipc_systemsem_*"），
 *  Android 内核没有 SysV IPC，semget() 返回 ENOSYS → 死循环重试 → 最终 SIGSEGV。
 *
 * 做法：每个"信号量集合"落成 /dev/shm/.sysvshim.<key>.<nsems> 文件并 mmap：
 *      [ header ][ 每个信号量的值 u32 ][ 每个信号量的 futex 字 u32 ]
 *  计数用 futex 等/唤醒；semop 三条规则按内核语义实现。
 *  SEM_UNDO 用 atexit 补回（异常退出无法补，这是与真内核唯一的语义差异）。
 *
 * 编译：gcc -O2 -fPIC -shared -o libsysvshim.so sysvshim.c -lpthread
 * 使用：LD_PRELOAD=/path/libsysvshim.so    调试：SYSVSHIM_TRACE=1
 */
#define _GNU_SOURCE
#include <errno.h>
#include <fcntl.h>
#include <pthread.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

#ifndef __NR_futex
#define __NR_futex 98
#endif
#define FUTEX_WAIT 0
#define FUTEX_WAKE 1

#define IPC_CREAT_V  01000
#define IPC_EXCL_V   02000
#define IPC_NOWAIT_V 04000
#define SEM_UNDO_V   0x1000

#define MAX_SETS 512
#define MAX_SEMS 32

struct t_sem_hdr { uint32_t magic; uint32_t nsems; uint32_t rmid; uint32_t pad; };

struct sem_set {
    int used; int key; int fd; char path[160];
    struct t_sem_hdr *hdr; uint32_t *val; uint32_t *futex; size_t map_len;
};

struct sem_undo { int handle; int semnum; int val; struct sem_undo *next; };
struct shim_sembuf { unsigned short sem_num; short sem_op; short sem_flg; };

static struct sem_set g_sets[MAX_SETS];
static struct sem_undo *g_undo;
static pthread_mutex_t g_lock = PTHREAD_MUTEX_INITIALIZER;
static int g_trace = -1;

static int trace_on(void)
{
    if (g_trace < 0) g_trace = getenv("SYSVSHIM_TRACE") ? 1 : 0;
    return g_trace;
}
#define TR(...) do { if (trace_on()) { fprintf(stderr, "[sysvshim] " __VA_ARGS__); fprintf(stderr, "\n"); } } while (0)

static long sys_futex(uint32_t *uaddr, int op, uint32_t val, const struct timespec *to)
{
    return syscall(__NR_futex, uaddr, op, val, to, NULL, 0);
}

static struct sem_set *find_locked(int h)
{
    if (h < 0 || h >= MAX_SETS || !g_sets[h].used) return NULL;
    return &g_sets[h];
}

static struct sem_set *attach(int key, int nsems, int flags)
{
    char path[160];
    snprintf(path, sizeof path, "/dev/shm/.sysvshim.%d.%d", key, nsems);
    int oflags = O_RDWR;
    if (flags & IPC_CREAT_V) oflags |= O_CREAT;
    if (flags & IPC_EXCL_V)  oflags |= O_EXCL;

    size_t need = sizeof(struct t_sem_hdr) + sizeof(uint32_t) * 2 * MAX_SEMS;
    int fd = open(path, oflags, 0600);
    if (fd < 0) return NULL;

    struct stat st;
    if (fstat(fd, &st) == 0 && st.st_size < (off_t)need)
        if (ftruncate(fd, need) != 0) { close(fd); return NULL; }

    void *m = mmap(NULL, need, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (m == MAP_FAILED) { close(fd); return NULL; }

    struct t_sem_hdr *h = m;
    if (h->magic != 0x53454d31u) {
        h->magic = 0x53454d31u;
        h->nsems = nsems > 0 ? (uint32_t)nsems : 1u;
        h->rmid = 0;
    }
    if (h->rmid) { munmap(m, need); close(fd); errno = EIDRM; return NULL; }

    struct sem_set *s = NULL;
    for (int i = 0; i < MAX_SETS; i++) if (!g_sets[i].used) { s = &g_sets[i]; break; }
    if (!s) { munmap(m, need); close(fd); errno = ENOSPC; return NULL; }

    s->used = 1; s->key = key; s->fd = fd;
    snprintf(s->path, sizeof s->path, "%s", path);
    s->hdr = h; s->map_len = need;
    s->val = (uint32_t *)((char *)m + sizeof(struct t_sem_hdr));
    s->futex = s->val + MAX_SEMS;
    return s;
}

int semget(int key, int nsems, int semflg)
{
    pthread_mutex_lock(&g_lock);
    struct sem_set *s = attach(key, nsems, semflg);
    int handle = s ? (int)(s - g_sets) : -1;
    int err = errno;
    pthread_mutex_unlock(&g_lock);
    if (handle < 0) errno = err;
    TR("semget(key=0x%x, nsems=%d, flg=0x%x) = %d %s", key, nsems, semflg, handle,
       handle < 0 ? strerror(errno) : "");
    return handle;
}

static void undo_record_locked(int handle, int semnum, int delta)
{
    for (struct sem_undo *u = g_undo; u; u = u->next)
        if (u->handle == handle && u->semnum == semnum) { u->val += delta; return; }
    struct sem_undo *u = calloc(1, sizeof *u);
    if (!u) return;
    u->handle = handle; u->semnum = semnum; u->val = delta;
    u->next = g_undo; g_undo = u;
}

static void apply_undo(void)
{
    pthread_mutex_lock(&g_lock);
    for (struct sem_undo *u = g_undo; u; u = u->next) {
        struct sem_set *s = find_locked(u->handle);
        if (!s) continue;
        if (u->val > 0) __atomic_add_fetch(&s->val[u->semnum], (uint32_t)u->val, __ATOMIC_SEQ_CST);
        else if (u->val < 0) {
            uint32_t n = (uint32_t)(-u->val);
            if (__atomic_load_n(&s->val[u->semnum], __ATOMIC_SEQ_CST) >= n)
                __atomic_sub_fetch(&s->val[u->semnum], n, __ATOMIC_SEQ_CST);
        }
        sys_futex(&s->futex[u->semnum], FUTEX_WAKE, 0x7fffffff, NULL);
    }
    pthread_mutex_unlock(&g_lock);
}

static int do_semop(struct sem_set *s, int semnum, int op, int nowait)
{
    for (;;) {
        uint32_t cur = __atomic_load_n(&s->val[semnum], __ATOMIC_SEQ_CST);
        if (op == 0) {
            if (cur == 0) return 0;
            if (nowait) { errno = EAGAIN; return -1; }
        } else if (op > 0) {
            __atomic_add_fetch(&s->val[semnum], (uint32_t)op, __ATOMIC_SEQ_CST);
            sys_futex(&s->futex[semnum], FUTEX_WAKE, 0x7fffffff, NULL);
            return 0;
        } else {
            uint32_t need = (uint32_t)(-op);
            if (cur >= need) {
                if (__atomic_compare_exchange_n(&s->val[semnum], &cur, cur - need, 0,
                                                __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST))
                    return 0;
                continue;
            }
            if (nowait) { errno = EAGAIN; return -1; }
        }
        struct timespec to; to.tv_sec = 0; to.tv_nsec = 20 * 1000 * 1000;
        sys_futex(&s->futex[semnum], FUTEX_WAIT, 0, &to);
    }
}

int semtimedop(int semid, struct shim_sembuf *sops, size_t nsops, const struct timespec *timeout)
{
    (void)timeout;
    pthread_mutex_lock(&g_lock);
    struct sem_set *s = find_locked(semid);
    pthread_mutex_unlock(&g_lock);
    if (!s) { errno = EINVAL; return -1; }
    for (size_t i = 0; i < nsops; i++) {
        int num = sops[i].sem_num;
        if (num < 0 || (uint32_t)num >= s->hdr->nsems) { errno = EFBIG; return -1; }
        int nowait = (sops[i].sem_flg & IPC_NOWAIT_V) != 0;
        if (do_semop(s, num, sops[i].sem_op, nowait) != 0) {
            TR("semop(%d) 第 %zu 项失败: %s", semid, i, strerror(errno));
            return -1;
        }
        if (sops[i].sem_flg & SEM_UNDO_V) {
            pthread_mutex_lock(&g_lock);
            undo_record_locked(semid, num, -sops[i].sem_op);
            pthread_mutex_unlock(&g_lock);
        }
    }
    return 0;
}

int semop(int semid, struct shim_sembuf *sops, size_t nsops)
{
    return semtimedop(semid, sops, nsops, NULL);
}

int semctl(int semid, int semnum, int cmd, ...)
{
    va_list ap; va_start(ap, cmd);
    void *arg = va_arg(ap, void *);
    va_end(ap);

    pthread_mutex_lock(&g_lock);
    struct sem_set *s = find_locked(semid);
    if (!s) { pthread_mutex_unlock(&g_lock); errno = EINVAL; return -1; }

    int ret = 0;
    switch (cmd) {
    case 0:  /* IPC_RMID */
        s->hdr->rmid = 1;
        unlink(s->path);
        munmap(s->hdr, s->map_len);
        if (s->fd >= 0) close(s->fd);
        s->used = 0;
        break;
    case 2:  /* IPC_STAT */
        memset(arg, 0, 64);
        ((uint32_t *)arg)[0] = s->hdr->nsems;
        break;
    case 1:  /* IPC_SET */
        break;
    case 12: /* GETVAL */
        ret = (int)__atomic_load_n(&s->val[semnum], __ATOMIC_SEQ_CST);
        break;
    case 16: /* SETVAL */
        __atomic_store_n(&s->val[semnum], (uint32_t)(intptr_t)arg, __ATOMIC_SEQ_CST);
        sys_futex(&s->futex[semnum], FUTEX_WAKE, 0x7fffffff, NULL);
        break;
    case 13: /* GETALL */
        for (uint32_t i = 0; i < s->hdr->nsems; i++)
            ((unsigned short *)arg)[i] = (unsigned short)s->val[i];
        break;
    case 17: /* SETALL */
        for (uint32_t i = 0; i < s->hdr->nsems; i++) {
            s->val[i] = ((unsigned short *)arg)[i];
            sys_futex(&s->futex[i], FUTEX_WAKE, 0x7fffffff, NULL);
        }
        break;
    case 11: /* GETPID */
        ret = (int)getpid();
        break;
    case 14: case 15:
        ret = 0;
        break;
    default:
        ret = 0;
        break;
    }
    pthread_mutex_unlock(&g_lock);
    return ret;
}

__attribute__((constructor)) static void shim_init(void)
{
    atexit(apply_undo);
    TR("sysvshim 已加载（用户态模拟 SysV 信号量）");
}
