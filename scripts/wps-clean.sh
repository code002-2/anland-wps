#!/system/bin/sh
# wps-clean.sh —— 彻底清掉 WPS 残留（进程 + IPC/lock/套接字）
# 判定方式：扫 /proc，凡 exe 指向 /data/adb/anland-wps/root 的进程一律 kill -9
# （不用 pgrep -x：本机 toybox 的 name 匹配对 chroot 里的进程不可靠）
T=/data/adb/anland-wps/root
echo "--- 1. 停 WPS rootfs 里的一切进程 ---"
n=0
for p in /proc/[0-9]*; do
  ex=$(readlink $p/exe 2>/dev/null)
  case "$ex" in
    /data/adb/anland-wps/*)
      pid=$(basename $p)
      tgid=$(awk '/^Tgid:/{print $2}' $p/status 2>/dev/null)
      [ "$pid" != "$tgid" ] && continue        # 只杀进程，不单独杀线程
      kill -9 "$pid" 2>/dev/null && { echo "  killed pid=$pid $(basename $ex)"; n=$((n+1)); }
      ;;
  esac
done
[ "$n" = "0" ] && echo "  （本来就没有在跑的）"
sleep 1
echo "--- 2. 清 IPC / 锁 / 套接字残留 ---"
rm -f $T/tmp/qipc_systemsem_* $T/tmp/qipc_sharedmemory_* 2>/dev/null
rm -f $T/tmp/browser.* 2>/dev/null
rm -f $T/tmp/*.lock $T/tmp/__#_* $T/tmp/*_cancel_wait $T/tmp/*_remote_handle_ready 2>/dev/null
rm -f $T/tmp/WPS_* $T/tmp/ELiveClient_* $T/tmp/QingBanGong_* $T/tmp/_Thrift_* $T/tmp/_#_* 2>/dev/null
rm -f $T/tmp/kstartpage-localserver $T/tmp/recentfile_server* $T/tmp/runtime-root $T/tmp/wps-root 2>/dev/null
rm -f $T/tmp/.X11-unix/X0 $T/tmp/.X0-lock $T/tmp/appwrap-x.pid $T/tmp/appwrap-wm.pid 2>/dev/null
rm -f $T/root/.local/share/Kingsoft/office6/notify/*/processlock_* 2>/dev/null
rm -f $T/dev/shm/.sysvshim.* 2>/dev/null
echo "--- 3. 停 App（连带中继/GL 转发）---"
am force-stop com.anland.appwrap
sleep 1
echo "--- 4. 复查 ---"
left=0
for p in /proc/[0-9]*; do
  ex=$(readlink $p/exe 2>/dev/null)
  case "$ex" in /data/adb/anland-wps/*) pid=$(basename $p); tgid=$(awk '/^Tgid:/{print $2}' $p/status 2>/dev/null); [ "$pid" = "$tgid" ] && { echo "  仍在: $pid $(basename $ex)"; left=1; }; esac
done
[ "$left" = "0" ] && echo "  干净 ✓"
echo "--- 5. /tmp 剩余 ---"
ls $T/tmp/ 2>/dev/null | head -10
