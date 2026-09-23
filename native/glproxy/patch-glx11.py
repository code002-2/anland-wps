#!/usr/bin/env python3
# 修 glp_glx11.c：eglCreatePbufferSurface 不是 MANUAL_IMPL，生成的名字就是它本身，
# 没有 glp_fwd_ 前缀（undefined symbol 会让 gl4es 的 GLES override 失败 → 混用 Mesa → 崩）
P = "/build/glproxy/glp_glx11.c"
s = open(P).read()
n = s.count("glp_fwd_eglCreatePbufferSurface")
s = s.replace("glp_fwd_eglCreatePbufferSurface", "eglCreatePbufferSurface")
open(P, "w").write(s)
print("替换了 %d 处" % n)
