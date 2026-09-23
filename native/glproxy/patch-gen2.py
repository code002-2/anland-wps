#!/usr/bin/env python3
# patch-gen2.py —— 修正 PTROS 里与头文件形参对不上的表达式（后写的键会覆盖先写的）
# 依据（GLES3/gl3.h 真实声明）：
#   glGetSynciv (sync, pname, count, *length, *values)              → 尺寸参数叫 count
#   glGetInternalformativ (target, internalformat, pname, count, *params)
#   glGetIntegeri_v (target, index, *data) / glGetInteger64i_v 同  → 没有 pname
#   glGetProgramInfoLog (program, bufSize, *length, *infoLog)       → length 也是出参
P = "/data/local/tmp/glproxy-gen.py"
src = open(P, encoding="utf-8").read().replace("\r\n", "\n")

old = '    "glVertexAttribI4iv": {"v": "16"},'
new = ('    "glGetSynciv": {"length": "4", "values": "count"},\n'
       '    "glGetInternalformativ": {"params": "count * 4"},\n'
       '    "glGetIntegeri_v": {"data": "4"},\n'
       '    "glGetInteger64i_v": {"data": "8"},\n'
       '    "glGetProgramInfoLog": {"length": "4", "infoLog": "bufSize"},\n'
       '    "glGetShaderInfoLog": {"length": "4", "infoLog": "bufSize"},\n'
       '    "glGetShaderSource": {"length": "4", "source": "bufSize"},\n'
       '    "glGetTransformFeedbackVarying": {"length": "4", "size": "4", "type": "4", "name": "bufSize"},\n'
       '    "glGetProgramBinary": {"length": "4", "binaryFormat": "4", "binary": "bufSize"},\n'
       '    "glGetUniformIndices": {"uniformNames": "glp_strv_size(uniformCount, uniformNames)",'
       ' "uniformIndices": "uniformCount * 4"},\n'
       '    "glVertexAttribI4iv": {"v": "16"},')
assert old in src, "锚点没找到"
src = src.replace(old, new, 1)
open(P, "w", encoding="utf-8", newline="\n").write(src)
print("patched2:", P)
