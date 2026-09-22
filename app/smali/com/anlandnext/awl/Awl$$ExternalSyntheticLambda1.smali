.class public final synthetic Lcom/anlandnext/awl/Awl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anlandnext/awl/Awl$$ExternalSyntheticLambda1;->f$0:I

    iput-wide p2, p0, Lcom/anlandnext/awl/Awl$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lcom/anlandnext/awl/Awl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget v0, p0, Lcom/anlandnext/awl/Awl$$ExternalSyntheticLambda1;->f$0:I

    iget-wide v1, p0, Lcom/anlandnext/awl/Awl$$ExternalSyntheticLambda1;->f$1:J

    iget-object p0, p0, Lcom/anlandnext/awl/Awl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/anlandnext/awl/Awl;->lambda$dispatch$1(IJLjava/lang/String;)V

    return-void
.end method
