.class public final Lorg/tukaani/xz/index/IndexDecoder;
.super Lorg/tukaani/xz/index/IndexBase;
.source "IndexDecoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private compressedOffset:J

.field private largestBlockSize:J

.field private final memoryUsage:I

.field private recordOffset:I

.field private final streamFlags:Lorg/tukaani/xz/common/StreamFlags;

.field private final streamPadding:J

.field private final uncompressed:[J

.field private uncompressedOffset:J

.field private final unpadded:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;Lorg/tukaani/xz/common/StreamFlags;JI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    .line 39
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    const-string v4, "XZ Index is corrupt"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/tukaani/xz/index/IndexBase;-><init>(Lorg/tukaani/xz/XZIOException;)V

    const-wide/16 v5, 0x0

    .line 28
    iput-wide v5, v0, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J

    const/4 v3, 0x0

    .line 32
    iput v3, v0, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    .line 33
    iput-wide v5, v0, Lorg/tukaani/xz/index/IndexDecoder;->compressedOffset:J

    .line 34
    iput-wide v5, v0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    .line 40
    iput-object v1, v0, Lorg/tukaani/xz/index/IndexDecoder;->streamFlags:Lorg/tukaani/xz/common/StreamFlags;

    move-wide/from16 v5, p3

    .line 41
    iput-wide v5, v0, Lorg/tukaani/xz/index/IndexDecoder;->streamPadding:J

    .line 45
    invoke-virtual/range {p1 .. p1}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v5

    iget-wide v7, v1, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x4

    sub-long/2addr v5, v7

    .line 47
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .line 48
    new-instance v8, Ljava/util/zip/CheckedInputStream;

    move-object/from16 v9, p1

    invoke-direct {v8, v9, v7}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 51
    invoke-virtual {v8}, Ljava/util/zip/CheckedInputStream;->read()I

    move-result v10

    if-nez v10, :cond_c

    .line 56
    :try_start_0
    invoke-static {v8}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    .line 62
    iget-wide v12, v1, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    cmp-long v1, v10, v12

    if-gez v1, :cond_b

    const-wide/32 v12, 0x7fffffff

    cmp-long v1, v10, v12

    if-gtz v1, :cond_a

    const-wide/16 v12, 0x10

    mul-long/2addr v12, v10

    const-wide/16 v14, 0x3ff

    add-long/2addr v12, v14

    const-wide/16 v14, 0x400

    .line 73
    div-long/2addr v12, v14

    long-to-int v1, v12

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/tukaani/xz/index/IndexDecoder;->memoryUsage:I

    if-ltz v2, :cond_1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {v0, v1, v2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v0

    :cond_1
    :goto_0
    long-to-int v1, v10

    .line 78
    new-array v2, v1, [J

    iput-object v2, v0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    .line 79
    new-array v2, v1, [J

    iput-object v2, v0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    move v2, v3

    :goto_1
    if-lez v1, :cond_4

    .line 85
    invoke-static {v8}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    .line 86
    invoke-static {v8}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v12

    .line 92
    invoke-virtual {v9}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v14

    cmp-long v14, v14, v5

    if-gtz v14, :cond_3

    .line 96
    iget-object v14, v0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v4

    :try_start_1
    iget-wide v3, v0, Lorg/tukaani/xz/index/IndexDecoder;->blocksSum:J

    add-long/2addr v3, v10

    aput-wide v3, v14, v2

    .line 97
    iget-object v3, v0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    move/from16 p2, v1

    move/from16 p3, v2

    iget-wide v1, v0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedSum:J

    add-long/2addr v1, v12

    aput-wide v1, v3, p3

    add-int/lit8 v2, p3, 0x1

    .line 99
    invoke-super {v0, v10, v11, v12, v13}, Lorg/tukaani/xz/index/IndexBase;->add(JJ)V

    .line 103
    iget-wide v3, v0, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J

    cmp-long v1, v3, v12

    if-gez v1, :cond_2

    .line 104
    iput-wide v12, v0, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J

    :cond_2
    add-int/lit8 v1, p2, -0x1

    move-object v4, v15

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    move-object v15, v4

    .line 93
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v15}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object v15, v4

    .line 114
    invoke-virtual {v0}, Lorg/tukaani/xz/index/IndexDecoder;->getIndexPaddingSize()I

    move-result v0

    .line 115
    invoke-virtual {v9}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_9

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_6

    .line 120
    invoke-virtual {v8}, Ljava/util/zip/CheckedInputStream;->read()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_2

    .line 121
    :cond_5
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v15}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_6
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/4 v3, 0x0

    :goto_3
    const/4 v2, 0x4

    if-ge v3, v2, :cond_8

    mul-int/lit8 v2, v3, 0x8

    ushr-long v4, v0, v2

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    .line 126
    invoke-virtual {v9}, Lorg/tukaani/xz/SeekableInputStream;->read()I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 127
    :cond_7
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v15}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void

    .line 116
    :cond_9
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v15}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v15, v4

    .line 68
    :try_start_2
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "XZ Index has over 2147483647 Records"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v15, v4

    .line 63
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v15}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-object v15, v4

    .line 109
    :catch_1
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v15}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v15, v4

    .line 52
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v15}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic getIndexSize()J
    .locals 2

    .line 17
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestBlockSize()J
    .locals 2

    .line 159
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J

    return-wide v0
