#!/usr/bin/env python3
# 规避：Android/Adreno 的 libEGL 在 eglTerminate 上会卡住（实测：服务端处理线程挂在里面，
# 客户端等回复一直不返回）。gl4es 初始化失败重试时会调它 —— 卡住就再也起不来了。
# 做法：拦截 GLP_EGLTERMINATE，只回 EGL_TRUE，不真调 eglTerminate（display 交给进程退出回收）。
P = "/data/local/tmp/glproxy/glproxy-server.c"
s = open(P).read()
if "规避：Android 的 eglTerminate" in s:
    print("已打过补丁"); raise SystemExit
anchor = "    /* 生成的全量 GL/EGL 入口 */"
new = """    /* 规避：Android 的 eglTerminate 会卡住服务端处理线程（客户端等回复会挂死）。
     * 直接回 EGL_TRUE，不做真实终止 —— display 随进程退出回收。 */
    if (q->op == GLP_EGLTERMINATE) {
        rets[0] = 1;
        return send_rsp(c, GLP_OK, 1, rets, NULL, 0);
    }
    /* 生成的全量 GL/EGL 入口 */"""
assert anchor in s, "锚点没找到"
s = s.replace(anchor, new, 1)
open(P, "w").write(s)
print("已加 eglTerminate 规避")
