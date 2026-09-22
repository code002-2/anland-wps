.class public final Lorg/tukaani/xz/lz/LZDecoder;
.super Ljava/lang/Object;
.source "LZDecoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final buf:[B

.field private final bufSize:I

.field private full:I

.field private limit:I

.field private pendingDist:I

.field private pendingLen:I

.field private pos:I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I[BLorg/tukaani/xz/ArrayCache;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 17
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 18
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 19
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 20
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 21
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 24
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    .line 25
    invoke-virtual {p3, p1, v0}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object p3

    iput-object p3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    if-eqz p2, :cond_0

    .line 28
    array-length v1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 29
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 30
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 31
    array-length p0, p2

    sub-int/2addr p0, p1

    invoke-static {p2, p0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public copyUncompressed(Ljava/io/DataInputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 140
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 141
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 143
    iget p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-ge p2, p1, :cond_0

    .line 144
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    :cond_0
    return-void
.end method

.method public flush([BI)I
    .locals 4

    .line 148
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    sub-int v2, v0, v1

    .line 149
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    return v2
.end method

.method public getByte(I)I
    .locals 2

    .line 67
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v0, :cond_0

    .line 69
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/2addr v1, p1

    .line 71
    :cond_0
    iget-object p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getPos()I
    .locals 0

    .line 63
    iget p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    return p0
.end method

.method public hasPending()Z
    .locals 0

    .line 59
    iget p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSpace()Z
    .locals 1

    .line 55
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    invoke-virtual {p1, p0}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    return-void
.end method

.method public putByte(B)V
    .locals 3

    .line 75
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    aput-byte p1, v0, v1

    .line 77
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-ge p1, v2, :cond_0

    .line 78
    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    :cond_0
    return-void
.end method

.method public repeat(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_3

    .line 82
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-ge p1, v0, :cond_3

    .line 85
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p2, v0

    .line 86
    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 87
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 89
    iget p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_1

    .line 94
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/2addr p2, p1

    sub-int/2addr p1, p2

    .line 99
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 102
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-static {v1, p2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 122
    :cond_1
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 123
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-static {v1, p2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, p1

    if-gtz v0, :cond_1

    .line 128
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-ge p1, v1, :cond_2

    .line 129
    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    :cond_2
    :goto_0
    return-void

    .line 83
    :cond_3
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0
.end method

.method public repeatPending()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez v0, :cond_0

    .line 134
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    invoke-virtual {p0, v1, v0}, Lorg/tukaani/xz/lz/LZDecoder;->repeat(II)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 41
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 42
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 43
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 44
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/lit8 p0, p0, -0x1

    aput-byte v0, v1, p0

    return-void
.end method

.method public setLimit(I)V
    .locals 3

    .line 48
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int v2, v0, v1

    if-gt v2, p1, :cond_0

    .line 49
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    return-void

    :cond_0
    add-int/2addr v1, p1

    .line 51
    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    return-void
.end method
