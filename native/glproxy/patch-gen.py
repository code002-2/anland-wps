#!/usr/bin/env python3
# patch-gen.py —— 给 glproxy-gen.py 打补丁（可重复执行，幂等）
#
# 1) PTROS 的键名经常和头文件形参不一致（glGetIntegerv 的表里写 params，头文件是 data），
#    导致一批入口被判成「不知道出参尺寸」而退回桩。这里改成**先按名、再按位置**对号入座。
# 2) eglCreateWindowSurface / eglSwapBuffers / eglQuerySurface / eglDestroySurface
#    改成手工实现（glp_glx11.c）：窗口面在服务端是 Pbuffer，呈现由 XPutImage 完成。
# 3) 补上几个完全没有尺寸表的入口（attrib_list 结尾 EGL_NONE，可安全扫描长度）。
import io, sys

P = "/data/local/tmp/glproxy-gen.py"
src = open(P, encoding="utf-8").read().replace("\r\n", "\n")

# ---- 1) MANUAL_IMPL 追加 4 个手工入口 ----
old = 'MANUAL_IMPL = {"eglQueryString",'
new = 'MANUAL_IMPL = {"eglCreateWindowSurface", "eglSwapBuffers", "eglQuerySurface", "eglDestroySurface", "eglQueryString",'
assert old in src, "MANUAL_IMPL 锚点没找到"
src = src.replace(old, new, 1)

# ---- 2) PTROS 补缺（attrib_list 类）----
old = '    "glVertexAttribI4iv": {"v": "16"},'
new = ('    "eglCreateWindowSurface": {"attrib_list": "glp_attribs_size(attrib_list)"},\n'
       '    "eglCreatePlatformWindowSurface": {"attrib_list": "glp_attribs_size(attrib_list)"},\n'
       '    "eglCreatePlatformPixmapSurface": {"attrib_list": "glp_attribs_size(attrib_list)"},\n'
       '    "eglCreatePbufferFromClientBuffer": {"attrib_list": "glp_attribs_size(attrib_list)"},\n'
       '    "eglCreateImage": {"attrib_list": "glp_attribs_size(attrib_list)"},\n'
       '    "eglCreateSync": {"attrib_list": "glp_attribs_size(attrib_list)"},\n'
       '    "eglGetPlatformDisplay": {"attrib_list": "glp_attribs_size(attrib_list)"},\n'
       '    "glGetActiveUniformsiv": {"uniformIndices": "uniformCount * 4", "params": "uniformCount * 4"},\n'
       '    "glGetSynciv": {"length": "4", "values": "bufSize"},\n'
       '    "glShaderBinary": {"shaders": "count * 4", "binary": "length"},\n'
       '    "glVertexAttribI4iv": {"v": "16"},')
assert old in src, "PTROS 锚点没找到"
src = src.replace(old, new, 1)

# ---- 3) parse()：尺寸按名→位置映射 ----
old = """        tab = PTROS.get(name)
        for p in f["params"]:
            if p["ptr"] and p["const"] and (not tab or p["name"] not in tab):
                f["params"] = []; f["stub"] = True; f["why"] = "insize:" + p["name"]; break
        if f["stub"]:
            out.append(f); continue
        if tab:
            names = {p["name"] for p in f["params"]}
            for pn, ex in tab.items():
                if pn not in names or not ident_ok(ex, names):
                    f["params"] = []; f["stub"] = True; f["why"] = "expr:" + pn + "=" + ex; break
        out.append(f)"""
new = """        tab = PTROS.get(name)
        names = {p["name"] for p in f["params"]}
        if tab:
            for pn, ex in tab.items():
                if not ident_ok(ex, names):
                    f["params"] = []; f["stub"] = True; f["why"] = "expr:" + pn + "=" + ex
                    break
        if f["stub"]:
            out.append(f); continue
        # 尺寸映射：先按形参名取表值；表键名与头文件不一致时（glGetIntegerv 的 data vs params），
        # 用**表值的书写顺序**给剩下的指针形参按出现顺序补位。
        ptrs = [p for p in f["params"] if p["ptr"]]
        psize = {}
        if tab:
            vals = list(tab.values()); used = [False] * len(vals)
            for p in ptrs:
                if p["name"] in tab:
                    psize[p["name"]] = tab[p["name"]]
                    for j, k in enumerate(tab):
                        if k == p["name"] and not used[j]:
                            used[j] = True; break
            for p in ptrs:
                if p["name"] in psize:
                    continue
                for j in range(len(vals)):
                    if not used[j]:
                        psize[p["name"]] = vals[j]; used[j] = True; break
        missing = [p["name"] for p in ptrs if p["name"] not in psize]
        if missing:
            f["params"] = []; f["stub"] = True; f["why"] = "insize:" + ",".join(missing)
            out.append(f); continue
        f["psize"] = psize
        out.append(f)"""
assert old in src, "parse() 锚点没找到"
src = src.replace(old, new, 1)

# ---- 4) gen_sizes 与 blen 改用映射表 ----
old = """def gen_sizes(f):
    tab = PTROS.get(f["name"], {})
    return [tab.get(p["name"], "0") for p in out_params(f)]"""
new = """def gen_sizes(f):
    ps = f.get("psize") or {}
    return [ps.get(p["name"], "0") for p in out_params(f)]"""
assert old in src, "gen_sizes 锚点没找到"
src = src.replace(old, new, 1)

old = '        blen = ("(uint32_t)(%s)" % PTROS[f["name"]][ins[0]["name"]]) if ins else "0"'
new = '        blen = ("(uint32_t)(%s)" % f.get("psize", {}).get(ins[0]["name"], "0")) if ins else "0"'
assert old in src, "blen 锚点没找到"
src = src.replace(old, new, 1)

open(P, "w", encoding="utf-8", newline="\n").write(src)
print("patched:", P)
