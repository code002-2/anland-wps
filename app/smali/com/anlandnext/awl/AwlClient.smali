.class final Lcom/anlandnext/awl/AwlClient;
.super Ljava/lang/Object;
.source "AwlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anlandnext/awl/AwlClient$WinInfo;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "anland.IHost"

.field static final E_ATTACHED:I = 0x3

.field static final E_CREATED:I = 0x1

.field static final E_DESTROYED:I = 0x2

.field static final E_DETACHED:I = 0x4

.field static final IME_COMMIT:I = 0x1

.field static final IME_CURSOR:I = 0x4

.field static final IME_DELETE:I = 0x3

.field static final IME_PREEDIT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "anland-awl"

.field static final T_CLIPBOARD:I = 0xb

.field static final T_CLOSE:I = 0xe

.field static final T_CONNECT:I = 0x12

.field static final T_FOCUS:I = 0x8

.field static final T_ICON:I = 0xf

.field static final T_IME:I = 0xa

.field static final T_INPUT:I = 0x9

.field static final T_LIST:I = 0x4

.field static final T_PAUSE:I = 0x6

.field static final T_RESIZE:I = 0x3

.field static final T_SUBSCRIBE:I = 0x10

.field static final T_SURFACE:I = 0x1

.field static final T_UNSUBSCRIBE:I = 0x11

