.class public Lcom/cndatacom/campus/work/NetworkShareWorker;
.super Lcom/cndatacom/sdk/portal/work/WorkerInfo;
.source "NetworkShareWorker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.cndatacom.campus.receiver.action.data.key"

    .line 2
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p3, "com.cndatacom.campus.receiver.action.bundle.key"

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public runTask()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/NetUtil;->isNetworkSharing(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkShareWorker->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 4
    new-instance v3, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v4, "200119"

    invoke-direct {v3, v4}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/cndatacom/campus/work/NetworkShareWorker;->a(Landroid/content/Context;ILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 5
    invoke-virtual {p0, v2}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->setForceStop(Z)V

    :cond_0
    return-void
.end method
