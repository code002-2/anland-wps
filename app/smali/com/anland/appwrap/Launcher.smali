.class public final Lcom/anland/appwrap/Launcher;
.super Ljava/lang/Object;
.source "Launcher.java"


# static fields
.field public static final CHROME:Ljava/lang/String; = "/usr/bin/wps"

.field public static final DISP_WAYLAND_FD:I = 0x1

.field public static final DISP_WAYLAND_RELAY:I = 0x3

.field public static final DISP_WAYLAND_SOCKET:I = 0x2

.field public static final DISP_X11:I = 0x0

.field public static final GLPROXY_LIB:Ljava/lang/String; = "libglproxysrv.so"

.field public static final RELAY_LIB:Ljava/lang/String; = "libawlrelay.so"

.field public static final SU:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/anland/appwrap/RootExec;->suPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anland/appwrap/Launcher;->SU:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chrootArgv(Lcom/anland/appwrap/AppCfg;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 245
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/anland/appwrap/Launcher;->SU:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Lcom/anland/appwrap/Launcher;->chrootScript(Lcom/anland/appwrap/AppCfg;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static chrootScript(Lcom/anland/appwrap/AppCfg;)Ljava/lang/String;
    .locals 13

    .line 115
    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-boolean v1, p0, Lcom/anland/appwrap/AppCfg;->kgsl:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "MESA_LOADER_DRIVER_OVERRIDE=kgsl GALLIUM_DRIVER=kgsl FD_FORCE_KGSL=1 LIBGL_ALWAYS_SOFTWARE=0 "

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 123
    :goto_0
    iget-object v3, p0, Lcom/anland/appwrap/AppCfg;->envExtra:Ljava/lang/String;

    const-string v4, " "

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/anland/appwrap/AppCfg;->envExtra:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anland/appwrap/AppCfg;->envExtra:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v2

    .line 125
    :goto_2
    iget-object v5, p0, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    if-nez v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 126
    :goto_3
    iget-object v6, p0, Lcom/anland/appwrap/AppCfg;->url:Ljava/lang/String;

    if-nez v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    iget-object v6, p0, Lcom/anland/appwrap/AppCfg;->url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 127
    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v4, v2

    goto :goto_5

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "R="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\nif [ ! -x \"$R/usr/bin/wps\" ]; then echo \'appwrap: \u627e\u4e0d\u5230 $R/usr/bin/wps\uff08\u5148\u70b9\u300c\u5b89\u88c5 rootfs\u300d\uff09\' >&2; exit 8; fi\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v0, p0, Lcom/anland/appwrap/AppCfg;->display:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/anland/appwrap/AppCfg;->display:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_7

    .line 137
    :cond_6
    const-string v0, "if [ -z \"$WAYLAND_SOCKET\" ]; then echo \'appwrap: WAYLAND_SOCKET \u6ca1\u6709\u7ee7\u627f\u5230 su \u5b50\u8fdb\u7a0b\uff08su \u6e05\u4e86\u73af\u5883\uff1f\uff09\' >&2; exit 9; fi\necho \"appwrap: fd \u8bca\u65ad WAYLAND_SOCKET=$WAYLAND_SOCKET -> $(ls -l /proc/self/fd/$WAYLAND_SOCKET 2>&1 | sed \'s/.*-> //\')\" >&2\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_7
    const-string v0, "mkdir -p \"$R/proc\" \"$R/sys\" \"$R/dev/shm\" \"$R/tmp\" \"$R/run\" \"$R/root/.chrome\" 2>/dev/null\ngrep -q \" $R/proc \" /proc/mounts || { mount -t proc proc \"$R/proc\" || mount --bind /proc \"$R/proc\"; } 2>&1\ngrep -q \" $R/sys \" /proc/mounts || { mount -t sysfs sysfs \"$R/sys\" || mount --bind /sys \"$R/sys\"; } 2>&1\ngrep -q \" $R/dev \" /proc/mounts || mount --bind /dev \"$R/dev\" 2>&1\ngrep -q \" $R/dev/shm \" /proc/mounts || mount -t tmpfs -o mode=1777,size=512m tmpfs \"$R/dev/shm\" 2>&1\necho \'appwrap: \u6302\u8f7d\u5b8c\u6210\' >&2\nmkdir -p \"$R/run/wpsin\"\ngrep -q \" $R/run/wpsin \" /proc/mounts || mount --bind /data/user/0/com.anland.wpswrap/files \"$R/run/wpsin\" 2>&1\ntouch \"$R/run/wpsin/xtype.log\" 2>/dev/null\necho \'appwrap: 输入桥目录已挂载\' >&2\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget v0, p0, Lcom/anland/appwrap/AppCfg;->display:I

    const/4 v7, 0x3

    const-string v8, "mkdir -p \"$R/run/anland\"\ngrep -q \" $R/run/anland \" /proc/mounts || mount --bind "

    const-string v9, "\' >&2\nexec chroot \"$R\" /usr/bin/env -i HOME=/root USER=root LOGNAME=root TERM=xterm-256color LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8 PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin XDG_RUNTIME_DIR=/tmp XDG_SESSION_TYPE=wayland "

    const-string v10, "\'"

    const-string v11, "/data/local/tmp/awl"

    const-string v12, "\n"

    if-ne v0, v7, :cond_a

    .line 154
    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    .line 155
    :cond_8
    iget-object v11, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    .line 160
    :cond_9
    :goto_6
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {v11}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \"$R/run/anland\" 2>&1\nAUD=\"\"\n[ -S \"$R/run/anland/pulse.sock\" ] && AUD=\"PULSE_SERVER=unix:/run/anland/pulse.sock\"\nif [ -n \"$AUD\" ]; then echo \'appwrap: \u97f3\u9891\u5df2\u63a5\u4e0a pulse.sock\' >&2; else echo \'appwrap: \u6ca1\u627e\u5230 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/pulse.sock \u2014\u2014 \u97f3\u9891\u4e0d\u53ef\u7528\uff08\u5bbf\u4e3b\u6a21\u5757\u7684 PulseAudio \u6ca1\u8d77\uff1f\uff09\' >&2; fi\nif [ ! -S \"$R/tmp/wayland-0\" ]; then echo \'appwrap: $R/tmp/wayland-0 \u4e0d\u5b58\u5728 \u2014\u2014 \u4e2d\u7ee7\u6ca1\u8d77\u6765\uff1f\' >&2; exit 7; fi\necho \'appwrap: chroot \u2192 wps(Wayland \u7ecf\u4e2d\u7ee7) "

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v5, v10, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "WAYLAND_DISPLAY=/tmp/wayland-0 $AUD /usr/bin/wps "

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 176
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 177
    :cond_a
    iget v0, p0, Lcom/anland/appwrap/AppCfg;->display:I

    if-nez v0, :cond_d

    .line 178
    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    .line 179
    :cond_b
    iget-object v11, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    .line 183
    :cond_c
    :goto_7
    const-string p0, "mkdir -p \"$R/run/anland\" \"$R/tmp/.X11-unix\" && chmod 1777 \"$R/tmp/.X11-unix\" 2>/dev/null\ngrep -q \" $R/run/anland \" /proc/mounts || mount --bind "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v11}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \"$R/run/anland\" 2>&1\nAUD=\"\"\n[ -S \"$R/run/anland/pulse.sock\" ] && AUD=\"PULSE_SERVER=unix:/run/anland/pulse.sock\"\necho \'appwrap: \u51c6\u5907\u542f\u52a8 Xwayland + anland-miniwm\' >&2\n[ -f \"$R/tmp/appwrap-x.pid\" ] && kill $(cat \"$R/tmp/appwrap-x.pid\") 2>/dev/null; [ -f \"$R/tmp/appwrap-wm.pid\" ] && kill $(cat \"$R/tmp/appwrap-wm.pid\") 2>/dev/null; sleep 0.3; rm -f \"$R/tmp/.X11-unix/X0\" \"$R/tmp/.X0-lock\"\nchroot \"$R\" /usr/bin/env -i HOME=/root USER=root LOGNAME=root TERM=xterm-256color LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8 PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin XDG_RUNTIME_DIR=/tmp XDG_SESSION_TYPE=wayland "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "WAYLAND_SOCKET=$WAYLAND_SOCKET /usr/bin/Xwayland :0 -rootless -noreset -ac -terminate &\nXPID=$!\necho $XPID > \"$R/tmp/appwrap-x.pid\"\necho \"appwrap: Xwayland \u5df2\u542f\u52a8 pid=$XPID\uff0c\u7b49 X0 \u5957\u63a5\u5b57...\" >&2\ni=0; while [ $i -lt 150 ]; do [ -S \"$R/tmp/.X11-unix/X0\" ] && break; kill -0 $XPID 2>/dev/null || { echo \'appwrap: Xwayland \u9000\u51fa\u4e86\' >&2; break; }; sleep 0.2; i=$((i+1)); done\n[ -S \"$R/tmp/.X11-unix/X0\" ] && echo \'appwrap: X0 \u5c31\u7eea\' >&2 || echo \'appwrap: X0 \u672a\u51fa\u73b0\uff08Xwayland \u6ca1\u8d77\u6765\uff1f\u770b\u4e0a\u9762\u7684\u62a5\u9519\uff09\' >&2\n[ -x \"$R/usr/bin/anland-miniwm\" ] || echo \'appwrap: \u8b66\u544a\uff1arootfs \u91cc\u6ca1\u6709 /usr/bin/anland-miniwm \u2014\u2014 \u6ca1\u6709 WM \u65f6 rootless Xwayland \u4e0d\u4f1a surface \u7a97\u53e3\uff0c\u5b88\u62a4\u8fdb\u7a0b\u5c06\u770b\u4e0d\u5230\u4efb\u4f55\u7a97\u53e3\' >&2\nchroot \"$R\" /usr/bin/env -i HOME=/root USER=root LOGNAME=root TERM=xterm-256color LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8 PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin XDG_RUNTIME_DIR=/tmp XDG_SESSION_TYPE=x11 "

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "DISPLAY=:0 XDG_RUNTIME_DIR=/tmp ANLAND_WM_SOCK=/run/anland/anland-wm.sock /usr/bin/anland-miniwm &\nWMPID=$!\necho $WMPID > \"$R/tmp/appwrap-wm.pid\"\necho \"appwrap: anland-miniwm \u5df2\u542f\u52a8 pid=$WMPID\uff08rootless Xwayland \u9760\u5b83 surface \u7a97\u53e3\uff09\" >&2\nsleep 0.6\nkill -0 $WMPID 2>/dev/null && echo \'appwrap: mini-wm \u5b58\u6d3b\' >&2 || echo \'appwrap: mini-wm \u5df2\u9000\u51fa\uff08\u770b\u4e0a\u9762\u7684\u62a5\u9519\uff09\' >&2\npkill xtyped 2>/dev/null\nsetsid chroot \"$R\" /usr/bin/env -i HOME=/root PATH=/usr/bin:/bin DISPLAY=:0 /usr/bin/xtyped /run/wpsin/xtype.log > \"$R/tmp/xtyped.log\" 2>&1 &\necho \'appwrap: 输入桥已启动（xtyped）\' >&2\necho \'appwrap: chroot \u2192 wps(X11) "

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {v5}, Lcom/anland/appwrap/Launcher;->x11Args(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' >&2\nexec chroot \"$R\" /usr/bin/env -i HOME=/root USER=root LOGNAME=root TERM=xterm-256color LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8 PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin XDG_RUNTIME_DIR=/tmp XDG_SESSION_TYPE=x11 "

    .line 218
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "DISPLAY=:0 $AUD /usr/bin/wps "

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 221
    invoke-static {v5}, Lcom/anland/appwrap/Launcher;->x11Args(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 222
    :cond_d
    iget v0, p0, Lcom/anland/appwrap/AppCfg;->display:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_10

    .line 223
    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_8

    .line 224
    :cond_e
    iget-object v11, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    .line 225
    :cond_f
    :goto_8
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {v11}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \"$R/run/anland\" 2>&1\necho \'appwrap: \u8b66\u544a\u2014\u2014\u6b64\u6a21\u5f0f\u4e0b WPS \u4ee5 root \u8fde wayland-0\uff0c\u7a97\u53e3\u5c5e\u4e8e root\uff0c\u9700\u8981\u7b2c\u4e00\u65b9\u5bbf\u4e3b APK(com.anlandnext) \u663e\u793a\' >&2\nexec chroot \"$R\" /usr/bin/env -i HOME=/root USER=root LOGNAME=root TERM=xterm-256color LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8 PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin XDG_RUNTIME_DIR=/tmp XDG_SESSION_TYPE=wayland "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "WAYLAND_DISPLAY=/run/anland/wayland-0 /usr/bin/wps "

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 232
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 234
    :cond_10
    const-string p0, "echo \'appwrap: chroot \u2192 wps(WAYLAND_SOCKET=$WAYLAND_SOCKET) "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 235
    invoke-virtual {v5, v10, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "WAYLAND_SOCKET=$WAYLAND_SOCKET /usr/bin/wps "

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 238
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :goto_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cleanupScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\npkill xtyped 2>/dev/null; pkill wpsoffice 2>/dev/null; pkill wpscloudsvr 2>/dev/null; pkill libawlrelay.so 2>/dev/null; pkill Xwayland 2>/dev/null; pkill anland-miniwm 2>/dev/null\nsleep 1\nrm -f \"$R/root/.chrome/SingletonLock\" \"$R/root/.chrome/SingletonCookie\" \"$R/root/.chrome/SingletonSocket\" 2>/dev/null\nrm -f \"$R/tmp/wayland-0\" \"$R/tmp/.X11-unix/X0\" \"$R/tmp/.X0-lock\" 2>/dev/null\nrm -f \"$R/tmp/appwrap-x.pid\" \"$R/tmp/appwrap-wm.pid\" 2>/dev/null\necho CLEANED"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static containerArgv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 498
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/anland/appwrap/Launcher;->SU:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/anland/appwrap/Launcher;->containerScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static containerScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 484
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "droidspaces"

    .line 485
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exec env WAYLAND_SOCKET=@FD@ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_3

    .line 486
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "root"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 488
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exec su - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " -c "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 489
    :cond_3
    :goto_0
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p2, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 491
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "if [ -z \"$WAYLAND_SOCKET\" ]; then echo \'appwrap: WAYLAND_SOCKET \u672a\u7ee7\u627f\u5230 su \u5b50\u8fdb\u7a0b(su \u6e05\u7a7a\u73af\u5883?)\' >&2; exit 9; fi\nexec "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " -n "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez p1, :cond_4

    .line 493
    const-string p1, ""

    :cond_4
    invoke-static {p1}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " run \"$(printf %s \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' | base64 -d | sed \"s/@FD@/$WAYLAND_SOCKET/g\")\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static daemonHealthScript()Ljava/lang/String;
    .locals 1

    .line 363
    const-string v0, "s=$(pidof surfaceflinger 2>/dev/null | awk \'{print $1}\')\nds=0\nfor p in $(pidof waylandbridge 2>/dev/null); do\n  v=$(awk \'{print $22}\' /proc/$p/stat 2>/dev/null)\n  [ -n \"$v\" ] && [ \"$v\" -gt \"$ds\" ] && ds=$v\ndone\n[ \"$ds\" -eq 0 ] && { echo DAEMON-NONE; exit 0; }\n[ -z \"$s\" ] && { echo DAEMON-OK; exit 0; }\nss=$(awk \'{print $22}\' /proc/$s/stat 2>/dev/null)\nif [ -n \"$ss\" ] && [ \"$ss\" -gt \"$ds\" ]; then\n  echo \"DAEMON-STALE\uff08SF \u6bd4\u5b88\u62a4\u8fdb\u7a0b\u665a\u8d77: sf=$ss > daemon=$ds\uff09\"\nelse echo \"DAEMON-OK\uff08daemon=$ds sf=$ss\uff09\"; fi\n"

    return-object v0
.end method

.method public static glproxyHealthScript()Ljava/lang/String;
    .locals 2

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "if pgrep libglproxysrv >/dev/null 2>&1 && [ -S "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/data/local/tmp/awl/glproxy.sock"

    .line 442
    invoke-static {v1}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]; then echo GLPROXY-OK; else echo GLPROXY-DOWN; fi\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static glproxyStartScript(Lcom/anland/appwrap/AppCfg;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 421
    invoke-static {p0}, Lcom/anland/appwrap/Launcher;->runtimeDir(Lcom/anland/appwrap/AppCfg;)Ljava/lang/String;

    move-result-object p0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/glproxy.sock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/libglproxysrv.so"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "if pgrep libglproxysrv >/dev/null 2>&1; then echo GLPROXY-ALREADY; exit 0; fi\nRT="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-static {p0}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\nrm -f "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 427
    invoke-static {v0}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " 2>/dev/null\nmkdir -p \"$RT\"\nsetsid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 429
    invoke-static {p1}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " > /data/local/tmp/glproxy.log 2>&1 < /dev/null &\ni=0; while [ $i -lt 40 ]; do pgrep libglproxysrv >/dev/null 2>&1 && break; sleep 0.25; i=$((i+1)); done\nif pgrep libglproxysrv >/dev/null 2>&1; then echo GLPROXY-OK; else echo GLPROXY-FAIL; tail -5 /data/local/tmp/glproxy.log 2>&1; fi\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pulseEnsureScript(Lcom/anland/appwrap/AppCfg;)Ljava/lang/String;
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "/data/local/tmp/awl"

    .line 305
    :goto_1
    iget-object p0, p0, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-static {p0}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\nRT="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 307
    invoke-static {v0}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\nM=/data/adb/modules/anland-awl\nPAR=\"$RT/pulse\"; PH=\"$RT/pulse-home\"; LOG=/data/local/tmp/awl_pulse.log\nmkdir -p \"$R/run/anland\" 2>/dev/null\ngrep -q \" $R/run/anland \" /proc/mounts || mount --bind \"$RT\" \"$R/run/anland\" 2>/dev/null\nPC() { chroot \"$R\" /usr/bin/env -i PULSE_SERVER=unix:/run/anland/pulse.sock /usr/bin/pactl \"$@\" 2>&1; }\nif [ -S \"$RT/pulse.sock\" ] && PC list short sinks 2>/dev/null | grep -q \'[[:space:]]android[[:space:]]\'; then\n  echo PULSE-OK; PC list short sinks | sed \'s/^/  /\'; exit 0\nfi\necho \'PULSE-BAD\uff1a\u6ca1\u6709 android sink\uff0c\u6309 service.sh \u7684\u65b9\u5f0f\u91cd\u542f PA\'\nPAUID=$(awk \'$1==\"com.anlandnext\"{print $2; exit}\' /data/system/packages.list 2>/dev/null)\nif [ -z \"$PAUID\" ]; then echo \'\u627e\u4e0d\u5230 com.anlandnext \u7684 uid \u2014\u2014 \u8df3\u8fc7\uff08\u97f3\u9891\u4e0d\u53ef\u7528\uff09\'; exit 0; fi\npkill pulseaudio 2>/dev/null; sleep 1\nrm -rf \"$PAR\"; cp -r \"$M/pulse\" \"$PAR\" 2>/dev/null; chmod -R 755 \"$PAR\" 2>/dev/null\ngrep -q \'^dl-search-path\' \"$PAR/etc/pulse/daemon.conf\" 2>/dev/null || echo \"dl-search-path = $PAR/lib/pulseaudio/modules\" >> \"$PAR/etc/pulse/daemon.conf\"\nrm -rf \"$PH\"; mkdir -p \"$PH/run\" \"$PH/state\"; chown -R \"$PAUID:$PAUID\" \"$PH\"; chmod 700 \"$PH\" \"$PH/run\" \"$PH/state\"\nrm -f \"$RT/pulse.sock\"\nstart_pa() { nohup su \"$PAUID\" -c \"export HOME=\'$PH\' TMPDIR=\'$PH\' PULSE_RUNTIME_PATH=\'$PH/run\' PULSE_STATE_PATH=\'$PH/state\' PULSE_CONFIG_PATH=\'$PAR/etc/pulse\' LD_LIBRARY_PATH=\'$PAR/lib:$PAR/lib/pulseaudio:$PAR/lib/pulseaudio/modules\'; exec \'$PAR/bin/pulseaudio\' --daemonize=no --exit-idle-time=-1 --disallow-exit --log-target=stderr -n -F \'$PAR/etc/pulse/default.pa\' -L \'module-native-protocol-unix auth-anonymous=1 socket=$RT/pulse.sock\'\" > \"$LOG\" 2>&1 & }\nstart_pa; sleep 4\nif PC list short sinks 2>/dev/null | grep -q \'[[:space:]]android[[:space:]]\'; then\n  echo \'PULSE-OK\uff08OpenSL ES\uff09\'\nelse\n  echo \'OpenSL ES \u8fd8\u662f\u4e0d\u884c\uff0c\u6362 AAudio sink\'\n  sed -i \'s/^load-module module-sles-sink/# &/\' \"$PAR/etc/pulse/default.pa\"\n  sed -i \'s/^#load-module module-aaudio-sink/load-module module-aaudio-sink/\' \"$PAR/etc/pulse/default.pa\"\n  grep -q \'^load-module module-aaudio-sink\' \"$PAR/etc/pulse/default.pa\" || sed -i \'s|^set-default-sink android|load-module module-aaudio-sink sink_name=android sink_properties=device.description=Android\\nset-default-sink android|\' \"$PAR/etc/pulse/default.pa\"\n  pkill pulseaudio 2>/dev/null; sleep 1; rm -f \"$RT/pulse.sock\"; start_pa; sleep 4\n  PC list short sinks 2>/dev/null | grep -q \'[[:space:]]android[[:space:]]\' && echo \'PULSE-OK\uff08AAudio\uff09\' || { echo \'PULSE-FAIL\uff1a\u4e24\u79cd sink \u90fd\u8d77\u4e0d\u6765\'; tail -6 \"$LOG\"; }\nfi\nPC list short sinks | sed \'s/^/  /\'\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static relayArgv(Lcom/anland/appwrap/AppCfg;Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anland/appwrap/AppCfg;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exec "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " --listen "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 261
    invoke-static {p0}, Lcom/anland/appwrap/Launcher;->relaySockPath(Lcom/anland/appwrap/AppCfg;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " --upstream $WAYLAND_SOCKET"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 264
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 265
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    const-string v1, " --upstream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 266
    :cond_1
    iget-boolean p0, p0, Lcom/anland/appwrap/AppCfg;->relayVerbose:Z

    if-eqz p0, :cond_2

    const-string p0, " --verbose"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 p0, 0x3

    .line 267
    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    sget-object p2, Lcom/anland/appwrap/Launcher;->SU:Ljava/lang/String;

    aput-object p2, p0, p1

    const/4 p1, 0x1

    const-string p2, "-c"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    return-object p0
.end method

.method public static relaySockPath(Lcom/anland/appwrap/AppCfg;)Ljava/lang/String;
    .locals 1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/tmp/wayland-0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolveExe(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    return-object p1

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/lib"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".so"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static restartDaemonScript()Ljava/lang/String;
    .locals 1

    .line 383
    const-string v0, "M=/data/adb/modules/anland-awl\necho \'\u91cd\u542f\u5b88\u62a4\u8fdb\u7a0b\u2026\'\npkill waylandbridge 2>/dev/null\nsleep 1\nrm -f /data/local/tmp/awl/wayland-0 /data/local/tmp/awl/anland-wm.sock 2>/dev/null\nchmod 755 \"$M/waylandbridge\" 2>/dev/null\ncd \"$M\" 2>/dev/null || exit 1\nsetsid ./waylandbridge > /data/local/tmp/awl_daemon.log 2>&1 < /dev/null &\ni=0; while [ $i -lt 80 ]; do pgrep waylandbridge >/dev/null 2>&1 && break; sleep 0.25; i=$((i+1)); done\nif pgrep waylandbridge >/dev/null 2>&1; then echo DAEMON-OK; else echo DAEMON-FAIL; tail -5 /data/local/tmp/awl_daemon.log 2>&1; fi\n"

    return-object v0
.end method

.method static runtimeDir(Lcom/anland/appwrap/AppCfg;)Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    iget-object p0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "/data/local/tmp/awl"

    return-object p0
.end method

.method public static shQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\'\\\'\'"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitArgs(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto/16 :goto_4

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 78
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_c

    .line 79
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x27

    const/4 v9, 0x1

    if-eqz v5, :cond_2

    if-ne v7, v8, :cond_1

    move v5, v2

    goto/16 :goto_3

    .line 81
    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_2
    const/16 v10, 0x22

    const/16 v11, 0x5c

    if-eqz v6, :cond_5

    if-ne v7, v10, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    if-ne v7, v11, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v4, v9

    goto :goto_3

    :cond_5
    if-ne v7, v11, :cond_6

    add-int/lit8 v11, v3, 0x1

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 88
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v9

    move v3, v11

    goto :goto_3

    :cond_6
    if-ne v7, v8, :cond_7

    move v4, v9

    move v5, v4

    goto :goto_3

    :cond_7
    if-ne v7, v10, :cond_8

    move v4, v9

    move v6, v4

    goto :goto_3

    :cond_8
    const/16 v8, 0x20

    if-eq v7, v8, :cond_a

    const/16 v8, 0x9

    if-ne v7, v8, :cond_9

    goto :goto_2

    .line 94
    :cond_9
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    :goto_2
    if-eqz v4, :cond_b

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v4, v2

    :goto_3
    add-int/2addr v3, v9

    goto :goto_0

    :cond_c
    if-eqz v4, :cond_d

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_4
    return-object v0
.end method

.method public static startDaemonScript()Ljava/lang/String;
    .locals 1

    .line 278
    const-string v0, "M=/data/adb/modules/anland-awl\nif pgrep waylandbridge >/dev/null 2>&1; then echo DAEMON-ALREADY; exit 0; fi\nrm -f /data/local/tmp/awl/wayland-0 /data/local/tmp/awl/anland-wm.sock 2>/dev/null\nchmod 755 \"$M/waylandbridge\" 2>/dev/null\ncd \"$M\" 2>/dev/null || { echo \'\u6a21\u5757\u76ee\u5f55\u8fdb\u4e0d\u53bb\'; exit 1; }\nsetsid ./waylandbridge > /data/local/tmp/awl_daemon.log 2>&1 < /dev/null &\ni=0; while [ $i -lt 60 ]; do pgrep waylandbridge >/dev/null 2>&1 && break; sleep 0.25; i=$((i+1)); done\nif pgrep waylandbridge >/dev/null 2>&1; then echo DAEMON-OK; else echo DAEMON-FAIL; tail -5 /data/local/tmp/awl_daemon.log 2>&1; fi\n"

    return-object v0
.end method

.method public static stopAllScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pkill xtyped 2>/dev/null; pkill wpsoffice 2>/dev/null; pkill wpscloudsvr 2>/dev/null; pkill anland-miniwm 2>/dev/null; pkill Xwayland 2>/dev/null; pkill libawlrelay.so 2>/dev/null; rm -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/tmp/wayland-0"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 472
    invoke-static {p0}, Lcom/anland/appwrap/Launcher;->shQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " 2>/dev/null; echo stopped"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static x11Args(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 104
    const-string p0, ""

    return-object p0

    .line 105
    :cond_0
    const-string v0, "--ozone-platform=wayland"

    const-string v1, "--ozone-platform=x11"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 106
    const-string v0, "--ozone-platform="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " --ozone-platform=x11"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 107
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
