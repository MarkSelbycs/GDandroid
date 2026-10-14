.class public abstract Landroidx/work/multiprocess/RemoteCoroutineWorker;
.super Landroidx/work/multiprocess/RemoteListenableWorker;
.source "RemoteCoroutineWorker.kt"


# instance fields
.field public final o:Lt3/s;

.field public final p:Lb1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/c<",
            "Landroidx/work/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/multiprocess/RemoteListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Lt3/l1;->b(Lt3/h1;ILjava/lang/Object;)Lt3/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->o:Lt3/s;

    .line 3
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object p1

    const-string p2, "create()"

    invoke-static {p1, p2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->p:Lb1/c;

    .line 4
    new-instance p2, Landroidx/work/multiprocess/e;

    invoke-direct {p2, p0}, Landroidx/work/multiprocess/e;-><init>(Landroidx/work/multiprocess/RemoteCoroutineWorker;)V

    .line 5
    invoke-virtual {p0}, Landroidx/work/c;->getTaskExecutor()Lc1/b;

    move-result-object v0

    invoke-interface {v0}, Lc1/b;->c()Lc1/a;

    move-result-object v0

    .line 6
    invoke-virtual {p1, p2, v0}, Lb1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic e(Landroidx/work/multiprocess/RemoteCoroutineWorker;)V
    .locals 0

    invoke-static {p0}, Landroidx/work/multiprocess/RemoteCoroutineWorker;->f(Landroidx/work/multiprocess/RemoteCoroutineWorker;)V

    return-void
.end method

.method public static final f(Landroidx/work/multiprocess/RemoteCoroutineWorker;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->p:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->o:Lt3/s;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lt3/h1$a;->a(Lt3/h1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final synthetic g(Landroidx/work/multiprocess/RemoteCoroutineWorker;)Lb1/c;
    .locals 0

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->p:Lb1/c;

    return-object p0
.end method


# virtual methods
.method public d()Lr2/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Landroidx/work/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lt3/q0;->a()Lt3/b0;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->o:Lt3/s;

    invoke-virtual {v0, v1}, Ld3/a;->x(Ld3/g;)Ld3/g;

    move-result-object v0

    invoke-static {v0}, Lt3/f0;->a(Ld3/g;)Lt3/e0;

    move-result-object v1

    .line 2
    new-instance v4, Landroidx/work/multiprocess/RemoteCoroutineWorker$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/work/multiprocess/RemoteCoroutineWorker$a;-><init>(Landroidx/work/multiprocess/RemoteCoroutineWorker;Ld3/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lt3/f;->b(Lt3/e0;Ld3/g;Lt3/g0;Ll3/p;ILjava/lang/Object;)Lt3/h1;

    .line 3
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->p:Lb1/c;

    return-object v0
.end method

.method public abstract h(Ld3/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "-",
            "Landroidx/work/c$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final onStopped()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/work/multiprocess/RemoteListenableWorker;->onStopped()V

    .line 2
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->p:Lb1/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb1/a;->cancel(Z)Z

    return-void
.end method
