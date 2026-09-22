/*
 * sysvshim_shm.c —— System V 共享内存的用户态实现（Android 内核 CONFIG_SYSVIPC=n）
 *
 * 背景：WPS 启动时用 shmget(IPC_PRIVATE, 1, IPC_CREAT|0600) 探测 SysV 共享内存；
 * 本机内核没编 CONFIG_SYSVIPC → ENOSYS → WPS 后续拿到 NULL 指针 → 定时器一激活就 SIGSEGV。
 *
 * 实现要点（踩过的坑都标出来了）：
 *   1. IPC_STAT 必须认真填 struct shmid_ds（尤其 shm_segsz / shm_nattch）——
 *      WPS 会读这些字段；早期版本只按 sizeof(size_t) 偏移写 size，导致它读到垃圾。
 *   2. shm_nattch 必须随 shmat/shmdt 增减：WPS 用"nattch 是否为 1"判断自己是不是唯一实例，
 *      恒为 0 会让它误判 → 冷启动路径直接段错误。
 *   3. IPC_RMID 是"标记删除"：名字立刻消失（新的 shmget 找不到），但已有映射继续有效，
 *      直到最后一个 attacher shmdt —— 早期版本在这里直接 munmap，调用方指针立刻失效。
 *   4. 已存在的段必须按文件真实大小映射（WPS 会用 size=0 + 非 CREAT 打开已有段）。
 *
 * 调试：SYSVSHIM_TRACE=1
 */
#define _GNU_SOURCE
#include <errno.h>
#include <fcntl.h>
#include <pthread.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ipc.h>
#include <sys/mman.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

#define MAX_SEGS 128
#define PAGE 4096

struct shm_seg {
    int used;
    int key;
    int fd;
    char path[160];
    size_t size;
    void *addr;
    int rmid;
    int nattch;
    int cpid;
    int lpid;
    time_t atime, dtime, ctime;
};

static struct shm_seg g_segs[MAX_SEGS];
static pthread_mutex_t g_lock = PTHREAD_MUTEX_INITIALIZER;
static unsigned g_counter;
static int g_trace = -1;

static int trace_on(void)
{
    if (g_trace < 0) g_trace = getenv("SYSVSHIM_TRACE") ? 1 : 0;
    return g_trace;
}
#define TR(...) do { if (trace_on()) { fprintf(stderr, "[shm] " __VA_ARGS__); fprintf(stderr, "\n"); } } while (0)

static struct shm_seg *find_locked(int id)
{
    if (id < 0 || id >= MAX_SEGS || !g_segs[id].used) return NULL;
    return &g_segs[id];
}

int shmget(key_t key, size_t size, int shmflg)
{
    pthread_mutex_lock(&g_lock);
    char path[160];
    if (key == IPC_PRIVATE)
        snprintf(path, sizeof path, "/dev/shm/.sysvshm.p%d.%u", (int)getpid(), g_counter++);
    else
        snprintf(path, sizeof path, "/dev/shm/.sysvshm.k%d", (int)key);

    int oflags = O_RDWR;
    if (shmflg & IPC_CREAT) oflags |= O_CREAT;
    if (shmflg & IPC_EXCL)  oflags |= O_EXCL;

    int fd = open(path, oflags, 0600);
    if (fd < 0) { int e = errno; pthread_mutex_unlock(&g_lock); errno = e;
                  TR("shmget(key=0x%x) 失败: %s", (int)key, strerror(errno)); return -1; }

    struct stat st;
    if (fstat(fd, &st) != 0) { close(fd); pthread_mutex_unlock(&g_lock); return -1; }

    size_t need;
    int created = 0;
    if (st.st_size > 0) {
        need = (size_t)st.st_size;              /* 已存在的段：按真实大小 */
    } else {
        need = size > 0 ? size : 1;
        if (need < (size_t)PAGE) need = PAGE;   /* mmap 至少要一页 */
        if (ftruncate(fd, (off_t)need) != 0) { close(fd); pthread_mutex_unlock(&g_lock); return -1; }
        created = 1;
    }

    /* 复用同一 key 已登记的槽位（同进程内多次 shmget 同一 key） */
    struct shm_seg *s = NULL;
    if (key != IPC_PRIVATE) {
        for (int i = 0; i < MAX_SEGS; i++)
            if (g_segs[i].used && g_segs[i].key == (int)key && !g_segs[i].rmid) { close(fd); s = &g_segs[i]; break; }
        if (s) {
            int id = (int)(s - g_segs);
            pthread_mutex_unlock(&g_lock);
            TR("shmget(key=0x%x) 复用 id=%d size=%zu", (int)key, id, s->size);
            return id;
        }
    }
    for (int i = 0; i < MAX_SEGS && !s; i++) if (!g_segs[i].used) s = &g_segs[i];
    if (!s) { close(fd); pthread_mutex_unlock(&g_lock); errno = ENOSPC; return -1; }

    memset(s, 0, sizeof *s);
    s->used = 1; s->key = (int)key; s->fd = fd; s->size = need;
    s->cpid = (int)getpid(); s->ctime = time(NULL);
    snprintf(s->path, sizeof s->path, "%s", path);
    int id = (int)(s - g_segs);
    pthread_mutex_unlock(&g_lock);
    TR("shmget(key=0x%x, size=%zu, flg=0x%x) = %d%s", (int)key, size, shmflg, id, created ? " (新建)" : "");
    return id;
}

