.class public final Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;
.super Lorg/tukaani/xz/rangecoder/RangeEncoder;
.source "RangeEncoderToStream.java"


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;->out:Ljava/io/OutputStream;

    .line 16
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;->reset()V

    return-void
.end method


# virtual methods
.method writeByte(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
