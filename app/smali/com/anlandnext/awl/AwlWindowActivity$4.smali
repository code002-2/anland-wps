.class Lcom/anlandnext/awl/AwlWindowActivity$4;
.super Ljava/lang/Object;
.source "AwlWindowActivity.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


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

    .line 557
    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$4;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$4;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mpushClipboard(Lcom/anlandnext/awl/AwlWindowActivity;)V

    return-void
.end method
