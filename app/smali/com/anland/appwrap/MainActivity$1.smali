.class Lcom/anland/appwrap/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/anlandnext/awl/Awl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anland/appwrap/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anland/appwrap/MainActivity;


# direct methods
.method constructor <init>(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/anland/appwrap/MainActivity$1;->this$0:Lcom/anland/appwrap/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached(J)V
    .locals 2

    .line 79
    iget-object p0, p0, Lcom/anland/appwrap/MainActivity$1;->this$0:Lcom/anland/appwrap/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7a97\u53e3\u5df2\u6302\u8f7d id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/anland/appwrap/MainActivity;->-$$Nest$mlogLine(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowCreated(JLjava/lang/String;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity$1;->this$0:Lcom/anland/appwrap/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7a97\u53e3\u521b\u5efa id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anland/appwrap/MainActivity;->-$$Nest$mlogLine(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity$1;->this$0:Lcom/anland/appwrap/MainActivity;

    invoke-static {v0}, Lcom/anland/appwrap/MainActivity;->-$$Nest$fgetcfg(Lcom/anland/appwrap/MainActivity;)Lcom/anland/appwrap/AppCfg;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity$1;->this$0:Lcom/anland/appwrap/MainActivity;

    invoke-static {v0}, Lcom/anland/appwrap/MainActivity;->-$$Nest$fgetcfg(Lcom/anland/appwrap/MainActivity;)Lcom/anland/appwrap/AppCfg;

    move-result-object v0

    iget-boolean v0, v0, Lcom/anland/appwrap/AppCfg;->autoAttach:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/anland/appwrap/MainActivity$1;->this$0:Lcom/anland/appwrap/MainActivity;

    invoke-static {p0, p1, p2, p3}, Lcom/anland/appwrap/MainActivity;->-$$Nest$mattach(Lcom/anland/appwrap/MainActivity;JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWindowDestroyed(J)V
    .locals 2

    .line 78
    iget-object p0, p0, Lcom/anland/appwrap/MainActivity$1;->this$0:Lcom/anland/appwrap/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7a97\u53e3\u9500\u6bc1 id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/anland/appwrap/MainActivity;->-$$Nest$mlogLine(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowDetached(J)V
    .locals 2

    .line 80
    iget-object p0, p0, Lcom/anland/appwrap/MainActivity$1;->this$0:Lcom/anland/appwrap/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7a97\u53e3\u5df2\u5378\u8f7d id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/anland/appwrap/MainActivity;->-$$Nest$mlogLine(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    return-void
.end method
