.class public Lorg/tukaani/xz/check/CRC32;
.super Lorg/tukaani/xz/check/Check;
.source "CRC32.java"


# instance fields
.field private final state:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    .line 10
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    const/4 v0, 0x4

    .line 13
    iput v0, p0, Lorg/tukaani/xz/check/CRC32;->size:I

    .line 14
    const-string v0, "CRC32"

    iput-object v0, p0, Lorg/tukaani/xz/check/CRC32;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 3

    const/4 v0, 0x4

    .line 24
    new-array v0, v0, [B

    .line 25
    iget-object v1, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/tukaani/xz/common/ByteArrayView;->setIntLE([BII)V

    .line 26
    iget-object p0, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {p0}, Ljava/util/zip/CRC32;->reset()V

    return-object v0
.end method

.method public update([BII)V
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method
