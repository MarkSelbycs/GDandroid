.class public Lcom/cndatacom/campus/manager/HoldExtraTaskManager;
.super Ljava/lang/Object;
.source "HoldExtraTaskManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllTask(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancelAll()V

    return-void
.end method

.method public clearMemory(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public exeTask(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v0

    new-instance v3, Lcom/cndatacom/campus/work/NetworkShareWorker;

    invoke-direct {v3}, Lcom/cndatacom/campus/work/NetworkShareWorker;-><init>()V

    const-wide/32 v1, 0xea60

    const-wide/16 v4, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    return-void
.end method
