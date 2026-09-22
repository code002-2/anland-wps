.class public final Lorg/tukaani/xz/simple/PowerPC;
.super Ljava/lang/Object;
.source "PowerPC.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/PowerPC;->isEncoder:Z

    .line 17
    iput p2, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 4

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x4

    move v0, p2

    :goto_0
    if-gt v0, p3, :cond_2

    .line 26
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xfc

    const/16 v2, 0x48

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 27
    invoke-static {p1, v0}, Lorg/tukaani/xz/common/ByteArrayView;->getIntBE([BI)I

    move-result v1

    .line 29
    iget v2, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    add-int/2addr v2, v0

    sub-int/2addr v2, p2

    .line 30
    iget-boolean v3, p0, Lorg/tukaani/xz/simple/PowerPC;->isEncoder:Z

    if-nez v3, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v1, v2

    const v2, 0x3fffffc

    and-int/2addr v1, v2

    const v2, 0x48000001

    or-int/2addr v1, v2

    .line 34
    invoke-static {p1, v0, v1}, Lorg/tukaani/xz/common/ByteArrayView;->setIntBE([BII)V

    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    sub-int/2addr v0, p2

    .line 39
    iget p1, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    return v0
.end method
