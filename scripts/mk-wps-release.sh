#!/bin/sh
# WPS Office ARM64 发行版 APK 组装（在 Linux 工具环境执行）
set -e
D=/data/local/tmp
SRC=$D/wps-release-src.apk          # 用户已验证过的 849KB 基底（含全部 smali 补丁）
OUT=$D/WPS-Office-ARM64-0.3-release.apk

echo "== 1. 复制基底 =="
rm -f "$OUT"
cp "$SRC" "$OUT"

echo "== 2. 去掉旧签名 =="
zip -q -d "$OUT" "META-INF/*" 2>/dev/null || true

echo "== 3. 内置 rootfs.tar.xz（存储，不二次压缩）=="
mkdir -p "$D/assets"
ln -sf ../wps-rootfs.tar.xz "$D/assets/rootfs.tar.xz"
zip -0 -X -q "$OUT" assets/rootfs.tar.xz

echo "== 4. 签名（v1+v2+v3，同一 keystore）=="
apksigner sign --ks /workspace/anland-ks.jks --ks-key-alias anland \
  --ks-pass pass:anland --key-pass pass:anland \
  --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true "$OUT"

echo "== 5. 校验签名 =="
apksigner verify --print-certs -v "$OUT" | head -12

echo "== 6. 产物 =="
ls -l "$OUT"
unzip -l "$OUT" | tail -8
