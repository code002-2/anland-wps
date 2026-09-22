#!/bin/sh
# 编译两个 native 件（arm64 Linux 环境；也可在容器内编）
set -e
cd "$(dirname "$0")"

echo "== xtyped（容器内运行，需要 libX11 / libXtst）=="
gcc -O2 -o xtyped xtyped.c -lX11 -lXtst
echo "== libsysvshim.so（LD_PRELOAD 到 WPS）=="
gcc -O2 -fPIC -shared -o libsysvshim.so sysvshim.c sysvshim_shm.c -lpthread
echo "== 调试件 keydump（可选）=="
gcc -O2 -o keydump tools/keydump.c -lX11 || echo "  （跳过：缺 libX11）"

ls -l xtyped libsysvshim.so
cat <<'TIP'

安装到容器：
  cp xtyped          /data/adb/anland-wps/root/usr/bin/
  cp libsysvshim.so  /data/adb/anland-wps/root/opt/glproxy/lib/
TIP
