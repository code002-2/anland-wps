#!/system/bin/sh
# test-opengl.sh —— 桌面 OpenGL 端到端测试：glproxy-server(真 Adreno) + Xvfb + glx4test
set -u
R=/data/adb/anland-chrome/root
RT=/data/local/tmp/awl
B=$R/build/glproxy
LOG=/data/local/tmp/opengl-test.log
ENV="PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin HOME=/root"
{
echo "=== 1. 起 glproxy-server（Android 侧，真 GPU）==="
# 杀旧实例：扫 /proc/exe，避免 toybox pkill 命令行自匹配
for p in /proc/[0-9]*; do
  ex=$(readlink "$p/exe" 2>/dev/null) || continue
  case "$ex" in */glproxy-server) kill -9 "${p#/proc/}" 2>/dev/null;; esac
done
sleep 1
mkdir -p "$RT"; rm -f "$RT/glproxy.sock"
setsid /data/local/tmp/glproxy/glproxy-server "$RT/glproxy.sock" \
  > /data/local/tmp/glproxy.log 2>&1 < /dev/null &
sleep 2
echo "  server pid=$(/system/bin/pidof glproxy-server 2>/dev/null || echo 无)"

echo ""
echo "=== 2. 挂 socket 到容器 /run/anland ==="
mkdir -p "$R/run/anland"
grep -q " $R/run/anland " /proc/mounts || mount --bind "$RT" "$R/run/anland"
ls -l "$R/run/anland/glproxy.sock" 2>&1 | tail -1

echo ""
echo "=== 3. 起 Xvfb :9（无头 X，用来测 GLX+呈现，不打扰现有会话）==="
for p in /proc/[0-9]*; do
  ex=$(readlink "$p/exe" 2>/dev/null) || continue
  case "$ex" in */Xvfb) kill -9 "${p#/proc/}" 2>/dev/null;; esac
done
sleep 1
rm -f "$R/tmp/.X9-lock" "$R/tmp/.X11-unix/X9"
mkdir -p "$R/tmp/.X11-unix"; chmod 1777 "$R/tmp/.X11-unix"
setsid chroot "$R" /usr/bin/env -i $ENV DISPLAY=:9 \
  /usr/bin/Xvfb :9 -screen 0 800x600x24 >/data/local/tmp/xvfb.log 2>&1 < /dev/null &
sleep 3
echo "  Xvfb pid=$(/system/bin/pidof Xvfb 2>/dev/null || echo 无)"

echo ""
echo "=== 4. 跑 glx4test（gl4es → 转发壳 → 手机 Adreno）==="
chroot "$R" /usr/bin/env -i $ENV DISPLAY=:9 \
  GLPROXY_SOCK=/run/anland/glproxy.sock GLPROXY_DEBUG=${GLPROXY_DEBUG:-} \
  LD_LIBRARY_PATH=/opt/glproxy/lib LIBGL_ALWAYS_SOFTWARE=0 \
  /build/glproxy/glx4test 2>&1 | tail -30

echo ""
echo "=== 5. 服务端日志尾部 ==="
tail -12 /data/local/tmp/glproxy.log 2>/dev/null
echo "OPENGL-TEST-DONE"
} > "$LOG" 2>&1
echo "OPENGL-TEST-FINISHED"