.end method

.method public getMemoryUsage()I
    .locals 0

    .line 141
    iget p0, p0, Lorg/tukaani/xz/index/IndexDecoder;->memoryUsage:I

    return p0
.end method

.method public getRecordCount()I
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordCount:J

    long-to-int p0, v0

    return p0
.end method

.method public getStreamFlags()Lorg/tukaani/xz/common/StreamFlags;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/tukaani/xz/index/IndexDecoder;->streamFlags:Lorg/tukaani/xz/common/StreamFlags;

    return-object p0
.end method

.method public bridge synthetic getStreamSize()J
    .locals 2

    .line 17
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getStreamSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUncompressedSize()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedSum:J

    return-wide v0
.end method

.method public hasRecord(I)Z
    .locals 5

    .line 168
    iget v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    if-lt p1, v0, :cond_0

    int-to-long v1, p1

    int-to-long v3, v0

    iget-wide p0, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordCount:J

    add-long/2addr v3, p0

    cmp-long p0, v1, v3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasUncompressedOffset(J)Z
    .locals 4

    .line 163
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedSum:J

    add-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public locateBlock(Lorg/tukaani/xz/index/BlockInfo;J)V
    .locals 5

    .line 174
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    sub-long/2addr p2, v0

    .line 178
    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sub-int v2, v0, v1

    .line 181
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 183
    iget-object v3, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    aget-wide v3, v3, v2

    cmp-long v3, v3, p2

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 189
    :cond_1
    iget p2, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    add-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Lorg/tukaani/xz/index/IndexDecoder;->setBlockInfo(Lorg/tukaani/xz/index/BlockInfo;I)V

    return-void
.end method

.method public setBlockInfo(Lorg/tukaani/xz/index/BlockInfo;I)V
    .locals 6

    .line 198
    iput-object p0, p1, Lorg/tukaani/xz/index/BlockInfo;->index:Lorg/tukaani/xz/index/IndexDecoder;

    .line 199
    iput p2, p1, Lorg/tukaani/xz/index/BlockInfo;->blockNumber:I

    .line 201
    iget v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    sub-int/2addr p2, v0

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    .line 204
    iput-wide v0, p1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    .line 205
    iput-wide v0, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    add-int/lit8 v1, p2, -0x1

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    const-wide/16 v4, -0x4

    and-long/2addr v2, v4

    iput-wide v2, p1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    .line 208
    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    .line 211
    :goto_0
    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    aget-wide v0, v0, p2

    iget-wide v2, p1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lorg/tukaani/xz/index/BlockInfo;->unpaddedSize:J

    .line 212
    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    aget-wide v0, v0, p2

    iget-wide v2, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    .line 214
    iget-wide v0, p1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    iget-wide v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->compressedOffset:J

    const-wide/16 v4, 0xc

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    .line 216
    iget-wide v0, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    iget-wide v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    return-void
.end method

.method public setOffsets(Lorg/tukaani/xz/index/IndexDecoder;)V
    .locals 4

    .line 133
    iget v0, p1, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    iget-wide v1, p1, Lorg/tukaani/xz/index/IndexDecoder;->recordCount:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordOffset:I

    .line 134
    iget-wide v0, p1, Lorg/tukaani/xz/index/IndexDecoder;->compressedOffset:J

    .line 135
    invoke-virtual {p1}, Lorg/tukaani/xz/index/IndexDecoder;->getStreamSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p1, Lorg/tukaani/xz/index/IndexDecoder;->streamPadding:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->compressedOffset:J

    .line 137
    iget-wide v0, p1, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    iget-wide v2, p1, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedSum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedOffset:J

    return-void
.end method
