/*
 * xtyped.c —— 把文本通过 XTEST 注入 X11（用于把 Android 输入法的文字送进 chroot 里的 X 客户端）
 *
 * 用法： xtyped /run/anland/xtype.log   （DISPLAY 从环境变量取）
 * 机制： 轮询日志文件新增内容（每行一段 UTF-8 文本），用"备用 keycode + Unicode keysym 重映射"
 *        的方式逐字符发合成按键事件。这是给任意 Unicode 文本打字的通用做法，
 *        Qt/GTK 客户端都能收到。
 *
 * 编译： gcc -O2 -o xtyped xtyped.c -lX11 -lXtst
 */
#include <X11/Xlib.h>
#include <X11/extensions/XTest.h>
#include <X11/keysym.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>

#define MAXCH 4096

/* 找一个没被占用的 keycode 当"万能键" */
static int find_spare_keycode(Display *d)
{
    int min_kc, max_kc;
    XDisplayKeycodes(d, &min_kc, &max_kc);
    for (int kc = max_kc; kc >= min_kc; kc--) {
        int per;
        KeySym *ks = XGetKeyboardMapping(d, kc, 1, &per);
        if (!ks) continue;
        int used = 0;
        for (int i = 0; i < per; i++) if (ks[i] != NoSymbol) used = 1;
        XFree(ks);
        if (!used) return kc;
    }
    return max_kc;   /* 兜底 */
}

static void type_utf8(Display *d, int spare, const unsigned char *s)
{
    unsigned int cp;
    int i = 0, n = (int)strlen((const char *)s);
    while (i < n) {
        unsigned char c = s[i];
        if (c < 0x80) { cp = c; i += 1; }
        else if ((c & 0xE0) == 0xC0 && i + 1 < n) { cp = ((c & 0x1F) << 6) | (s[i+1] & 0x3F); i += 2; }
        else if ((c & 0xF0) == 0xE0 && i + 2 < n) { cp = ((c & 0x0F) << 12) | ((s[i+1] & 0x3F) << 6) | (s[i+2] & 0x3F); i += 3; }
        else if ((c & 0xF8) == 0xF0 && i + 3 < n) { cp = ((c & 0x07) << 18) | ((s[i+1] & 0x3F) << 12) | ((s[i+2] & 0x3F) << 6) | (s[i+3] & 0x3F); i += 4; }
        else { i += 1; continue; }

        if (cp == '\t') {   /* 特殊：制表符 -> 真实 Tab 键 */
            KeyCode tab = XKeysymToKeycode(d, XK_Tab);
            XTestFakeKeyEvent(d, tab, True, CurrentTime);
            XTestFakeKeyEvent(d, tab, False, CurrentTime);
            XFlush(d);
            usleep(4000);
            continue;
        }
        if (cp < 0x20) continue;

        KeySym ks = (cp < 0x100) ? (KeySym)cp : (KeySym)(0x01000000 | cp);
        KeySym list[1] = { ks };
        /* 把备用键映射成这个字符，按一下，再恢复 */
        XChangeKeyboardMapping(d, spare, 1, list, 1);
        XSync(d, False);
        XTestFakeKeyEvent(d, spare, True, CurrentTime);
        XFlush(d);
        usleep(2000);
        XTestFakeKeyEvent(d, spare, False, CurrentTime);
        XFlush(d);
        XSync(d, False);
        usleep(3000);
        /* 恢复成 NoSymbol，避免干扰 */
        KeySym none[1] = { NoSymbol };
        XChangeKeyboardMapping(d, spare, 1, none, 1);
        XSync(d, False);
    }
}

int main(int argc, char **argv)
{
    if (argc < 2) { fprintf(stderr, "用法: xtyped <日志文件>\n"); return 2; }
    const char *path = argv[1];

    Display *d = XOpenDisplay(NULL);
    if (!d) { fprintf(stderr, "xtyped: 连不上 X\n"); return 3; }
    int spare = find_spare_keycode(d);
    fprintf(stderr, "xtyped: 已就绪 display=%s 备用 keycode=%d 日志=%s\n",
            DisplayString(d), spare, path);

    /* 从文件末尾开始跟随 */
    long off = 0;
    FILE *f = fopen(path, "r");
    if (f) { fseek(f, 0, SEEK_END); off = ftell(f); fclose(f); }

    char buf[MAXCH];
    for (;;) {
        FILE *fp = fopen(path, "r");
        if (fp) {
            if (fseek(fp, 0, SEEK_END) == 0) {
                long end = ftell(fp);
                if (end < off) off = 0;              /* 文件被截断/重建 */
                if (end > off) {
                    fseek(fp, off, SEEK_SET);
                    while (fgets(buf, sizeof buf, fp)) {
                        size_t L = strlen(buf);
                        while (L && (buf[L-1] == '\n' || buf[L-1] == '\r')) buf[--L] = 0;
                        if (L) type_utf8(d, spare, (const unsigned char *)buf);
                    }
                    off = ftell(fp);
                }
            }
            fclose(fp);
        }
        usleep(120 * 1000);
    }
    return 0;
}
