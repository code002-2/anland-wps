.class Lcom/anlandnext/awl/AwlWindowActivity$1;
.super Ljava/lang/Object;
.source "AwlWindowActivity.java"

# interfaces
.implements Lcom/anlandnext/awl/Awl$Callback;


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
.method constructor <init>(Lcom/anlandnext/awl/AwlWindowActivity;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$1;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached(J)V
    .locals 0

    return-void
.end method

.method public onWindowCreated(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWindowDestroyed(J)V
    .locals 0

    .line 175
    invoke-static {p1, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->finishById(J)V

    return-void
.end method

.method public onWindowDetached(J)V
    .locals 0

    return-void
.end method
