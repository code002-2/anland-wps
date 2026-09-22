.class final Lorg/tukaani/xz/lzma/LZMAEncoderNormal;
.super Lorg/tukaani/xz/lzma/LZMAEncoder;
.source "LZMAEncoderNormal.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EXTRA_SIZE_AFTER:I = 0x1000

.field private static final EXTRA_SIZE_BEFORE:I = 0x1000

.field private static final OPTS:I = 0x1000


# instance fields
.field private matches:Lorg/tukaani/xz/lz/Matches;

.field private final nextState:Lorg/tukaani/xz/lzma/State;

.field private optCur:I

.field private optEnd:I

.field private final opts:[Lorg/tukaani/xz/lzma/Optimum;

.field private final repLens:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 9

    const/16 v8, 0x1000

    .line 42
    invoke-static {p6, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x1000

    const/16 v4, 0x111

    move v0, p5

    move/from16 v3, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    .line 41
    invoke-static/range {v0 .. v7}, Lorg/tukaani/xz/lz/LZEncoder;->getInstance(IIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lz/LZEncoder;

    move-result-object v2

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, v0

    move v7, v3

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/lzma/LZMAEncoder;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;Lorg/tukaani/xz/lz/LZEncoder;IIIII)V

    .line 19
    new-array v1, v8, [Lorg/tukaani/xz/lzma/Optimum;

    iput-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 21
    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    const/4 v2, 0x4

    .line 27
    new-array v2, v2, [I

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    .line 28
    new-instance v2, Lorg/tukaani/xz/lzma/State;

    invoke-direct {v2}, Lorg/tukaani/xz/lzma/State;-><init>()V

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    :goto_0
    if-ge v1, v8, :cond_0

    .line 50
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    new-instance v3, Lorg/tukaani/xz/lzma/Optimum;

    invoke-direct {v3}, Lorg/tukaani/xz/lzma/Optimum;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calc1BytePrices(IIII)V
    .locals 9

    .line 375
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v3

    .line 376
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v2, v2, v1

    const/4 v8, 0x1

    add-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v4

    .line 379
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v2

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->price:I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 380
    invoke-virtual {v5, v8}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v5

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v6, v6, v7

    iget-object v7, v6, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result p1

    add-int/2addr v0, p1

    .line 382
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v2, v8

    aget-object p1, p1, v2

    iget p1, p1, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v0, p1, :cond_0

    .line 383
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/lit8 v5, v2, 0x1

    aget-object p1, p1, v5

    const/4 v5, -0x1

    invoke-virtual {p1, v0, v2, v5}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    move p1, v8

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne v4, v3, :cond_2

    .line 388
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v5, v8

    aget-object v2, v2, v5

    iget v2, v2, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    add-int/2addr v5, v8

    aget-object v2, v2, v5

    iget v2, v2, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    if-eqz v2, :cond_2

    .line 390
    :cond_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p0, p4, v2, p2}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I

    move-result p2

    .line 393
    iget-object p4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v2, v8

    aget-object p4, p4, v2

    iget p4, p4, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-gt p2, p4, :cond_2

    .line 394
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget p4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/lit8 v2, p4, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p1, p2, p4, v1}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    move p1, v8

    :cond_2
    if-nez p1, :cond_4

    if-eq v4, v3, :cond_4

    const/4 p1, 0x2

    if-le p3, p1, :cond_4

    .line 402
    iget p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    sub-int/2addr p3, v8

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 403
    iget-object p3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object p4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object p4, p4, v2

    iget-object p4, p4, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget p4, p4, v1

    invoke-virtual {p3, v8, p4, p2}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result p2

    if-lt p2, p1, :cond_4

    .line 406
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object p3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget p4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object p3, p3, p4

    iget-object p3, p3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p1, p3}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 407
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p1}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    add-int/lit8 p1, v6, 0x1

    .line 408
    iget p3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int/2addr p1, p3

    .line 409
    iget-object p3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    .line 410
    invoke-virtual {p0, v1, p2, p3, p1}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result p1

    add-int/2addr v0, p1

    .line 413
    iget p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr p1, v8

    add-int/2addr p1, p2

    .line 414
    :goto_1
    iget p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 417
    iget-object p3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    if-ge p2, p1, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 415
    iput p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object p2, p3, p2

    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_1

    .line 417
    :cond_3
    aget-object p2, p3, p1

    iget p2, p2, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v0, p2, :cond_4

    .line 418
    iget-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object p1, p2, p1

    iget p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    invoke-virtual {p1, v0, p0, v1}, Lorg/tukaani/xz/lzma/Optimum;->set2(III)V

    :cond_4
    return-void
