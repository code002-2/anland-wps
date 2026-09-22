# 构建步骤

分三步：**准备 rootfs → 编译 native 件 → 打 APK 并签名**。
命令里的 `$R` 指 rootfs 目录（`/data/adb/anland-wps/root`），
`$R0` 指用于「补库」的完整参考 rootfs（本项目用 `/data/adb/anland-chrome/root`）。

---

## 一、准备 rootfs

### 1. 基础系统

Ubuntu/Debian arm64 根文件系统（可从 anland 的 rootfs 复制、去掉 Chrome 相关，约 160 MB）：

```sh
mkdir -p /data/adb/anland-wps/root
cp -a /data/adb/anland-chrome/root-slim/. /data/adb/anland-wps/root/
```

### 2. 安装 WPS Office 11

```sh
cd /data/adb/anland-wps/root
dpkg-deb -R wps-office_11.1.0.11720-fix5_arm64.deb /tmp/wpsdeb
cp -a /tmp/wpsdeb/opt/kingsoft /opt/kingsoft
cp -a /tmp/wpsdeb/usr/share/* usr/share/
ln -sf /opt/kingsoft/wps-office/office6/wps /usr/bin/wps
```

> **为什么是 11.x**：12.1.2（含 Kylin/365 版）的登录页会拉起 `web-app` 子进程，
> 在本环境始终起不来，因此选 11.1.0.11720-fix5。

### 3. 依赖修补（关键）

`scripts/fix-wps11-deps.sh` 会自动反复启动 WPS、从 dlopen 报错里搜集缺失库并从 `$R0` 拷过来。

| 缺的东西 | 现象 | 处理 |
|----------|------|------|
| `librt.so.1` | 启动即报缺库 | 从 `$R0` 拷（含实体） |
| `xkbcomp` + `libxkbfile` | X 键盘映射失败 | 拷入 `/usr/bin`、`/usr/lib` |
| `awk` / `sed` | WPS 内部脚本报错 | 用 busybox 提供 |
| `libnspr4.so` / `libxml2.so.2` | dlopen 失败 | 从 `$R0` 拷 |
| `killall5`（`pidof` 的目标） | `pidof` 报错 | 建软链 |
| `dbus-daemon` | 报无法连接 session bus | 拷入，启动脚本里按需拉起 |
| `zh_CN.UTF-8` locale | 中文界面异常 | `localedef -i zh_CN -f UTF-8 zh_CN.UTF-8` |
| **freetype** | **Qt xcb 插件加载失败** | **用系统 freetype 2.13 换掉 WPS 自带的 2.6**（缺 `FT_Done_MM_Var`） |

### 4. 放入 native 件

```sh
cp libsysvshim.so $R/opt/glproxy/lib/     # SysV IPC shim
cp xtyped         $R/usr/bin/             # 键盘注入器
ls $R/usr/bin/Xwayland $R/usr/bin/anland-miniwm   # 由 anland 提供
```

`LD_PRELOAD=/opt/glproxy/lib/libsysvshim.so` 由 Launcher 写好，无需手工设置。

---

## 二、编译 native 件

见 [`../native/build.sh`](../native/build.sh)。两个件都要在 **arm64 Linux 环境**里编译
（Debian 工具环境，或直接在容器内编译）：

```sh
gcc -O2 -fPIC -shared -o libsysvshim.so sysvshim.c sysvshim_shm.c -lpthread
gcc -O2 -o xtyped xtyped.c -lX11 -lXtst        # 需要 libx11-dev libxtst-dev
```

---

## 三、打 APK

### 0. 先卸掉残留挂载

否则会把宿主的 `/proc` 打进包里（几十万条目）：

```sh
R=/data/adb/anland-wps/root
for m in $R/run/anland $R/dev $R/proc $R/sys; do umount -l $m; done
```

### 1. 打包 rootfs

Android 侧先出 tar：

```sh
tar -C $R -cf /data/local/tmp/wps-rootfs.tar .
```

压缩**必须在 Linux 工具环境**做 —— Android 自带 busybox/toybox 的 `xz` 只能解压：

```sh
xz -T8 -6 -c /data/local/tmp/wps-rootfs.tar > /data/local/tmp/wps-rootfs.tar.xz
xz -t /data/local/tmp/wps-rootfs.tar.xz        # 校验
# 1.67 GB → 437 MB（ratio 0.27），约 6~8 分钟
```

### 2. 组装 APK

Linux 工具环境（需要 `zip` / `apksigner` / `java`）：

```sh
cd /data/local/tmp
SRC=wps-release-src.apk                  # 打过 smali 补丁、未内置 rootfs 的 849 KB 基底
OUT=WPS-Office-ARM64-0.3-release.apk
cp $SRC $OUT
zip -q -d $OUT "META-INF/*"              # 去掉旧签名
mkdir -p assets && ln -sf ../wps-rootfs.tar.xz assets/rootfs.tar.xz
zip -0 -X -q $OUT assets/rootfs.tar.xz   # 存储（已压过，别再 deflate）
apksigner sign --ks anland-ks.jks --ks-key-alias anland \
  --ks-pass pass:anland --key-pass pass:anland \
  --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true $OUT
apksigner verify --print-certs -v $OUT
```

脚本版：[`../scripts/mk-wps-release.sh`](../scripts/mk-wps-release.sh)。

### 3. 改了 app 侧逻辑后重打

```sh
smali assemble -a 29 app/smali -o classes.dex     # 也可 java -jar smali.jar assemble ...
zip -X wps-release-src.apk classes.dex AndroidManifest.xml resources.arsc
zip -q -d wps-release-src.apk assets/rootfs.tar.xz   # 去掉 Chrome 的 166MB 无用资产
```

### 4. 安装与首次运行

```sh
pm install -r /data/local/tmp/WPS-Office-ARM64-0.3-release.apk   # 不能用 /sdcard 路径
am start -n com.anland.wpswrap/com.anland.appwrap.MainActivity
logcat -s appwrap:V | grep -E "解包|rootfs|chroot|mini-wm"
```

---

## 构建相关的坑

| 现象 | 原因 | 处理 |
|------|------|------|
| 打出的 `*.tar.xz` 只有 0 字节 | Android 的 `xz` 是 busybox 版，**不支持压缩**，带 `-6` 直接报错退出 | 压缩放到 Linux 工具环境 |
| `pm install /sdcard/xxx.apk` 失败 | SELinux 不让 system_server 读 fuse 路径 | 先 `cp` 到 `/data/local/tmp` 再装 |
| tar 里出现海量 `/proc/*` 条目 | rootfs 里残留上次运行的 `mount -t proc` 等挂载 | 打包前 `umount -l` 掉 `dev/proc/sys/run/anland` |
| 压缩任务莫名被杀（exit 137） | 前台命令有执行时长上限 | 用后台/守护方式跑，输出重定向到自己的日志 |
| 装完 App 数据目录不存在 | 数据目录被外部删掉、而 Android 的 inode 记账还在，系统不再重建 | 卸载后重新安装 |
