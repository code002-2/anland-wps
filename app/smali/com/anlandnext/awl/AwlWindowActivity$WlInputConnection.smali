.class Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "AwlWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anlandnext/awl/AwlWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WlInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anlandnext/awl/AwlWindowActivity;


# direct methods
.method constructor <init>(Lcom/anlandnext/awl/AwlWindowActivity;Landroid/view/View;)V
    .locals 0

    .line 1006
    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    const/4 p1, 0x0

    .line 1007
    invoke-direct {p0, p2, p1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private deleteAround(IIZ)V
    .locals 7

    .line 1066
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v1

    .line 1067
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    if-eqz p3, :cond_0

    invoke-static {v0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mbytesBeforeCp(Lcom/anlandnext/awl/AwlWindowActivity;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mbytesBefore(Lcom/anlandnext/awl/AwlWindowActivity;I)I

    move-result v0

    :goto_0
    move v4, v0

    .line 1068
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    if-eqz p3, :cond_1

    invoke-static {v0, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mbytesAfterCp(Lcom/anlandnext/awl/AwlWindowActivity;I)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {v0, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mbytesAfter(Lcom/anlandnext/awl/AwlWindowActivity;I)I

    move-result v0

    :goto_1
    move v5, v0

    const-string v6, ""

    const/4 v3, 0x3

    .line 1066
    invoke-static/range {v1 .. v6}, Lcom/anlandnext/awl/AwlClient;->ime(JIIILjava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1071
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 1070
    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smcpBack(Ljava/lang/String;II)I

    move-result p1

    goto :goto_2

    .line 1071
    :cond_2
    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    sub-int p1, v0, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnapBack(Ljava/lang/String;I)I

    move-result p1

    .line 1073
    :goto_2
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    if-eqz p3, :cond_3

    .line 1072
    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smcpFwd(Ljava/lang/String;II)I

    move-result p2

    goto :goto_3

    .line 1073
    :cond_3
    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p3, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnap(Ljava/lang/String;I)I

    move-result p2

    :goto_3
    if-le p2, p1, :cond_4

    .line 1075
    iget-object p3, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurText(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V

    .line 1076
    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p2, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurAnchor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    invoke-static {p2, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 1077
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mnotifyImeState(Lcom/anlandnext/awl/AwlWindowActivity;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 2

    .line 1216
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputcompText(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputcompCursor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 1218
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1083
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 6

    if-nez p1, :cond_0

    .line 1014
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v5, p1

    :try_start_br
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/user/0/com.anland.wpswrap/files/xtype.log"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const-string v2, "UTF-8"

    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_br
    .catch Ljava/lang/Exception; {:try_start_br .. :try_end_br} :catch_br

    goto :br_done

    :catch_br
    move-exception v1

    :br_done

    .line 1015
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-static/range {v0 .. v5}, Lcom/anlandnext/awl/AwlClient;->ime(JIIILjava/lang/String;)V

    .line 1019
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1020
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1021
    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurText(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V

    .line 1022
    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurAnchor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    invoke-static {p2, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 1024
    :cond_1
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mclearComposing(Lcom/anlandnext/awl/AwlWindowActivity;)V

    const/4 p0, 0x1

    return p0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    const/4 v0, 0x0

    .line 1050
    invoke-direct {p0, p1, p2, v0}, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->deleteAround(IIZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 1

    const/4 v0, 0x1

    .line 1056
    invoke-direct {p0, p1, p2, v0}, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->deleteAround(IIZ)V

    return v0
.end method

.method public finishComposingText()Z
    .locals 7

    .line 1041
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetcompText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v1

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/anlandnext/awl/AwlClient;->ime(JIIILjava/lang/String;)V

    .line 1043
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mclearComposing(Lcom/anlandnext/awl/AwlWindowActivity;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getCursorCapsMode(I)I
    .locals 1

    .line 1204
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorSelStart(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p0

    invoke-static {v0, p0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 0

    .line 1194
    new-instance p1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {p1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 1195
    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 1196
    iput p2, p1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1197
    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorSelStart(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p2

    iput p2, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1198
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorSelStart(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p0

    iput p0, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    return-object p1
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1177
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurAnchor(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1178
    :cond_0
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurAnchor(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurAnchor(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1179
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 2

    .line 1184
    iget-object p3, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p3}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object p3

    .line 1185
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorSelStart(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p0

    const/4 v0, 0x0

    .line 1186
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int p1, p0, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnapBack(Ljava/lang/String;I)I

    move-result p1

    .line 1187
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p2, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p3, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnap(Ljava/lang/String;I)I

    move-result p2

    .line 1188
    new-instance v0, Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    sub-int/2addr p0, p1

    invoke-direct {v0, p2, p0, p0, p1}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 2

    .line 1169
    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object p2

    .line 1170
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorSelStart(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p0

    .line 1171
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnap(Ljava/lang/String;I)I

    move-result p1

    .line 1172
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1

    .line 1161
    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object p2

    .line 1162
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorSelStart(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p0

    const/4 v0, 0x0

    .line 1163
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int p1, p0, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnapBack(Ljava/lang/String;I)I

    move-result p1

    .line 1164
    invoke-virtual {p2, p1, p0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 8

    .line 1143
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->finishComposingText()Z

    .line 1144
    iget-object p5, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p5}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x0

    .line 1145
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p5, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnap(Ljava/lang/String;I)I

    move-result v0

    .line 1146
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p5, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnap(Ljava/lang/String;I)I

    move-result p1

    .line 1147
    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result p2

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-le p1, v0, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v2

    .line 1150
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smutf8Len(Ljava/lang/String;)I

    move-result v5

    .line 1151
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smutf8Len(Ljava/lang/String;)I

    move-result v6

    const-string v7, ""

    const/4 v4, 0x3

    .line 1149
    invoke-static/range {v2 .. v7}, Lcom/anlandnext/awl/AwlClient;->ime(JIIILjava/lang/String;)V

    .line 1152
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mtoSurroundingIndex(Lcom/anlandnext/awl/AwlWindowActivity;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurAnchor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    invoke-static {p1, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 1154
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0
.end method

.method public requestCursorUpdates(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setComposingRegion(II)Z
    .locals 18

    move-object/from16 v0, p0

    .line 1098
    iget-object v1, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetcompText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1099
    iget-object v1, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v3

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/anlandnext/awl/AwlClient;->ime(JIIILjava/lang/String;)V

    .line 1100
    iget-object v1, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputcompText(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V

    .line 1101
    iget-object v1, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1, v2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputcompCursor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 1104
    :cond_0
    iget-object v1, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnap(Ljava/lang/String;I)I

    move-result v3

    .line 1106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnap(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    return v5

    .line 1108
    :cond_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1109
    iget-object v6, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v6}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;)I

    move-result v6

    iget-object v7, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v7}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1110
    iget-object v7, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v7}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v12

    .line 1111
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smutf8Len(Ljava/lang/String;)I

    move-result v15

    .line 1112
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smutf8Len(Ljava/lang/String;)I

    move-result v16

    const-string v17, ""

    const/4 v14, 0x3

    .line 1110
    invoke-static/range {v12 .. v17}, Lcom/anlandnext/awl/AwlClient;->ime(JIIILjava/lang/String;)V

    .line 1113
    iget-object v1, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v6

    .line 1114
    invoke-static {v11}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smutf8Len(Ljava/lang/String;)I

    move-result v9

    invoke-static {v11}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smutf8Len(Ljava/lang/String;)I

    move-result v10

    const/4 v8, 0x2

    .line 1113
    invoke-static/range {v6 .. v11}, Lcom/anlandnext/awl/AwlClient;->ime(JIIILjava/lang/String;)V

    .line 1119
    iget-object v1, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v7}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v6}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurText(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V

    .line 1120
    iget-object v1, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1, v3}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurAnchor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    invoke-static {v1, v3}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 1121
    iget-object v1, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v1, v11}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputcompText(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V

    .line 1122
    iget-object v1, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputcompCursor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 1123
    iget-object v0, v0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mnotifyImeState(Lcom/anlandnext/awl/AwlWindowActivity;)V

    return v5
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 6

    if-nez p1, :cond_0

    .line 1030
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v5, p1

    .line 1031
    invoke-static {v5, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smpreeditCursorBytes(Ljava/lang/String;I)I

    move-result v3

    .line 1032
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v0

    const/4 v2, 0x2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/anlandnext/awl/AwlClient;->ime(JIIILjava/lang/String;)V

    .line 1033
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1, v5}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputcompText(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V

    .line 1034
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v5, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smcomposingCursorChars(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputcompCursor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 1035
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mnotifyImeState(Lcom/anlandnext/awl/AwlWindowActivity;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setSelection(II)Z
    .locals 9

    .line 1130
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$meditorText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnap(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mtoSurroundingIndex(Lcom/anlandnext/awl/AwlWindowActivity;I)I

    move-result v6

    .line 1132
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$smsnap(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v1, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mtoSurroundingIndex(Lcom/anlandnext/awl/AwlWindowActivity;I)I

    move-result v7

    .line 1133
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v3

    const/4 v5, 0x4

    const-string v8, ""

    invoke-static/range {v3 .. v8}, Lcom/anlandnext/awl/AwlClient;->ime(JIIILjava/lang/String;)V

    .line 1134
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1, v6}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 1135
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p1, v7}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputsurAnchor(Lcom/anlandnext/awl/AwlWindowActivity;I)V

    .line 1136
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mnotifyImeState(Lcom/anlandnext/awl/AwlWindowActivity;)V

    const/4 p0, 0x1

    return p0
.end method
