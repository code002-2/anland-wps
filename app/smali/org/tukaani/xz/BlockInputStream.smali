.class Lorg/tukaani/xz/BlockInputStream;
.super Ljava/io/InputStream;
.source "BlockInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final check:Lorg/tukaani/xz/check/Check;

.field private compressedSizeInHeader:J

.field private compressedSizeLimit:J

.field private endReached:Z

.field private filterChain:Ljava/io/InputStream;

.field private final headerSize:I

.field private final inCounted:Lorg/tukaani/xz/CountingInputStream;

.field private final inData:Ljava/io/DataInputStream;

.field private final tempBuf:[B

.field private uncompressedSize:J

.field private uncompressedSizeInHeader:J

.field private final verifyCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJLorg/tukaani/xz/ArrayCache;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/tukaani/xz/IndexIndicatorException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-wide/from16 v3, p7

    .line 37
    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v5, -0x1

    .line 22
    iput-wide v5, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    .line 23
    iput-wide v5, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v7, 0x0

    .line 26
    iput-wide v7, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    const/4 v9, 0x0

    .line 27
    iput-boolean v9, v0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    const/4 v10, 0x1

    .line 29
    new-array v11, v10, [B

    iput-object v11, v0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    move-object/from16 v11, p2

    .line 38
    iput-object v11, v0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    move/from16 v12, p3

    .line 39
    iput-boolean v12, v0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    .line 40
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v12, v0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    .line 43
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v13

    if-eqz v13, :cond_17

    add-int/lit8 v14, v13, 0x1

    mul-int/lit8 v14, v14, 0x4

    .line 50
    iput v14, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    .line 52
    new-array v15, v14, [B

    int-to-byte v13, v13

    .line 53
    aput-byte v13, v15, v9

    add-int/lit8 v13, v14, -0x1

    .line 54
    invoke-virtual {v12, v15, v10, v13}, Ljava/io/DataInputStream;->readFully([BII)V

    add-int/lit8 v12, v14, -0x4

    add-int/lit8 v13, v14, -0x4

    .line 57
    invoke-static {v15, v9, v12, v13}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v12

    const-string v13, "XZ Block Header is corrupt"

    if-eqz v12, :cond_16

    .line 61
    aget-byte v12, v15, v10

    and-int/lit8 v16, v12, 0x3c

    move-wide/from16 v17, v5

    const-string v5, "Unsupported options in XZ Block Header"

    if-nez v16, :cond_15

    and-int/lit8 v6, v12, 0x3

    add-int/lit8 v12, v6, 0x1

    move-wide/from16 v19, v7

    .line 67
    new-array v7, v12, [J

    .line 68
    new-array v8, v12, [[B

    .line 72
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move/from16 v21, v10

    add-int/lit8 v10, v14, -0x6

    move/from16 p3, v6

    const/4 v6, 0x2

    invoke-direct {v9, v15, v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v10, v7

    int-to-long v6, v14

    const-wide v22, 0x7ffffffffffffffcL

    sub-long v22, v22, v6

    .line 79
    :try_start_0
    invoke-virtual {v11}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v22, v6

    iput-wide v6, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    .line 83
    aget-byte v6, v15, v21

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_1

    .line 84
    invoke-static {v9}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    cmp-long v14, v6, v19

    if-eqz v14, :cond_0

    move-object v14, v10

    .line 86
    iget-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v10, v6, v10

    if-gtz v10, :cond_0

    .line 90
    iput-wide v6, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_1
    move-object v14, v10

    .line 95
    :goto_0
    aget-byte v6, v15, v21

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_2

    .line 96
    invoke-static {v9}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v12, :cond_4

    .line 100
    invoke-static {v9}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    aput-wide v10, v14, v6

    .line 102
    invoke-static {v9}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    .line 103
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    move v15, v6

    int-to-long v6, v7

    cmp-long v6, v10, v6

    if-gtz v6, :cond_3

    long-to-int v6, v10

    .line 106
    new-array v6, v6, [B

    aput-object v6, v8, v15

    .line 107
    invoke-virtual {v9, v6}, Ljava/io/ByteArrayInputStream;->read([B)I

    add-int/lit8 v6, v15, 0x1

    goto :goto_1

    .line 104
    :cond_3
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_4
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    :goto_2
    if-lez v6, :cond_6

    .line 116
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    if-nez v7, :cond_5

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 117
    :cond_5
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v0, v5}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    cmp-long v5, p5, v17

    if-eqz v5, :cond_c

    .line 126
    iget v5, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v7, v5, p5

    .line 127
    const-string v9, "XZ Index does not match a Block Header"

    if-gez v7, :cond_b

    sub-long v5, p5, v5

    .line 136
    iget-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v7, v5, v10

    if-gtz v7, :cond_a

    iget-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    cmp-long v7, v10, v17

    if-eqz v7, :cond_7

    cmp-long v7, v10, v5

    if-nez v7, :cond_a

    .line 145
    :cond_7
    iget-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v7, v10, v17

    if-eqz v7, :cond_9

    cmp-long v7, v10, v3

    if-nez v7, :cond_8

    goto :goto_3

    .line 147
    :cond_8
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v9}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_9
    :goto_3
    iput-wide v5, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    .line 153
    iput-wide v5, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    .line 154
    iput-wide v3, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    goto :goto_4

    .line 139
    :cond_a
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v9}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_b
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v9}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_c
    :goto_4
    new-array v3, v12, [Lorg/tukaani/xz/FilterDecoder;

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v12, :cond_10

    .line 163
    aget-wide v5, v14, v4

    const-wide/16 v9, 0x21

    cmp-long v7, v5, v9

    if-nez v7, :cond_d

    .line 164
    new-instance v5, Lorg/tukaani/xz/LZMA2Decoder;

    aget-object v6, v8, v4

    invoke-direct {v5, v6}, Lorg/tukaani/xz/LZMA2Decoder;-><init>([B)V

    aput-object v5, v3, v4

    goto :goto_6

    :cond_d
    const-wide/16 v9, 0x3

    cmp-long v7, v5, v9

    if-nez v7, :cond_e

    .line 167
    new-instance v5, Lorg/tukaani/xz/DeltaDecoder;

    aget-object v6, v8, v4

    invoke-direct {v5, v6}, Lorg/tukaani/xz/DeltaDecoder;-><init>([B)V

    aput-object v5, v3, v4

    goto :goto_6

    .line 169
    :cond_e
    invoke-static {v5, v6}, Lorg/tukaani/xz/BCJDecoder;->isBCJFilterID(J)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 170
    new-instance v5, Lorg/tukaani/xz/BCJDecoder;

    aget-wide v6, v14, v4

    aget-object v9, v8, v4

    invoke-direct {v5, v6, v7, v9}, Lorg/tukaani/xz/BCJDecoder;-><init>(J[B)V

    aput-object v5, v3, v4

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 173
    :cond_f
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Filter ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v2, v14, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_10
    invoke-static {v3}, Lorg/tukaani/xz/RawCoder;->validate([Lorg/tukaani/xz/FilterCoder;)V

    if-ltz v2, :cond_13

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v12, :cond_11

    .line 183
    aget-object v5, v3, v9

    invoke-interface {v5}, Lorg/tukaani/xz/FilterDecoder;->getMemoryUsage()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_11
    if-gt v4, v2, :cond_12

    goto :goto_8

    .line 186
    :cond_12
    new-instance v0, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {v0, v4, v2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v0

    .line 191
    :cond_13
    :goto_8
    new-instance v2, Lorg/tukaani/xz/CountingInputStream;

    invoke-direct {v2, v1}, Lorg/tukaani/xz/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    .line 194
    iput-object v2, v0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    move/from16 v6, p3

    :goto_9
    if-ltz v6, :cond_14

    .line 196
    aget-object v1, v3, v6

    iget-object v2, v0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    move-object/from16 v4, p9

    invoke-interface {v1, v2, v4}, Lorg/tukaani/xz/FilterDecoder;->getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_14
    return-void

    .line 111
    :catch_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v13}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_15
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v0, v5}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_16
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v13}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_17
    new-instance v0, Lorg/tukaani/xz/IndexIndicatorException;

    invoke-direct {v0}, Lorg/tukaani/xz/IndexIndicatorException;-><init>()V

    throw v0
.end method

.method private validate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v0

    .line 253
    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 261
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_3

    move-wide v0, v2

    goto :goto_0

    .line 262
    :cond_3
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    .line 265
    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v0

    new-array v0, v0, [B

    .line 266
    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 267
    iget-boolean v1, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v1}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 268
    :cond_5
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Integrity check ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 269
    invoke-virtual {p0}, Lorg/tukaani/xz/check/Check;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ") does not match"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 1

    .line 285
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    return-void
.end method

.method public getUncompressedSize()J
    .locals 2

    .line 303
    iget-wide v0, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public getUnpaddedSize()J
    .locals 4

    .line 299
    iget v0, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v2}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {p0}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-boolean v0, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_6

    .line 212
    iget-boolean v3, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v3, :cond_1

    .line 213
    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v3, p1, p2, v0}, Lorg/tukaani/xz/check/Check;->update([BII)V

    .line 215
    :cond_1
    iget-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    int-to-long v3, v0

    add-long/2addr p1, v3

    iput-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    .line 218
    iget-object p1, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {p1}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-ltz v5, :cond_5

    .line 219
    iget-wide v5, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long p1, p1, v5

    if-gtz p1, :cond_5

    iget-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v3, p1, v3

    if-ltz v3, :cond_5

    iget-wide v3, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    cmp-long v5, p1, v3

    if-gtz v5, :cond_5

    :cond_2
    if-lt v0, p3, :cond_3

    cmp-long p1, p1, v3

    if-nez p1, :cond_7

    .line 234
    :cond_3
    iget-object p1, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 237
    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    .line 238
    iput-boolean v2, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    return v0

    .line 235
    :cond_4
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    .line 224
    :cond_5
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    :cond_6
    if-ne v0, v1, :cond_7

    .line 241
    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    .line 242
    iput-boolean v2, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    :cond_7
    return v0
.end method
