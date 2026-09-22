.class final Lcom/anlandnext/awl/Spawn;
.super Ljava/lang/Object;
.source "Spawn.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "awlspawn"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native nativeSpawn(ILjava/lang/String;[Ljava/lang/String;)[I
.end method
