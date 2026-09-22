# 排错手册

## 启动类

**WPS 起不来 / 秒退 / 段错误（SIGSEGV）**
先看容器内的输出：`tail -50 $R/tmp/*.log`，以及 `logcat -s appwrap:V`。
- 报 `semget/shmget: Function not implemented`（ENOSYS）→ 内核没编 `CONFIG_SYSVIPC`，
  确认 `LD_PRELOAD=/opt/glproxy/lib/libsysvshim.so` 生效（`SYSVSHIM_TRACE=1` 看日志）
- 报 `cannot open shared object file` → 缺库，跑 `scripts/fix-wps11-deps.sh` 补
- 报 `Could not load the Qt platform plugin "xcb"` → 大概率是 **freetype 版本问题**：
  WPS 自带的 2.6 缺 `FT_Done_MM_Var`，换成系统 2.13

**卡在解包 / 解包中途失败**
- 看 `logcat -s appwrap:V` 里的「解包」进度
- 空间不够（需要约 1.6 GB 可用）
- 上次解包残留：删掉 `$R` 与 `$R/.appwrap-ok` 后重启 App

**黑屏 / 窗口不出来**
- `mini-wm: mapped ...` 有没有出现？没有说明 mini-wm 没起来
- 检查 anland 模块的 waylandbridge 是否在跑、`$R/run/anland/wayland-0` 是否存在
- 检查残留的全局挂载：`grep anland-wps /proc/self/mountinfo`
  （残留的 `dev/proc/sys` 挂载会让新实例行为异常，`umount -l` 掉再启动）

## 输入类

**键盘打了字，文档没反应**
1. **先点一下文档正文**，让 WPS 把焦点交给正文——焦点在搜索面板/工具栏时，字会进搜索框
2. 确认桥目录挂上了：`grep wpsin /proc/mounts`，而且
   `/data/user/0/com.anland.wpswrap/files/` 目录存在
   （该目录被外部删过的话 bind mount 会失败 → 卸载重装 App 重建数据目录）
3. 确认注入器在跑：容器内 `pgrep xtyped`、`cat $R/tmp/xtyped.log`
4. 想确认 X 到底收到了什么键：编译 `native/tools/keydump.c` 进容器，在容器内跑 `keydump`

**输入法弹出来把界面压变形**
`AwlWindowActivity` 已打补丁 `setSoftInputMode(0x30)`（ADJUST_NOTHING），
如果你重新打包过 app 壳，确认这个补丁还在。

## 交互类

**点「新建」后卡住**
WPS 新建文档会在 X 上再开一个顶层窗口（`Document1 * - Writer`），
而 App 只托管它认为的那个窗口 → 画面停在旧窗口上。
已知变通：先在界面里打开/新建好文档再操作，或在 App 的 URL 字段里直接给文档路径绕开新建流程。

**切到后台再回来变黑**
`MainActivity.onPause` 里不能 `unregisterCallback`（补丁已去掉这行）。

**退出后残留进程 / 端口占用**
- 用 `scripts/wps-clean.sh`：它扫 `/proc/*/exe` 判断是不是容器内进程，
  比 `pkill -f` 可靠
- **不要用 `pkill -f wps`**：toybox 的 pkill 会匹配自己的命令行，可能把 App 一起杀掉

## 版本类

**WPS 12.x 卡在登录页**
12.1.2 的登录页靠 `web-app` 子进程（CEF），本环境起不来。选 11.1.0.11720-fix5。

**Xwayland 收不到输入法**
Xwayland 24.1 不实现 `zwp_text_input_v3`、也没有 XIM，所以必须走 `xtyped` 文件桥，
这是设计如此，不是 bug。

## 常用诊断命令

```sh
# 容器内进程（比 pgrep 可靠）
for p in /proc/[0-9]*; do ex=$(readlink $p/exe 2>/dev/null); \
  case "$ex" in /data/adb/anland-wps/*) echo "${p#/proc/} $(basename $ex)";; esac; done

# 挂载状态
grep -E "anland-wps" /proc/self/mountinfo

# App 侧日志
logcat -d -s appwrap:V | tail -50
```
