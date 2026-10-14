.class public interface abstract Lc1/b;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-interface {p0}, Lc1/b;->c()Lc1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract b()Ljava/util/concurrent/Executor;
.end method

.method public abstract c()Lc1/a;
.end method

.method public d()Lt3/b0;
    .locals 1

    invoke-interface {p0}, Lc1/b;->c()Lc1/a;

    move-result-object v0

    invoke-static {v0}, Lt3/b1;->a(Ljava/util/concurrent/Executor;)Lt3/b0;

    move-result-object v0

    return-object v0
.end method
