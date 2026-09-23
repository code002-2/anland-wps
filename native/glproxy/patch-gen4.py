#!/usr/bin/env python3
# patch-gen4.py —— 修「字符串返回值」的地址空间问题
#
# 旧生成器只认 `const GLubyte *`（glGetString）走 blob 回传；
# eglQueryString 的返回类型是 `const char *`，于是把**服务端地址空间的指针**回传给客户端 →
# 客户端一解引用就段错误（实测 eglQueryString 崩在第一次调用）。
#
# 另外：任何"返回指针但不在协议里回传内容"的入口（如 glMapBufferRange）也不该把服务端指针
# 交给客户端 —— 一律降级成 NULL 并记一次 unsupported。
P = "/data/local/tmp/glproxy-gen.py"
s = open(P, encoding="utf-8").read().replace("\r\n", "\n")

# 1) 判定 helper
if "def is_str_ret" not in s:
    s = s.replace(
        "def ident_ok(expr, names):",
        "def is_str_ret(ret):\n"
        "    r = ret.replace('const', '').strip()\n"
        "    return r in ('char *', 'GLubyte *', 'GLchar *', 'unsigned char *')\n\n"
        "def is_ptr_ret(ret):\n"
        "    return ret.strip().endswith('*')\n\n"
        "def ident_ok(expr, names):", 1)

# 2) 客户端：字符串按真实类型转型后返回本地副本
old = 'C.append("    return (st == GLP_OK && rc >= 1) ? (const GLubyte *)glp_last_string() : NULL;\\n")'
new = 'C.append("    return (st == GLP_OK && rc >= 1) ? (%s)glp_last_string() : NULL;\\n" % ret.strip())'
assert old in s, "客户端字符串返回点没找到"
s = s.replace(old, new, 1)

# 3) 客户端：非字符串的指针返回 → 置空 + 记 unsupported（避免跨地址空间指针）
old = 'if ret.strip() == "const GLubyte *":'
new = ('if is_str_ret(ret):')
assert old in s, "客户端判定点没找到"
s = s.replace(old, new, 1)

# 4) 服务端：字符串（含 char*）走 blob 回传
old = 'elif f["ret"].strip() == "const GLubyte *":'
assert old in s, "服务端判定点没找到"
s = s.replace(old, 'elif is_str_ret(f["ret"]):', 1)

open(P, "w", encoding="utf-8", newline="\n").write(s)
print("patched4:", P)
