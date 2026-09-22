# 架构与工作原理

## 分层

```
┌─ Android 侧 ───────────────────────────────────────────────────────────┐
│ com.anland.wpswrap（app 壳 + anland-awllib）                            │
│   MainActivity         配置/启动/停止、rootfs 解包（XZ for Java + tar）  │
│   AwlWindowActivity    窗口托管：把容器里的窗口当 Android Surface 显示   │
│                        右下角 ⌨ 按钮 → 唤起系统输入法                    │
│   WlInputConnection    输入法文字 → files/xtype.log（输入桥的发送端）     │
│   libawlspawn/awlrelay 以 root 身份执行启动脚本（KernelSU 授权）          │
└────────────────────────────────────────────────────────────────────────┘
                     │ root shell + bind mount
┌─ 容器 /data/adb/anland-wps/root（Ubuntu arm64 + WPS 11.1.0.11720）──────┐
│ Xwayland :0 -rootless      WPS 是 X11 客户端，需要一个 X 服务器          │
│ anland-miniwm              X 顶层窗口 → waylandbridge（→ Android Surface）│
│ office6/wps                WPS 主程序（Qt5）                            │
│ xtyped                     轮询 /run/wpsin/xtype.log → XTEST 注入按键    │
│ dbus-daemon                会话总线（WPS 需要）                          │
│ LD_PRELOAD=libsysvshim.so  补 semget/semop/shmget/shmat（内核没有）      │
└────────────────────────────────────────────────────────────────────────┘
                     │ Wayland socket: /run/anland/wayland-0
┌─ anland 模块（KernelSU，anland-awl）───────────────────────────────────┐
│ waylandbridge：把容器里的 Wayland 合成请求转成 Android Surface           │
│ PulseAudio：给容器提供音频输出                                           │
└────────────────────────────────────────────────────────────────────────┘
```

## 启动流程

1. App 启动 → 看 `rootDir`（默认 `/data/adb/anland-wps/root`）里有没有 `.appwrap-ok`
2. 没有 → 从 APK 的 `assets/rootfs.tar.xz` 流式解包（Java 解 xz → root 侧 `tar -x`），完成后写 `.appwrap-ok`
3. 组装启动脚本（root shell）：
   - `mount --bind /data/user/0/com.anland.wpswrap/files → $R/run/wpsin`（输入桥的交换目录）
   - `mount -t tmpfs` 到 `$R/dev`、`mount -t proc/proc`、`sysfs`
   - 拉起 Xwayland `:0 -rootless`、`anland-miniwm`、dbus、`xtyped`
   - `chroot $R /usr/bin/env -i HOME=/root PATH=... DISPLAY=:0 LANG=zh_CN.UTF-8 /usr/bin/wps`
4. `waylandbridge` 把窗口送到 App 的 `AwlWindowActivity` 显示
5. 停止时：扫 `/proc/*/exe` 找出所有容器内进程并杀掉，卸载 bind mount
   （**不能用 `pkill -f wps`**：toybox 的 pkill 会匹配自己的命令行）

## 输入法桥（为什么需要它）

Xwayland 24.1 **不实现 `zwp_text_input_v3`，也没有 XIM**，所以 Android 输入法无法直接
把文字送进 X11 客户端（Chrome 走 Wayland 中继可以，WPS 不行）。于是自己搭一条：

```
系统输入法 ──commitText──▶ App(WlInputConnection) ──写文件──▶ files/xtype.log
                                                                  │ (bind mount 到容器 /run/wpsin)
容器内 xtyped ──轮询新字符──▶ XTEST 合成按键 ──▶ Xwayland ──▶ WPS
```

`xtyped` 注入的要点（都在 `native/xtyped.c` 里）：

- 中文/特殊字符用「**备用 keycode + Unicode keysym 重映射**」：先 `XChangeKeyboardMapping`
  把某个空闲 keycode 临时映射成目标字符的 keysym，再 XTEST 按下/抬起，最后还原
- 备用 keycode 默认 248（可用 `--keycode` 改），避免和真实键盘冲突
- 只传"新增部分"（记录文件偏移），不会重复输入
- 调试用 `native/tools/keydump.c`：编译进容器后可以看 X 实际收到了什么键

## SysV IPC shim（为什么需要它）

本机内核 `CONFIG_SYSVIPC=n`：`semget()/shmget()` 直接返回 `ENOSYS`。而 WPS 的账号 SDK /
qing IPC 用 System V 信号量做跨进程互斥，启动阶段还会用 `shmget(IPC_PRIVATE,...)` 探测共享内存；
拿不到就继续跑，但后续指针为空 → 定时器一激活就段错误。

`libsysvshim.so`（`LD_PRELOAD`）在用户态补上这些调用：

- 每个信号量集合 = `/dev/shm/.sysvshim.<key>.<nsems>` 文件，`mmap` 成
  `[header][各信号量值 u32][各信号量 futex 字 u32]`，计数用 futex 等待/唤醒
- `semop` 按内核语义实现三条规则（计数加减、SEM_UNDO、等待中的信号量被删除等）
- 共享内存落成 `/dev/shm` 里的文件；**必须认真填 `struct shmid_ds`**
  （`shm_segsz`、`shm_nattch` 语义错了 WPS 会读到垃圾/误判唯一实例 → 段错误）
- `IPC_RMID` 是"标记删除"：名字立刻消失，但已存在的映射继续有效到最后一个 `shmdt`

调试：`SYSVSHIM_TRACE=1`。

## 关键路径

| 用途 | 路径 |
|------|------|
| rootfs | `/data/adb/anland-wps/root` |
| 解包完成标记 | `<rootfs>/.appwrap-ok` |
| 输入桥交换文件 | `/data/user/0/com.anland.wpswrap/files/xtype.log` ↔ `<rootfs>/run/wpsin/xtype.log` |
| SysV shim | `<rootfs>/opt/glproxy/lib/libsysvshim.so` |
| 键盘注入器 | `<rootfs>/usr/bin/xtyped` |
| WPS 主程序 | `<rootfs>/usr/bin/wps` → `/opt/kingsoft/wps-office/office6/wps` |
| Wayland socket | `<rootfs>/run/anland/wayland-0`（模块提供） |
