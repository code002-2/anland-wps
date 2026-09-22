.class final Lorg/tukaani/xz/lz/BT4;
.super Lorg/tukaani/xz/lz/LZEncoder;
.source "BT4.java"


# instance fields
.field private cyclicPos:I

.field private final cyclicSize:I

.field private final depthLimit:I

.field private final hash:Lorg/tukaani/xz/lz/Hash234;

.field private lzPos:I

.field private final matches:Lorg/tukaani/xz/lz/Matches;

.field private final tree:[I


# direct methods
.method constructor <init>(IIIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    .line 28
    invoke-direct/range {v0 .. v6}, Lorg/tukaani/xz/lz/LZEncoder;-><init>(IIIIILorg/tukaani/xz/ArrayCache;)V

    const/4 p0, -0x1

    .line 18
    iput p0, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    add-int/lit8 p1, v1, 0x1

    .line 31
    iput p1, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    .line 32
    iput p1, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    .line 34
    new-instance p0, Lorg/tukaani/xz/lz/Hash234;

    invoke-direct {p0, v1, v6}, Lorg/tukaani/xz/lz/Hash234;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object p0, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    mul-int/lit8 p1, p1, 0x2

    const/4 p0, 0x0

    .line 35
    invoke-virtual {v6, p1, p0}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object p0

    iput-object p0, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    .line 40
    new-instance p0, Lorg/tukaani/xz/lz/Matches;

    add-int/lit8 p4, v4, -0x1

    invoke-direct {p0, p4}, Lorg/tukaani/xz/lz/Matches;-><init>(I)V

    iput-object p0, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    if-lez p6, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    div-int/lit8 p4, v4, 0x2

    add-int/lit8 p6, p4, 0x10

    :goto_0
    iput p6, v0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    return-void
.end method

.method static getMemoryUsage(I)I
    .locals 1

    .line 22
    invoke-static {p0}, Lorg/tukaani/xz/lz/Hash234;->getMemoryUsage(I)I

    move-result v0

    div-int/lit16 p0, p0, 0x80

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private movePos()I
    .locals 4

    .line 53
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->niceLen:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/lz/BT4;->movePos(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 57
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    sub-int/2addr v2, v1

    .line 58
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lz/Hash234;->normalize(I)V

    .line 59
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget v3, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3, v2}, Lorg/tukaani/xz/lz/BT4;->normalize([III)V

    .line 60
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    .line 63
    :cond_0
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    iget v2, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    :cond_1
    return v0
.end method

.method private skip(II)V
    .locals 12

    .line 193
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 195
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 201
    :goto_0
    iget v6, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v6, p2

    add-int/lit8 v7, v0, -0x1

    if-eqz v0, :cond_4

    .line 203
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-lt v6, v0, :cond_0

    goto :goto_3

    .line 209
    :cond_0
    iget v8, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    sub-int v9, v8, v6

    if-le v6, v8, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    add-int/2addr v9, v0

    shl-int/lit8 v0, v9, 0x1

    .line 211
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 213
    iget-object v9, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v6

    aget-byte v9, v9, v10

    iget-object v10, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v11, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v11, v8

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_2

    .line 217
    iget-object v9, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v9, v10, v6, v8, p1}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v8

    if-ne v8, p1, :cond_2

    .line 220
    iget-object p0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget p1, p0, v0

    aput p1, p0, v1

    add-int/lit8 v0, v0, 0x1

    .line 221
    aget p1, p0, v0

    aput p1, p0, v2

    return-void

    .line 226
    :cond_2
    iget-object v9, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v6

    aget-byte v6, v9, v10

    and-int/lit16 v6, v6, 0xff

    iget-object v9, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v10, v8

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    .line 233
    iget-object v10, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    if-ge v6, v9, :cond_3

    .line 228
    aput p2, v10, v1

    add-int/lit8 v0, v0, 0x1

    .line 230
    aget p2, v10, v0

    move v1, v0

    move v5, v8

    goto :goto_2

    .line 233
    :cond_3
    aput p2, v10, v2

    .line 235
    aget p2, v10, v0

    move v2, v0

    move v4, v8

    :goto_2
    move v0, v7

    goto :goto_0

    .line 204
    :cond_4
    :goto_3
    iget-object p0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v3, p0, v2

    .line 205
    aput v3, p0, v1

    return-void
.end method


# virtual methods
.method public getMatches()Lorg/tukaani/xz/lz/Matches;
    .locals 18

    move-object/from16 v0, p0

    .line 72
    iget-object v1, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    const/4 v2, 0x0

    iput v2, v1, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 74
    iget v1, v0, Lorg/tukaani/xz/lz/BT4;->matchLenMax:I

    .line 75
    iget v3, v0, Lorg/tukaani/xz/lz/BT4;->niceLen:I

    .line 76
    invoke-direct {v0}, Lorg/tukaani/xz/lz/BT4;->movePos()I

    move-result v4

    if-ge v4, v1, :cond_1

    if-nez v4, :cond_0

    .line 80
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v0

    :cond_0
    move v1, v4

    if-le v3, v4, :cond_1

    move v3, v1

    .line 87
    :cond_1
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v6, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    invoke-virtual {v4, v5, v6}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 88
    iget v4, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/Hash234;->getHash2Pos()I

    move-result v5

    sub-int/2addr v4, v5

    .line 89
    iget v5, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    iget-object v6, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash3Pos()I

    move-result v6

    sub-int/2addr v5, v6

    .line 90
    iget-object v6, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v6

    .line 91
    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v8, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    invoke-virtual {v7, v8}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 99
    iget v7, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    const/4 v8, 0x1

    if-ge v4, v7, :cond_2

    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    sub-int/2addr v9, v4

    aget-byte v7, v7, v9

    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v10, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    aget-byte v9, v9, v10

    if-ne v7, v9, :cond_2

    .line 101
    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v7, Lorg/tukaani/xz/lz/Matches;->len:[I

    const/4 v9, 0x2

    aput v9, v7, v2

    .line 102
    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v7, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v10, v4, -0x1

    aput v10, v7, v2

    .line 103
    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iput v8, v7, Lorg/tukaani/xz/lz/Matches;->count:I

    goto :goto_0

    :cond_2
    move v9, v2

    :goto_0
    const/4 v7, 0x3

    if-eq v4, v5, :cond_3

    .line 110
    iget v10, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-ge v5, v10, :cond_3

    iget-object v10, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v11, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    sub-int/2addr v11, v5

    aget-byte v10, v10, v11

    iget-object v11, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v12, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    aget-byte v11, v11, v12

    if-ne v10, v11, :cond_3

    .line 113
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v4, v4, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v10, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v9, v5, -0x1

    aput v9, v4, v10

    move v4, v5

    move v9, v7

    .line 118
    :cond_3
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v5, v5, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v5, :cond_4

    .line 119
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v10, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    invoke-static {v5, v10, v4, v9, v1}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v9

    .line 121
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v4, v4, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v5, v5, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v5, v8

    aput v9, v4, v5

    if-lt v9, v3, :cond_4

    .line 126
    invoke-direct {v0, v3, v6}, Lorg/tukaani/xz/lz/BT4;->skip(II)V

    .line 127
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v0

    :cond_4
    if-ge v9, v7, :cond_5

    goto :goto_1

    :cond_5
    move v7, v9

    .line 136
    :goto_1
    iget v4, v0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 138
    iget v5, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/lit8 v9, v5, 0x1

    add-int/2addr v9, v8

    shl-int/2addr v5, v8

    move v10, v2

    move v11, v10

    .line 144
    :goto_2
    iget v12, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v12, v6

    add-int/lit8 v13, v4, -0x1

    if-eqz v4, :cond_b

    .line 149
    iget v4, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-lt v12, v4, :cond_6

    goto/16 :goto_5

    .line 155
    :cond_6
    iget v14, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    sub-int v15, v14, v12

    if-le v12, v14, :cond_7

    goto :goto_3

    :cond_7
    move v4, v2

    :goto_3
    add-int/2addr v15, v4

    shl-int/lit8 v4, v15, 0x1

    .line 157
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 159
    iget-object v15, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    move/from16 v16, v2

    iget v2, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v2, v14

    sub-int/2addr v2, v12

    aget-byte v2, v15, v2

    iget-object v15, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    move/from16 v17, v8

    iget v8, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v8, v14

    aget-byte v8, v15, v8

    if-ne v2, v8, :cond_9

    .line 160
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v8, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/lit8 v14, v14, 0x1

    invoke-static {v2, v8, v12, v14, v1}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v14

    if-le v14, v7, :cond_9

    .line 165
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v2, v2, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v7, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v14, v2, v7

    .line 166
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v2, v2, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v7, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v8, v12, -0x1

    aput v8, v2, v7

    .line 167
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lt v14, v3, :cond_8

    .line 170
    iget-object v1, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget v2, v1, v4

    aput v2, v1, v5

    add-int/lit8 v4, v4, 0x1

    .line 171
    aget v2, v1, v4

    aput v2, v1, v9

    .line 172
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v0

    :cond_8
    move v7, v14

    .line 177
    :cond_9
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v8, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v8, v14

    sub-int/2addr v8, v12

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    iget-object v8, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v12, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v12, v14

    aget-byte v8, v8, v12

    and-int/lit16 v8, v8, 0xff

    .line 184
    iget-object v12, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    if-ge v2, v8, :cond_a

    .line 179
    aput v6, v12, v5

    add-int/lit8 v4, v4, 0x1

    .line 181
    aget v2, v12, v4

    move v5, v4

    move v11, v14

    goto :goto_4

    .line 184
    :cond_a
    aput v6, v12, v9

    .line 186
    aget v2, v12, v4

    move v9, v4

    move v10, v14

    :goto_4
    move v6, v2

    move v4, v13

    move/from16 v2, v16

    move/from16 v8, v17

    goto/16 :goto_2

    :cond_b
    :goto_5
    move/from16 v16, v2

    .line 150
    iget-object v1, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v16, v1, v9

    .line 151
    aput v16, v1, v5

    .line 152
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 48
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/Hash234;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 49
    invoke-super {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public skip(I)V
    .locals 4

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_2

    .line 244
    iget p1, p0, Lorg/tukaani/xz/lz/BT4;->niceLen:I

    .line 245
    invoke-direct {p0}, Lorg/tukaani/xz/lz/BT4;->movePos()I

    move-result v1

    if-ge v1, p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move p1, v1

    .line 254
    :cond_1
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v2, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v3, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    invoke-virtual {v1, v2, v3}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 255
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v1

    .line 256
    iget-object v2, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v3, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 258
    invoke-direct {p0, p1, v1}, Lorg/tukaani/xz/lz/BT4;->skip(II)V

    :goto_1
    move p1, v0

    goto :goto_0

    :cond_2
    return-void
.end method
