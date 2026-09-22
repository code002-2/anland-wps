.class public Lorg/tukaani/xz/check/None;
.super Lorg/tukaani/xz/check/Check;
.source "None.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lorg/tukaani/xz/check/None;->size:I

    .line 10
    const-string v0, "None"

    iput-object v0, p0, Lorg/tukaani/xz/check/None;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 0

    const/4 p0, 0x0

    .line 18
    new-array p0, p0, [B

    return-object p0
.end method

.method public update([BII)V
    .locals 0

    return-void
.end method