.end method

.method private calcLongRepPrices(IIII)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 429
    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v6, v4

    move v9, v5

    :goto_0
    const/4 v7, 0x4

    if-ge v9, v7, :cond_9

    .line 432
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v8, v8, v10

    iget-object v8, v8, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v8, v8, v9

    invoke-virtual {v7, v8, v3}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v10

    if-ge v10, v4, :cond_0

    move/from16 v12, p4

    goto/16 :goto_5

    .line 436
    :cond_0
    :goto_1
    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int v11, v8, v10

    .line 439
    iget-object v12, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    if-ge v7, v11, :cond_1

    add-int/lit8 v7, v7, 0x1

    .line 437
    iput v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v7, v12, v7

    invoke-virtual {v7}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_1

    .line 439
    :cond_1
    aget-object v7, v12, v8

    iget-object v7, v7, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move/from16 v12, p4

    invoke-virtual {v0, v12, v9, v7, v1}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v7

    move v8, v10

    :goto_2
    if-lt v8, v4, :cond_3

    .line 443
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 444
    invoke-virtual {v11, v8, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v11

    add-int/2addr v11, v7

    .line 445
    iget-object v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v14, v8

    aget-object v13, v13, v14

    iget v13, v13, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v11, v13, :cond_2

    .line 446
    iget-object v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int v15, v14, v8

    aget-object v13, v13, v15

    invoke-virtual {v13, v11, v14, v9}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_3
    if-nez v9, :cond_4

    add-int/lit8 v6, v10, 0x1

    :cond_4
    move v13, v6

    sub-int v6, v2, v10

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    if-ge v6, v4, :cond_5

    goto/16 :goto_4

    .line 456
    :cond_5
    iget v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-le v6, v11, :cond_6

    .line 457
    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    .line 459
    :cond_6
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    add-int/lit8 v14, v10, 0x1

    iget-object v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v8, v15, v8

    iget-object v8, v8, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v8, v8, v9

    invoke-virtual {v11, v14, v8, v6}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v6

    if-lt v6, v4, :cond_8

    .line 464
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 465
    invoke-virtual {v8, v10, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 466
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v11, v11, v14

    iget-object v11, v11, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v8, v11}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 467
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v8}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    .line 470
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v8, v10, v5}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v17

    .line 471
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v8, v5}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v18

    .line 472
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v19

    .line 473
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    add-int v20, p1, v10

    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    move-object/from16 v16, v8

    move-object/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v8

    add-int/2addr v7, v8

    .line 475
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v8}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    add-int/lit8 v20, v20, 0x1

    .line 478
    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int v8, v20, v8

    .line 479
    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v5, v6, v14, v8}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v8

    add-int/2addr v7, v8

    .line 482
    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v8, v10

    add-int/2addr v8, v11

    add-int/2addr v8, v6

    .line 483
    :goto_3
    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 486
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    if-ge v6, v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    .line 484
    iput v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v6, v11, v6

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_3

    .line 486
    :cond_7
    aget-object v6, v11, v8

    iget v6, v6, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v7, v6, :cond_8

    .line 487
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v6, v6, v8

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lorg/tukaani/xz/lzma/Optimum;->set3(IIIII)V

    :cond_8
    :goto_4
    move v6, v13

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_9
    return v6
.end method

