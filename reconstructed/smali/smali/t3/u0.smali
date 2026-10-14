.class public abstract Lt3/u0;
.super Lt3/v0;
.source "EventLoop.common.kt"

# interfaces
.implements Lt3/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/u0$a;,
        Lt3/u0$b;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _delayed:Ljava/lang/Object;

.field private volatile _isCompleted:I

.field private volatile _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava/lang/Object;

    const-class v1, Lt3/u0;

    const-string v2, "_queue"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lt3/u0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_isCompleted"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lt3/u0;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt3/v0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lt3/u0;->_isCompleted:I

    return-void
.end method

.method private final B0()Z
    .locals 1

    sget-object v0, Lt3/u0;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic w0(Lt3/u0;)Z
    .locals 0

    invoke-direct {p0}, Lt3/u0;->B0()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0(Ljava/lang/Runnable;)Z
    .locals 6

    sget-object v0, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    invoke-direct {p0}, Lt3/u0;->B0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 2
    sget-object v1, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v1, p0, v3, p1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_2
    instance-of v4, v1, Ly3/u;

    if-eqz v4, :cond_6

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    .line 4
    invoke-static {v1, v4}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ly3/u;

    invoke-virtual {v4, p1}, Ly3/u;->a(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_5

    if-eq v5, v2, :cond_4

    const/4 v1, 0x2

    if-eq v5, v1, :cond_3

    goto :goto_0

    :cond_3
    return v3

    .line 5
    :cond_4
    sget-object v2, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    invoke-virtual {v4}, Ly3/u;->i()Ly3/u;

    move-result-object v3

    invoke-static {v2, p0, v1, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v2

    .line 7
    :cond_6
    invoke-static {}, Lt3/x0;->a()Ly3/h0;

    move-result-object v4

    if-ne v1, v4, :cond_7

    return v3

    .line 8
    :cond_7
    new-instance v3, Ly3/u;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v2}, Ly3/u;-><init>(IZ)V

    const-string v4, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    .line 9
    invoke-static {v1, v4}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ly3/u;->a(Ljava/lang/Object;)I

    .line 10
    invoke-virtual {v3, p1}, Ly3/u;->a(Ljava/lang/Object;)I

    .line 11
    sget-object v4, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, p0, v1, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2
.end method

.method public C()J
    .locals 6

    .line 1
    invoke-super {p0}, Lt3/t0;->C()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    sget-object v0, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    .line 3
    instance-of v1, v0, Ly3/u;

    if-eqz v1, :cond_1

    check-cast v0, Ly3/u;

    invoke-virtual {v0}, Ly3/u;->g()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v2

    .line 4
    :cond_1
    invoke-static {}, Lt3/x0;->a()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_2

    return-wide v4

    :cond_2
    return-wide v2

    .line 5
    :cond_3
    sget-object v0, Lt3/u0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/u0$b;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ly3/n0;->e()Ly3/o0;

    move-result-object v0

    check-cast v0, Lt3/u0$a;

    if-nez v0, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    iget-wide v0, v0, Lt3/u0$a;->a:J

    invoke-static {}, Lt3/c;->a()Lt3/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lp3/m;->b(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_5
    :goto_0
    return-wide v4
.end method

.method public C0()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lt3/t0;->Z()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lt3/u0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/u0$b;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ly3/n0;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 5
    :cond_2
    instance-of v3, v0, Ly3/u;

    if-eqz v3, :cond_3

    check-cast v0, Ly3/u;

    invoke-virtual {v0}, Ly3/u;->g()Z

    move-result v1

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {}, Lt3/x0;->a()Ly3/h0;

    move-result-object v3

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public D0()J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lt3/t0;->b0()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    sget-object v0, Lt3/u0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/u0$b;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Ly3/n0;->d()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4
    invoke-static {}, Lt3/c;->a()Lt3/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 5
    :cond_1
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ly3/n0;->b()Ly3/o0;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    if-nez v5, :cond_2

    monitor-exit v0

    goto :goto_1

    .line 7
    :cond_2
    :try_start_1
    check-cast v5, Lt3/u0$a;

    .line 8
    invoke-virtual {v5, v3, v4}, Lt3/u0$a;->j(J)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    .line 9
    invoke-virtual {p0, v5}, Lt3/u0;->A0(Ljava/lang/Runnable;)Z

    move-result v5

    goto :goto_0

    :cond_3
    move v5, v8

    :goto_0
    if-eqz v5, :cond_4

    .line 10
    invoke-virtual {v0, v8}, Ly3/n0;->h(I)Ly3/o0;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    .line 11
    :cond_4
    monitor-exit v0

    .line 12
    :goto_1
    check-cast v6, Lt3/u0$a;

    if-nez v6, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    throw v1

    .line 14
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lt3/u0;->y0()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-wide v1

    .line 16
    :cond_6
    invoke-virtual {p0}, Lt3/u0;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public final E0()V
    .locals 3

    .line 1
    invoke-static {}, Lt3/c;->a()Lt3/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    :goto_0
    sget-object v2, Lt3/u0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt3/u0$b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ly3/n0;->i()Ly3/o0;

    move-result-object v2

    check-cast v2, Lt3/u0$a;

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lt3/v0;->u0(JLt3/u0$a;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final F0()V
    .locals 2

    sget-object v0, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lt3/u0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final G0(JLt3/u0$a;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lt3/u0;->H0(JLt3/u0$a;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lt3/v0;->u0(JLt3/u0$a;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p3}, Lt3/u0;->J0(Lt3/u0$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lt3/v0;->v0()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final H0(JLt3/u0$a;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lt3/u0;->B0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    sget-object v0, Lt3/u0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt3/u0$b;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 3
    new-instance v2, Lt3/u0$b;

    invoke-direct {v2, p1, p2}, Lt3/u0$b;-><init>(J)V

    invoke-static {v0, p0, v1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Lt3/u0$b;

    .line 5
    :cond_1
    invoke-virtual {p3, p1, p2, v1, p0}, Lt3/u0$a;->i(JLt3/u0$b;Lt3/u0;)I

    move-result p1

    return p1
.end method

.method public final I0(Z)V
    .locals 1

    sget-object v0, Lt3/u0;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method public final J0(Lt3/u0$a;)Z
    .locals 1

    sget-object v0, Lt3/u0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/u0$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly3/n0;->e()Ly3/o0;

    move-result-object v0

    check-cast v0, Lt3/u0$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public c0()V
    .locals 4

    .line 1
    sget-object v0, Lt3/y1;->a:Lt3/y1;

    invoke-virtual {v0}, Lt3/y1;->b()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lt3/u0;->I0(Z)V

    .line 3
    invoke-virtual {p0}, Lt3/u0;->x0()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lt3/u0;->D0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lt3/u0;->E0()V

    return-void
.end method

.method public final i(Ld3/g;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Lt3/u0;->z0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x0()V
    .locals 5

    .line 1
    sget-object v0, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    sget-object v1, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {}, Lt3/x0;->a()Ly3/h0;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_1
    instance-of v2, v1, Ly3/u;

    if-eqz v2, :cond_2

    .line 4
    check-cast v1, Ly3/u;

    invoke-virtual {v1}, Ly3/u;->d()Z

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lt3/x0;->a()Ly3/h0;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-void

    .line 6
    :cond_3
    new-instance v2, Ly3/u;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ly3/u;-><init>(IZ)V

    const-string v3, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    .line 7
    invoke-static {v1, v3}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ly3/u;->a(Ljava/lang/Object;)I

    .line 8
    sget-object v3, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final y0()Ljava/lang/Runnable;
    .locals 5

    sget-object v0, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    .line 1
    :cond_1
    instance-of v3, v1, Ly3/u;

    if-eqz v3, :cond_3

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    .line 2
    invoke-static {v1, v2}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ly3/u;

    invoke-virtual {v2}, Ly3/u;->j()Ljava/lang/Object;

    move-result-object v3

    .line 3
    sget-object v4, Ly3/u;->h:Ly3/h0;

    if-eq v3, v4, :cond_2

    check-cast v3, Ljava/lang/Runnable;

    return-object v3

    :cond_2
    sget-object v3, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    invoke-virtual {v2}, Ly3/u;->i()Ly3/u;

    move-result-object v2

    invoke-static {v3, p0, v1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {}, Lt3/x0;->a()Ly3/h0;

    move-result-object v3

    if-ne v1, v3, :cond_4

    return-object v2

    .line 6
    :cond_4
    sget-object v3, Lt3/u0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v1, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    return-object v1
.end method

.method public z0(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lt3/u0;->A0(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lt3/v0;->v0()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lt3/j0;->i:Lt3/j0;

    invoke-virtual {v0, p1}, Lt3/j0;->z0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
