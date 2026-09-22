.class public final Lcom/anlandnext/awl/Awl$WlWindow;
.super Ljava/lang/Object;
.source "Awl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anlandnext/awl/Awl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WlWindow"
.end annotation


# instance fields
.field public final attached:Z

.field public final id:J

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(JZLjava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    iput-boolean p3, p0, Lcom/anlandnext/awl/Awl$WlWindow;->attached:Z

    iput-object p4, p0, Lcom/anlandnext/awl/Awl$WlWindow;->title:Ljava/lang/String;

    return-void
.end method
