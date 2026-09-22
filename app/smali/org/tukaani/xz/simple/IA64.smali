.class public final Lorg/tukaani/xz/simple/IA64;
.super Ljava/lang/Object;
.source "IA64.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field private static final BRANCH_TABLE:[I


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    .line 10
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x6
        0x6
        0x0
        0x0
        0x7
        0x7
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/IA64;->isEncoder:Z

    .line 21
    iput p2, p0, Lorg/tukaani/xz/simple/IA64;->pos:I

    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 21

    move-object/from16 v0, p0

    add-int v1, p2, p3

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    move/from16 v3, p2

    :goto_0
    if-gt v3, v1, :cond_6

    .line 30
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x1f

    .line 31
    sget-object v5, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    aget v4, v5, v4

    const/4 v6, 0x5

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x3

    if-ge v7, v8, :cond_5

    ushr-int v8, v4, v7

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    move/from16 p3, v2

    move/from16 v16, v6

    goto/16 :goto_5

    :cond_0
    ushr-int/lit8 v8, v6, 0x3

    and-int/lit8 v10, v6, 0x7

    const-wide/16 v11, 0x0

    move/from16 p3, v2

    move-wide v14, v11

    const/4 v13, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v13, v2, :cond_1

    add-int v2, v3, v8

    add-int/2addr v2, v13

    .line 42
    aget-byte v2, p1, v2

    move/from16 v16, v6

    int-to-long v5, v2

    const-wide/16 v17, 0xff

    and-long v5, v5, v17

    mul-int/lit8 v2, v13, 0x8

    shl-long/2addr v5, v2

    or-long/2addr v14, v5

    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v16

    goto :goto_2

    :cond_1
    move/from16 v16, v6

    ushr-long v5, v14, v10

    const/16 v13, 0x25

    ushr-long v17, v5, v13

    const-wide/16 v19, 0xf

    and-long v17, v17, v19

    const-wide/16 v19, 0x5

    cmp-long v13, v17, v19

    if-nez v13, :cond_4

    const/16 v13, 0x9

    ushr-long v17, v5, v13

    const-wide/16 v19, 0x7

    and-long v17, v17, v19

    cmp-long v11, v17, v11

    if-eqz v11, :cond_2

    goto :goto_5

    :cond_2
    const/16 v11, 0xd

    ushr-long v12, v5, v11

    const-wide/32 v17, 0xfffff

    and-long v12, v12, v17

    long-to-int v12, v12

    const/16 v13, 0x24

    move/from16 v19, v9

    move/from16 v20, v10

    ushr-long v9, v5, v13

    long-to-int v9, v9

    and-int/lit8 v9, v9, 0x1

    shl-int/lit8 v9, v9, 0x14

    or-int/2addr v9, v12

    shl-int/lit8 v9, v9, 0x4

    .line 55
    iget-boolean v10, v0, Lorg/tukaani/xz/simple/IA64;->isEncoder:Z

    .line 58
    iget v12, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    if-eqz v10, :cond_3

    add-int/2addr v12, v3

    sub-int v12, v12, p2

    add-int/2addr v9, v12

    goto :goto_3

    :cond_3
    add-int/2addr v12, v3

    sub-int v12, v12, p2

    sub-int/2addr v9, v12

    :goto_3
    ushr-int/lit8 v9, v9, 0x4

    const-wide v12, -0x11ffffe001L

    and-long/2addr v5, v12

    int-to-long v9, v9

    and-long v12, v9, v17

    shl-long v11, v12, v11

    or-long/2addr v5, v11

    const-wide/32 v11, 0x100000

    and-long/2addr v9, v11

    shl-long v9, v9, p3

    or-long/2addr v5, v9

    shl-int v9, v19, v20

    add-int/lit8 v9, v9, -0x1

    int-to-long v9, v9

    and-long/2addr v9, v14

    shl-long v5, v5, v20

    or-long/2addr v5, v9

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v2, :cond_4

    add-int v10, v3, v8

    add-int/2addr v10, v9

    mul-int/lit8 v11, v9, 0x8

    ushr-long v11, v5, v11

    long-to-int v11, v11

    int-to-byte v11, v11

    .line 70
    aput-byte v11, p1, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v16, 0x29

    move/from16 v2, p3

    goto/16 :goto_1

    :cond_5
    move/from16 p3, v2

    add-int/lit8 v3, v3, 0x10

    goto/16 :goto_0

    :cond_6
    sub-int v3, v3, p2

    .line 75
    iget v1, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    return v3
.end method
