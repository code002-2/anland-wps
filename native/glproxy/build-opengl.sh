#!/system/bin/sh
# build-opengl.sh —— 扩展 GLES 转发：加桌面 OpenGL（gl4es 作为 libGL.so.1）
# 在 Chrome full rootfs（带 gcc/cmake/python3）里构建，产物装到 /opt/glproxy/lib
set -u
R=/data/adb/anland-chrome/root
B=$R/build/glproxy
G=$R/build/gl4es-src
LOG=/data/local/tmp/opengl-build.log
ENV="PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin HOME=/root"
{
echo "=== 1. 同步源码 ==="
mkdir -p "$B"
cp -f /data/local/tmp/glproxy-gen.py "$B"/
cp -f /data/local/tmp/glproxy/*.c /data/local/tmp/glproxy/*.h "$B"/ 2>/dev/null
ls "$B" | tr '\n' ' '; echo

echo ""
echo "=== 2. 生成转发桩 ==="
chroot "$R" /usr/bin/env -i $ENV /usr/bin/python3 /build/glproxy/glproxy-gen.py /usr/include /build/glproxy 2>&1 | tail -4
echo "--- 仍未实现 ---"; cat "$B"/glp_unsupported.txt 2>/dev/null

echo ""
echo "=== 3. 编译转发壳（含 X11 窗口面 / 呈现）==="
chroot "$R" /usr/bin/env -i $ENV /usr/bin/sh -c \
  'cd /build/glproxy && gcc -O2 -Wall -fPIC -shared -o libGLESv2.so.2 glp_gen_client.c glp_client.c glp_manual.c glp_glx11.c -lpthread -lX11 -Wl,-soname,libGLESv2.so.2 >/tmp/gcc1.log 2>&1; echo rc=$?; tail -12 /tmp/gcc1.log'
cp -f "$B"/libGLESv2.so.2 "$B"/libEGL.so.1 2>/dev/null
ls -l "$B"/libGLESv2.so.2 "$B"/libEGL.so.1 2>&1 | tail -2

echo ""
echo "=== 4. 解 gl4es 源码 ==="
mkdir -p "$G"
tar -C "$G" -xf /data/local/tmp/gl4es-src.tar 2>&1 | tail -2
ls "$G" | head -6 | tr '\n' ' '; echo

echo ""
echo "=== 5. 构建 gl4es → libGL.so.1 ==="
chroot "$R" /usr/bin/env -i $ENV /usr/bin/sh -c \
  'mkdir -p /build/gl4es && cd /build/gl4es && cmake /build/gl4es-src -DCMAKE_BUILD_TYPE=Release \
     -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
     -DDEFAULT_GLES=/opt/glproxy/lib/libGLESv2.so.2 -DDEFAULT_EGL=/opt/glproxy/lib/libEGL.so.1 \
     -DNOEGL=OFF -DNOX11=OFF -DUSE_CCACHE=OFF >/tmp/cmake.log 2>&1; echo cmake_rc=$?; tail -6 /tmp/cmake.log; \
   make -j4 >/tmp/make.log 2>&1; echo make_rc=$?; tail -12 /tmp/make.log'

echo ""
echo "=== 6. 装到 /opt/glproxy/lib ==="
mkdir -p "$R/opt/glproxy/lib"
cp -f "$B"/libGLESv2.so.2 "$B"/libEGL.so.1 "$R/opt/glproxy/lib/" 2>/dev/null
GL4=$(find "$R/build/gl4es" -name "libGL.so.1*" -type f 2>/dev/null | head -1)
if [ -n "$GL4" ]; then cp -f "$GL4" "$R/opt/glproxy/lib/libGL.so.1"; else
  GL4=$(find "$R/build/gl4es" -name "libgl4es.so*" -type f 2>/dev/null | head -1)
  [ -n "$GL4" ] && cp -f "$GL4" "$R/opt/glproxy/lib/libGL.so.1"
fi
chmod 755 "$R/opt/glproxy/lib/"* 2>/dev/null
ls -l "$R/opt/glproxy/lib/"

echo ""
echo "=== 7. 编译 GLX 测试 ==="
chroot "$R" /usr/bin/env -i $ENV /usr/bin/sh -c \
  'cd /build/glproxy && gcc -O2 -Wall -o glx4test glx4test.c -L/opt/glproxy/lib -lGL -lX11 -Wl,-rpath,/opt/glproxy/lib >/tmp/gcc2.log 2>&1; echo rc=$?; tail -10 /tmp/gcc2.log'
ls -l "$B"/glx4test 2>&1 | tail -1
echo "OPENGL-BUILD-DONE"
} > "$LOG" 2>&1
echo "OPENGL-BUILD-FINISHED"
