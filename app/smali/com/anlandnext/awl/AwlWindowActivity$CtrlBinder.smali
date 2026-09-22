.class Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;
.super Landroid/os/Binder;
.source "AwlWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anlandnext/awl/AwlWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CtrlBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anlandnext/awl/AwlWindowActivity;


# direct methods
.method public static synthetic $r8$lambda$1fJpz2e6TySXB3mlIq8_tUo0CwU(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->onImeHideCmd()V

    return-void
.end method

.method public static synthetic $r8$lambda$61Au7WUq4FDIfhO_BSeP8rdGnKk(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->lambda$onTransact$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$P65_-cD2UPcPuT_gTEaTpD_Caj4(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->lambda$onTransact$5(IIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$S0WGhjVGuUuaGfGG16WdYSKWFMg(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->lambda$onTransact$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$asLRcxXnK3dhB5wtgGbu5qfcwkY(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->lambda$onTransact$7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gvG5JOvJMiinNaHc8UjLIPQKbFI(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->lambda$onTransact$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$hy80Ri28ukvGenwwZH6Az8esgAE(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;Ljava/lang/String;IIIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->lambda$onTransact$3(Ljava/lang/String;IIIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$iDnAozZ0f6OIhiRGnMjotNJqV6g(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->lambda$onTransact$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ko-ZsohRdIq4nu8dJ5t6zk4ZlZg(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->lambda$onTransact$0()V

    return-void
.end method

.method constructor <init>(Lcom/anlandnext/awl/AwlWindowActivity;)V
    .locals 1

    .line 185
    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 p1, 0x0

    .line 190
    const-string v0, "anland.ICtrl"

    invoke-virtual {p0, p1, v0}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onTransact$0()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-virtual {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTransact$1()V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mapplyTaskDescription(Lcom/anlandnext/awl/AwlWindowActivity;)V

    return-void
.end method

.method private synthetic lambda$onTransact$2(II)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0, p1, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$monImeShow(Lcom/anlandnext/awl/AwlWindowActivity;II)V

    return-void
.end method

.method private synthetic lambda$onTransact$3(Ljava/lang/String;IIIIIIIII)V
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static/range {p0 .. p10}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$monImeState(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;IIIIIIIII)V

    return-void
.end method

.method private synthetic lambda$onTransact$4(Ljava/lang/String;)V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mwriteClipboard(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onTransact$5(IIIII)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static/range {p0 .. p5}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$msetPointerCaptureMode(Lcom/anlandnext/awl/AwlWindowActivity;IIIII)V

    return-void
.end method

.method private synthetic lambda$onTransact$6(Z)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$msetPointerHidden(Lcom/anlandnext/awl/AwlWindowActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onTransact$7(Z)V
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mapplyKeepOn(Lcom/anlandnext/awl/AwlWindowActivity;Z)V

    return-void
.end method

.method private onImeHideCmd()V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$monImeHide(Lcom/anlandnext/awl/AwlWindowActivity;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v12, 0x1

    if-lt p1, v12, :cond_f

    const v2, 0xffffff

    if-le p1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 199
    :try_start_0
    const-string v3, "anland.ICtrl"

    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v12, :cond_1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "win "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v2}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": CLOSE via ctrl channel"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "anland-awlwin"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0, v12}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputfinishingByGone(Lcom/anlandnext/awl/AwlWindowActivity;Z)V

    .line 206
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v2, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda0;-><init>(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;)V

    invoke-virtual {v0, v2}, Lcom/anlandnext/awl/AwlWindowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v12

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 210
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v2, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$fputtaskTitle(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v2, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda1;-><init>(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;)V

    invoke-virtual {v0, v2}, Lcom/anlandnext/awl/AwlWindowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return v12

    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 218
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    iget-object v3, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v4, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0, v2}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda2;-><init>(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;II)V

    invoke-virtual {v3, v4}, Lcom/anlandnext/awl/AwlWindowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v12

    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    .line 224
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v2, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda3;-><init>(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;)V

    invoke-virtual {v0, v2}, Lcom/anlandnext/awl/AwlWindowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v12

    :cond_5
    const/4 v3, 0x5

    if-ne p1, v3, :cond_6

    .line 228
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 229
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 234
    iget-object v13, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda4;

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda4;-><init>(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;Ljava/lang/String;IIIIIIIII)V

    invoke-virtual {v13, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v12

    :cond_6
    const/4 v3, 0x6

    if-ne p1, v3, :cond_8

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 240
    const-string v0, ""

    .line 241
    :cond_7
    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v3, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda5;-><init>(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/anlandnext/awl/AwlWindowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v12

    :cond_8
    const/4 v3, 0x7

    if-ne p1, v3, :cond_9

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 248
    iget-object v7, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda6;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda6;-><init>(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;IIIII)V

    invoke-virtual {v7, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v12

    :cond_9
    const/16 v3, 0x8

    if-ne p1, v3, :cond_b

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v2, v12

    .line 253
    :cond_a
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v3, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v2}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda7;-><init>(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;Z)V

    invoke-virtual {v0, v3}, Lcom/anlandnext/awl/AwlWindowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v12

    :cond_b
    const/16 v3, 0x9

    if-ne p1, v3, :cond_d

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v2, v12

    .line 258
    :cond_c
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    new-instance v3, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v2}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder$$ExternalSyntheticLambda8;-><init>(Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;Z)V

    invoke-virtual {v0, v3}, Lcom/anlandnext/awl/AwlWindowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v12

    :cond_d
    const/16 v2, 0xa

    if-ne p1, v2, :cond_e

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 263
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;->this$0:Lcom/anlandnext/awl/AwlWindowActivity;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->-$$Nest$mapplyTaskIconAsync(Lcom/anlandnext/awl/AwlWindowActivity;)V

    return v12

    .line 266
    :cond_e
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :catch_0
    return v2

    .line 197
    :cond_f
    :goto_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method
