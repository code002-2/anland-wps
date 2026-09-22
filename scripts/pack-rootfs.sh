#!/system/bin/sh
# 发行版打包第一步：清理 WPS rootfs + 压成 tar.xz
T=/data/adb/anland-wps/root
OUT=/data/local/tmp
set -x

# 1) 停掉 chroot 里的一切（避免文件被占用）
for p in /proc/[0-9]*; do
  ex=$(readlink $p/exe 2>/dev/null)
  case "$ex" in
    /data/adb/anland-wps/*)
      pid=$(basename $p); tgid=$(awk '/^Tgid:/{print $2}' $p/status 2>/dev/null)
      [ "$pid" = "$tgid" ] && kill -9 "$pid" 2>/dev/null
      ;;
  esac
done
am force-stop com.anland.wpswrap 2>/dev/null
sleep 2

# 2) 删调试工具
rm -f $T/usr/bin/gdb $T/usr/bin/strace $T/usr/bin/keydump $T/usr/bin/xls $T/usr/bin/xls2 $T/usr/bin/xtest 2>/dev/null

# 3) 清运行时残留
rm -rf $T/tmp/* $T/run/* 2>/dev/null
mkdir -p $T/tmp $T/run $T/dev/shm
chmod 1777 $T/tmp $T/dev/shm

# 4) 清用户数据（首启干净）
rm -rf $T/root/.config/Kingsoft $T/root/.local/share/Kingsoft $T/root/.cache/* $T/root/Documents 2>/dev/null
rm -rf $T/var/cache/apt/* $T/var/lib/apt/lists/* $T/var/log/* 2>/dev/null

# 5) 用不到的调试/构建残留
rm -rf $T/opt/google 2>/dev/null
rm -f $T/usr/bin/dbus-monitor 2>/dev/null

# 6) 确保标记文件在
touch $T/.appwrap-ok

echo "=== 清理后体积 ==="
du -sh $T 2>/dev/null
echo "=== 关键文件检查 ==="
ls -l $T/.appwrap-ok $T/usr/bin/wps $T/usr/bin/xtyped $T/usr/bin/Xwayland $T/usr/bin/anland-miniwm 2>&1 | head -6

# 7) 压缩
rm -f $OUT/wps-rootfs.tar.xz
echo "=== 开始 tar+xz（-T2 -6，约几分钟）==="
cd $T && tar -cf - \
  --exclude=./dev/\* --exclude=./proc/\* --exclude=./sys/\* \
  --exclude=./tmp/\* --exclude=./run/\* . 2>/dev/null | xz -T2 -6 -c > $OUT/wps-rootfs.tar.xz
ls -l $OUT/wps-rootfs.tar.xz
echo "=== 校验 ==="
xz -t $OUT/wps-rootfs.tar.xz && echo "xz 完整性 OK"
echo "PACK-DONE"