void *shmat(int shmid, const void *shmaddr, int shmflg)
{
    (void)shmaddr;
    pthread_mutex_lock(&g_lock);
    struct shm_seg *s = find_locked(shmid);
    if (!s) { pthread_mutex_unlock(&g_lock); errno = EINVAL; return (void *)-1; }

    int prot = PROT_READ | PROT_WRITE;
    if (shmflg & SHM_RDONLY) prot = PROT_READ;
    void *want = NULL;
    if ((shmflg & SHM_RND) && shmaddr) {
        uintptr_t a = (uintptr_t)shmaddr & ~(uintptr_t)(PAGE - 1);
        want = (void *)a;
    }
    void *p = mmap(want, s->size, prot, MAP_SHARED, s->fd, 0);
    if (p != MAP_FAILED) {
        s->addr = p;
        s->nattch++;                    /* 关键：nattch 必须维护 */
        s->lpid = (int)getpid();
        s->atime = time(NULL);
    }
    pthread_mutex_unlock(&g_lock);
    TR("shmat(%d) = %p (nattch=%d)", shmid, p, s->nattch);
    return p == MAP_FAILED ? (void *)-1 : p;
}

int shmdt(const void *shmaddr)
{
    pthread_mutex_lock(&g_lock);
    for (int i = 0; i < MAX_SEGS; i++) {
        if (g_segs[i].used && g_segs[i].addr == shmaddr) {
            munmap(g_segs[i].addr, g_segs[i].size);
            g_segs[i].addr = NULL;
            if (g_segs[i].nattch > 0) g_segs[i].nattch--;
            g_segs[i].dtime = time(NULL);
            /* 已标记删除且没人再挂着 → 回收 */
            if (g_segs[i].rmid && g_segs[i].nattch == 0) {
                if (g_segs[i].fd >= 0) close(g_segs[i].fd);
                g_segs[i].used = 0;
            }
            pthread_mutex_unlock(&g_lock);
            return 0;
        }
    }
    pthread_mutex_unlock(&g_lock);
    errno = EINVAL;
    return -1;
}

static void fill_stat(struct shm_seg *s, struct shmid_ds *ds)
{
    memset(ds, 0, sizeof *ds);
    ds->shm_perm.__key = s->key;
    ds->shm_perm.uid = getuid();
    ds->shm_perm.gid = getgid();
    ds->shm_perm.cuid = getuid();
    ds->shm_perm.cgid = getgid();
    ds->shm_perm.mode = 0600;
    ds->shm_segsz = s->size;
    ds->shm_atime = s->atime;
    ds->shm_dtime = s->dtime;
    ds->shm_ctime = s->ctime;
    ds->shm_cpid = s->cpid;
    ds->shm_lpid = s->lpid;
    ds->shm_nattch = s->nattch;
}

int shmctl(int shmid, int cmd, struct shmid_ds *buf)
{
    pthread_mutex_lock(&g_lock);
    struct shm_seg *s = find_locked(shmid);
    if (!s) { pthread_mutex_unlock(&g_lock); errno = EINVAL; return -1; }
    int ret = 0;
    switch (cmd) {
    case IPC_RMID:
        /* 标记删除：名字消失，已有映射继续有效直到 shmdt */
        if (!s->rmid) { s->rmid = 1; unlink(s->path); }
        if (s->nattch == 0) { if (s->fd >= 0) close(s->fd); s->used = 0; }
        break;
    case IPC_STAT:
        if (buf) fill_stat(s, buf);
        break;
    case IPC_SET:
        break;
    case SHM_LOCK:
    case SHM_UNLOCK:
        break;
    case IPC_INFO:
    case SHM_INFO:
        if (buf) memset(buf, 0, sizeof *buf);
        break;
    default:
        ret = 0;
        break;
    }
    int natt = s->nattch;
    pthread_mutex_unlock(&g_lock);
    TR("shmctl(%d, cmd=%d) nattch=%d", shmid, cmd, natt);
    return ret;
}
