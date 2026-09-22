#!/system/bin/sh
# 打 WPS rootfs 的 tar.xz（供 APK assets 使用）
set -x
R=/data/adb/anland-chrome/root
T=/data/adb/anland-wps/root
OUT=/data/local/tmp
mkdir -p $R/mnt/target $R/mnt/out
grep -q " $R/mnt/target " /proc/mounts || mount --bind $T $R/mnt/target
grep -q " $R/mnt/out " /proc/mounts || mount --bind $OUT $R/mnt/out
rm -f $OUT/wps-rootfs.tar.xz
echo "START $(date)"
time chroot $R /usr/bin/env -i PATH=/usr/bin:/bin /bin/bash -c 'cd /mnt/target && tar -cf - --exclude=./dev/\* --exclude=./proc/\* --exclude=./sys/\* --exclude=./tmp/\* --exclude=./run/\* . | xz -T4 -6 -c > /mnt/out/wps-rootfs.tar.xz'
ls -l $OUT/wps-rootfs.tar.xz
umount $R/mnt/target 2>/dev/null
umount $R/mnt/out 2>/dev/null
echo "DONE $(date)"
