.class Lcom/anlandnext/awl/AwlWindowActivity$5;
.super Landroid/widget/EditText;
.source "AwlWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anlandnext/awl/AwlWindowActivity;->initHiddenInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anlandnext/awl/AwlWindowActivity;


# direct methods
.method constructor <init>(Lcom/anlandnext/awl/AwlWindowActivity;Landroid/content/Context;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$5;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 677
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 678
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$5;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorSelStart(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result v0

    .line 679
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 680
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 681
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$5;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7000

    invoke-static {v1, v0, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 684
    new-instance p1, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$5;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-direct {p1, v0, p0}, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;-><init>(Lcom/anlandnext/awl/AwlWindowActivity;Landroid/view/View;)V

    return-object p1
.end method
