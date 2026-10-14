.class public Lcom/cndatacom/sdk/portal/manager/WorkManager;
.super Ljava/lang/Object;
.source "WorkManager.java"


# static fields
.field private static _WorkManager:Lcom/cndatacom/sdk/portal/manager/WorkManager;


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/cndatacom/sdk/portal/work/WorkerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field public mWorkerHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;->getInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "handleWorkManagerData"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/cndatacom/sdk/portal/manager/WorkManager$1;

    invoke-direct {v2, p0}, Lcom/cndatacom/sdk/portal/manager/WorkManager$1;-><init>(Lcom/cndatacom/sdk/portal/manager/WorkManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/sdk/portal/manager/WorkManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->handleWorkerMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/cndatacom/sdk/portal/manager/WorkManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;
    .locals 2

    .line 1
    const-class v0, Lcom/cndatacom/sdk/portal/manager/WorkManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/cndatacom/sdk/portal/manager/WorkManager;->_WorkManager:Lcom/cndatacom/sdk/portal/manager/WorkManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/cndatacom/sdk/portal/manager/WorkManager;

    invoke-direct {v1}, Lcom/cndatacom/sdk/portal/manager/WorkManager;-><init>()V

    sput-object v1, Lcom/cndatacom/sdk/portal/manager/WorkManager;->_WorkManager:Lcom/cndatacom/sdk/portal/manager/WorkManager;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->_WorkManager:Lcom/cndatacom/sdk/portal/manager/WorkManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleWorkerMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/cndatacom/sdk/portal/manager/WorkManager$2;-><init>(Lcom/cndatacom/sdk/portal/manager/WorkManager;Lcom/cndatacom/sdk/portal/work/WorkerInfo;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public cancelAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method public isTaskRunning(I)Z
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_3
    return-void
.end method

.method public startOneTimeWork(Lcom/cndatacom/sdk/portal/work/WorkerInfo;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startOneTimeWorkDelayed(Lcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    return-void
.end method

.method public startOneTimeWorkDelayed(Lcom/cndatacom/sdk/portal/work/WorkerInfo;J)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    return-void
.end method

.method public startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V
    .locals 1

    .line 2
    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v0

    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->setPeriod(J)V

    .line 4
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p4, p5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
