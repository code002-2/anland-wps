.class public final Lcom/anlandnext/awl/Awl;
.super Ljava/lang/Object;
.source "Awl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anlandnext/awl/Awl$WlWindow;,
        Lcom/anlandnext/awl/Awl$EventBinder;,
        Lcom/anlandnext/awl/Awl$ClientProcess;,
        Lcom/anlandnext/awl/Awl$HostCallbacks;,
        Lcom/anlandnext/awl/Awl$HostEntry;,
        Lcom/anlandnext/awl/Awl$Callback;
    }
.end annotation


# static fields
.field private static final ATTACH_LOCK:Ljava/lang/Object;

.field private static final BINDER:Lcom/anlandnext/awl/Awl$EventBinder;

.field private static final CALLBACKS:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anlandnext/awl/Awl$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAIN:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "anland-awl"

.field private static final attachPending:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final daemonDeath:Landroid/os/IBinder$DeathRecipient;

.field private static final hostEntries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/anlandnext/awl/Awl$HostEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static refs:I

.field private static volatile subscribed:Z


# direct methods
.method static bridge synthetic -$$Nest$smdispatch(IJLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/anlandnext/awl/Awl;->dispatch(IJLjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 98
    new-instance v0, Lcom/anlandnext/awl/Awl$EventBinder;

    invoke-direct {v0}, Lcom/anlandnext/awl/Awl$EventBinder;-><init>()V

    sput-object v0, Lcom/anlandnext/awl/Awl;->BINDER:Lcom/anlandnext/awl/Awl$EventBinder;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/anlandnext/awl/Awl;->MAIN:Landroid/os/Handler;

    .line 100
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/anlandnext/awl/Awl;->CALLBACKS:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 105
    new-instance v0, Lcom/anlandnext/awl/Awl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/anlandnext/awl/Awl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/anlandnext/awl/Awl;->daemonDeath:Landroid/os/IBinder$DeathRecipient;

    .line 270
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/anlandnext/awl/Awl;->ATTACH_LOCK:Ljava/lang/Object;

    .line 271
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/anlandnext/awl/Awl;->attachPending:Ljava/util/HashSet;

    .line 272
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/anlandnext/awl/Awl;->hostEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire()V
    .locals 2

    .line 127
    sget v0, Lcom/anlandnext/awl/Awl;->refs:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/anlandnext/awl/Awl;->refs:I

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/anlandnext/awl/Awl;->subscribed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/anlandnext/awl/Awl;->subscribe()V

    return-void
.end method

.method private static attachFailed(J)V
    .locals 3

    .line 317
    sget-object v0, Lcom/anlandnext/awl/Awl;->ATTACH_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anlandnext/awl/Awl;->attachPending:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    sget-object v0, Lcom/anlandnext/awl/Awl;->hostEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    .line 317
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static attachWindow(Landroid/content/Context;JLjava/lang/String;)V
    .locals 2

    .line 285
    new-instance v0, Lcom/anlandnext/awl/Awl$WlWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/anlandnext/awl/Awl$WlWindow;-><init>(JZLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/anlandnext/awl/Awl;->attachWindow(Landroid/content/Context;Lcom/anlandnext/awl/Awl$WlWindow;Lcom/anlandnext/awl/Awl$HostCallbacks;)V

    return-void
.end method

.method public static attachWindow(Landroid/content/Context;JLjava/lang/String;Lcom/anlandnext/awl/Awl$HostCallbacks;)V
    .locals 2

    .line 290
    new-instance v0, Lcom/anlandnext/awl/Awl$WlWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/anlandnext/awl/Awl$WlWindow;-><init>(JZLjava/lang/String;)V

    invoke-static {p0, v0, p4}, Lcom/anlandnext/awl/Awl;->attachWindow(Landroid/content/Context;Lcom/anlandnext/awl/Awl$WlWindow;Lcom/anlandnext/awl/Awl$HostCallbacks;)V

    return-void
.end method

.method public static attachWindow(Landroid/content/Context;Lcom/anlandnext/awl/Awl$WlWindow;Lcom/anlandnext/awl/Awl$HostCallbacks;)V
    .locals 5

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 296
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10080000

    .line 297
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "anland://win/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 300
    const-string v1, "id"

    iget-wide v2, p1, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 301
    iget-object v1, p1, Lcom/anlandnext/awl/Awl$WlWindow;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "title"

    iget-object v2, p1, Lcom/anlandnext/awl/Awl$WlWindow;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    :cond_1
    sget-object v1, Lcom/anlandnext/awl/Awl;->ATTACH_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    sget-object v2, Lcom/anlandnext/awl/Awl;->attachPending:Ljava/util/HashSet;

    iget-wide v3, p1, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 304
    monitor-exit v1

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 305
    sget-object v2, Lcom/anlandnext/awl/Awl;->hostEntries:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p1, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/anlandnext/awl/Awl$HostEntry;

    invoke-direct {v4, p1, p2}, Lcom/anlandnext/awl/Awl$HostEntry;-><init>(Lcom/anlandnext/awl/Awl$WlWindow;Lcom/anlandnext/awl/Awl$HostCallbacks;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 306
    :cond_3
    sget-object p2, Lcom/anlandnext/awl/Awl;->hostEntries:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 311
    iget-wide p1, p1, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    invoke-static {p1, p2}, Lcom/anlandnext/awl/Awl;->attachFailed(J)V

    .line 312
    const-string p1, "anland-awl"

    const-string p2, "attachWindow failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_0
    move-exception p0

    .line 307
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public static available()Z
    .locals 1

    .line 67
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->available()Z

    move-result v0

    return v0
.end method

.method public static closeWindow(J)I
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcom/anlandnext/awl/AwlClient;->close(J)I

    move-result p0

    return p0
.end method

.method private static dispatch(IJLjava/lang/String;)V
    .locals 2

    .line 149
    sget-object v0, Lcom/anlandnext/awl/Awl;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/anlandnext/awl/Awl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anlandnext/awl/Awl$$ExternalSyntheticLambda1;-><init>(IJLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static ensureSubscribed()V
    .locals 1

    .line 123
    sget-object v0, Lcom/anlandnext/awl/Awl;->CALLBACKS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/anlandnext/awl/Awl;->refs:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/anlandnext/awl/Awl;->subscribe()V

    return-void
.end method

.method public static getWaylandFd()Ljava/io/FileDescriptor;
    .locals 1

    .line 77
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->connect()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static getWindows()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anlandnext/awl/Awl$WlWindow;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->list()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anlandnext/awl/AwlClient$WinInfo;

    .line 86
    new-instance v3, Lcom/anlandnext/awl/Awl$WlWindow;

    iget-wide v4, v2, Lcom/anlandnext/awl/AwlClient$WinInfo;->id:J

    iget-boolean v6, v2, Lcom/anlandnext/awl/AwlClient$WinInfo;->attached:Z

    iget-object v2, v2, Lcom/anlandnext/awl/AwlClient$WinInfo;->title:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/anlandnext/awl/Awl$WlWindow;-><init>(JZLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static hostArrived(J)V
    .locals 2

    .line 323
    sget-object v0, Lcom/anlandnext/awl/Awl;->ATTACH_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anlandnext/awl/Awl;->attachPending:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static hostEntry(J)Lcom/anlandnext/awl/Awl$HostEntry;
    .locals 1

    .line 329
    sget-object v0, Lcom/anlandnext/awl/Awl;->hostEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/anlandnext/awl/Awl$HostEntry;

    return-object p0
.end method

.method static hostGone(J)V
    .locals 3

    .line 334
    sget-object v0, Lcom/anlandnext/awl/Awl;->ATTACH_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anlandnext/awl/Awl;->attachPending:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    sget-object v0, Lcom/anlandnext/awl/Awl;->hostEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    .line 334
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic lambda$dispatch$1(IJLjava/lang/String;)V
    .locals 4

    .line 150
    sget-object v0, Lcom/anlandnext/awl/Awl;->CALLBACKS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anlandnext/awl/Awl$Callback;

    const/4 v3, 0x1

    if-ne p0, v3, :cond_1

    .line 151
    invoke-interface {v1, p1, p2, p3}, Lcom/anlandnext/awl/Awl$Callback;->onWindowCreated(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p0, v2, :cond_2

    .line 152
    invoke-interface {v1, p1, p2}, Lcom/anlandnext/awl/Awl$Callback;->onWindowDestroyed(J)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p0, v2, :cond_3

    .line 153
    invoke-interface {v1, p1, p2}, Lcom/anlandnext/awl/Awl$Callback;->onWindowAttached(J)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p0, v2, :cond_0

    .line 154
    invoke-interface {v1, p1, p2}, Lcom/anlandnext/awl/Awl$Callback;->onWindowDetached(J)V

    goto :goto_0

    :cond_4
    if-ne p0, v2, :cond_5

    .line 157
    invoke-static {p1, p2}, Lcom/anlandnext/awl/Awl;->hostGone(J)V

    :cond_5
    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    sput-boolean v0, Lcom/anlandnext/awl/Awl;->subscribed:Z

    return-void
.end method

.method public static registerCallback(Lcom/anlandnext/awl/Awl$Callback;)V
    .locals 1

    .line 109
    sget-object v0, Lcom/anlandnext/awl/Awl;->CALLBACKS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 110
    invoke-static {}, Lcom/anlandnext/awl/Awl;->subscribe()V

    return-void
.end method

.method static release()V
    .locals 1

    .line 131
    sget v0, Lcom/anlandnext/awl/Awl;->refs:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/anlandnext/awl/Awl;->refs:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/anlandnext/awl/Awl;->CALLBACKS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anlandnext/awl/Awl;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public static varargs spawnClient(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)Lcom/anlandnext/awl/Awl$ClientProcess;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 222
    const-string v2, "anland-awl"

    const-string v3, "fd dup failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    :goto_0
    if-gez v1, :cond_1

    return-object v0

    .line 225
    :cond_1
    invoke-static {v1, p1, p2}, Lcom/anlandnext/awl/Spawn;->nativeSpawn(ILjava/lang/String;[Ljava/lang/String;)[I

    move-result-object p1

    .line 228
    :try_start_1
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-eqz p1, :cond_3

    .line 229
    array-length p0, p1

    const/4 p2, 0x4

    if-lt p0, p2, :cond_3

    const/4 p0, 0x0

    aget p2, p1, p0

    if-gtz p2, :cond_2

    goto :goto_1

    .line 230
    :cond_2
    new-instance p2, Lcom/anlandnext/awl/Awl$ClientProcess;

    aget p0, p1, p0

    const/4 v0, 0x1

    aget v0, p1, v0

    .line 231
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, p1, v1

    .line 232
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, 0x3

    aget p1, p1, v2

    .line 233
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/anlandnext/awl/Awl$ClientProcess;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    return-object p2

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static subscribe()V
    .locals 3

    .line 135
    sget-boolean v0, Lcom/anlandnext/awl/Awl;->subscribed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/anlandnext/awl/Awl;->BINDER:Lcom/anlandnext/awl/Awl$EventBinder;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlClient;->subscribe(Landroid/os/IBinder;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 137
    :goto_0
    sput-boolean v1, Lcom/anlandnext/awl/Awl;->subscribed:Z

    .line 138
    sget-boolean v1, Lcom/anlandnext/awl/Awl;->subscribed:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/anlandnext/awl/Awl;->daemonDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlClient;->monitorDeath(Landroid/os/IBinder$DeathRecipient;)Z

    .line 139
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subscribe rc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anland-awl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static unregisterCallback(Lcom/anlandnext/awl/Awl$Callback;)V
    .locals 1

    .line 115
    sget-object v0, Lcom/anlandnext/awl/Awl;->CALLBACKS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/anlandnext/awl/Awl;->refs:I

    if-nez p0, :cond_0

    invoke-static {}, Lcom/anlandnext/awl/Awl;->unsubscribe()V

    :cond_0
    return-void
.end method

.method private static unsubscribe()V
    .locals 1

    .line 143
    sget-boolean v0, Lcom/anlandnext/awl/Awl;->subscribed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 144
    sput-boolean v0, Lcom/anlandnext/awl/Awl;->subscribed:Z

    .line 145
    sget-object v0, Lcom/anlandnext/awl/Awl;->BINDER:Lcom/anlandnext/awl/Awl$EventBinder;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlClient;->unsubscribe(Landroid/os/IBinder;)I

    return-void
.end method
