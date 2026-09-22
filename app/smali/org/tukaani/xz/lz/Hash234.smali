.class final Lorg/tukaani/xz/lz/Hash234;
.super Lorg/tukaani/xz/lz/CRC32Hash;
.source "Hash234.java"


# static fields
.field private static final HASH_2_MASK:I = 0x3ff

.field private static final HASH_2_SIZE:I = 0x400

.field private static final HASH_3_MASK:I = 0xffff

.field private static final HASH_3_SIZE:I = 0x10000


# instance fields
.field private final hash2Table:[I

.field private hash2Value:I

.field private final hash3Table:[I

.field private hash3Value:I

.field private final hash4Mask:I

.field private final hash4Size:I

.field private final hash4Table:[I

.field private hash4Value:I


# direct methods
.method constructor <init>(ILorg/tukaani/xz/ArrayCache;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lorg/tukaani/xz/lz/CRC32Hash;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Value:I

    .line 26
    iput v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Value:I

    .line 27
    iput v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Value:I

    const/16 v0, 0x400

    const/4 v1, 0x1

    .line 50
    invoke-virtual {p2, v0, v1}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Table:[I

    const/high16 v0, 0x10000

    .line 51
    invoke-virtual {p2, v0, v1}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Table:[I

    .line 53
    invoke-static {p1}, Lorg/tukaani/xz/lz/Hash234;->getHash4Size(I)I

    move-result p1

    iput p1, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Size:I

    .line 54
    invoke-virtual {p2, p1, v1}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object p2

    iput-object p2, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Table:[I

    sub-int/2addr p1, v1

    .line 55
    iput p1, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Mask:I

    return-void
.end method

.method static getHash4Size(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x1

    const v0, 0xffff

    or-int/2addr p0, v0

    const/high16 v0, 0x1000000

    if-le p0, v0, :cond_0

    ushr-int/lit8 p0, p0, 0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static getMemoryUsage(I)I
    .locals 1

    const v0, 0x10400

    .line 45
    invoke-static {p0}, Lorg/tukaani/xz/lz/Hash234;->getHash4Size(I)I

    move-result p0

    add-int/2addr p0, v0

    div-int/lit16 p0, p0, 0x100

    add-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method calcHashes([BI)V
    .locals 2

    .line 65
    sget-object v0, Lorg/tukaani/xz/lz/Hash234;->crcTable:[I

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x3ff

    .line 66
    iput v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Value:I

    add-int/lit8 v1, p2, 0x2

    .line 68
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v1, v0

    .line 69
    iput v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Value:I

    .line 71
    sget-object v1, Lorg/tukaani/xz/lz/Hash234;->crcTable:[I

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aget p1, v1, p1

    shl-int/lit8 p1, p1, 0x5

    xor-int/2addr p1, v0

    .line 72
    iget p2, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Mask:I

    and-int/2addr p1, p2

    iput p1, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Value:I

    return-void
.end method

.method getHash2Pos()I
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Table:[I

    iget p0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Value:I

    aget p0, v0, p0

    return p0
.end method

.method getHash3Pos()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Table:[I

    iget p0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Value:I

    aget p0, v0, p0

    return p0
.end method

.method getHash4Pos()I
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Table:[I

    iget p0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Value:I

    aget p0, v0, p0

    return p0
.end method

.method normalize(I)V
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Table:[I

    const/16 v1, 0x400

    invoke-static {v0, v1, p1}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    .line 95
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Table:[I

    const/high16 v1, 0x10000

    invoke-static {v0, v1, p1}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    .line 96
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Table:[I

    iget p0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Size:I

    invoke-static {v0, p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    return-void
.end method

.method putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Table:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 60
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Table:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 61
    iget-object p0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Table:[I

    invoke-virtual {p1, p0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    return-void
.end method

.method updateTables(I)V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Table:[I

    iget v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash2Value:I

    aput p1, v0, v1

    .line 89
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Table:[I

    iget v1, p0, Lorg/tukaani/xz/lz/Hash234;->hash3Value:I

    aput p1, v0, v1

    .line 90
    iget-object v0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Table:[I

    iget p0, p0, Lorg/tukaani/xz/lz/Hash234;->hash4Value:I

    aput p1, v0, p0

    return-void
.end method
