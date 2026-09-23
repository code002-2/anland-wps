/*
 * glp_glx11.c —— 给 GLES 转发补上「桌面 OpenGL / GLX 所需的 EGL 窗口面与 X11 呈现」
 *
 * 背景：libGL.so.1 用 gl4es（桌面 GL → GLES2 翻译层），翻译出来的 GLES 调用交给我们的壳
 * 转发到 Android 侧的 Adreno。但 gl4es 的 GLX 走的是 **EGL 窗口面**：
 *     eglCreateWindowSurface(dpy, cfg, X11 Window, attribs)
 * 而转发层只能在服务端建 **Pbuffer** —— 服务端（bionic）根本拿不到容器里的 X11 Window。
 *
 * 于是这里做一层「假窗口面」：
 *     eglCreateWindowSurface(X11 win) → 查窗口几何 → 服务端建同尺寸 Pbuffer
 *     eglSwapBuffers(surf)             → glReadPixels 读回 → XPutImage 画进 X 窗口
 *     eglQuerySurface(WIDTH/HEIGHT)    → 本地回答（省一次往返）
 *     eglDestroySurface(surf)          → 释放映射 + 删服务端 Pbuffer
 * 这样任何 X11/GLX 客户端（Qt、WPS、glxgears、游戏）都能用上真 GPU。
 *
 * 呈现成本：每帧一次 glReadPixels（同步、GPU→CPU）+ 一次 XPutImage。
 * 和容器里纯软件渲染相比，省下的是**渲染**本身的 CPU，读回/上屏这两步省不掉。
 */
#define _GNU_SOURCE
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <unistd.h>

#include <X11/Xlib.h>
#include <X11/Xutil.h>

#include <EGL/egl.h>
#include <GLES2/gl2.h>

/* 生成器为这几个入口生成的转发版（改名 glp_fwd_*），实现在 glp_gen_client.c */
EGLSurface eglCreatePbufferSurface(EGLDisplay dpy, EGLConfig cfg, const EGLint *attribs);
EGLBoolean glp_fwd_eglSwapBuffers(EGLDisplay dpy, EGLSurface surf);
EGLBoolean glp_fwd_eglQuerySurface(EGLDisplay dpy, EGLSurface surf, EGLint attrib, EGLint *val);
EGLBoolean glp_fwd_eglDestroySurface(EGLDisplay dpy, EGLSurface surf);

typedef struct {
    int      used;
    EGLSurface pbuf;   /* 服务端真正的面（也是我们对外的句柄） */
    Window   win;      /* 容器里的 X11 窗口 */
    int      w, h;     /* Pbuffer/窗口尺寸 */
    GC       gc;
} winsurf_t;

#define MAX_WS 64
static winsurf_t g_ws[MAX_WS];
static pthread_mutex_t g_lock = PTHREAD_MUTEX_INITIALIZER;

static Display *g_xdpy = NULL;
static Display *x_display(void) {
    if (!g_xdpy) {
        const char *dn = getenv("GLPROXY_XDISPLAY");
        g_xdpy = XOpenDisplay(dn && *dn ? dn : NULL);
    }
    return g_xdpy;
}

static winsurf_t *ws_find(EGLSurface s) {
    for (int i = 0; i < MAX_WS; i++)
        if (g_ws[i].used && g_ws[i].pbuf == s) return &g_ws[i];
    return NULL;
}

/* --------------------------------------------------------------- 窗口面 */

EGLSurface eglCreateWindowSurface(EGLDisplay dpy, EGLConfig cfg,
                                  EGLNativeWindowType win, const EGLint *attribs) {
    (void)attribs;
    Window w = (Window)(uintptr_t)win;
    Display *xd = x_display();
    XWindowAttributes a;
    int W = 640, H = 480;
    if (!xd) {
        fprintf(stderr, "glproxy-x11: 打不开 X display（DISPLAY=%s），窗口面不可用\n",
                getenv("DISPLAY") ? getenv("DISPLAY") : "(unset)");
        return EGL_NO_SURFACE;
    }
    if (!XGetWindowAttributes(xd, w, &a)) {
        fprintf(stderr, "glproxy-x11: 取不到窗口 0x%lx 的几何\n", (unsigned long)w);
        return EGL_NO_SURFACE;
    }
    W = a.width > 0 ? a.width : 1;
    H = a.height > 0 ? a.height : 1;

    EGLint pb[] = { EGL_WIDTH, W, EGL_HEIGHT, H, EGL_NONE };
    EGLSurface s = eglCreatePbufferSurface(dpy, cfg, pb);
    if (s == EGL_NO_SURFACE) return EGL_NO_SURFACE;

    pthread_mutex_lock(&g_lock);
    winsurf_t *r = NULL;
    for (int i = 0; i < MAX_WS; i++) if (!g_ws[i].used) { r = &g_ws[i]; break; }
    if (r) {
        r->used = 1; r->pbuf = s; r->win = w; r->w = W; r->h = H;
        r->gc = XCreateGC(xd, w, 0, NULL);
    }
    pthread_mutex_unlock(&g_lock);
    if (!r) { glp_fwd_eglDestroySurface(dpy, s); return EGL_NO_SURFACE; }
    if (getenv("GLPROXY_DEBUG"))
        fprintf(stderr, "glproxy-x11: 窗口面 win=0x%lx %dx%d -> pbuf %p\n",
                (unsigned long)w, W, H, (void *)s);
    return s;
}

