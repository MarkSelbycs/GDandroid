.class Lcom/cndatacom/sdk/portal/manager/WorkManager$2;
.super Ljava/lang/Object;
.source "WorkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/sdk/portal/manager/WorkManager;->handleWorkerMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/manager/WorkManager;

.field public final synthetic val$finalWorkInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

.field public final synthetic val$what:I


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/manager/WorkManager;Lcom/cndatacom/sdk/portal/work/WorkerInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;->this$0:Lcom/cndatacom/sdk/portal/manager/WorkManager;

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;->val$finalWorkInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    iput p3, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;->val$what:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;->val$finalWorkInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->run()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;->val$finalWorkInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getPeriod()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;->val$finalWorkInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->isForceStop()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;->this$0:Lcom/cndatacom/sdk/portal/manager/WorkManager;

    iget-object v0, v0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mWorkerHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;->val$what:I

    iget-object v2, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;->val$finalWorkInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getPeriod()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;->this$0:Lcom/cndatacom/sdk/portal/manager/WorkManager;

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->access$100(Lcom/cndatacom/sdk/portal/manager/WorkManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;->val$what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-void
.end method
