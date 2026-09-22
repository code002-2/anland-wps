# 相对 Anland-chrome app 壳的改动清单

基准是 Anland-chrome v0.3 的 APK（`com.anland.appwrap`）。
完整 diff 见 [`wps-app.patch`](wps-app.patch)（582 行，7 个文件）。
二进制层面还改了 `AndroidManifest.xml` 与 `resources.arsc`（见文末）。

## 1. `com/anland/appwrap/AppCfg.smali` —— 默认配置

| 字段 | 原值 | 新值 |
|------|------|------|
| `name` | `chrome` | `wps` |
| `rootDir` | `/data/adb/anland-chrome/root` | `/data/adb/anland-wps/root` |
| `display` | （继承） | `0`（X11 后端，WPS 是 X11 客户端） |
| `chromeArgs` / `url` | Chrome 一堆参数 / `https://www.bing.com` | 全空 |
| `DEFAULT_CHROME_ARGS` / `SMOOTH` / `STOCK` | Chrome 调优参数串 | 全空 |

> `mode` 保持 `3`（chroot），`autoAttach=true`，`perfMode=PERF_STOCK`。

## 2. `com/anland/appwrap/Launcher.smali` —— 启动脚本

- 目标程序：`/opt/google/chrome/chrome` → **`/usr/bin/wps`**（含 5 处启动串）
- 环境：所有 `chroot ... env -i` 串加上 **`LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8`**（5 处）
- 挂载：新增输入桥目录
  ```sh
  mkdir -p "$R/run/wpsin"
  grep -q " $R/run/wpsin " /proc/mounts || mount --bind /data/user/0/com.anland.wpswrap/files "$R/run/wpsin"
  touch "$R/run/wpsin/xtype.log"
  ```
- 启动输入桥：在 mini-wm 起来之后
  ```sh
  pkill xtyped
  setsid chroot "$R" /usr/bin/env -i HOME=/root PATH=/usr/bin:/bin DISPLAY=:0 \
      /usr/bin/xtyped /run/wpsin/xtype.log > "$R/tmp/xtyped.log" 2>&1 &
  ```
- 清理：`pkill chrome/chrome_crashpad_handler` → **`pkill xtyped / wpsoffice / wpscloudsvr`**
  （**不能写 `pkill wps`**：toybox 的 pkill 会匹配命令行，把 App 自己一起杀）
- 兼容保留：`$R/root/.chrome` 目录与 Singleton 锁清理沿用（不影响 WPS）

## 3. `com/anland/appwrap/MainActivity.smali` —— 界面文案 / 交互

- 文案：`Chrome` → `WPS`（主界面标题、按钮「启动 WPS」「WPS 参数」「停止 WPS」等 10 余处）
- 进程探测/日志里的目标路径：`/opt/google/chrome/chrome` → `/usr/bin/wps`
- 停止动作：`pkill -f wps` → 发 `stop-wps` 动作交给 Launcher 的清理脚本
- 诊断输出：新增 `id` / `ls -l $R/usr/bin/wps` / `ls -l $R/lib/ld-linux-aarch64.so.1`

**窗口回调常驻**（与 Chrome 版相同的补丁，保留）：
`onPause` 不再 `unregisterCallback`，否则切到后台再回来窗口就黑了。

## 4. `com/anlandnext/awl/AwlWindowActivity.smali` —— 输入桥 UI（AAR 内部类）

- 隐藏输入框 `hiddenInput` 改成**可见可点的「⌨」按钮**：
  - 文字 `⌨`，背景 `0x80000000`（半透明黑），文字白色
  - 尺寸 96×96 px，`setMargins(24, 24, 24, 160)`（右下角，避开 WPS 状态栏）
  - `alpha=0.35`
- `onCreate`：`setSoftInputMode(0x30)` = `SOFT_INPUT_ADJUST_NOTHING`
  —— 键盘弹出不再压缩画面（否则 WPS 界面被挤变形）
- `dispatchTouchEvent`：触点在「⌨」按钮矩形内时走**正常分发**，
  其余情况按原逻辑交给窗口——否则按钮永远收不到点击

## 5. `com/anlandnext/awl/AwlWindowActivity$WlInputConnection.smali` —— 输入桥发送端

`commitText()` 里追加：把文字以 UTF-8 追加写入
`/data/user/0/com.anland.wpswrap/files/xtype.log`（并补一个 `\n`），异常静默忽略。
该目录被 bind mount 到容器 `/run/wpsin`，由容器内 `xtyped` 轮询消费。

## 6. `com/anland/appwrap/Rootfs.smali` / `BuildConfig.smali`

- `Rootfs`：判定 rootfs 是否就绪的指纹改成 WPS 的（`/usr/bin/wps`）
- `BuildConfig.APPLICATION_ID`：`com.anland.appwrap` → `com.anland.wpswrap`

## 7. 二进制清单 / 资源（等长替换，未重建资源表）

| 文件 | 改动 |
|------|------|
| `AndroidManifest.xml` | 包名 `com.anland.appwrap` → `com.anland.wpswrap`（UTF-16 等长） |
| `resources.arsc` | 包名同上；应用名 `Chrome (Linux)` → `WPS Office ARM`（等长 14 字符） |

> 因为字符串等长，可以直接在二进制里替换，**不需要 aapt2 重建资源表**，
> 也就避开了本环境 apktool/aapt2 无法回编译的限制。
