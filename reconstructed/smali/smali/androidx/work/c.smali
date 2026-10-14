.class public abstract Landroidx/work/c;
.super Ljava/lang/Object;
.source "ListenableWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/c$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/work/WorkerParameters;

.field public volatile c:I

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x100

    .line 2
    iput v0, p0, Landroidx/work/c;->c:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iput-object p1, p0, Landroidx/work/c;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WorkerParameters is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Application Context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/work/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundInfoAsync()Lr2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Lq0/h;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public final getId()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->d()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final getInputData()Landroidx/work/b;
    .locals 1

    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->e()Landroidx/work/b;

    move-result-object v0

    return-object v0
.end method

.method public final getNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->f()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public final getRunAttemptCount()I
    .locals 1

    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->h()I

    move-result v0

    return v0
.end method

.method public final getStopReason()I
    .locals 1

    iget v0, p0, Landroidx/work/c;->c:I

    return v0
.end method

.method public final getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->j()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTaskExecutor()Lc1/b;
    .locals 1

    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->k()Lc1/b;

    move-result-object v0

    return-object v0
.end method

.method public final getTriggeredContentAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->l()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTriggeredContentUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWorkerFactory()Lq0/c0;
    .locals 1

    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->n()Lq0/c0;

    move-result-object v0

    return-object v0
.end method

.method public final isStopped()Z
    .locals 2

    iget v0, p0, Landroidx/work/c;->c:I

    const/16 v1, -0x100

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUsed()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/work/c;->d:Z

    return v0
.end method

.method public onStopped()V
    .locals 0

    return-void
.end method

.method public final setForegroundAsync(Lq0/h;)Lr2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/h;",
            ")",
            "Lr2/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->b()Lq0/i;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/work/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/c;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lq0/i;->a(Landroid/content/Context;Ljava/util/UUID;Lq0/h;)Lr2/a;

    move-result-object p1

    return-object p1
.end method

.method public setProgressAsync(Landroidx/work/b;)Lr2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/b;",
            ")",
            "Lr2/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->g()Lq0/u;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/work/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/c;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lq0/u;->a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/b;)Lr2/a;

    move-result-object p1

    return-object p1
.end method

.method public final setUsed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/c;->d:Z

    return-void
.end method

.method public abstract startWork()Lr2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Landroidx/work/c$a;",
            ">;"
        }
    .end annotation
.end method

.method public final stop(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/c;->c:I

    .line 2
    invoke-virtual {p0}, Landroidx/work/c;->onStopped()V

    return-void
.end method
