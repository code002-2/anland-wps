.class Lcom/anlandnext/awl/AwlWindowActivity$2;
.super Ljava/lang/Object;
.source "AwlWindowActivity.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anlandnext/awl/AwlWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anlandnext/awl/AwlWindowActivity;


# direct methods
.method public static synthetic $r8$lambda$Dk2ItF3in1lYueGI5BusXINXLfk(Lcom/anlandnext/awl/AwlWindowActivity$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity$2;->lambda$binderDied$0()V

    return-void
.end method

.method constructor <init>(Lcom/anlandnext/awl/AwlWindowActivity;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$2;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$binderDied$0()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$2;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-virtual {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$2;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "win "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$2;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": daemon gone (binder death) -> finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anland-awlwin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$2;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputfinishingByGone(Lcom/anlandnext/awl/AwlWindowActivity;Z)V

    const/4 v0, 0x0

    .line 284
    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$sfputsLastClipPushed(Ljava/lang/String;)V

    .line 285
    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$sfputsLastClipWritten(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$2;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v1, Lcom/anlandnext/awl/AwlWindowActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/anlandnext/awl/AwlWindowActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/anlandnext/awl/AwlWindowActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/anlandnext/awl/AwlWindowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
