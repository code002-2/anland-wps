.class public final Lorg/tukaani/xz/RISCVOptions;
.super Lorg/tukaani/xz/BCJOptions;
.source "RISCVOptions.java"


# static fields
.field private static final ALIGNMENT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 20
    invoke-direct {p0, v0}, Lorg/tukaani/xz/BCJOptions;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDecoderMemoryUsage()I
    .locals 0

    .line 16
    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->getDecoderMemoryUsage()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getEncoderMemoryUsage()I
    .locals 0

    .line 16
    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->getEncoderMemoryUsage()I

    move-result p0

    return p0
.end method

.method getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;
    .locals 3

    .line 36
    new-instance v0, Lorg/tukaani/xz/BCJEncoder;

    const-wide/16 v1, 0xb

    invoke-direct {v0, p0, v1, v2}, Lorg/tukaani/xz/BCJEncoder;-><init>(Lorg/tukaani/xz/BCJOptions;J)V

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 1

    .line 31
    new-instance p2, Lorg/tukaani/xz/SimpleInputStream;

    new-instance v0, Lorg/tukaani/xz/simple/RISCVDecoder;

    iget p0, p0, Lorg/tukaani/xz/RISCVOptions;->startOffset:I

    invoke-direct {v0, p0}, Lorg/tukaani/xz/simple/RISCVDecoder;-><init>(I)V

    invoke-direct {p2, p1, v0}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object p2
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1

    .line 26
    new-instance p2, Lorg/tukaani/xz/SimpleOutputStream;

    new-instance v0, Lorg/tukaani/xz/simple/RISCVEncoder;

    iget p0, p0, Lorg/tukaani/xz/RISCVOptions;->startOffset:I

    invoke-direct {v0, p0}, Lorg/tukaani/xz/simple/RISCVEncoder;-><init>(I)V

    invoke-direct {p2, p1, v0}, Lorg/tukaani/xz/SimpleOutputStream;-><init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object p2
.end method

.method public bridge synthetic getStartOffset()I
    .locals 0

    .line 16
    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->getStartOffset()I

    move-result p0

    return p0
.end method

.method public bridge synthetic setStartOffset(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 16
    invoke-super {p0, p1}, Lorg/tukaani/xz/BCJOptions;->setStartOffset(I)V

    return-void
.end method
