#!/system/bin/sh
# 用启动壳（App 等价路径）跑 WPS 11，并检查窗口是否被 map
T=/data/adb/anland-wps/root

# 1) 先杀干净的 WPS（扫 /proc，避免 pkill -f 自匹配）
for p in /proc/[0-9]*; do
  ex=$(readlink $p/exe 2>/dev/null)
  case "$ex" in
    /data/adb/anland-wps/*wps*)
      pid=$(basename $p); tgid=$(awk '/^Tgid:/{print $2}' $p/status 2>/dev/null)
      [ "$pid" = "$tgid" ] && kill -9 "$pid" 2>/dev/null && echo "  killed $pid $(basename $ex)"
      ;;
  esac
done
sleep 2

# 2) 确保 Xwayland / mini-wm 在跑
if ! pgrep -x Xwayland >/dev/null 2>&1; then
  mkdir -p $T/tmp/.X11-unix $T/run/anland; chmod 1777 $T/tmp/.X11-unix
  grep -q " $T/run/anland " /proc/mounts || mount --bind /data/local/tmp/awl $T/run/anland
  setsid chroot $T /usr/bin/env -i HOME=/root PATH=/usr/bin:/bin XDG_RUNTIME_DIR=/tmp \
     WAYLAND_DISPLAY=/run/anland/wayland-0 /usr/bin/Xwayland :0 -rootless -noreset -ac >/dev/null 2>&1 </dev/null &
  sleep 3
  setsid chroot $T /usr/bin/env -i HOME=/root PATH=/usr/bin:/bin DISPLAY=:0 \
     ANLAND_WM_SOCK=/run/anland/anland-wm.sock /usr/bin/anland-miniwm >/dev/null 2>&1 </dev/null &
  sleep 1
fi
echo "X0: $(ls $T/tmp/.X11-unix/ 2>/dev/null | head -1)  Xwayland: $(pgrep -x Xwayland | head -1)"

# 3) 用启动壳跑
setsid chroot $T /usr/bin/env -i HOME=/root USER=root LOGNAME=root TERM=xterm-256color \
  PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
  XDG_RUNTIME_DIR=/tmp XDG_SESSION_TYPE=x11 DISPLAY=:0 \
  /opt/google/chrome/chrome > /data/local/tmp/wps11b.log 2>&1 </dev/null &
sleep 18

echo "--- 进程 ---"
for p in /proc/[0-9]*; do
  ex=$(readlink $p/exe 2>/dev/null)
  case "$ex" in /data/adb/anland-wps/*) pid=$(basename $p); tgid=$(awk '/^Tgid:/{print $2}' $p/status 2>/dev/null)
    [ "$pid" = "$tgid" ] && echo "  $pid $(tr '\0' ' ' < $p/cmdline 2>/dev/null | cut -c1-44)";; esac
done
echo "--- 窗口 ---"
chroot $T /usr/bin/env -i HOME=/root PATH=/usr/bin:/bin DISPLAY=:0 /usr/bin/xls2 2>&1 | head -8
echo "--- mini-wm 事件 ---"
logcat -d -s appwrap:V 2>/dev/null | grep -E "mini-wm: (mapped|serial)|窗口创建" | tail -3
echo "--- WPS 输出 ---"
grep -viE "sysvshim|^\[shm\]" /data/local/tmp/wps11b.log | head -8