.field private static s:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static available()Z
    .locals 1

    .line 78
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static clipboard(JLjava/lang/String;)V
    .locals 4

    .line 231
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 235
    :try_start_0
    const-string v3, "anland.IHost"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    if-nez p2, :cond_1

    .line 237
    const-string p2, ""

    :cond_1
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p0, 0xb

    const/4 p1, 0x1

    .line 238
    invoke-interface {v0, p0, v1, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 240
    :catch_0
    :try_start_1
    sput-object v2, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    throw p0
.end method

.method static close(J)I
    .locals 5

    .line 165
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 170
    :try_start_0
    const-string v4, "anland.IHost"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p0, 0xe

    const/4 p1, 0x0

    .line 172
    invoke-interface {v0, p0, v2, v3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 173
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    const/4 p1, 0x4

    if-lt p0, p1, :cond_1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    .line 175
    :try_start_1
    sput-object p0, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 180
    throw p0
.end method

.method static connect()Ljava/io/FileDescriptor;
    .locals 10

    .line 336
    const-string v0, "anland-awl"

    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 339
    :cond_0
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 340
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    .line 342
    :try_start_0
    sget v5, Landroid/system/OsConstants;->AF_UNIX:I

    sget v6, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v3, v4}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_6

    .line 349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 352
    :try_start_1
    const-string v8, "anland.IHost"

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 362
    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    const/16 v9, 0x12

    .line 365
    invoke-interface {v1, v9, v5, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 366
    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v9, 0x4

    if-lt v1, v9, :cond_1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    move v7, v8

    :cond_1
    if-nez v7, :cond_2

    .line 367
    const-string v1, "CONNECT refused (daemon down / server off)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :cond_2
    :try_start_2
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    if-nez v7, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 369
    :try_start_3
    const-string v8, "CONNECT failed"

    invoke-static {v0, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    sput-object v2, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 375
    :try_start_4
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    if-nez v7, :cond_3

    .line 377
    :goto_0
    :try_start_5
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_3

    .line 378
    :catch_3
    :cond_3
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 379
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    if-eqz v7, :cond_4

    move-object v2, v4

    :cond_4
    return-object v2

    .line 375
    :goto_1
    :try_start_6
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    if-nez v7, :cond_5

    .line 377
    :try_start_7
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_5

    .line 378
    :catch_5
    :cond_5
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 379
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 380
    throw v0

    :catch_6
    move-exception v1

    .line 345
    const-string v3, "socketpair failed"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method static focus(JZ)I
    .locals 5

    .line 145
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 147
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 150
    :try_start_0
    const-string v4, "anland.IHost"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p0, 0x8

    const/4 p1, 0x0

    .line 153
    invoke-interface {v0, p0, v2, v3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 154
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    const/4 p1, 0x4

    if-lt p0, p1, :cond_1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 160
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    .line 156
    :try_start_1
    sput-object p0, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 160
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 161
    throw p0
.end method

.method private static get()Landroid/os/IBinder;
    .locals 7

    .line 63
    const-string v0, "anland-awl"

    sget-object v1, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 64
    sput-object v1, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;

    .line 66
    :try_start_0
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 67
    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 68
    const-string v3, "anland.host"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-nez v1, :cond_1

    .line 69
    const-string v1, "getService(anland.host) = null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_1
    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object v1, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;

    goto :goto_0

    .line 71
    :cond_2
    const-string v1, "anland.host pingBinder=false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 73
    const-string v2, "getService failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :goto_0
    sget-object v0, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;

    return-object v0
.end method

.method static icon(J[I)[B
    .locals 6

    .line 249
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 251
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 254
    :try_start_0
    const-string v4, "anland.IHost"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v2, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p0, 0xf

    const/4 p1, 0x0

    .line 256
    invoke-interface {v0, p0, v2, v3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 257
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_2

    .line 266
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 258
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 259
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz p2, :cond_3

    .line 260
    array-length v4, p2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    aput p0, p2, p1

    const/4 p1, 0x1

    aput v0, p2, p1

    :cond_3
    if-lez p0, :cond_1

    if-lez v0, :cond_1

    .line 261
    invoke-virtual {v3}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 263
    :catch_0
    :try_start_2
    sput-object v1, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 266
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 268
    throw p0
.end method

.method static ime(JIIILjava/lang/String;)V
    .locals 4

    .line 211
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 215
    :try_start_0
    const-string v3, "anland.IHost"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p5, :cond_1

    .line 220
    const-string p5, ""

    :cond_1
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p0, 0xa

    const/4 p1, 0x1

    .line 221
    invoke-interface {v0, p0, v1, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 223
    :catch_0
    :try_start_1
    sput-object v2, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    throw p0
.end method

.method static input(JIIFFFFI)V
    .locals 4

    .line 187
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 191
    :try_start_0
    const-string v3, "anland.IHost"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 196
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 197
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 198
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 199
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x0

    .line 200
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p0, 0x9

    const/4 p1, 0x1

    .line 201
    invoke-interface {v0, p0, v1, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 203
    :catch_0
    :try_start_1
    sput-object v2, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    throw p0
.end method

.method static list()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/anlandnext/awl/AwlClient$WinInfo;",
            ">;"
        }
    .end annotation

    .line 272
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 274
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 277
    :try_start_0
    const-string v4, "anland.IHost"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 278
    invoke-interface {v0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 279
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_2

    .line 282
    new-instance v7, Lcom/anlandnext/awl/AwlClient$WinInfo;

    invoke-direct {v7}, Lcom/anlandnext/awl/AwlClient$WinInfo;-><init>()V

    .line 283
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/anlandnext/awl/AwlClient$WinInfo;->id:J

    .line 284
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    iput-boolean v8, v7, Lcom/anlandnext/awl/AwlClient$WinInfo;->attached:Z

    .line 285
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/anlandnext/awl/AwlClient$WinInfo;->title:Ljava/lang/String;

    .line 286
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 290
    :try_start_1
    const-string v4, "anland-awl"

    const-string v5, "LIST transact failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    sput-object v1, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 294
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 296
    throw v0
.end method

.method static monitorDeath(Landroid/os/IBinder$DeathRecipient;)Z
    .locals 3

    .line 385
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 388
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 391
    const-string v0, "anland-awl"

    const-string v2, "linkToDeath failed"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static pause(JJ)V
    .locals 4

    .line 129
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 133
    :try_start_0
    const-string v3, "anland.IHost"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p0, 0x6

    const/4 p1, 0x1

    .line 136
    invoke-interface {v0, p0, v1, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 138
    :catch_0
    :try_start_1
    sput-object v2, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 141
    throw p0
.end method

.method static resize(JII)I
    .locals 5

    .line 107
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 112
    :try_start_0
    const-string v4, "anland.IHost"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    .line 116
    invoke-interface {v0, p0, v2, v3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 117
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    const/4 p1, 0x4

    if-lt p0, p1, :cond_1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    .line 119
    :try_start_1
    sput-object p0, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 124
    throw p0
.end method

.method static subscribe(Landroid/os/IBinder;)I
    .locals 1

    const/16 v0, 0x10

    .line 300
    invoke-static {v0, p0}, Lcom/anlandnext/awl/AwlClient;->transactBinder(ILandroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method static surface(JIILandroid/view/Surface;Landroid/os/IBinder;J)I
    .locals 5

    .line 82
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_2

    .line 84
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 87
    :try_start_0
    const-string v4, "anland.IHost"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x0

    .line 91
    invoke-virtual {p4, v2, p0}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 93
    invoke-virtual {v2, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x1

    .line 94
    invoke-interface {v0, p1, v2, v3, p0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 95
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    const/4 p1, 0x4

    if-lt p0, p1, :cond_1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/high16 p0, -0x80000000

    .line 101
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 97
    :try_start_1
    const-string p1, "anland-awl"

    const-string p2, "SURFACE transact failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 98
    sput-object p0, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v1

    .line 101
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 103
    throw p0

    :cond_2
    :goto_2
    return v1
.end method

.method private static transactBinder(ILandroid/os/IBinder;)I
    .locals 6

    const-string v0, "transact "

    .line 308
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->get()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 310
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 313
    :try_start_0
    const-string v5, "anland.IHost"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x0

    .line 315
    invoke-interface {v1, p0, v3, v4, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 316
    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    const/4 v1, 0x4

    if-lt p1, v1, :cond_1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 323
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 318
    :try_start_1
    const-string v1, "anland-awl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " failed"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 319
    sput-object p0, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 323
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 324
    throw p0
.end method

.method static unmonitorDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2

    .line 397
    sget-object v0, Lcom/anlandnext/awl/AwlClient;->s:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 400
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static unsubscribe(Landroid/os/IBinder;)I
    .locals 1

    const/16 v0, 0x11

    .line 304
    invoke-static {v0, p0}, Lcom/anlandnext/awl/AwlClient;->transactBinder(ILandroid/os/IBinder;)I

    move-result p0

    return p0
.end method
