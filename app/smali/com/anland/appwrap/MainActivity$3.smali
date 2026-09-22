.class Lcom/anland/appwrap/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/anlandnext/awl/Awl$HostCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anland/appwrap/MainActivity;->attach(JLjava/lang/String;)V
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

    .line 876
    iput-object p1, p0, Lcom/anland/appwrap/MainActivity$3;->this$0:Lcom/anland/appwrap/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostDestroy(Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V
    .locals 2

    .line 879
    iget-object p0, p0, Lcom/anland/appwrap/MainActivity$3;->this$0:Lcom/anland/appwrap/MainActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u5bbf\u4e3b\u9500\u6bc1 \u2192 \u8bf7\u6c42\u5ba2\u6237\u7aef\u5173\u95ed id="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/anland/appwrap/MainActivity;->-$$Nest$mlogLine(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    .line 880
    iget-wide p0, p1, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    invoke-static {p0, p1}, Lcom/anlandnext/awl/Awl;->closeWindow(J)I

    return-void
.end method

.method public onHostResume(Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V
    .locals 0

    .line 877
    invoke-static {}, Lcom/anlandnext/awl/Awl;->ensureSubscribed()V

    return-void
.end method
