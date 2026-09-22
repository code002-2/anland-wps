.class Lcom/anland/appwrap/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/anland/appwrap/Rootfs$Progress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anland/appwrap/MainActivity;->installRootfs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anland/appwrap/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$ZQl82PXnl4t0OUhX9WPcvbORP9E(Lcom/anland/appwrap/MainActivity$2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity$2;->lambda$phase$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xwtAQlMhcHlnrjmiyqQnEWo2o1k(Lcom/anland/appwrap/MainActivity$2;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anland/appwrap/MainActivity$2;->lambda$bytes$1(J)V

    return-void
.end method

.method constructor <init>(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/anland/appwrap/MainActivity$2;->this$0:Lcom/anland/appwrap/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$bytes$1(J)V
    .locals 4

    .line 502
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity$2;->this$0:Lcom/anland/appwrap/MainActivity;

    invoke-static {v0}, Lcom/anland/appwrap/MainActivity;->-$$Nest$fgetstatusView(Lcom/anland/appwrap/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u89e3\u5305\u4e2d: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x400

    div-long/2addr p1, v2

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " MB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object p0, p0, Lcom/anland/appwrap/MainActivity$2;->this$0:Lcom/anland/appwrap/MainActivity;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2}, Lcom/anland/appwrap/MainActivity;->-$$Nest$mshowProgress(Lcom/anland/appwrap/MainActivity;ZZI)V

    return-void
.end method

.method private synthetic lambda$phase$0(Ljava/lang/String;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity$2;->this$0:Lcom/anland/appwrap/MainActivity;

    invoke-static {v0, p1}, Lcom/anland/appwrap/MainActivity;->-$$Nest$mlogLine(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/anland/appwrap/MainActivity$2;->this$0:Lcom/anland/appwrap/MainActivity;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, p1, v0}, Lcom/anland/appwrap/MainActivity;->-$$Nest$mshowProgress(Lcom/anland/appwrap/MainActivity;ZZI)V

    return-void
.end method


# virtual methods
.method public bytes(JJ)V
    .locals 0

    .line 501
    iget-object p3, p0, Lcom/anland/appwrap/MainActivity$2;->this$0:Lcom/anland/appwrap/MainActivity;

    new-instance p4, Lcom/anland/appwrap/MainActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p2}, Lcom/anland/appwrap/MainActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/anland/appwrap/MainActivity$2;J)V

    invoke-virtual {p3, p4}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public phase(Ljava/lang/String;)V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity$2;->this$0:Lcom/anland/appwrap/MainActivity;

    new-instance v1, Lcom/anland/appwrap/MainActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/anland/appwrap/MainActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/anland/appwrap/MainActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
