#!/system/bin/sh
# 把 xvkbd + fcitx5 及其依赖搬进 WPS rootfs
# 做法：在完整 rootfs 里装包 → 用时间戳快照找出新增/变更的文件 → 逐个复制过去
R=/data/adb/anland-chrome/root
T=/data/adb/anland-wps/root
MARK=$R/tmp/.ime-marker

echo "=== 1. 在 full root 里装包 ==="
touch $MARK
chroot $R /usr/bin/env -i PATH=/usr/sbin:/usr/bin:/sbin:/bin HOME=/root DEBIAN_FRONTEND=noninteractive \
  /bin/bash -c 'apt-get install -y -qq --no-install-recommends xvkbd fcitx5 fcitx5-chinese-addons fcitx5-frontend-gtk3 2>&1 | tail -3; which xvkbd fcitx5'

echo "=== 2. 找新增/变更的文件 ==="
LIST=/data/local/tmp/ime-files.txt
find $R/usr $R/etc $R/var -xdev -newer $MARK -type f 2>/dev/null | sed "s|^$R||" > $LIST
find $R/usr $R/etc -xdev -newer $MARK -type l 2>/dev/null | sed "s|^$R||" >> $LIST
wc -l $LIST

echo "=== 3. 复制到 WPS rootfs ==="
n=0
while read f; do
  [ -z "$f" ] && continue
  d=$(dirname "$f")
  mkdir -p "$T$d" 2>/dev/null
  if [ -L "$R$f" ]; then
    ln -sf "$(readlink "$R$f")" "$T$f" 2>/dev/null
  else
    cp -a "$R$f" "$T$f" 2>/dev/null
  fi
  n=$((n+1))
done < $LIST
echo "  复制了 $n 个文件"

echo "=== 4. 复查依赖 ==="
chroot $T /usr/bin/env -i PATH=/usr/bin:/bin /bin/bash -c '
for b in /usr/bin/xvkbd /usr/bin/fcitx5; do
  echo -n "$b: 缺 "
  ldd $b 2>/dev/null | grep -c "not found"
done'
echo "=== 5. 体积 ==="
du -sh $T
