#!/usr/bin/env python3
# 让 glp_attribs_size 接受 void*：EGL 的 attrib 列表既有 EGLint* 也有 EGLAttrib*（64 位）
P = "/build/glproxy/glp_sizes.h"
s = open(P).read()
if "const void *vlist" in s:
    print("已打过补丁"); raise SystemExit
old = "static inline size_t glp_attribs_size(const EGLint *list) {"
new = ("static inline size_t glp_attribs_size(const void *vlist) {\n"
       "    const EGLint *list = (const EGLint *)vlist;")
assert old in s, "锚点没找到"
s = s.replace(old, new, 1)
open(P, "w").write(s)
print("glp_sizes.h 已改")
