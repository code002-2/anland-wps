.class public final Lcom/anland/appwrap/AppCfg;
.super Ljava/lang/Object;
.source "AppCfg.java"


# static fields
.field public static final ALT_ROOT:Ljava/lang/String; = "/data/local/tmp/anland-chrome/root"

.field public static final AUTOPLAY:Ljava/lang/String; = "--autoplay-policy=no-user-gesture-required"

.field private static final COMMON:Ljava/lang/String; = "--no-sandbox --no-zygote --ozone-platform=wayland --disable-dev-shm-usage --no-first-run --no-default-browser-check --enable-unsafe-swiftshader --autoplay-policy=no-user-gesture-required "

.field public static final DEFAULT_CHROME_ARGS:Ljava/lang/String; = ""

.field public static final DEFAULT_ROOT:Ljava/lang/String; = "/data/adb/anland-chrome/root"

.field private static final FILE:Ljava/lang/String; = "appwrap"

.field public static final MODE_CHROOT:I = 0x3

.field public static final MODE_CONTAINER:I = 0x1

.field public static final MODE_EXTERNAL:I = 0x2

.field public static final MODE_NATIVE:I = 0x0

.field public static final PERF_SMOOTH:I = 0x0

.field public static final PERF_STOCK:I = 0x1

.field private static final SMOOTH:Ljava/lang/String; = ""

.field private static final STOCK:Ljava/lang/String; = ""


# instance fields
.field public args:Ljava/lang/String;

.field public autoAttach:Z

.field public chromeArgs:Ljava/lang/String;

.field public container:Ljava/lang/String;

.field public display:I

.field public dsPath:Ljava/lang/String;

.field public envExtra:Ljava/lang/String;

.field public exe:Ljava/lang/String;

.field public kgsl:Z

.field public mode:I

.field public name:Ljava/lang/String;

.field public perfMode:I

.field public relayVerbose:Z

.field public rootDir:Ljava/lang/String;

.field public runtimeDir:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "wps"

    iput-object v0, p0, Lcom/anland/appwrap/AppCfg;->name:Ljava/lang/String;

    const/4 v0, 0x3

    .line 86
    iput v0, p0, Lcom/anland/appwrap/AppCfg;->mode:I

    .line 87
    const-string v1, ""

    iput-object v1, p0, Lcom/anland/appwrap/AppCfg;->exe:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/anland/appwrap/AppCfg;->args:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/anland/appwrap/AppCfg;->container:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/anland/appwrap/AppCfg;->user:Ljava/lang/String;

    .line 91
    const-string v2, "droidspaces"

    iput-object v2, p0, Lcom/anland/appwrap/AppCfg;->dsPath:Ljava/lang/String;

    const/4 v2, 0x1

    .line 92
    iput-boolean v2, p0, Lcom/anland/appwrap/AppCfg;->autoAttach:Z

    .line 94
    const-string v2, "/data/adb/anland-wps/root"

    iput-object v2, p0, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    .line 95
    const-string v2, ""

    iput-object v2, p0, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    .line 96
    const-string v2, ""

    iput-object v2, p0, Lcom/anland/appwrap/AppCfg;->url:Ljava/lang/String;

    const/4 v2, 0x0

    .line 97
    iput-boolean v2, p0, Lcom/anland/appwrap/AppCfg;->kgsl:Z

    .line 109
    iput-object v1, p0, Lcom/anland/appwrap/AppCfg;->envExtra:Ljava/lang/String;

    .line 112
    iput v2, p0, Lcom/anland/appwrap/AppCfg;->perfMode:I

    .line 118
    iput-boolean v2, p0, Lcom/anland/appwrap/AppCfg;->relayVerbose:Z

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/anland/appwrap/AppCfg;->display:I

    .line 124
    const-string v0, "/data/local/tmp/awl"

    iput-object v0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    return-void
.end method

