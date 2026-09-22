.class public final synthetic Lcom/anland/appwrap/RootExec$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/InputStream;

.field public final synthetic f$1:Ljava/lang/StringBuilder;

.field public final synthetic f$2:Lcom/anland/appwrap/RootExec$Sink;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/anland/appwrap/RootExec$Sink;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anland/appwrap/RootExec$$ExternalSyntheticLambda0;->f$0:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/anland/appwrap/RootExec$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/anland/appwrap/RootExec$$ExternalSyntheticLambda0;->f$2:Lcom/anland/appwrap/RootExec$Sink;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/anland/appwrap/RootExec$$ExternalSyntheticLambda0;->f$0:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/anland/appwrap/RootExec$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/anland/appwrap/RootExec$$ExternalSyntheticLambda0;->f$2:Lcom/anland/appwrap/RootExec$Sink;

    invoke-static {v0, v1, p0}, Lcom/anland/appwrap/RootExec;->lambda$reader$0(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/anland/appwrap/RootExec$Sink;)V

    return-void
.end method
