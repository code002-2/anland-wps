/* keydump.c —— 开一个 X 窗口接收键盘事件并打印，用来验证 XTEST 注入 */
#include <X11/Xlib.h>
#include <X11/keysym.h>
#include <X11/Xutil.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

static int ignore_err(Display *d, XErrorEvent *e) { (void)d; (void)e; return 0; }

int main(void)
{
    Display *d = XOpenDisplay(NULL);
    if (!d) { fprintf(stderr, "keydump: 连不上 X\n"); return 2; }

    int s = DefaultScreen(d);
    Window w = XCreateSimpleWindow(d, RootWindow(d, s), 0, 0, 300, 200, 1,
                                   BlackPixel(d, s), WhitePixel(d, s));
    XStoreName(d, w, "keydump");
    XSelectInput(d, w, KeyPressMask | FocusChangeMask | StructureNotifyMask);
    XSetErrorHandler(ignore_err);
    XMapWindow(d, w);
    XFlush(d);

    /* 等 MapNotify 再抢焦点（否则 BadMatch） */
    int mapped = 0;
    for (int i = 0; i < 100 && !mapped; i++) {
        XEvent e;
        while (XPending(d)) { XNextEvent(d, &e); if (e.type == MapNotify) mapped = 1; }
        usleep(50000);
    }
    for (int i = 0; i < 20; i++) {
        XSetInputFocus(d, w, RevertToParent, CurrentTime);
        XRaiseWindow(d, w);
        XFlush(d);
        usleep(100000);
        XEvent e;
        while (XPending(d)) XNextEvent(d, &e);
    }
    printf("keydump: 就绪（mapped=%d），等待按键\n", mapped);
    fflush(stdout);

    for (;;) {
        XEvent e;
        XNextEvent(d, &e);
        if (e.type == KeyPress) {
            char buf[32] = {0};
            KeySym ks = NoSymbol;
            int n = XLookupString(&e.xkey, buf, sizeof buf - 1, &ks, NULL);
            char *name = XKeysymToString(ks);
            if (n > 0)
                printf("keydump: 收到 '%s' (keysym=%s 0x%lx)\n", buf, name ? name : "?", (unsigned long)ks);
            else
                printf("keydump: 收到 keycode=%u keysym=%s 0x%lx\n", e.xkey.keycode, name ? name : "?", (unsigned long)ks);
            fflush(stdout);
        }
    }
}