.method private calcNormalMatchPrices(IIIII)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p5

    .line 501
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v4, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v3, v3, v4

    const/4 v4, 0x0

    if-le v3, v1, :cond_1

    .line 502
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iput v4, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 503
    :goto_0
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    aget v3, v3, v6

    .line 506
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    if-ge v3, v1, :cond_0

    .line 504
    iget v3, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/2addr v3, v5

    iput v3, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    goto :goto_0

    .line 506
    :cond_0
    iget-object v3, v6, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v1, v3, v7

    .line 509
    :cond_1
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v6, v5

    aget v3, v3, v6

    if-ge v3, v2, :cond_2

    goto/16 :goto_5

    .line 512
    :cond_2
    :goto_1
    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v7, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v8, v5

    aget v7, v7, v8

    add-int/2addr v6, v7

    .line 515
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    if-ge v3, v6, :cond_3

    .line 513
    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr v3, v5

    iput v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_1

    .line 515
    :cond_3
    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v7, v3

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move/from16 v6, p4

    invoke-virtual {v0, v6, v3}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v3

    move v6, v4

    .line 519
    :goto_2
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v7, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v7, v7, v6

    if-le v2, v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v11, v2

    .line 523
    :goto_3
    iget-object v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v2, v2, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v2, v2, v6

    move/from16 v13, p2

    .line 527
    invoke-virtual {v0, v3, v2, v11, v13}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatchAndLenPrice(IIII)I

    move-result v7

    .line 529
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v9, v11

    aget-object v8, v8, v9

    iget v8, v8, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v7, v8, :cond_5

    .line 530
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int v10, v9, v11

    aget-object v8, v8, v10

    add-int/lit8 v10, v2, 0x4

    invoke-virtual {v8, v7, v9, v10}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 533
    :cond_5
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v8, v8, v6

    if-eq v11, v8, :cond_6

    goto/16 :goto_6

    :cond_6
    sub-int v8, v1, v11

    sub-int/2addr v8, v5

    const/4 v9, 0x2

    if-lt v8, v9, :cond_9

    .line 539
    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-le v8, v10, :cond_7

    .line 540
    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    .line 542
    :cond_7
    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v10, v12, v2, v8}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v8

    if-lt v8, v9, :cond_9

    .line 544
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v12, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v10, v10, v12

    iget-object v10, v10, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v9, v10}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 545
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v9}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    .line 548
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v9, v11, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v15

    .line 549
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v9, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v16

    .line 550
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v9, v11, v5}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v17

    .line 551
    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    add-int v18, p1, v11

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    move-object/from16 v19, v9

    .line 552
    invoke-virtual/range {v14 .. v19}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v9

    add-int/2addr v7, v9

    .line 555
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v9}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    add-int/lit8 v18, v18, 0x1

    .line 558
    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int v9, v18, v9

    .line 559
    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v4, v8, v10, v9}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v9

    add-int/2addr v7, v9

    .line 562
    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v9, v11

    add-int/2addr v9, v5

    add-int/2addr v9, v8

    .line 563
    :goto_4
    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 566
    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    if-ge v8, v9, :cond_8

    add-int/lit8 v8, v8, 0x1

    .line 564
    iput v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v8, v10, v8

    invoke-virtual {v8}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_4

    .line 566
    :cond_8
    aget-object v8, v10, v9

    iget v8, v8, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v7, v8, :cond_9

    .line 567
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v8, v8, v9

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/lit8 v10, v2, 0x4

    const/4 v12, 0x0

    move-object/from16 v20, v8

    move v8, v7

    move-object/from16 v7, v20

    invoke-virtual/range {v7 .. v12}, Lorg/tukaani/xz/lzma/Optimum;->set3(IIIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 571
    iget-object v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v2, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ne v6, v2, :cond_a

    :goto_5
    return-void

    :cond_a
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3
.end method

.method private convertOpts()I
    .locals 4

    .line 66
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 68
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v1, v0

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 71
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    .line 73
    iget-boolean v2, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v3, v2, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 75
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    add-int/lit8 v2, v0, -0x1

    .line 76
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 78
    iget-boolean v3, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v3, v3, v2

    iput v0, v3, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 80
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v2

    iget v3, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    iput v3, v0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 81
    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 82
    iget v0, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    goto :goto_1

    :cond_0
    move v0, v2

    .line 86
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v0

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 87
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v3, v2, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 88
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-gtz v0, :cond_2

    .line 92
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 93
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v1, v0

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    .line 94
    iget p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    return p0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static getMemoryUsage(III)I
    .locals 2

    const/16 v0, 0x1000

    .line 32
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x111

    .line 31
    invoke-static {p0, p1, v0, v1, p2}, Lorg/tukaani/xz/lz/LZEncoder;->getMemoryUsage(IIIII)I

    move-result p0

    add-int/lit16 p0, p0, 0x100

    return p0
.end method

.method private updateOptStateAndReps()V
    .locals 7

    .line 304
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 307
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    .line 322
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    const/4 v3, 0x4

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 310
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v2, v1

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    .line 317
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    if-eqz v1, :cond_1

    .line 311
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v4, v2, v4

    iget v4, v4, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 312
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    .line 315
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    if-ge v1, v3, :cond_0

    .line 313
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_0

    .line 315
    :cond_0
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    goto :goto_0

    .line 317
    :cond_1
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 320
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    goto :goto_1

    .line 322
    :cond_2
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 325
    :goto_1
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/lit8 v2, v1, -0x1

    .line 338
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    const/4 v5, 0x0

    if-ne v0, v2, :cond_4

    .line 329
    aget-object v1, v4, v1

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 332
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    if-nez v1, :cond_3

    .line 330
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateShortRep()V

    goto :goto_2

    .line 332
    :cond_3
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    .line 334
    :goto_2
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object p0, v1, p0

    iget-object p0, p0, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    invoke-static {v0, v5, p0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 338
    :cond_4
    aget-object v1, v4, v1

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    if-eqz v1, :cond_5

    .line 339
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    .line 340
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    .line 341
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v2}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_3

    .line 343
    :cond_5
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 347
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    if-ge v1, v3, :cond_6

    .line 345
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v2}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_3

    .line 347
    :cond_6
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v2}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    .line 360
    :goto_3
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    const/4 v4, 0x1

    if-ge v1, v3, :cond_9

    .line 351
    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v6

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v6, v6, v0

    iget-object v6, v6, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v6, v6, v1

    aput v6, v2, v5

    :goto_4
    if-gt v4, v1, :cond_7

    .line 355
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v5, v5, v0

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    add-int/lit8 v6, v4, -0x1

    aget v5, v5, v6

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-ge v4, v3, :cond_8

    .line 358
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v2, v2, v4

    aput v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    return-void

    .line 360
    :cond_9
    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v6

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    sub-int/2addr v1, v3

    aput v1, v2, v5

    .line 361
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object p0, v1, p0

    iget-object p0, p0, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    const/4 v1, 0x3

    invoke-static {v0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method getNextSymbol()I
    .locals 15

    .line 101
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v1, v0

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    sub-int/2addr v0, v1

    .line 103
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v2, v1

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 104
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v2, v1

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 110
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    const/4 v1, -0x1

    .line 111
    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    .line 113
    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->readAhead:I

    if-ne v2, v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v2

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 120
    :cond_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v2

    const/16 v3, 0x111

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    return v4

    :cond_2
    move v5, v0

    move v6, v5

    .line 139
    :goto_0
    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    const/4 v8, 0x4

    if-ge v5, v8, :cond_5

    .line 127
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->reps:[I

    aget v9, v9, v5

    invoke-virtual {v8, v9, v2}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v8

    aput v8, v7, v5

    .line 129
    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v8, v7, v5

    if-ge v8, v3, :cond_3

    .line 130
    aput v0, v7, v5

    goto :goto_1

    .line 134
    :cond_3
    aget v7, v7, v6

    if-le v8, v7, :cond_4

    move v6, v5

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 139
    :cond_5
    aget v2, v7, v6

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-lt v2, v5, :cond_6

    .line 140
    iput v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    .line 141
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v0, v0, v6

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->skip(I)V

    .line 142
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget p0, p0, v6

    return p0

    .line 149
    :cond_6
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v2, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v2, :cond_7

    .line 150
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v2, v2, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v5, v5, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v5, v4

    aget v2, v2, v5

    .line 151
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v5, v5, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v7, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v7, v4

    aget v5, v5, v7

    .line 154
    iget v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-lt v2, v7, :cond_8

    add-int/2addr v5, v8

    .line 155
    iput v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    add-int/lit8 v0, v2, -0x1

    .line 156
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->skip(I)V

    return v2

    :cond_7
    move v2, v0

    .line 161
    :cond_8
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v5, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v10

    .line 162
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->reps:[I

    aget v7, v7, v0

    add-int/2addr v7, v4

    invoke-virtual {v5, v7}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v11

    if-ge v2, v3, :cond_9

    if-eq v10, v11, :cond_9

    .line 167
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v5, v5, v6

    if-ge v5, v3, :cond_9

    return v4

    .line 172
    :cond_9
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v13

    .line 173
    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int/2addr v5, v13

    .line 177
    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v7, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v12

    .line 178
    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v14, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual/range {v9 .. v14}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v7

    .line 180
    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v9, v9, v4

    invoke-virtual {v9, v7, v0, v1}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 183
    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p0, v7, v5}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v7

    .line 184
    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p0, v7, v9}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v9

    if-ne v11, v10, :cond_a

    .line 189
    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p0, v9, v10, v5}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I

    move-result v10

    .line 191
    iget-object v11, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v11, v11, v4

    iget v11, v11, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v10, v11, :cond_a

    .line 192
    iget-object v11, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v11, v11, v4

    invoke-virtual {v11, v10, v0, v0}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 197
    :cond_a
    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v6, v10, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v6, v3, :cond_b

    .line 200
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v4

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    return v4

    .line 208
    :cond_b
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->updatePrices()V

    .line 213
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v6, v6, v0

    iget-object v6, v6, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v10}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 214
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->reps:[I

    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v10, v10, v0

    iget-object v10, v10, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    invoke-static {v6, v0, v10, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    :goto_2
    if-lt v6, v3, :cond_c

    .line 218
    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_c
    move v6, v0

    .line 238
    :goto_3
    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    if-ge v6, v8, :cond_10

    .line 222
    aget v10, v10, v6

    if-ge v10, v3, :cond_d

    goto :goto_4

    .line 226
    :cond_d
    iget-object v11, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p0, v9, v6, v11, v5}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v11

    .line 229
    :cond_e
    iget-object v12, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v12, v10, v5}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v12

    add-int/2addr v12, v11

    .line 231
    iget-object v14, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v10

    iget v14, v14, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v12, v14, :cond_f

    .line 232
    iget-object v14, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v10

    invoke-virtual {v14, v12, v0, v6}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    :cond_f
    add-int/lit8 v10, v10, -0x1

    if-ge v10, v3, :cond_e

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 238
    :cond_10
    aget v6, v10, v0

    add-int/2addr v6, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-gt v6, v2, :cond_14

    .line 240
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p0, v7, v2}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v2

    move v7, v0

    .line 246
    :goto_5
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v8, v8, v7

    if-le v6, v8, :cond_11

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 250
    :cond_11
    :goto_6
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v8, v8, v7

    .line 251
    invoke-virtual {p0, v2, v8, v6, v5}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatchAndLenPrice(IIII)I

    move-result v9

    .line 253
    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v10, v10, v6

    iget v10, v10, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v9, v10, :cond_12

    .line 254
    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v10, v10, v6

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v10, v9, v0, v8}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 256
    :cond_12
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v8, v8, v7

    if-ne v6, v8, :cond_13

    add-int/lit8 v7, v7, 0x1

    .line 257
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ne v7, v8, :cond_13

    goto :goto_7

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 266
    :cond_14
    :goto_7
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v0

    const/16 v2, 0xfff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 271
    :goto_8
    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v2, v5, :cond_17

    .line 272
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v2

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 273
    iget v2, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v2, :cond_15

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v2, v2, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v5, v5, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v5, v4

    aget v2, v2, v5

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-lt v2, v5, :cond_15

    goto :goto_a

    :cond_15
    add-int/lit8 v9, v0, -0x1

    add-int/lit8 v7, v13, 0x1

    .line 279
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int v8, v7, v0

    .line 281
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->updateOptStateAndReps()V

    .line 282
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v2

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->price:I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    .line 283
    invoke-virtual {p0, v2, v8}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v2

    add-int v10, v0, v2

    .line 284
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p0, v10, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v0

    .line 286
    invoke-direct {p0, v7, v8, v9, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calc1BytePrices(IIII)V

    if-lt v9, v3, :cond_16

    .line 289
    invoke-direct {p0, v7, v8, v9, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calcLongRepPrices(IIII)I

    move-result v11

    .line 291
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v0, v0, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v0, :cond_16

    move-object v6, p0

    .line 292
    invoke-direct/range {v6 .. v11}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calcNormalMatchPrices(IIIII)V

    goto :goto_9

    :cond_16
    move-object v6, p0

    :goto_9
    move-object p0, v6

    move v13, v7

    move v0, v9

    goto :goto_8

    :cond_17
    :goto_a
    move-object v6, p0

    .line 297
    invoke-direct {v6}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->convertOpts()I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 56
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 57
    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->reset()V

    return-void
.end method
