/*
 * eglprobe.c —— 最小 EGL 探针：看转发链路上 eglGetDisplay / eglInitialize 的真实返回值
 * 编译：gcc -O2 -o eglprobe eglprobe.c -L/opt/glproxy/lib -lEGL -Wl,-rpath,/opt/glproxy/lib
 */
#include <stdio.h>
#include <string.h>
#include <EGL/egl.h>

int main(void) {
    EGLDisplay d = eglGetDisplay(EGL_DEFAULT_DISPLAY);
    printf("eglGetDisplay(EGL_DEFAULT_DISPLAY) = %p\n", (void *)d);
    printf("  eglGetError = 0x%04x\n", eglGetError());

    EGLint maj = -1, min = -2;
    EGLBoolean r = eglInitialize(d, &maj, &min);
    printf("eglInitialize = %d  version=%d.%d\n", (int)r, maj, min);
    printf("  eglGetError = 0x%04x\n", eglGetError());

    const char *s = eglQueryString(d, EGL_VENDOR);
    printf("EGL_VENDOR   = %s\n", s ? s : "(null)");
    s = eglQueryString(d, EGL_VERSION);
    printf("EGL_VERSION  = %s\n", s ? s : "(null)");
    s = eglQueryString(d, EGL_EXTENSIONS);
    printf("EGL_EXTS     = %.150s%s\n", s ? s : "(null)", (s && strlen(s) > 150) ? "..." : "");

    EGLint ncfg = 0;
    EGLint cfg_attr[] = { EGL_SURFACE_TYPE, EGL_PBUFFER_BIT,
                          EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT, EGL_NONE };
    EGLConfig cfg;
    EGLBoolean ok = eglChooseConfig(d, cfg_attr, &cfg, 1, &ncfg);
    printf("eglChooseConfig = %d  configs=%d\n", (int)ok, ncfg);

    printf("EGLPROBE %s\n", (r == EGL_TRUE) ? "PASS" : "FAIL");
    return r == EGL_TRUE ? 0 : 1;
}
