# Anland-WPS —— 在 Android 上跑 PC 版 WPS Office

把 **Linux arm64 版 WPS Office** 通过 `chroot` + Wayland/Xwayland 跑在 Android 手机上，
并打包成一个**独立 APK**：首次启动自动解包 rootfs、拉起 WPS、托管窗口、桥接输入法、退出时清理。


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
2. root管理器给予软件权限
3. 打开 App → 首次启动自动解包 rootfs（进度在界面上）
4. 点界面里的「**启动 WPS**」→ 稍等 10~20 秒出现 WPS 主界面
5. 输入文字：先在文档正文**点一下光标**（让 WPS 把焦点交给正文），再点右下角 **⌨** 唤起输入法
6. 退出：点 App 菜单里的「停止」（会清掉容器内所有进程与 IPC 残留）

## 法律说明

- 本仓库**不包含** WPS Office 安装包，只包含运行所需的脚本、补丁与自研原生件；
  使用前请自行从金山办公官方渠道获取 Linux arm64 版本的 WPS Office 并遵守其许可协议。
- 本仓库代码以 **GPL-3.0** 发布，与 Anland-chrome 保持一致。
