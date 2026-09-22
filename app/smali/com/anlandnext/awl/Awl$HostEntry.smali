.class final Lcom/anlandnext/awl/Awl$HostEntry;
.super Ljava/lang/Object;
.source "Awl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anlandnext/awl/Awl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HostEntry"
.end annotation


# instance fields
.field final cbs:Lcom/anlandnext/awl/Awl$HostCallbacks;

.field final win:Lcom/anlandnext/awl/Awl$WlWindow;


# direct methods
.method constructor <init>(Lcom/anlandnext/awl/Awl$WlWindow;Lcom/anlandnext/awl/Awl$HostCallbacks;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anlandnext/awl/Awl$HostEntry;->win:Lcom/anlandnext/awl/Awl$WlWindow;

    iput-object p2, p0, Lcom/anlandnext/awl/Awl$HostEntry;->cbs:Lcom/anlandnext/awl/Awl$HostCallbacks;

    return-void
.end method
