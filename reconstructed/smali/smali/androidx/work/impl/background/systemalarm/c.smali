.class public Landroidx/work/impl/background/systemalarm/c;
.super Ljava/lang/Object;
.source "DelayMetCommandHandler.java"

# interfaces
.implements Lv0/d;
.implements La1/a0$a;


# static fields
.field public static final t:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Lz0/m;

.field public final d:Landroidx/work/impl/background/systemalarm/d;

.field public final e:Lv0/e;

.field public final f:Ljava/lang/Object;

.field public g:I

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public o:Landroid/os/PowerManager$WakeLock;

.field public p:Z

.field public final q:Lr0/a0;

.field public final r:Lt3/b0;

.field public volatile s:Lt3/h1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/c;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/d;Lr0/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Landroidx/work/impl/background/systemalarm/c;->b:I

    .line 4
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/d;

    .line 5
    invoke-virtual {p4}, Lr0/a0;->a()Lz0/m;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    .line 6
    iput-object p4, p0, Landroidx/work/impl/background/systemalarm/c;->q:Lr0/a0;

    .line 7
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/d;->g()Lr0/p0;

    move-result-object p1

    invoke-virtual {p1}, Lr0/p0;->t()Lx0/m;

    move-result-object p1

    .line 8
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/d;->f()Lc1/b;

    move-result-object p2

    invoke-interface {p2}, Lc1/b;->c()Lc1/a;

    move-result-object p2

    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/c;->h:Ljava/util/concurrent/Executor;

    .line 9
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/d;->f()Lc1/b;

    move-result-object p2

    invoke-interface {p2}, Lc1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object p2

    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/c;->i:Ljava/util/concurrent/Executor;

    .line 10
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/d;->f()Lc1/b;

    move-result-object p2

    invoke-interface {p2}, Lc1/b;->d()Lt3/b0;

    move-result-object p2

    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/c;->r:Lt3/b0;

    .line 11
    new-instance p2, Lv0/e;

    invoke-direct {p2, p1}, Lv0/e;-><init>(Lx0/m;)V

    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/c;->e:Lv0/e;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Landroidx/work/impl/background/systemalarm/c;->p:Z

    .line 13
    iput p1, p0, Landroidx/work/impl/background/systemalarm/c;->g:I

    .line 14
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Landroidx/work/impl/background/systemalarm/c;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/c;->h()V

    return-void
.end method

