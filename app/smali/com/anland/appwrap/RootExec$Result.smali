.class public final Lcom/anland/appwrap/RootExec$Result;
.super Ljava/lang/Object;
.source "RootExec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anland/appwrap/RootExec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final err:Ljava/lang/String;

.field public final error:Ljava/lang/String;

.field public final exit:I

.field public final ok:Z

.field public final out:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 29
    :cond_1
    iput-object p2, p0, Lcom/anland/appwrap/RootExec$Result;->err:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/anland/appwrap/RootExec$Result;->exit:I

    .line 31
    iput-object p4, p0, Lcom/anland/appwrap/RootExec$Result;->error:Ljava/lang/String;

    if-nez p4, :cond_2

    if-nez p3, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 32
    :goto_0
    iput-boolean p1, p0, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    return-void
.end method


# virtual methods
.method public why()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/anland/appwrap/RootExec$Result;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/anland/appwrap/RootExec$Result;->err:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x190

    if-le p0, v1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/anland/appwrap/RootExec$Result;->exit:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
