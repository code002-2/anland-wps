.class public final Lcom/anland/appwrap/Rootfs;
.super Ljava/lang/Object;
.source "Rootfs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anland/appwrap/Rootfs$Progress;
    }
.end annotation


# static fields
.field public static final ASSET:Ljava/lang/String; = "rootfs.tar.xz"

.field public static final GLPROXY_ASSET_DIR:Ljava/lang/String; = "glproxy"

.field public static final GLPROXY_DIR:Ljava/lang/String; = "usr/lib/aarch64-linux-gnu"

.field public static final GLPROXY_LIBS:[Ljava/lang/String;

.field public static final MARK:Ljava/lang/String; = ".appwrap-ok"

.field public static final NEED_BYTES:J = 0x32000000L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "libEGL.so.1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "libGLESv2.so.2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/anland/appwrap/Rootfs;->GLPROXY_LIBS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assetLength(Landroid/content/Context;)J
    .locals 2

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "rootfs.tar.xz"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 57
    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-wide v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 55
    :try_start_3
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/anland/appwrap/Rootfs$Progress;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x40000

    .line 222
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 225
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    const/4 v6, 0x0

    .line 226
    invoke-virtual {p1, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v5, p2, v1

    if-lez v5, :cond_0

    const-wide/32 v5, 0x800000

    .line 228
    rem-long v5, v3, v5

    const-wide/32 v7, 0x40000

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    invoke-interface {p4, v3, v4, p2, p3}, Lcom/anland/appwrap/Rootfs$Progress;->bytes(JJ)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-interface {p4, v3, v4, p2, p3}, Lcom/anland/appwrap/Rootfs$Progress;->bytes(JJ)V

    return-void
.end method

.method private static fixups(Landroid/content/Context;Ljava/lang/String;Lcom/anland/appwrap/Rootfs$Progress;)Lcom/anland/appwrap/RootExec$Result;
    .locals 10

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usr/lib/aarch64-linux-gnu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5b89\u88c5 GL \u8f6c\u53d1\u58f3 \u2192 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/anland/appwrap/Rootfs$Progress;->phase(Ljava/lang/String;)V

    .line 180
    sget-object v1, Lcom/anland/appwrap/Rootfs;->GLPROXY_LIBS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".1.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "glproxy/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mkdir -p "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " && rm -f "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " && cat > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 187
    invoke-static {v5}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-wide/32 v8, 0x1d4c0

    .line 186
    invoke-static {v5, v6, v7, v8, v9}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;Ljava/io/InputStream;Lcom/anland/appwrap/RootExec$Progress;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    .line 188
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    :cond_0
    iget-boolean v4, v5, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-nez v4, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    if-eqz v6, :cond_2

    .line 184
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 189
    new-instance p1, Lcom/anland/appwrap/RootExec$Result;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u8bfb assets/glproxy/"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " \u5931\u8d25: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 190
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    const/4 v0, -0x1

    invoke-direct {p1, p2, p2, v0, p0}, Lcom/anland/appwrap/RootExec$Result;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1

    .line 195
    :cond_3
    const-string p0, "\u9996\u6b21\u6536\u5c3e\uff08/dev/shm\u3001/tmp\u3001resolv.conf\u3001\u7b26\u53f7\u94fe\u63a5\u3001ldconfig\uff09..."

    invoke-interface {p2, p0}, Lcom/anland/appwrap/Rootfs$Progress;->phase(Ljava/lang/String;)V

    .line 196
    invoke-static {p1}, Lcom/anland/appwrap/Rootfs;->fixupsScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/32 p1, 0x927c0

    invoke-static {p0, p1, p2}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object p0

    return-object p0
.end method

.method private static fixupsScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\nL=\"$R/usr/lib/aarch64-linux-gnu\"\nmkdir -p \"$R/dev/shm\" \"$R/tmp\" \"$R/run\" \"$R/root/.chrome\" \"$L\"\nchmod 1777 \"$R/tmp\" \"$R/dev/shm\" 2>/dev/null\nprintf \'nameserver 223.5.5.5\\nnameserver 8.8.8.8\\n\' > \"$R/etc/resolv.conf\"\nprintf \'127.0.0.1 localhost\\n::1 localhost\\n\' > \"$R/etc/hosts\"\nchmod 755 \"$L/libEGL.so.1.1.0\" \"$L/libGLESv2.so.2.1.0\" 2>/dev/null\nrm -f \"$L/libEGL.so.1\" \"$L/libGLESv2.so.2\"\nln -sf libEGL.so.1.1.0 \"$L/libEGL.so.1\"\nln -sf libGLESv2.so.2.1.0 \"$L/libGLESv2.so.2\"\necho \'GL \u8f6c\u53d1\u58f3\uff08\u77ed\u540d\u5b57 -> \u7248\u672c\u5316\u6587\u4ef6\uff09:\'\nls -l \"$L/libEGL.so.1\" \"$L/libGLESv2.so.2\" 2>&1\n{ [ -x \"$R/sbin/ldconfig\" ] && chroot \"$R\" /sbin/ldconfig ; } 2>/dev/null\n{ [ -x \"$R/usr/sbin/ldconfig\" ] && chroot \"$R\" /usr/sbin/ldconfig ; } 2>/dev/null\ntouch \"$R/.appwrap-ok\"\necho FIXUPS-DONE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static freeKb(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3

    .line 72
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2f

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "df -k "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x4e20

    invoke-static {p0, v0, v1}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object p0

    .line 74
    iget-boolean p1, p0, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    const-wide/16 v0, -0x1

    if-nez p1, :cond_1

    return-wide v0

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 76
    array-length p1, p0

    const/4 v2, 0x2

    if-ge p1, v2, :cond_2

    return-wide v0

    .line 78
    :cond_2
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 79
    array-length p1, p0

    const/4 v2, 0x4

    if-ge p1, v2, :cond_3

    return-wide v0

    :cond_3
    const/4 p1, 0x3

    .line 81
    :try_start_0
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide v0
.end method

.method public static install(Landroid/content/Context;Lcom/anland/appwrap/AppCfg;Lcom/anland/appwrap/Rootfs$Progress;Z)Lcom/anland/appwrap/RootExec$Result;
    .locals 12

    .line 89
    iget-object p1, p1, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    .line 90
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 92
    :goto_0
    const-string v1, "\u68c0\u67e5\u7a7a\u95f4\u4e0e\u76ee\u5f55 ..."

    invoke-interface {p2, v1}, Lcom/anland/appwrap/Rootfs$Progress;->phase(Ljava/lang/String;)V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mkdir -p "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-static {v1, v2, v3}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v1

    .line 94
    iget-boolean v2, v1, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-nez v2, :cond_1

    return-object v1

    .line 95
    :cond_1
    invoke-static {p0, v0}, Lcom/anland/appwrap/Rootfs;->freeKb(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    const/4 v6, -0x1

    .line 96
    const-string v7, ""

    if-lez v5, :cond_2

    const-wide/32 v8, 0xc800000

    sub-long v8, v1, v8

    const-wide/32 v10, 0x32000000

    cmp-long v5, v8, v10

    if-gez v5, :cond_2

    .line 97
    new-instance p0, Lcom/anland/appwrap/RootExec$Result;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u7a7a\u95f4\u4e0d\u8db3\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \u53ef\u7528 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " MB\uff0c\u9700\u8981\u7ea6 800 MB\uff08\u6362\u4e2a rootfs \u76ee\u5f55\u6216\u6e05\u70b9\u7a7a\u95f4\uff09"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v7, v7, v6, p1}, Lcom/anland/appwrap/RootExec$Result;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    .line 102
    :cond_2
    invoke-static {p0}, Lcom/anland/appwrap/Rootfs;->assetLength(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    .line 104
    const-string v4, "rootfs.tar.xz"

    if-eqz p3, :cond_5

    .line 105
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v8, "rootfs.tar"

    invoke-direct {p3, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "\u4e24\u6b65\u6a21\u5f0f\uff1a\u5148\u89e3\u6210 "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\uff08App \u7f13\u5b58\u9700\u8981 ~515MB \u4e34\u65f6\u7a7a\u95f4\uff09"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/anland/appwrap/Rootfs$Progress;->phase(Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    new-instance v5, Lorg/tukaani/xz/XZInputStream;

    invoke-direct {v5, v4}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 109
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    :try_start_3
    invoke-static {v5, v8, v0, v1, p2}, Lcom/anland/appwrap/Rootfs;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/anland/appwrap/Rootfs$Progress;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v5}, Lorg/tukaani/xz/XZInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tar \u89e3\u5305\u5230 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/anland/appwrap/Rootfs$Progress;->phase(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tar -xf "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -C "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v0

    .line 117
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    .line 107
    :try_start_7
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_9
    invoke-virtual {v5}, Lorg/tukaani/xz/XZInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    if-eqz v4, :cond_4

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    .line 112
    new-instance p1, Lcom/anland/appwrap/RootExec$Result;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u89e3 xz \u5931\u8d25: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v7, v7, v6, p0}, Lcom/anland/appwrap/RootExec$Result;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1

    .line 119
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u6d41\u5f0f\u89e3\u5305\uff08Java \u89e3 xz \u2192 root \u4fa7 tar\uff09\u2192 "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/anland/appwrap/Rootfs$Progress;->phase(Ljava/lang/String;)V

    .line 122
    :try_start_d
    new-instance p3, Lorg/tukaani/xz/XZInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tar -xf - -C "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/anland/appwrap/Rootfs$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/anland/appwrap/Rootfs$$ExternalSyntheticLambda0;-><init>(Lcom/anland/appwrap/Rootfs$Progress;)V

    invoke-static {v0, p3, v1, v2, v3}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;Ljava/io/InputStream;Lcom/anland/appwrap/RootExec$Progress;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v0

    .line 129
    iget-boolean p3, v0, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-nez p3, :cond_6

    iget-object p3, v0, Lcom/anland/appwrap/RootExec$Result;->err:Ljava/lang/String;

    const-string v1, "No such file"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 130
    new-instance p3, Lcom/anland/appwrap/RootExec$Result;

    iget-object v1, v0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    iget-object v2, v0, Lcom/anland/appwrap/RootExec$Result;->err:Ljava/lang/String;

    iget v3, v0, Lcom/anland/appwrap/RootExec$Result;->exit:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-virtual {v0}, Lcom/anland/appwrap/RootExec$Result;->why()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\uff08\u53ef\u80fd\u662f tar \u4e0d\u652f\u6301 -f -\uff0c\u6539\u7528\u4e24\u6b65\u6a21\u5f0f\u91cd\u8bd5\uff09"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v1, v2, v3, v0}, Lcom/anland/appwrap/RootExec$Result;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, p3

    .line 134
    :cond_6
    :goto_4
    iget-boolean p3, v0, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-nez p3, :cond_7

    return-object v0

    .line 136
    :cond_7
    const-string p3, "\u9996\u6b21\u6536\u5c3e\uff08GL \u8f6c\u53d1\u58f3\u3001/dev/shm\u3001/tmp\u3001resolv.conf\u3001ldconfig\uff09..."

    invoke-interface {p2, p3}, Lcom/anland/appwrap/Rootfs$Progress;->phase(Ljava/lang/String;)V

    .line 137
    invoke-static {p0, p1, p2}, Lcom/anland/appwrap/Rootfs;->fixups(Landroid/content/Context;Ljava/lang/String;Lcom/anland/appwrap/Rootfs$Progress;)Lcom/anland/appwrap/RootExec$Result;

    move-result-object p0

    .line 138
    iget-boolean p2, p0, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-nez p2, :cond_8

    goto :goto_5

    .line 140
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[ -x "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "/usr/bin/wps"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 141
    invoke-static {p3}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " ] && echo OK"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v1, 0x4e20

    .line 140
    invoke-static {p2, v1, v2}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object p2

    .line 142
    iget-boolean p3, p2, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-eqz p3, :cond_a

    iget-object p3, p2, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    return-object p0

    .line 143
    :cond_a
    :goto_6
    new-instance p0, Lcom/anland/appwrap/RootExec$Result;

    iget-object p3, p2, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    iget-object v1, p2, Lcom/anland/appwrap/RootExec$Result;->err:Ljava/lang/String;

    iget p2, p2, Lcom/anland/appwrap/RootExec$Result;->exit:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u89e3\u5305\u540e\u6ca1\u627e\u5230 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, v1, p2, p1}, Lcom/anland/appwrap/RootExec$Result;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 124
    new-instance p1, Lcom/anland/appwrap/RootExec$Result;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u6253\u5f00 assets/rootfs.tar.xz \u5931\u8d25: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v7, v7, v6, p0}, Lcom/anland/appwrap/RootExec$Result;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method public static installed(Landroid/content/Context;Lcom/anland/appwrap/AppCfg;)Z
    .locals 2

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[ -f "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.appwrap-ok"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ] && [ -x "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/usr/bin/wps"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ] && echo OK"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x4e20

    .line 64
    invoke-static {p0, v0, v1}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object p0

    .line 67
    iget-boolean p1, p0, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    const-string p1, "OK"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$install$0(Lcom/anland/appwrap/Rootfs$Progress;J)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 127
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/anland/appwrap/Rootfs$Progress;->bytes(JJ)V

    return-void
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 51
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

.method public static wipe(Landroid/content/Context;Lcom/anland/appwrap/AppCfg;)Lcom/anland/appwrap/RootExec$Result;
    .locals 2

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "D="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\nfor m in proc dev/shm dev sys; do\n  grep -q \" $D/$m \" /proc/mounts && umount -l \"$D/$m\" 2>/dev/null\ndone\nrm -rf \"$D\"\necho DONE\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/32 v0, 0x927c0

    .line 158
    invoke-static {p0, v0, v1}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object p0

    return-object p0
.end method
