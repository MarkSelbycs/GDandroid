.class public final Landroidx/work/multiprocess/o;
.super Ljava/lang/Object;
.source "RemoteWorkerWrapper.kt"


# direct methods
.method public static synthetic a(Lb1/c;Landroidx/work/c;Landroidx/work/multiprocess/l;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/multiprocess/o;->d(Lb1/c;Landroidx/work/c;Landroidx/work/multiprocess/l;)V

    return-void
.end method

.method public static synthetic b(Lb1/c;Landroidx/work/a;Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;Lc1/b;Landroidx/work/multiprocess/l;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/work/multiprocess/o;->c(Lb1/c;Landroidx/work/a;Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;Lc1/b;Landroidx/work/multiprocess/l;)V

    return-void
.end method

.method public static final c(Lb1/c;Landroidx/work/a;Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;Lc1/b;Landroidx/work/multiprocess/l;)V
    .locals 1

    const-string v0, "$configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$workerClassName"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$workerParameters"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$taskExecutor"

    invoke-static {p5, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$wrapper"

    invoke-static {p6, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/work/a;->n()Lq0/c0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2, p3, p4}, Lq0/c0;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/c;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to create an instance of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p2

    sget-object p3, Landroidx/work/multiprocess/ListenableWorkerImpl;->j:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    return-void

    .line 7
    :cond_1
    instance-of p2, p1, Landroidx/work/multiprocess/RemoteListenableWorker;

    if-nez p2, :cond_2

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not extend "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Landroidx/work/multiprocess/RemoteListenableWorker;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p2

    sget-object p3, Landroidx/work/multiprocess/ListenableWorkerImpl;->j:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    return-void

    .line 13
    :cond_2
    new-instance p2, Landroidx/work/multiprocess/n;

    invoke-direct {p2, p0, p1, p6}, Landroidx/work/multiprocess/n;-><init>(Lb1/c;Landroidx/work/c;Landroidx/work/multiprocess/l;)V

    .line 14
    invoke-interface {p5}, Lc1/b;->c()Lc1/a;

    move-result-object p3

    .line 15
    invoke-virtual {p0, p2, p3}, Lb1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 16
    check-cast p1, Landroidx/work/multiprocess/RemoteListenableWorker;

    invoke-virtual {p1}, Landroidx/work/multiprocess/RemoteListenableWorker;->d()Lr2/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb1/c;->r(Lr2/a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p0, p1}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public static final d(Lb1/c;Landroidx/work/c;Landroidx/work/multiprocess/l;)V
    .locals 1

    const-string v0, "$wrapper"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lb1/a;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2
    :catch_0
    check-cast p1, Landroidx/work/multiprocess/RemoteListenableWorker;

    invoke-virtual {p2}, Landroidx/work/multiprocess/l;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/work/c;->stop(I)V

    :catchall_0
    :goto_0
    return-void
.end method

.method public static final e(Landroid/content/Context;Landroidx/work/a;Ljava/lang/String;Landroidx/work/WorkerParameters;Lc1/b;)Landroidx/work/multiprocess/l;
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerClassName"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParameters"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutor"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v2

    .line 2
    new-instance v0, Landroidx/work/multiprocess/l;

    const-string v1, "future"

    invoke-static {v2, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroidx/work/multiprocess/l;-><init>(Lr2/a;)V

    .line 3
    invoke-interface {p4}, Lc1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v9

    new-instance v10, Landroidx/work/multiprocess/m;

    move-object v1, v10

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Landroidx/work/multiprocess/m;-><init>(Lb1/c;Landroidx/work/a;Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;Lc1/b;Landroidx/work/multiprocess/l;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
