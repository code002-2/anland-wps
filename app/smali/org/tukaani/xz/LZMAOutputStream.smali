.class public Lorg/tukaani/xz/LZMAOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "LZMAOutputStream.java"


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private currentUncompressedSize:J

.field private exception:Ljava/io/IOException;

.field private final expectedUncompressedSize:J

.field private finished:Z

.field private lz:Lorg/tukaani/xz/lz/LZEncoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

.field private out:Ljava/io/OutputStream;

.field private final props:I

.field private final rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;

.field private final tempBuf:[B

.field private final useEndMarker:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;JLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;JLorg/tukaani/xz/ArrayCache;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p3

    move-object v8, p5

    .line 153
    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;ZZJLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;ZLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;ZLorg/tukaani/xz/ArrayCache;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v7, p4

    .line 205
    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;ZZJLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;ZZJLorg/tukaani/xz/ArrayCache;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p5

    .line 42
    invoke-direct {v0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    const-wide/16 v4, 0x0

    .line 31
    iput-wide v4, v0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    const/4 v4, 0x0

    .line 33
    iput-boolean v4, v0, Lorg/tukaani/xz/LZMAOutputStream;->finished:Z

    const/4 v5, 0x0

    .line 34
    iput-object v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    const/4 v5, 0x1

    .line 36
    new-array v5, v5, [B

    iput-object v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->tempBuf:[B

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-ltz v5, :cond_4

    move/from16 v5, p4

    .line 51
    iput-boolean v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->useEndMarker:Z

    .line 52
    iput-wide v2, v0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    move-object/from16 v15, p7

    .line 54
    iput-object v15, v0, Lorg/tukaani/xz/LZMAOutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 56
    iput-object v1, v0, Lorg/tukaani/xz/LZMAOutputStream;->out:Ljava/io/OutputStream;

    .line 57
    new-instance v5, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;

    invoke-direct {v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;

    .line 59
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v10

    .line 61
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLc()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLp()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPb()I

    move-result v8

    .line 62
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getMode()I

    move-result v9

    .line 63
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getNiceLen()I

    move-result v12

    .line 64
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getMatchFinder()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getDepthLimit()I

    move-result v14

    const/4 v11, 0x0

    .line 60
    invoke-static/range {v5 .. v15}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getInstance(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lzma/LZMAEncoder;

    move-result-object v5

    iput-object v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    .line 67
    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLZEncoder()Lorg/tukaani/xz/lz/LZEncoder;

    move-result-object v5

    iput-object v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 69
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPresetDict()[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 70
    array-length v6, v5

    if-lez v6, :cond_1

    if-nez p3, :cond_0

    .line 76
    iget-object v6, v0, Lorg/tukaani/xz/LZMAOutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v6, v10, v5}, Lorg/tukaani/xz/lz/LZEncoder;->setPresetDict(I[B)V

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Preset dictionary cannot be used in .lzma files (try a raw LZMA stream instead)"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPb()I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLp()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x9

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLc()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->props:I

    if-eqz p3, :cond_3

    .line 83
    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write(I)V

    move v0, v4

    :goto_1
    const/4 v5, 0x4

    const/16 v6, 0x8

    if-ge v0, v5, :cond_2

    and-int/lit16 v5, v10, 0xff

    .line 88
    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write(I)V

    ushr-int/2addr v10, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v4, v6, :cond_3

    mul-int/lit8 v0, v4, 0x8

    ushr-long v7, v2, v0

    long-to-int v0, v7

    and-int/lit16 v0, v0, 0xff

    .line 96
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-void

    .line 48
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid expected input size (less than -1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lorg/tukaani/xz/LZMAOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 321
    iget-object v1, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 322
    iput-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->out:Ljava/io/OutputStream;

    .line 328
    :cond_1
    iget-object p0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    if-nez p0, :cond_2

    return-void

    .line 329
    :cond_2
    throw p0
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Expected uncompressed size ("

    .line 276
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMAOutputStream;->finished:Z

    if-nez v1, :cond_4

    .line 277
    iget-object v1, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_3

    .line 281
    :try_start_0
    iget-wide v1, p0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance v1, Lorg/tukaani/xz/XZIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") doesn\'t equal the number of bytes written to the stream ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->setFinishing()V

    .line 289
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeForLZMA1()V

    .line 291
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->useEndMarker:Z

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeLZMA1EndMarker()V

    .line 294
    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;->finish()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 300
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->finished:Z

    .line 302
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/LZMAOutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    .line 304
    iput-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    return-void

    :catch_0
    move-exception v0

    .line 296
    iput-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    .line 297
    throw v0

    .line 278
    :cond_3
    throw v1

    :cond_4
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "LZMAOutputStream does not support flushing"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProps()I
    .locals 0

    .line 214
    iget p0, p0, Lorg/tukaani/xz/LZMAOutputStream;->props:I

    return p0
.end method

.method public getUncompressedSize()J
    .locals 2

    .line 223
    iget-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    return-wide v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->tempBuf:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 229
    invoke-virtual {p0, v0, v1, p1}, Lorg/tukaani/xz/LZMAOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    if-ltz v0, :cond_5

    .line 234
    array-length v1, p1

    if-gt v0, v1, :cond_5

    .line 237
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_4

    .line 240
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->finished:Z

    if-nez v0, :cond_3

    .line 243
    iget-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    sub-long/2addr v0, v2

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance p1, Lorg/tukaani/xz/XZIOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Expected uncompressed input size ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " bytes) was exceeded"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    :goto_1
    if-lez p3, :cond_2

    .line 252
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/lz/LZEncoder;->fillWindow([BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 255
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeForLZMA1()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 258
    iput-object p1, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    .line 259
    throw p1

    :cond_2
    return-void

    .line 241
    :cond_3
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream finished or closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_4
    throw v0

    .line 235
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
