# Anland-WPS —— 在 Android 上跑 PC 版 WPS Office（独立 APK）

把 **Linux arm64 版 WPS Office** 通过 `chroot` + Wayland/Xwayland 跑在 Android 手机上，
并打包成一个**独立 APK**：首次启动自动解包 rootfs、拉起 WPS、托管窗口、桥接输入法、退出时清理。

与 [Anland-chrome](https://github.com/code002-2/Anland-chrome) 同源（同一个 app 壳），
两个 App 可以同时安装、互不干扰（本仓库用 `/data/adb/anland-wps/root`，Chrome 用 `/data/adb/anland-chrome/root`）。

## 效果 / 特性

- 手机屏幕上跑**桌面版 WPS**（文字 / 表格 / 演示 / PDF），支持鼠标触摸操作
- App 内点右下角半透明 **⌨** 按钮即可唤起系统输入法，中文输入直通 WPS 文档
- 支持中文界面（容器内 `LANG=zh_CN.UTF-8`，WPS 语言包 `mui/zh_CN`）
- 首次启动自动解包内置 rootfs（约 1.6 GB → 解包后 1.6 GB，耗时 1.5~2 分钟）

## 环境要求

| 项 | 要求 |
|----|------|
| 设备 | arm64 Android（实测 RedMagic 11S Pro+ / Android 16 / Adreno 840） |
| Root | KernelSU 或 Magisk（App 需要 root 才能 chroot、bind mount） |
| 模块 | **anland**（`anland-awl`）——提供 Wayland 合成器 socket + PulseAudio |
| 内核 | **不需要** SysV IPC（本机内核 `CONFIG_SYSVIPC=n`，由内置 shim 兜住） |

## 安装与使用

1. 安装 `WPS-Office-ARM64-0.3-release.apk`（约 437 MB）
2. 打开 App → 首次启动自动解包 rootfs（进度在界面上）
3. KernelSU 弹窗里**允许 root**
4. 点界面里的「**启动 WPS**」→ 稍等 10~20 秒出现 WPS 主界面
5. 输入文字：先在文档正文**点一下光标**（让 WPS 把焦点交给正文），再点右下角 **⌨** 唤起输入法
6. 退出：点 App 菜单里的「停止」（会清掉容器内所有进程与 IPC 残留）

## 仓库结构

```
app/                    打过补丁的 app 壳（smali，权威构建源）
  smali/com/anland/appwrap/*        配置 / 启动器 / 主界面
  smali/com/anlandnext/awl/*        窗口托管 + 输入法桥（来自 anland-awllib）
  assets/glproxy/                   EGL/GLES 转发库（沿用 app 壳）
  AndroidManifest.xml, apktool.yml, res/, lib/
native/                 自研原生件
  xtyped.c                         X11 键盘注入器（容器内运行）
  sysvshim.c / sysvshim_shm.c      SysV 信号量 + 共享内存用户态实现（LD_PRELOAD）
  tools/keydump.c                  调试用：打印 X 收到的键
scripts/                rootfs 构建 / 打包 / 清理脚本
config/appwrap-wps.xml  App 配置样例
docs/                   架构、构建、补丁清单、排错
```

## 构建

见 [`docs/BUILD.md`](docs/BUILD.md)。三步：准备 rootfs → 编译 native 件 → 打 APK 并签名。
补丁明细见 [`docs/PATCHES.md`](docs/PATCHES.md)，原理见 [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md)。

## 已知限制

- **没有桌面图标**：app 壳本身不带 `res` 图标资源，重做需要 aapt2 重建资源表，暂未做
- **WPS 12.x 不可用**：12.1.2（含 Kylin/365 版）的登录页会拉起 `web-app` 子进程，在本环境起不来；
  因此选 **11.1.0.11720-fix5**
- **输入法必须先点正文**：Xwayland 24.1 没有 `zwp_text_input_v3`/XIM，输入只能靠自研注入器；
  焦点在 WPS 搜索面板时文字会进搜索框
- **APK 很大**（437 MB）：rootfs 压缩后 436 MB，且以「存储」方式放进 APK（不再二次压缩）
- **不要安装 `xz` 压缩包再打包**：Android 自带 busybox/toybox 的 `xz` **只能解压**，
  打 rootfs 包必须在 Linux 工具环境或用容器内的真 `xz`

## 法律说明

- 本仓库**不包含** WPS Office 安装包，只包含运行所需的脚本、补丁与自研原生件；
  使用前请自行从金山办公官方渠道获取 Linux arm64 版本的 WPS Office 并遵守其许可协议。
- `app/smali/` 是对 app 壳（含 anland 的 `anland-awllib` AAR）反编译后打补丁得到的产物，
  上游为 [anland](https://github.com/code002-2/Anland-chrome) 项目。
- 本仓库代码以 **GPL-3.0** 发布，与 Anland-chrome 保持一致。
