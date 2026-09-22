.class final Lcom/anlandnext/awl/Awl$EventBinder;
.super Landroid/os/Binder;
.source "Awl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anlandnext/awl/Awl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventBinder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 164
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x0

    .line 165
    const-string v1, "anland.IEvents"

    invoke-virtual {p0, v0, v1}, Lcom/anlandnext/awl/Awl$EventBinder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const v1, 0xffffff

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    :try_start_0
    const-string p0, "anland.IEvents"

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    if-ne p1, v0, :cond_1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 181
    :goto_0
    invoke-static {p1, p3, p4, p0}, Lcom/anlandnext/awl/Awl;->-$$Nest$smdispatch(IJLjava/lang/String;)V

    return v0

    :catch_0
    const/4 p0, 0x0

    return p0

    .line 172
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method
