.class Lorg/tukaani/xz/LZMA2Encoder;
.super Lorg/tukaani/xz/LZMA2Coder;
.source "LZMA2Encoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterEncoder;


# instance fields
.field private final options:Lorg/tukaani/xz/LZMA2Options;

.field private final props:[B


# direct methods
.method constructor <init>(Lorg/tukaani/xz/LZMA2Options;)V
    .locals 5

    .line 13
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2Coder;-><init>()V

    const/4 v0, 0x1

    .line 11
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/tukaani/xz/LZMA2Encoder;->props:[B

    .line 14
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getPresetDict()[B

    move-result-object v2

    if-nez v2, :cond_1

    .line 18
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getMode()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 19
    aput-byte v3, v1, v3

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v2

    const/16 v4, 0x1000

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v2, v0

    .line 23
    invoke-static {v2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x17

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 27
    :goto_0
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/tukaani/xz/LZMA2Options;

    iput-object p1, p0, Lorg/tukaani/xz/LZMA2Encoder;->options:Lorg/tukaani/xz/LZMA2Options;

    return-void

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XZ doesn\'t support a preset dictionary for now"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFilterID()J
    .locals 2

    const-wide/16 v0, 0x21

    return-wide v0
.end method

.method public getFilterProps()[B
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/tukaani/xz/LZMA2Encoder;->props:[B

    return-object p0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/tukaani/xz/LZMA2Encoder;->options:Lorg/tukaani/xz/LZMA2Options;

    invoke-virtual {p0, p1, p2}, Lorg/tukaani/xz/LZMA2Options;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public supportsFlushing()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
