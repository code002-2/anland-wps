#!/usr/bin/env python3
# 给 glp_client.c 加发送侧调试日志（GLPROXY_DEBUG=1 时打印）
P = "/build/glproxy/glp_client.c"
s = open(P).read()
if "SEND op=" in s:
    print("已打过补丁"); raise SystemExit
old = "    if (wfull(g_fd, &q, sizeof q) != 0 || (blen && wfull(g_fd, bin, blen) != 0)) {"
new = ("    if (getenv(\"GLPROXY_DEBUG\"))\n"
       "        fprintf(stderr, \"glproxy: SEND op=0x%x argc=%u blen=%u len=%u\\n\", op, argc, blen, q.len);\n"
       + old)
assert old in s, "锚点没找到"
s = s.replace(old, new, 1)

old2 = """    struct glp_rsp r;
    if (rfull(g_fd, &r, sizeof r) != 0) { g_fd = -1; pthread_mutex_unlock(&g_lock); return -1; }"""
new2 = ("""    if (getenv("GLPROXY_DEBUG")) fprintf(stderr, "glproxy: 已发出，等回复…\\n");
""" + old2)
assert old2 in s, "锚点2没找到"
s = s.replace(old2, new2, 1)
open(P, "w").write(s)
print("已加调试日志")