/* --------------------------------------------------------------- 呈现 */

/* RGBA(自下而上) -> XImage 像素（按服务器字节序），并垂直翻转 */
static void rgba_to_ximage(const unsigned char *src, unsigned char *dst,
                           int w, int h, int byte_order, int bpp) {
    int line = w * (bpp / 8);
    for (int y = 0; y < h; y++) {
        const unsigned char *s = src + (size_t)(h - 1 - y) * w * 4;
        unsigned char *d = dst + (size_t)y * line;
        if (bpp == 32) {
            if (byte_order == MSBFirst) {
                for (int x = 0; x < w; x++, s += 4, d += 4) {
                    d[0] = 0; d[1] = s[0]; d[2] = s[1]; d[3] = s[2];   /* 0RGB */
                }
            } else {
                for (int x = 0; x < w; x++, s += 4, d += 4) {
                    d[0] = s[2]; d[1] = s[1]; d[2] = s[0]; d[3] = 0;   /* BGR0 */
                }
            }
        } else if (bpp == 16) {                                        /* RGB565 */
            for (int x = 0; x < w; x++, s += 4, d += 2) {
                unsigned v = ((s[0] >> 3) << 11) | ((s[1] >> 2) << 5) | (s[2] >> 3);
                d[byte_order == MSBFirst ? 0 : 1] = (unsigned char)(v >> 8);
                d[byte_order == MSBFirst ? 1 : 0] = (unsigned char)(v & 0xff);
            }
        } else {
            memcpy(d, s, (size_t)line);
        }
    }
}

static void winsurf_present(winsurf_t *r) {
    Display *xd = x_display();
    if (!xd) return;

    /* 窗口被改过尺寸 → 让下一次重建 Pbuffer（这次仍按记录的尺寸读回） */
    XWindowAttributes a;
    if (!XGetWindowAttributes(xd, r->win, &a)) return;
    if (a.width != r->w || a.height != r->h) {
        r->w = a.width > 0 ? a.width : 1;
        r->h = a.height > 0 ? a.height : 1;
    }
    int W = r->w, H = r->h;
    size_t npix = (size_t)W * (size_t)H;
    unsigned char *px = malloc(npix * 4);
    if (!px) return;

    glReadPixels(0, 0, W, H, GL_RGBA, GL_UNSIGNED_BYTE, px);   /* 同步，读回 GPU 结果 */

    XImage *img = XCreateImage(xd, a.visual, a.depth, ZPixmap, 0,
                               malloc(npix * 4), W, H, 32, 0);
    if (!img || !img->data) { free(px); if (img) { img->data = NULL; XDestroyImage(img); } return; }
    rgba_to_ximage(px, (unsigned char *)img->data, W, H, img->byte_order, img->bits_per_pixel);
    XPutImage(xd, r->win, r->gc, img, 0, 0, 0, 0, W, H);
    XSync(xd, False);
    free(px);
    img->data = NULL;
    XDestroyImage(img);
}

EGLBoolean eglSwapBuffers(EGLDisplay dpy, EGLSurface surf) {
    pthread_mutex_lock(&g_lock);
    winsurf_t *r = ws_find(surf);
    winsurf_t copy;
    if (r) copy = *r;
    pthread_mutex_unlock(&g_lock);
    if (!r) return glp_fwd_eglSwapBuffers(dpy, surf);
    winsurf_present(&copy);
    return EGL_TRUE;
}

EGLBoolean eglQuerySurface(EGLDisplay dpy, EGLSurface surf, EGLint attrib, EGLint *val) {
    pthread_mutex_lock(&g_lock);
    winsurf_t *r = ws_find(surf);
    int w = r ? r->w : 0, h = r ? r->h : 0;
    pthread_mutex_unlock(&g_lock);
    if (r && val) {
        if (attrib == EGL_WIDTH)  { *val = w; return EGL_TRUE; }
        if (attrib == EGL_HEIGHT) { *val = h; return EGL_TRUE; }
    }
    return glp_fwd_eglQuerySurface(dpy, surf, attrib, val);
}

EGLBoolean eglDestroySurface(EGLDisplay dpy, EGLSurface surf) {
    pthread_mutex_lock(&g_lock);
    winsurf_t *r = ws_find(surf);
    if (r) {
        Display *xd = x_display();
        if (xd && r->gc) XFreeGC(xd, r->gc);
        r->used = 0; r->gc = NULL;
    }
    pthread_mutex_unlock(&g_lock);
    return glp_fwd_eglDestroySurface(dpy, surf);
}

/* ------------------------------------------------------------------ eglGetDisplay
 * gl4es 的 GLX 会把 X11 Display* 当 native display 传进来（eglGetDisplay(x_display)）。
 * 服务端在 Android 上拿这个指针当 display id → EGL_BAD_PARAMETER。
 * 我们的转发本来就只有一个 display，所以统一回落到 EGL_DEFAULT_DISPLAY。
 */
EGLDisplay glp_fwd_eglGetDisplay(EGLNativeDisplayType display_id);

EGLDisplay eglGetDisplay(EGLNativeDisplayType display_id) {
    (void)display_id;
    return glp_fwd_eglGetDisplay(EGL_DEFAULT_DISPLAY);
}
