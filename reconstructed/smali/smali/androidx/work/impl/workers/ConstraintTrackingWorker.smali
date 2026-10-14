.class public final Landroidx/work/impl/workers/ConstraintTrackingWorker;
.super Landroidx/work/c;
.source "ConstraintTrackingWorker.kt"

# interfaces
.implements Lv0/d;


# instance fields
.field public final e:Landroidx/work/WorkerParameters;

.field public final f:Ljava/lang/Object;

.field public volatile g:Z

.field public final h:Lb1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/c<",
            "Landroidx/work/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroidx/work/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParameters"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/c;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/WorkerParameters;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    return-void
.end method

.method public static synthetic b(Lt3/h1;)V
    .locals 0

    invoke-static {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f(Lt3/h1;)V

    return-void
.end method

.method public static synthetic c(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lr2/a;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lr2/a;)V

    return-void
.end method

.method public static synthetic d(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V
    .locals 0

    invoke-static {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V

    return-void
.end method

.method public static final f(Lt3/h1;)V
    .locals 1

    const-string v0, "$job"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lt3/h1;->e(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final g(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lr2/a;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$innerFuture"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    const-string p1, "future"

    invoke-static {p0, p1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ld1/d;->c(Lb1/c;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    invoke-virtual {p0, p1}, Lb1/c;->r(Lr2/a;)Z

    .line 5
    :goto_0
    sget-object p0, La3/o;->a:La3/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final h(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e()V

    return-void
.end method


# virtual methods
.method public a(Lz0/u;Lv0/b;)V
    .locals 4

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    invoke-static {}, Ld1/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraints changed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of p1, p2, Lv0/b$b;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x1

    :try_start_0
    iput-boolean p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Z

    sget-object p2, La3/o;->a:La3/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/work/c;->getInputData()Landroidx/work/b;

    move-result-object v0

    const-string v1, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v0, v1}, Landroidx/work/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    const-string v2, "get()"

    invoke-static {v1, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 5
    invoke-static {}, Ld1/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No worker to delegate to."

    invoke-virtual {v1, v0, v2}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    const-string v1, "future"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld1/d;->b(Lb1/c;)Z

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroidx/work/c;->getWorkerFactory()Lq0/c0;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Landroidx/work/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/WorkerParameters;

    .line 9
    invoke-virtual {v2, v3, v0, v4}, Lq0/c0;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/c;

    move-result-object v2

    iput-object v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->i:Landroidx/work/c;

    if-nez v2, :cond_4

    .line 10
    invoke-static {}, Ld1/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No worker to delegate to."

    invoke-virtual {v1, v0, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    const-string v1, "future"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld1/d;->b(Lb1/c;)Z

    return-void

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroidx/work/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lr0/p0;->o(Landroid/content/Context;)Lr0/p0;

    move-result-object v2

    const-string v3, "getInstance(applicationContext)"

    invoke-static {v2, v3}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/work/c;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id.toString()"

    invoke-static {v4, v5}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lz0/v;->f(Ljava/lang/String;)Lz0/u;

    move-result-object v3

    if-nez v3, :cond_5

    .line 14
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    const-string v1, "future"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld1/d;->b(Lb1/c;)Z

    return-void

    .line 15
    :cond_5
    new-instance v4, Lv0/e;

    invoke-virtual {v2}, Lr0/p0;->t()Lx0/m;

    move-result-object v5

    const-string v6, "workManagerImpl.trackers"

    invoke-static {v5, v6}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lv0/e;-><init>(Lx0/m;)V

    .line 16
    invoke-virtual {v2}, Lr0/p0;->w()Lc1/b;

    move-result-object v2

    invoke-interface {v2}, Lc1/b;->d()Lt3/b0;

    move-result-object v2

    const-string v5, "workManagerImpl.workTask\u2026r.taskCoroutineDispatcher"

    invoke-static {v2, v5}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {v4, v3, v2, p0}, Lv0/f;->b(Lv0/e;Lz0/u;Lt3/b0;Lv0/d;)Lt3/h1;

    move-result-object v2

    .line 18
    iget-object v5, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    new-instance v6, Ld1/c;

    invoke-direct {v6, v2}, Ld1/c;-><init>(Lt3/h1;)V

    new-instance v2, La1/t;

    invoke-direct {v2}, La1/t;-><init>()V

    invoke-virtual {v5, v6, v2}, Lb1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 19
    invoke-virtual {v4, v3}, Lv0/e;->a(Lz0/u;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 20
    invoke-static {}, Ld1/d;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constraints met for delegate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->i:Landroidx/work/c;

    invoke-static {v2}, Lm3/k;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/work/c;->startWork()Lr2/a;

    move-result-object v2

    const-string v3, "delegate!!.startWork()"

    invoke-static {v2, v3}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v3, Ld1/b;

    invoke-direct {v3, p0, v2}, Ld1/b;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lr2/a;)V

    .line 23
    invoke-virtual {p0}, Landroidx/work/c;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 24
    invoke-interface {v2, v3, v4}, Lr2/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 25
    invoke-static {}, Ld1/d;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delegated worker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " threw exception in startWork."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v1, v3, v0, v2}, Lq0/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_1
    iget-boolean v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Z

    if-eqz v2, :cond_6

    .line 29
    invoke-static {}, Ld1/d;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Constraints were unmet, Retrying."

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    const-string v2, "future"

    invoke-static {v1, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ld1/d;->c(Lb1/c;)Z

    goto :goto_2

    .line 31
    :cond_6
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    const-string v2, "future"

    invoke-static {v1, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ld1/d;->b(Lb1/c;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 33
    :cond_7
    invoke-static {}, Ld1/d;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constraints not met for delegate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Requesting retry."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {v1, v2, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    const-string v1, "future"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld1/d;->c(Lb1/c;)Z

    :goto_3
    return-void
.end method

.method public onStopped()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/work/c;->onStopped()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->i:Landroidx/work/c;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/work/c;->isStopped()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/work/c;->getStopReason()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/work/c;->stop(I)V

    :cond_1
    return-void
.end method

.method public startWork()Lr2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Landroidx/work/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/work/c;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Ld1/a;

    invoke-direct {v1, p0}, Ld1/a;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lb1/c;

    const-string v1, "future"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
