#!/usr/bin/env python3
# patch-gen3.py —— 最后一批：把手柄类指针当标量 + 补齐 glGetActive* 的多出参尺寸
# （改完后只剩 glGetBufferPointerv / glGetVertexAttribPointerv 两个 void** 入口未实现，见文档）
P = "/data/local/tmp/glproxy-gen.py"
src = open(P, encoding="utf-8").read().replace("\r\n", "\n")

# 手柄不是可解引用的指针：按标量（整数句柄）传
old = 'PTR_AS_SCALAR = {"glVertexAttribPointer": ["pointer"],'
new = ('PTR_AS_SCALAR = {"eglCreatePlatformWindowSurface": ["native_window"],\n'
       '                 "eglCreatePlatformPixmapSurface": ["native_pixmap"],\n'
       '                 "eglGetPlatformDisplay": ["native_display"],\n'
       '                 "glVertexAttribPointer": ["pointer"],')
assert old in src
src = src.replace(old, new, 1)

old = '    "glVertexAttribI4iv": {"v": "16"},'
new = ('    "glGetActiveAttrib": {"length": "4", "size": "4", "type": "4", "name": "bufSize"},\n'
       '    "glGetActiveUniform": {"length": "4", "size": "4", "type": "4", "name": "bufSize"},\n'
       '    "glGetActiveUniformBlockName": {"length": "4", "uniformBlockName": "bufSize"},\n'
       '    "glGetActiveUniformBlockiv": {"params": "4"},\n'
       '    "glGetAttachedShaders": {"count": "4", "shaders": "maxCount * 4"},\n'
       '    "glVertexAttribI4iv": {"v": "16"},')
assert old in src
src = src.replace(old, new, 1)

open(P, "w", encoding="utf-8", newline="\n").write(src)
print("patched3:", P)