.method public static load(Landroid/content/Context;)Lcom/anland/appwrap/AppCfg;
    .locals 3

    .line 131
    invoke-static {p0}, Lcom/anland/appwrap/AppCfg;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 132
    new-instance v0, Lcom/anland/appwrap/AppCfg;

    invoke-direct {v0}, Lcom/anland/appwrap/AppCfg;-><init>()V

    .line 133
    const-string v1, "name"

    iget-object v2, v0, Lcom/anland/appwrap/AppCfg;->name:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anland/appwrap/AppCfg;->name:Ljava/lang/String;

    .line 134
    const-string v1, "mode"

    iget v2, v0, Lcom/anland/appwrap/AppCfg;->mode:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/anland/appwrap/AppCfg;->mode:I

    .line 135
    const-string v1, "exe"

    iget-object v2, v0, Lcom/anland/appwrap/AppCfg;->exe:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anland/appwrap/AppCfg;->exe:Ljava/lang/String;

    .line 136
    const-string v1, "args"

    iget-object v2, v0, Lcom/anland/appwrap/AppCfg;->args:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anland/appwrap/AppCfg;->args:Ljava/lang/String;

    .line 137
    const-string v1, "container"

    iget-object v2, v0, Lcom/anland/appwrap/AppCfg;->container:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anland/appwrap/AppCfg;->container:Ljava/lang/String;

    .line 138
    const-string v1, "user"

    iget-object v2, v0, Lcom/anland/appwrap/AppCfg;->user:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anland/appwrap/AppCfg;->user:Ljava/lang/String;

    .line 139
    const-string v1, "dsPath"

    iget-object v2, v0, Lcom/anland/appwrap/AppCfg;->dsPath:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anland/appwrap/AppCfg;->dsPath:Ljava/lang/String;

    .line 140
    const-string v1, "autoAttach"

    iget-boolean v2, v0, Lcom/anland/appwrap/AppCfg;->autoAttach:Z

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/anland/appwrap/AppCfg;->autoAttach:Z

    .line 141
    const-string v1, "rootDir"

    iget-object v2, v0, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    .line 142
    const-string v1, "chromeArgs"

    iget-object v2, v0, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    .line 143
    const-string v1, "url"

    iget-object v2, v0, Lcom/anland/appwrap/AppCfg;->url:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anland/appwrap/AppCfg;->url:Ljava/lang/String;

    .line 144
    const-string v1, "kgsl"

    iget-boolean v2, v0, Lcom/anland/appwrap/AppCfg;->kgsl:Z

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/anland/appwrap/AppCfg;->kgsl:Z

    .line 145
    const-string v1, "envExtra"

    iget-object v2, v0, Lcom/anland/appwrap/AppCfg;->envExtra:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anland/appwrap/AppCfg;->envExtra:Ljava/lang/String;

    .line 146
    const-string v1, "perfMode"

    iget v2, v0, Lcom/anland/appwrap/AppCfg;->perfMode:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/anland/appwrap/AppCfg;->perfMode:I

    .line 147
    const-string v1, "relayVerbose"

    iget-boolean v2, v0, Lcom/anland/appwrap/AppCfg;->relayVerbose:Z

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/anland/appwrap/AppCfg;->relayVerbose:Z

    .line 148
    const-string v1, "display"

    iget v2, v0, Lcom/anland/appwrap/AppCfg;->display:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/anland/appwrap/AppCfg;->display:I

    .line 149
    const-string v1, "runtimeDir"

    iget-object v2, v0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    return-object v0
.end method

.method public static presetArgs(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 65
    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static presetName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 69
    const-string p0, "\u539f\u7248\uff08\u7279\u6548\uff09"

    return-object p0

    :cond_0
    const-string p0, "\u6d41\u7545"

    return-object p0
.end method

.method private static sp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 127
    const-string v0, "appwrap"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyPreset()V
    .locals 1

    .line 76
    iget v0, p0, Lcom/anland/appwrap/AppCfg;->perfMode:I

    invoke-static {v0}, Lcom/anland/appwrap/AppCfg;->presetArgs(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/anland/appwrap/AppCfg;->kgsl:Z

    return-void
.end method

.method public save(Landroid/content/Context;)V
    .locals 2

    .line 154
    invoke-static {p1}, Lcom/anland/appwrap/AppCfg;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "name"

    iget-object v1, p0, Lcom/anland/appwrap/AppCfg;->name:Ljava/lang/String;

    .line 155
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "mode"

    iget v1, p0, Lcom/anland/appwrap/AppCfg;->mode:I

    .line 156
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "exe"

    iget-object v1, p0, Lcom/anland/appwrap/AppCfg;->exe:Ljava/lang/String;

    .line 157
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "args"

    iget-object v1, p0, Lcom/anland/appwrap/AppCfg;->args:Ljava/lang/String;

    .line 158
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "container"

    iget-object v1, p0, Lcom/anland/appwrap/AppCfg;->container:Ljava/lang/String;

    .line 159
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "user"

    iget-object v1, p0, Lcom/anland/appwrap/AppCfg;->user:Ljava/lang/String;

    .line 160
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "dsPath"

    iget-object v1, p0, Lcom/anland/appwrap/AppCfg;->dsPath:Ljava/lang/String;

    .line 161
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "autoAttach"

    iget-boolean v1, p0, Lcom/anland/appwrap/AppCfg;->autoAttach:Z

    .line 162
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "rootDir"

    iget-object v1, p0, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    .line 163
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "chromeArgs"

    iget-object v1, p0, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    .line 164
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "url"

    iget-object v1, p0, Lcom/anland/appwrap/AppCfg;->url:Ljava/lang/String;

    .line 165
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "kgsl"

    iget-boolean v1, p0, Lcom/anland/appwrap/AppCfg;->kgsl:Z

    .line 166
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "envExtra"

    iget-object v1, p0, Lcom/anland/appwrap/AppCfg;->envExtra:Ljava/lang/String;

    .line 167
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "perfMode"

    iget v1, p0, Lcom/anland/appwrap/AppCfg;->perfMode:I

    .line 168
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "relayVerbose"

    iget-boolean v1, p0, Lcom/anland/appwrap/AppCfg;->relayVerbose:Z

    .line 169
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "display"

    iget v1, p0, Lcom/anland/appwrap/AppCfg;->display:I

    .line 170
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "runtimeDir"

    iget-object p0, p0, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    .line 171
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 172
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
