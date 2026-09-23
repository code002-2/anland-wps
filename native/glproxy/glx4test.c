/*
 * glx4test.c —— 桌面 OpenGL（GLX）端到端测试
 *
 * 走的链路：gl4es(libGL.so.1) → 我们的 libGLESv2/libEGL 转发壳 → Unix socket
 *           → Android 侧 glproxy-server → 真 Adreno GLES
 * 呈现：eglSwapBuffers 里的 glReadPixels → XPutImage（glp_glx11.c）
 *
 * 验证三件事：
 *   1. glGetString 返回的是手机 GPU 的真实信息（不是 Mesa/SwiftShader）
 *   2. **立即模式**（glBegin/glEnd）+ 固定管线（glMatrixMode/glRotate）能出画面
 *      —— 桌面 OpenGL 独有，GLES2 根本没有这些入口，证明确实经过了 gl4es 翻译
 *   3. XPutImage 之后窗口里真的有非背景像素（呈现链路通）
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <GL/glx.h>
#include <GL/gl.h>

static int g_frames = 6;

static void draw(int i) {
    glViewport(0, 0, 400, 300);
    glClearColor(0.08f, 0.08f, 0.16f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity(); glRotatef(i * 25.0f, 0, 0, 1);

    glBegin(GL_TRIANGLES);                       /* ← 桌面 GL 独有的立即模式 */
        glColor3f(1, 0, 0); glVertex2f(-0.6f, -0.6f);
        glColor3f(0, 1, 0); glVertex2f( 0.6f, -0.6f);
        glColor3f(0, 0, 1); glVertex2f( 0.0f,  0.6f);
    glEnd();
    glFinish();
}

int main(void) {
    Display *dpy = XOpenDisplay(NULL);
    if (!dpy) { fprintf(stderr, "打不开 X display\n"); return 2; }
    int scr = DefaultScreen(dpy);
    Window root = RootWindow(dpy, scr);

    int attr[] = { GLX_RGBA, GLX_DOUBLEBUFFER,
                   GLX_RED_SIZE, 8, GLX_GREEN_SIZE, 8, GLX_BLUE_SIZE, 8, None };
    XVisualInfo *vi = glXChooseVisual(dpy, scr, attr);
    if (!vi) { fprintf(stderr, "glXChooseVisual 失败\n"); return 3; }
    printf("visual: depth=%d class=%d\n", vi->depth, vi->class);

    Colormap cmap = XCreateColormap(dpy, root, vi->visual, AllocNone);
    XSetWindowAttributes swa; memset(&swa, 0, sizeof swa);
    swa.colormap = cmap; swa.event_mask = ExposureMask | KeyPressMask;
    Window win = XCreateWindow(dpy, root, 0, 0, 400, 300, 0, vi->depth, InputOutput,
                               vi->visual, CWColormap | CWEventMask, &swa);
    XMapWindow(dpy, win);
    XSync(dpy, False);

    GLXContext ctx = glXCreateContext(dpy, vi, NULL, True);
    if (!ctx) { fprintf(stderr, "glXCreateContext 失败\n"); return 4; }
    if (!glXMakeCurrent(dpy, win, ctx)) { fprintf(stderr, "glXMakeCurrent 失败\n"); return 5; }

    const GLubyte *v = glGetString(GL_VENDOR), *r = glGetString(GL_RENDERER),
                  *ver = glGetString(GL_VERSION), *glsl = glGetString(GL_SHADING_LANGUAGE_VERSION);
    printf("GL_VENDOR   = %s\n", v ? (char *)v : "(null)");
    printf("GL_RENDERER = %s\n", r ? (char *)r : "(null)");
    printf("GL_VERSION  = %s\n", ver ? (char *)ver : "(null)");
    printf("GLSL        = %s\n", glsl ? (char *)glsl : "(null)");
    if (!v || !strstr((char *)r, "Adreno")) {
        printf("!! 渲染器不是 Adreno（转发没走到手机 GPU）\n");
    }

    for (int i = 0; i < g_frames; i++) {
        draw(i);
        glXSwapBuffers(dpy, win);
        XSync(dpy, False);
        usleep(30 * 1000);
    }

    /* 呈现验证：从 X 窗口读回，找非背景像素 */
    XImage *img = XGetImage(dpy, win, 0, 0, 400, 300, AllPlanes, ZPixmap);
    int painted = 0;
    if (img) {
        for (int y = 0; y < 300 && !painted; y += 3)
            for (int x = 0; x < 400; x += 3) {
                unsigned long p = XGetPixel(img, x, y);
                unsigned b = p & 0xff, g = (p >> 8) & 0xff, rr = (p >> 16) & 0xff;
                if (rr > 40 || g > 40 || b > 60) { painted = 1; break; }   /* 背景≈(20,20,41) */
            }
        XDestroyImage(img);
    }
    printf("窗口里找到非背景像素：%s\n", painted ? "是 ✓（呈现链路通）" : "否 ✗");
    printf("GLX4TEST %s\n", painted ? "PASS" : "FAIL");

    glXMakeCurrent(dpy, None, NULL);
    glXDestroyContext(dpy, ctx);
    XDestroyWindow(dpy, win);
    XCloseDisplay(dpy);
    return painted ? 0 : 1;
}
