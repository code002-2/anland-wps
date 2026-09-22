.class public final Lcom/anlandnext/awl/Awl$ClientProcess;
.super Ljava/lang/Object;
.source "Awl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anlandnext/awl/Awl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientProcess"
.end annotation


# instance fields
.field public final pid:I

.field public final stderr:Landroid/os/ParcelFileDescriptor;

.field public final stdin:Landroid/os/ParcelFileDescriptor;

.field public final stdout:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput p1, p0, Lcom/anlandnext/awl/Awl$ClientProcess;->pid:I

    iput-object p2, p0, Lcom/anlandnext/awl/Awl$ClientProcess;->stdin:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/anlandnext/awl/Awl$ClientProcess;->stdout:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/anlandnext/awl/Awl$ClientProcess;->stderr:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
