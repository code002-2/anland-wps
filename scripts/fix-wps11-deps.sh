#!/system/bin/sh
# fix-wps11-deps.sh —— 反复跑 WPS 11 主程序，从 dlopen 报错里收集缺失库并补齐
R=/data/adb/anland-chrome/root
T=/data/adb/anland-wps/root
E="HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8 XDG_RUNTIME_DIR=/run/user/0 DISPLAY=:0 LD_PRELOAD=/opt/glproxy/lib/libsysvshim.so"
LOG=/data/local/tmp/wps11.log

for round in 1 2 3 4 5 6 7 8; do
  echo "===== 第 $round 轮 ====="
  timeout 8 chroot $T /usr/bin/env -i $E /opt/kingsoft/wps-office/office6/wps > $LOG 2>&1
  MISS=$(grep -oE "lib[a-zA-Z0-9_.+-]*\.so(\.[0-9.]+)?: cannot open shared object file" $LOG | sed 's/: cannot open.*//' | sort -u)
  if [ -z "$MISS" ]; then echo "  没有缺失库了"; break; fi
  echo "  缺失: $(echo $MISS | tr '\n' ' ')"
  for lib in $MISS; do
    src=""
    for d in usr/lib/aarch64-linux-gnu lib/aarch64-linux-gnu; do
      [ -e "$R/$d/$lib" ] && src="$R/$d/$lib"
    done
    if [ -n "$src" ]; then
      for f in $(dirname "$src")/$lib*; do cp -a "$f" "$T/usr/lib/aarch64-linux-gnu/" 2>/dev/null; done
      echo "    补 $lib"
    else
      echo "    ✗ full root 也没有 $lib"
    fi
  done
done
chroot $T /usr/bin/env -i PATH=/usr/sbin:/usr/bin:/sbin:/bin /usr/sbin/ldconfig 2>/dev/null
echo "===== 最终报错检查 ====="
timeout 10 chroot $T /usr/bin/env -i $E /opt/kingsoft/wps-office/office6/wps > $LOG 2>&1
grep -iE "cannot open shared object|error while loading" $LOG | head -8
echo "(空=所有库都齐了)"
