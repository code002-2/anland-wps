.class public final Lcom/anland/appwrap/RootExec;
.super Ljava/lang/Object;
.source "RootExec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anland/appwrap/RootExec$Result;,
        Lcom/anland/appwrap/RootExec$Progress;,
        Lcom/anland/appwrap/RootExec$Sink;
    }
.end annotation


# static fields
.field private static final SU_PATHS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    .line 53
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/xbin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/debug_ramdisk/su"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/data/adb/ksu/bin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/sbin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/su/bin/su"

    aput-object v2, v0, v1

    sput-object v0, Lcom/anland/appwrap/RootExec;->SU_PATHS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$reader$0(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/anland/appwrap/RootExec$Sink;)V
    .locals 4

    .line 138
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const p0, 0x8000

    invoke-direct {v0, v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x2000

    .line 140
    :try_start_1
    new-array p0, p0, [C

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p1, p0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 144
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {p2, v3}, Lcom/anland/appwrap/RootExec$Sink;->onLine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    .line 138
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void
.end method

.method private static reader(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/anland/appwrap/RootExec$Sink;)Ljava/lang/Thread;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anland/appwrap/RootExec$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/anland/appwrap/RootExec$$ExternalSyntheticLambda0;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/anland/appwrap/RootExec$Sink;)V

    const-string p0, "rootexec-reader"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public static run(Ljava/lang/String;)Lcom/anland/appwrap/RootExec$Result;
    .locals 2

    const-wide/32 v0, 0xea60

    .line 72
    invoke-static {p0, v0, v1}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object p0

    return-object p0
.end method

.method public static run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, v0, v0, p1, p2}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;Ljava/io/InputStream;Lcom/anland/appwrap/RootExec$Progress;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object p0

    return-object p0
.end method

.method public static run(Ljava/lang/String;Ljava/io/InputStream;Lcom/anland/appwrap/RootExec$Progress;J)Lcom/anland/appwrap/RootExec$Result;
    .locals 19

    move-object/from16 v0, p1

    move-wide/from16 v2, p3

    .line 84
    const-string v4, ""

    const/4 v6, 0x0

    .line 86
    :try_start_0
    new-instance v7, Ljava/lang/ProcessBuilder;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {}, Lcom/anland/appwrap/RootExec;->suPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "-c"

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object p0, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 89
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11, v8, v6}, Lcom/anland/appwrap/RootExec;->reader(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/anland/appwrap/RootExec$Sink;)Ljava/lang/Thread;

    move-result-object v11

    .line 92
    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12, v9, v6}, Lcom/anland/appwrap/RootExec;->reader(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/anland/appwrap/RootExec$Sink;)Ljava/lang/Thread;

    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4

    .line 95
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    const/high16 v14, 0x40000

    .line 96
    :try_start_3
    new-array v14, v14, [B

    const-wide/16 v15, 0x0

    move-wide v5, v15

    .line 99
    :goto_0
    invoke-virtual {v0, v14}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {v13, v14, v0, v10}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v0, v10

    add-long/2addr v5, v0

    if-eqz p2, :cond_0

    sub-long v0, v5, v15

    const-wide/32 v17, 0x400000

    cmp-long v0, v0, v17

    if-ltz v0, :cond_0

    move-object/from16 v1, p2

    .line 104
    invoke-interface {v1, v5, v6}, Lcom/anland/appwrap/RootExec$Progress;->onBytes(J)V

    move-object/from16 v0, p1

    move-wide v15, v5

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    move-object/from16 v0, p1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p2

    if-eqz v1, :cond_2

    .line 107
    invoke-interface {v1, v5, v6}, Lcom/anland/appwrap/RootExec$Progress;->onBytes(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz v13, :cond_4

    .line 108
    :try_start_4
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_3

    .line 95
    :try_start_5
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 113
    :catch_0
    :cond_4
    :goto_2
    :try_start_7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3, v0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const-wide/16 v5, 0xbb8

    .line 114
    invoke-virtual {v11, v5, v6}, Ljava/lang/Thread;->join(J)V

    .line 115
    invoke-virtual {v12, v5, v6}, Ljava/lang/Thread;->join(J)V

    if-nez v0, :cond_5

    .line 117
    invoke-virtual {v7}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 118
    new-instance v0, Lcom/anland/appwrap/RootExec$Result;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8d85\u65f6 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/anland/appwrap/RootExec$Result;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 120
    :cond_5
    new-instance v0, Lcom/anland/appwrap/RootExec$Result;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Process;->exitValue()I

    move-result v3

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/anland/appwrap/RootExec$Result;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    return-object v0

    :catch_1
    move-object v6, v7

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v6, v7

    goto :goto_4

    :catch_3
    move-object v5, v6

    :goto_3
    if-eqz v6, :cond_6

    .line 126
    invoke-virtual {v6}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 127
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 128
    new-instance v0, Lcom/anland/appwrap/RootExec$Result;

    const-string v1, "\u88ab\u4e2d\u65ad"

    const/4 v3, -0x1

    invoke-direct {v0, v4, v4, v3, v1}, Lcom/anland/appwrap/RootExec$Result;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    :catch_4
    move-exception v0

    move-object v5, v6

    :goto_4
    if-eqz v6, :cond_7

    .line 122
    invoke-virtual {v6}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 123
    :cond_7
    new-instance v1, Lcom/anland/appwrap/RootExec$Result;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "su \u542f\u52a8\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff08\u672c App \u62ff\u5230 root \u6388\u6743\u4e86\u5417\uff1f\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-direct {v1, v4, v4, v3, v0}, Lcom/anland/appwrap/RootExec$Result;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public static suPath()Ljava/lang/String;
    .locals 5

    .line 63
    sget-object v0, Lcom/anland/appwrap/RootExec;->SU_PATHS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->canExecute()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    return-object v3

    :catchall_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "su"

    return-object v0
.end method
