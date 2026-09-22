.class Lcom/anlandnext/awl/AwlWindowActivity$3;
.super Ljava/lang/Object;
.source "AwlWindowActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anlandnext/awl/AwlWindowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anlandnext/awl/AwlWindowActivity;


# direct methods
.method constructor <init>(Lcom/anlandnext/awl/AwlWindowActivity;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .line 439
    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const-string v0, "x"

    const-string v1, "anland-awlwin"

    if-gez p2, :cond_0

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "awaiting: surface ready "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1, p3}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputlastW(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 443
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0, p4}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputlastH(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    return-void

    .line 446
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "win "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " surface "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetattached(Lcom/anlandnext/awl/AwlWindowActivity;)Z

    move-result p2

    .line 449
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    if-nez p2, :cond_1

    .line 448
    invoke-static {v0, p1, p3, p4}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$msendSurface(Lcom/anlandnext/awl/AwlWindowActivity;Landroid/view/SurfaceHolder;II)V

    return-void

    .line 449
    :cond_1
    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetlastW(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p1

    if-ne p3, p1, :cond_3

    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetlastH(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p1

    if-eq p4, p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 451
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide p1

    invoke-static {p1, p2, p3, p4}, Lcom/anlandnext/awl/AwlClient;->resize(JII)I

    .line 452
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1, p3}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputlastW(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 453
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0, p4}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputlastH(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$3;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputattached(Lcom/anlandnext/awl/AwlWindowActivity;Z)V

    return-void
.end method
