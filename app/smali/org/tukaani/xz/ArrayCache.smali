.class public Lorg/tukaani/xz/ArrayCache;
.super Ljava/lang/Object;
.source "ArrayCache.java"


# static fields
.field private static volatile defaultCache:Lorg/tukaani/xz/ArrayCache;

.field private static final dummyCache:Lorg/tukaani/xz/ArrayCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 69
    new-instance v0, Lorg/tukaani/xz/ArrayCache;

    invoke-direct {v0}, Lorg/tukaani/xz/ArrayCache;-><init>()V

    sput-object v0, Lorg/tukaani/xz/ArrayCache;->dummyCache:Lorg/tukaani/xz/ArrayCache;

    .line 78
    const-string v1, "org.tukaani.xz.ArrayCache"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "Dummy"

    if-nez v1, :cond_0

    move-object v1, v2

    .line 82
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v3, "Basic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    sput-object v0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    return-void

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in the system property org.tukaani.xz.ArrayCache. Supported values: Dummy, Basic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    invoke-static {}, Lorg/tukaani/xz/BasicArrayCache;->getInstance()Lorg/tukaani/xz/BasicArrayCache;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultCache()Lorg/tukaani/xz/ArrayCache;
    .locals 1

    .line 115
    sget-object v0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    return-object v0
.end method

.method public static getDummyCache()Lorg/tukaani/xz/ArrayCache;
    .locals 1

    .line 104
    sget-object v0, Lorg/tukaani/xz/ArrayCache;->dummyCache:Lorg/tukaani/xz/ArrayCache;

    return-object v0
.end method

.method public static setDefaultCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    sput-object p0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    return-void
.end method


# virtual methods
.method public getByteArray(IZ)[B
    .locals 0

    .line 155
    new-array p0, p1, [B

    return-object p0
.end method

.method public getIntArray(IZ)[I
    .locals 0

    .line 182
    new-array p0, p1, [I

    return-object p0
.end method

.method public putArray([B)V
    .locals 0

    return-void
.end method

.method public putArray([I)V
    .locals 0

    return-void
.end method