.method public static synthetic d(Landroidx/work/impl/background/systemalarm/c;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/c;->i()V

    return-void
.end method


# virtual methods
.method public a(Lz0/u;Lv0/b;)V
    .locals 0

    .line 1
    instance-of p1, p2, Lv0/b$a;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/c;->h:Ljava/util/concurrent/Executor;

    new-instance p2, Lt0/b;

    invoke-direct {p2, p0}, Lt0/b;-><init>(Landroidx/work/impl/background/systemalarm/c;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/c;->h:Ljava/util/concurrent/Executor;

    new-instance p2, Lt0/c;

    invoke-direct {p2, p0}, Lt0/c;-><init>(Landroidx/work/impl/background/systemalarm/c;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public b(Lz0/m;)V
    .locals 4

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/c;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceeded time limits on execution for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/c;->h:Ljava/util/concurrent/Executor;

    new-instance v0, Lt0/c;

    invoke-direct {v0, p0}, Lt0/c;-><init>(Landroidx/work/impl/background/systemalarm/c;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->s:Lt3/h1;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->s:Lt3/h1;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lt3/h1;->e(Ljava/util/concurrent/CancellationException;)V

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/d;

    invoke-virtual {v1}, Landroidx/work/impl/background/systemalarm/d;->h()La1/a0;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    invoke-virtual {v1, v2}, La1/a0;->b(Lz0/m;)V

    .line 5
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->o:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/c;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Releasing wakelock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/c;->o:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "for WorkSpec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->o:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    invoke-virtual {v0}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/work/impl/background/systemalarm/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La1/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->o:Landroid/os/PowerManager$WakeLock;

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/c;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Acquiring wakelock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/c;->o:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "for WorkSpec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->o:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/d;

    invoke-virtual {v1}, Landroidx/work/impl/background/systemalarm/d;->g()Lr0/p0;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v1

    .line 8
    invoke-interface {v1, v0}, Lz0/v;->f(Ljava/lang/String;)Lz0/u;

    move-result-object v1

    if-nez v1, :cond_0

    .line 9
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lt0/c;

    invoke-direct {v1, p0}, Lt0/c;-><init>(Landroidx/work/impl/background/systemalarm/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {v1}, Lz0/u;->k()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/work/impl/background/systemalarm/c;->p:Z

    if-nez v3, :cond_1

    .line 11
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No constraints for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lt0/b;

    invoke-direct {v1, p0}, Lt0/b;-><init>(Landroidx/work/impl/background/systemalarm/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->e:Lv0/e;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/c;->r:Lt3/b0;

    invoke-static {v0, v1, v2, p0}, Lv0/f;->b(Lv0/e;Lz0/u;Lt3/b0;Lv0/d;)Lt3/h1;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->s:Lt3/h1;

    :goto_0
    return-void
.end method

.method public g(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/c;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExecuted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/c;->e()V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    invoke-static {p1, v0}, Landroidx/work/impl/background/systemalarm/a;->e(Landroid/content/Context;Lz0/m;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/work/impl/background/systemalarm/d$b;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/d;

    iget v3, p0, Landroidx/work/impl/background/systemalarm/c;->b:I

    invoke-direct {v1, v2, p1, v3}, Landroidx/work/impl/background/systemalarm/d$b;-><init>(Landroidx/work/impl/background/systemalarm/d;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-boolean p1, p0, Landroidx/work/impl/background/systemalarm/c;->p:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/work/impl/background/systemalarm/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/work/impl/background/systemalarm/d$b;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/d;

    iget v3, p0, Landroidx/work/impl/background/systemalarm/c;->b:I

    invoke-direct {v1, v2, p1, v3}, Landroidx/work/impl/background/systemalarm/d$b;-><init>(Landroidx/work/impl/background/systemalarm/d;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/work/impl/background/systemalarm/c;->g:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/work/impl/background/systemalarm/c;->g:I

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/c;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAllConstraintsMet for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/d;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/d;->e()Lr0/u;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->q:Lr0/a0;

    invoke-virtual {v0, v1}, Lr0/u;->r(Lr0/a0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/d;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/d;->h()La1/a0;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    const-wide/32 v2, 0x927c0

    .line 6
    invoke-virtual {v0, v1, v2, v3, p0}, La1/a0;->a(Lz0/m;JLa1/a0$a;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/c;->e()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/c;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already started work for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    invoke-virtual {v0}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p0, Landroidx/work/impl/background/systemalarm/c;->g:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 3
    iput v2, p0, Landroidx/work/impl/background/systemalarm/c;->g:I

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/c;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping work for WorkSpec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    invoke-static {v1, v3}, Landroidx/work/impl/background/systemalarm/a;->f(Landroid/content/Context;Lz0/m;)Landroid/content/Intent;

    move-result-object v1

    .line 6
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/c;->i:Ljava/util/concurrent/Executor;

    new-instance v4, Landroidx/work/impl/background/systemalarm/d$b;

    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/d;

    iget v6, p0, Landroidx/work/impl/background/systemalarm/c;->b:I

    invoke-direct {v4, v5, v1, v6}, Landroidx/work/impl/background/systemalarm/d$b;-><init>(Landroidx/work/impl/background/systemalarm/d;Landroid/content/Intent;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/d;

    invoke-virtual {v1}, Landroidx/work/impl/background/systemalarm/d;->e()Lr0/u;

    move-result-object v1

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    invoke-virtual {v3}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lr0/u;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WorkSpec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs to be rescheduled"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->c:Lz0/m;

    invoke-static {v0, v1}, Landroidx/work/impl/background/systemalarm/a;->e(Landroid/content/Context;Lz0/m;)Landroid/content/Intent;

    move-result-object v0

    .line 10
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->i:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/work/impl/background/systemalarm/d$b;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/d;

    iget v4, p0, Landroidx/work/impl/background/systemalarm/c;->b:I

    invoke-direct {v2, v3, v0, v4}, Landroidx/work/impl/background/systemalarm/d$b;-><init>(Landroidx/work/impl/background/systemalarm/d;Landroid/content/Intent;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processor does not have WorkSpec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". No need to reschedule"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/c;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already stopped work for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
