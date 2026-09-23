#!/usr/bin/env python3
# 把 eglGetDisplay 也纳入手工实现：gl4es 的 GLX 会把 X11 Display* 当 native display 传进来，
# 服务端（Android）拿到这个指针 → eglGetDisplay 返回 EGL_BAD_PARAMETER → glXCreateContext 失败。
# 统一换掉：任何非默认 display 一律当 EGL_DEFAULT_DISPLAY。
GEN = "/build/glproxy/glproxy-gen.py"
s = open(GEN, encoding="utf-8").read()
if '"eglGetDisplay"' not in s.split("MANUAL_IMPL = ")[1].split("}")[0]:
    old = 'MANUAL_IMPL = {"eglCreateWindowSurface",'
    new = 'MANUAL_IMPL = {"eglGetDisplay", "eglCreateWindowSurface",'
    assert old in s
    s = s.replace(old, new, 1)
    open(GEN, "w", encoding="utf-8", newline="\n").write(s)
    print("生成器：已把 eglGetDisplay 转为手工实现")
else:
    print("生成器：已打过补丁")

SRC = "/build/glproxy/glp_glx11.c"
c = open(SRC).read()
if "X11 Display* 之类的原生 display" not in c:
    add = '''
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
'''
    c = c.rstrip() + "\n" + add
    open(SRC, "w").write(c)
    print("glp_glx11.c：已加 eglGetDisplay 接管")
else:
    print("glp_glx11.c：已打过补丁")
