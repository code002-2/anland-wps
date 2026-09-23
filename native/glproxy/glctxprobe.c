/*
 * glctxprobe.c —— 走到 GL 常量查询（gl4es 初始化里最后会做的一批调用）
 * 目的：隔离「批量 glGetIntegerv 卡住」到底是转发层还是 gl4es 内部
 */
#include <stdio.h>
#include <string.h>
#include <EGL/egl.h>
#include <GLES2/gl2.h>

int main(void) {
    EGLDisplay d = eglGetDisplay(EGL_DEFAULT_DISPLAY);
    EGLint maj = -1, min = -1;
    printf("display=%p init=%d %d.%d\n", (void *)d, (int)eglInitialize(d, &maj, &min), maj, min);

    EGLint cfgattr[] = { EGL_SURFACE_TYPE, EGL_PBUFFER_BIT,
                         EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
                         EGL_RED_SIZE, 8, EGL_GREEN_SIZE, 8, EGL_BLUE_SIZE, 8, EGL_ALPHA_SIZE, 8,
                         EGL_NONE };
    EGLConfig cfg; EGLint n = 0;
    printf("chooseConfig=%d n=%d\n", (int)eglChooseConfig(d, cfgattr, &cfg, 1, &n), n);

    EGLint ctxattr[] = { EGL_CONTEXT_CLIENT_VERSION, 2, EGL_NONE };
    EGLContext ctx = eglCreateContext(d, cfg, EGL_NO_CONTEXT, ctxattr);
    printf("context=%p\n", (void *)ctx);

    EGLint pb[] = { EGL_WIDTH, 64, EGL_HEIGHT, 64, EGL_NONE };
    EGLSurface s = eglCreatePbufferSurface(d, cfg, pb);
    printf("pbuffer=%p\n", (void *)s);
    printf("makeCurrent=%d\n", (int)eglMakeCurrent(d, s, s, ctx));
    fflush(stdout);

    const GLubyte *r = glGetString(GL_RENDERER), *v2 = glGetString(GL_VERSION);
    printf("GL_RENDERER=%s\nGL_VERSION=%s\n", r ? (char *)r : "(null)", v2 ? (char *)v2 : "(null)");
    fflush(stdout);

    /* gl4es 初始化里最后查的那批常量 */
    struct { GLenum p; const char *n; } qs[] = {
        { GL_MAX_TEXTURE_SIZE, "MAX_TEXTURE_SIZE" },
        { GL_MAX_VERTEX_ATTRIBS, "MAX_VERTEX_ATTRIBS" },
        { GL_MAX_TEXTURE_IMAGE_UNITS, "MAX_TEXTURE_IMAGE_UNITS" },
        { GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS, "MAX_COMBINED_TEX_UNITS" },
        { GL_MAX_VARYING_VECTORS, "MAX_VARYING_VECTORS" },
        { GL_MAX_VERTEX_UNIFORM_VECTORS, "MAX_VERTEX_UNIFORM_VECTORS" },
        { GL_MAX_FRAGMENT_UNIFORM_VECTORS, "MAX_FRAGMENT_UNIFORM_VECTORS" },
        { GL_MAX_RENDERBUFFER_SIZE, "MAX_RENDERBUFFER_SIZE" },
    };
    for (unsigned i = 0; i < sizeof qs / sizeof qs[0]; i++) {
        GLint v = -12345;
        glGetIntegerv(qs[i].p, &v);
        printf("  %-28s = %d (err=0x%x)\n", qs[i].n, v, glGetError());
        fflush(stdout);
    }
    printf("GLCTXPROBE PASS\n");
    return 0;
}
