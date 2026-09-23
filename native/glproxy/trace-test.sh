#!/system/bin/sh
# 跟踪一次 glx4test：服务端开 GLP_TRACE，客户端开 GLPROXY_DEBUG
R=/data/adb/anland-chrome/root
LOG=/data/local/tmp/opengl-trace.log
{
for p in /proc/[0-9]*; do ex=$(readlink "$p/exe" 2>/dev/null) || continue; case "$ex" in *glproxy-server*) kill -9 "${p#/proc/}" 2>/dev/null;; esac; done
sleep 1; rm -f /data/local/tmp/awl/glproxy.sock
GLP_TRACE=1 setsid /data/local/tmp/glproxy/glproxy-server /data/local/tmp/awl/glproxy.sock >/data/local/tmp/glproxy.log 2>&1 </dev/null &
sleep 2
logcat -c 2>/dev/null
echo "===== 客户端（glx4test）====="
chroot "$R" /usr/bin/env -i PATH=/usr/bin:/bin HOME=/root DISPLAY=:9 \
  GLPROXY_SOCK=/run/anland/glproxy.sock GLPROXY_DEBUG=1 \
  timeout 25 /build/glproxy/glx4test 2>&1 | grep -vE "^glproxy: SEND|^glproxy: 已发出" | head -30
echo ""
echo "===== 服务端 TRACE（最后 20 条）====="
logcat -d -s glproxy:V 2>/dev/null | grep TRACE | tail -20
echo ""
echo "===== 服务端错误 ====="
logcat -d -s glproxy:V 2>/dev/null | grep -vE "TRACE|客户端" | tail -10
} > "$LOG" 2>&1
echo TRACE-DONE
