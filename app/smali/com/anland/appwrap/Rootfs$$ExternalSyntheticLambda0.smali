.class public final synthetic Lcom/anland/appwrap/Rootfs$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/anland/appwrap/RootExec$Progress;


# instance fields
.field public final synthetic f$0:Lcom/anland/appwrap/Rootfs$Progress;


# direct methods
.method public synthetic constructor <init>(Lcom/anland/appwrap/Rootfs$Progress;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anland/appwrap/Rootfs$$ExternalSyntheticLambda0;->f$0:Lcom/anland/appwrap/Rootfs$Progress;

    return-void
.end method


# virtual methods
.method public final onBytes(J)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/anland/appwrap/Rootfs$$ExternalSyntheticLambda0;->f$0:Lcom/anland/appwrap/Rootfs$Progress;

    invoke-static {p0, p1, p2}, Lcom/anland/appwrap/Rootfs;->lambda$install$0(Lcom/anland/appwrap/Rootfs$Progress;J)V

    return-void
.end method
