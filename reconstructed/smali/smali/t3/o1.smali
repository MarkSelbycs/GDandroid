.class public Lt3/o1;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lt3/h1;
.implements Lt3/r;
.implements Lt3/v1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/o1$a;,
        Lt3/o1$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Ljava/lang/Object;

    const-class v1, Lt3/o1;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_parentHandle"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lt3/o1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lt3/p1;->c()Lt3/s0;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lt3/p1;->d()Lt3/s0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lt3/o1;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic C0(Lt3/o1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lt3/o1;->B0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic p(Lt3/o1;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lt3/o1;->E()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic r(Lt3/o1;Lt3/o1$b;Lt3/q;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt3/o1;->K(Lt3/o1$b;Lt3/q;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt3/o1;->z(Ljava/lang/Object;)Z

    return-void
.end method

.method public final A0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p1, Lt3/o1$b;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lt3/o1$b;

    invoke-virtual {p1}, Lt3/o1$b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lt3/o1$b;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lt3/d1;

    if-eqz v0, :cond_3

    check-cast p1, Lt3/d1;

    invoke-interface {p1}, Lt3/d1;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    .line 5
    :cond_3
    instance-of p1, p1, Lt3/u;

    if-eqz p1, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method public final B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    :cond_0
    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lt3/d1;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lt3/o1$b;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lt3/o1$b;

    invoke-virtual {v1}, Lt3/o1$b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Lt3/u;

    invoke-virtual {p0, p1}, Lt3/o1;->L(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lt3/u;-><init>(Ljava/lang/Throwable;ZILm3/g;)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lt3/o1;->G0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lt3/p1;->b()Ly3/h0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 6
    :cond_2
    :goto_0
    invoke-static {}, Lt3/p1;->a()Ly3/h0;

    move-result-object p1

    return-object p1
.end method

.method public final B0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lt3/i1;

    if-nez p2, :cond_1

    invoke-static {p0}, Lt3/o1;->p(Lt3/o1;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {v0, p2, p1, p0}, Lt3/i1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lt3/h1;)V

    :cond_2
    return-object v0
.end method

.method public final C(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lt3/o1;->g0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 3
    invoke-virtual {p0}, Lt3/o1;->Z()Lt3/p;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4
    sget-object v3, Lt3/t1;->a:Lt3/t1;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v2, p1}, Lt3/p;->g(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public final D0()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lt3/o1;->o0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lt3/o1;->A0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public final E0(Lt3/d1;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    sget-object v0, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lt3/p1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lt3/o1;->s0(Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0, p2}, Lt3/o1;->t0(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lt3/o1;->J(Lt3/d1;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final F0(Lt3/d1;Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lt3/o1;->Y(Lt3/d1;)Lt3/s1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v2, Lt3/o1$b;

    invoke-direct {v2, v0, v1, p2}, Lt3/o1$b;-><init>(Lt3/s1;ZLjava/lang/Throwable;)V

    .line 3
    sget-object v3, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, p1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0, v0, p2}, Lt3/o1;->q0(Lt3/s1;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public G(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lt3/o1;->z(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lt3/o1;->S()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final G0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lt3/d1;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lt3/p1;->a()Ly3/h0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lt3/s0;

    if-nez v0, :cond_1

    instance-of v0, p1, Lt3/n1;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lt3/q;

    if-nez v0, :cond_3

    instance-of v0, p2, Lt3/u;

    if-nez v0, :cond_3

    .line 4
    check-cast p1, Lt3/d1;

    invoke-virtual {p0, p1, p2}, Lt3/o1;->E0(Lt3/d1;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    .line 5
    :cond_2
    invoke-static {}, Lt3/p1;->b()Ly3/h0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    check-cast p1, Lt3/d1;

    invoke-virtual {p0, p1, p2}, Lt3/o1;->H0(Lt3/d1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final H0(Lt3/d1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lt3/o1;->Y(Lt3/d1;)Lt3/s1;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lt3/p1;->b()Ly3/h0;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    instance-of v1, p1, Lt3/o1$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lt3/o1$b;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    new-instance v1, Lt3/o1$b;

    invoke-direct {v1, v0, v3, v2}, Lt3/o1$b;-><init>(Lt3/s1;ZLjava/lang/Throwable;)V

    .line 3
    :cond_2
    new-instance v4, Lm3/q;

    invoke-direct {v4}, Lm3/q;-><init>()V

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    invoke-virtual {v1}, Lt3/o1$b;->g()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lt3/p1;->a()Ly3/h0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :cond_3
    const/4 v5, 0x1

    .line 6
    :try_start_1
    invoke-virtual {v1, v5}, Lt3/o1$b;->k(Z)V

    if-eq v1, p1, :cond_4

    .line 7
    sget-object v6, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v6, p0, p1, v1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lt3/p1;->b()Ly3/h0;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    .line 8
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lt3/o1$b;->e()Z

    move-result v6

    .line 9
    instance-of v7, p2, Lt3/u;

    if-eqz v7, :cond_5

    move-object v7, p2

    check-cast v7, Lt3/u;

    goto :goto_1

    :cond_5
    move-object v7, v2

    :goto_1
    if-eqz v7, :cond_6

    iget-object v7, v7, Lt3/u;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v7}, Lt3/o1$b;->a(Ljava/lang/Throwable;)V

    .line 10
    :cond_6
    invoke-virtual {v1}, Lt3/o1$b;->d()Ljava/lang/Throwable;

    move-result-object v7

    if-nez v6, :cond_7

    move v3, v5

    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v2, v7

    :cond_8
    iput-object v2, v4, Lm3/q;->a:Ljava/lang/Object;

    .line 11
    sget-object v3, La3/o;->a:La3/o;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit v1

    .line 13
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    invoke-virtual {p0, v0, v2}, Lt3/o1;->q0(Lt3/s1;Ljava/lang/Throwable;)V

    .line 14
    :cond_9
    invoke-virtual {p0, p1}, Lt3/o1;->O(Lt3/d1;)Lt3/q;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 15
    invoke-virtual {p0, v1, p1, p2}, Lt3/o1;->I0(Lt3/o1$b;Lt3/q;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 16
    sget-object p1, Lt3/p1;->b:Ly3/h0;

    return-object p1

    .line 17
    :cond_a
    invoke-virtual {p0, v1, p2}, Lt3/o1;->N(Lt3/o1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v1

    throw p1
.end method

.method public final I0(Lt3/o1$b;Lt3/q;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p2, Lt3/q;->e:Lt3/r;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    new-instance v3, Lt3/o1$a;

    invoke-direct {v3, p0, p1, p2, p3}, Lt3/o1$a;-><init>(Lt3/o1;Lt3/o1$b;Lt3/q;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3
    invoke-static/range {v0 .. v5}, Lt3/h1$a;->d(Lt3/h1;ZZLl3/l;ILjava/lang/Object;)Lt3/r0;

    move-result-object v0

    .line 4
    sget-object v1, Lt3/t1;->a:Lt3/t1;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lt3/o1;->p0(Ly3/s;)Lt3/q;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final J(Lt3/d1;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lt3/o1;->Z()Lt3/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lt3/r0;->d()V

    .line 3
    sget-object v0, Lt3/t1;->a:Lt3/t1;

    invoke-virtual {p0, v0}, Lt3/o1;->y0(Lt3/p;)V

    .line 4
    :cond_0
    instance-of v0, p2, Lt3/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lt3/u;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Lt3/u;->a:Ljava/lang/Throwable;

    .line 5
    :cond_2
    instance-of p2, p1, Lt3/n1;

    if-eqz p2, :cond_3

    .line 6
    :try_start_0
    move-object p2, p1

    check-cast p2, Lt3/n1;

    invoke-virtual {p2, v1}, Lt3/w;->z(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 7
    new-instance v0, Lt3/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lt3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lt3/o1;->c0(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-interface {p1}, Lt3/d1;->i()Lt3/s1;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, v1}, Lt3/o1;->r0(Lt3/s1;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final K(Lt3/o1$b;Lt3/q;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lt3/o1;->p0(Ly3/s;)Lt3/q;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lt3/o1;->I0(Lt3/o1$b;Lt3/q;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p3}, Lt3/o1;->N(Lt3/o1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lt3/o1;->v(Ljava/lang/Object;)V

    return-void
.end method

.method public final L(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 2
    new-instance v0, Lt3/i1;

    invoke-static {p0}, Lt3/o1;->p(Lt3/o1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lt3/i1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lt3/h1;)V

    move-object p1, v0

    goto :goto_1

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 3
    invoke-static {p1, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lt3/v1;

    invoke-interface {p1}, Lt3/v1;->q()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final N(Lt3/o1$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lt3/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lt3/u;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lt3/u;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 2
    :goto_1
    monitor-enter p1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lt3/o1$b;->e()Z

    move-result v2

    .line 4
    invoke-virtual {p1, v0}, Lt3/o1$b;->j(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-virtual {p0, p1, v3}, Lt3/o1;->R(Lt3/o1$b;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {p0, v4, v3}, Lt3/o1;->t(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    monitor-exit p1

    const/4 v3, 0x0

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    if-ne v4, v0, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    new-instance p2, Lt3/u;

    const/4 v0, 0x2

    invoke-direct {p2, v4, v3, v0, v1}, Lt3/u;-><init>(Ljava/lang/Throwable;ZILm3/g;)V

    :goto_2
    if-eqz v4, :cond_7

    .line 9
    invoke-virtual {p0, v4}, Lt3/o1;->C(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Lt3/o1;->b0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    if-eqz v3, :cond_7

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 10
    invoke-static {p2, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lt3/u;

    invoke-virtual {v0}, Lt3/u;->b()Z

    :cond_7
    if-nez v2, :cond_8

    .line 11
    invoke-virtual {p0, v4}, Lt3/o1;->s0(Ljava/lang/Throwable;)V

    .line 12
    :cond_8
    invoke-virtual {p0, p2}, Lt3/o1;->t0(Ljava/lang/Object;)V

    sget-object v0, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 13
    invoke-static {p2}, Lt3/p1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0, p1, p2}, Lt3/o1;->J(Lt3/d1;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 15
    monitor-exit p1

    throw p2
.end method

.method public final O(Lt3/d1;)Lt3/q;
    .locals 2

    instance-of v0, p1, Lt3/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lt3/q;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Lt3/d1;->i()Lt3/s1;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lt3/o1;->p0(Ly3/s;)Lt3/q;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final P(ZZLl3/l;)Lt3/r0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)",
            "Lt3/r0;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3, p1}, Lt3/o1;->n0(Ll3/l;Z)Lt3/n1;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lt3/s0;

    if-eqz v2, :cond_2

    .line 4
    move-object v2, v1

    check-cast v2, Lt3/s0;

    invoke-virtual {v2}, Lt3/s0;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    sget-object v2, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v1, v0}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Lt3/o1;->v0(Lt3/s0;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v2, v1, Lt3/d1;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 8
    move-object v2, v1

    check-cast v2, Lt3/d1;

    invoke-interface {v2}, Lt3/d1;->i()Lt3/s1;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 9
    invoke-static {v1, v2}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lt3/n1;

    invoke-virtual {p0, v1}, Lt3/o1;->w0(Lt3/n1;)V

    goto :goto_0

    .line 10
    :cond_3
    sget-object v4, Lt3/t1;->a:Lt3/t1;

    if-eqz p1, :cond_8

    .line 11
    instance-of v5, v1, Lt3/o1$b;

    if-eqz v5, :cond_8

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    move-object v3, v1

    check-cast v3, Lt3/o1$b;

    invoke-virtual {v3}, Lt3/o1$b;->d()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 14
    instance-of v5, p3, Lt3/q;

    if-eqz v5, :cond_7

    .line 15
    move-object v5, v1

    check-cast v5, Lt3/o1$b;

    invoke-virtual {v5}, Lt3/o1$b;->g()Z

    move-result v5

    if-nez v5, :cond_7

    .line 16
    :cond_4
    invoke-virtual {p0, v1, v2, v0}, Lt3/o1;->s(Ljava/lang/Object;Lt3/s1;Lt3/n1;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    monitor-exit v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    .line 17
    monitor-exit v1

    return-object v0

    :cond_6
    move-object v4, v0

    .line 18
    :cond_7
    :try_start_1
    sget-object v5, La3/o;->a:La3/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_8
    :goto_1
    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    .line 20
    invoke-interface {p3, v3}, Ll3/l;->x(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v4

    .line 21
    :cond_a
    invoke-virtual {p0, v1, v2, v0}, Lt3/o1;->s(Ljava/lang/Object;Lt3/s1;Lt3/n1;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_b
    if-eqz p2, :cond_e

    .line 22
    instance-of p1, v1, Lt3/u;

    if-eqz p1, :cond_c

    check-cast v1, Lt3/u;

    goto :goto_2

    :cond_c
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_d

    iget-object v3, v1, Lt3/u;->a:Ljava/lang/Throwable;

    .line 23
    :cond_d
    invoke-interface {p3, v3}, Ll3/l;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_e
    sget-object p1, Lt3/t1;->a:Lt3/t1;

    return-object p1
.end method

.method public final Q(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    instance-of v0, p1, Lt3/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lt3/u;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lt3/u;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public final R(Lt3/o1$b;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/o1$b;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lt3/o1$b;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lt3/i1;

    invoke-static {p0}, Lt3/o1;->p(Lt3/o1;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lt3/i1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lt3/h1;)V

    return-object p1

    :cond_0
    return-object v1

    .line 4
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    .line 5
    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_3
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    const/4 p1, 0x0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final X(Ll3/l;)Lt3/r0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)",
            "Lt3/r0;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lt3/o1;->P(ZZLl3/l;)Lt3/r0;

    move-result-object p1

    return-object p1
.end method

.method public final Y(Lt3/d1;)Lt3/s1;
    .locals 3

    .line 1
    invoke-interface {p1}, Lt3/d1;->i()Lt3/s1;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Lt3/s0;

    if-eqz v0, :cond_0

    new-instance v0, Lt3/s1;

    invoke-direct {v0}, Lt3/s1;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lt3/n1;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lt3/n1;

    invoke-virtual {p0, p1}, Lt3/o1;->w0(Lt3/n1;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State should have list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final Z()Lt3/p;
    .locals 1

    sget-object v0, Lt3/o1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/p;

    return-object v0
.end method

.method public final a0()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    instance-of v2, v1, Ly3/a0;

    if-nez v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    check-cast v1, Ly3/a0;

    invoke-virtual {v1, p0}, Ly3/a0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b0(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Ld3/g$c;)Ld3/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ld3/g$b;",
            ">(",
            "Ld3/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lt3/h1$a;->c(Lt3/h1;Ld3/g$c;)Ld3/g$b;

    move-result-object p1

    return-object p1
.end method

.method public c0(Ljava/lang/Throwable;)V
    .locals 0

    throw p1
.end method

.method public final d0(Lt3/h1;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lt3/t1;->a:Lt3/t1;

    invoke-virtual {p0, p1}, Lt3/o1;->y0(Lt3/p;)V

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lt3/h1;->start()Z

    .line 3
    invoke-interface {p1, p0}, Lt3/h1;->h(Lt3/r;)Lt3/p;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lt3/o1;->y0(Lt3/p;)V

    .line 5
    invoke-virtual {p0}, Lt3/o1;->f0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Lt3/r0;->d()V

    .line 7
    sget-object p1, Lt3/t1;->a:Lt3/t1;

    invoke-virtual {p0, p1}, Lt3/o1;->y0(Lt3/p;)V

    :cond_1
    return-void
.end method

.method public e(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    new-instance v0, Lt3/i1;

    invoke-static {p0}, Lt3/o1;->p(Lt3/o1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lt3/i1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lt3/h1;)V

    move-object p1, v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lt3/o1;->A(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lt3/u;

    if-nez v1, :cond_1

    instance-of v1, v0, Lt3/o1$b;

    if-eqz v1, :cond_0

    check-cast v0, Lt3/o1$b;

    invoke-virtual {v0}, Lt3/o1$b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lt3/d1;

    if-eqz v1, :cond_0

    check-cast v0, Lt3/d1;

    invoke-interface {v0}, Lt3/d1;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f0()Z
    .locals 1

    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lt3/d1;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getKey()Ld3/g$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/g$c<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lt3/h1;->m:Lt3/h1$b;

    return-object v0
.end method

.method public final h(Lt3/r;)Lt3/p;
    .locals 6

    new-instance v3, Lt3/q;

    invoke-direct {v3, p1}, Lt3/q;-><init>(Lt3/r;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lt3/h1$a;->d(Lt3/h1;ZZLl3/l;ILjava/lang/Object;)Lt3/r0;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-static {p1, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lt3/p;

    return-object p1
.end method

.method public final h0(Lt3/v1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt3/o1;->z(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(Ld3/g$c;)Ld3/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/g$c<",
            "*>;)",
            "Ld3/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lt3/h1$a;->e(Lt3/h1;Ld3/g$c;)Ld3/g;

    move-result-object p1

    return-object p1
.end method

.method public final k0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v2

    .line 2
    instance-of v3, v2, Lt3/o1$b;

    if-eqz v3, :cond_7

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    move-object v3, v2

    check-cast v3, Lt3/o1$b;

    invoke-virtual {v3}, Lt3/o1$b;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lt3/p1;->f()Ly3/h0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    .line 5
    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Lt3/o1$b;

    invoke-virtual {v3}, Lt3/o1$b;->e()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-nez v1, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lt3/o1;->L(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 7
    :cond_3
    move-object p1, v2

    check-cast p1, Lt3/o1$b;

    invoke-virtual {p1, v1}, Lt3/o1$b;->a(Ljava/lang/Throwable;)V

    .line 8
    :cond_4
    move-object p1, v2

    check-cast p1, Lt3/o1$b;

    invoke-virtual {p1}, Lt3/o1$b;->d()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    move-object v0, p1

    .line 9
    :cond_5
    monitor-exit v2

    if-eqz v0, :cond_6

    .line 10
    check-cast v2, Lt3/o1$b;

    invoke-virtual {v2}, Lt3/o1$b;->i()Lt3/s1;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lt3/o1;->q0(Lt3/s1;Ljava/lang/Throwable;)V

    .line 11
    :cond_6
    invoke-static {}, Lt3/p1;->a()Ly3/h0;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v2

    throw p1

    .line 13
    :cond_7
    instance-of v3, v2, Lt3/d1;

    if-eqz v3, :cond_b

    if-nez v1, :cond_8

    .line 14
    invoke-virtual {p0, p1}, Lt3/o1;->L(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 15
    :cond_8
    move-object v3, v2

    check-cast v3, Lt3/d1;

    invoke-interface {v3}, Lt3/d1;->f()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 16
    invoke-virtual {p0, v3, v1}, Lt3/o1;->F0(Lt3/d1;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lt3/p1;->a()Ly3/h0;

    move-result-object p1

    return-object p1

    .line 17
    :cond_9
    new-instance v3, Lt3/u;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, Lt3/u;-><init>(Ljava/lang/Throwable;ZILm3/g;)V

    invoke-virtual {p0, v2, v3}, Lt3/o1;->G0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    invoke-static {}, Lt3/p1;->a()Ly3/h0;

    move-result-object v4

    if-eq v3, v4, :cond_a

    .line 19
    invoke-static {}, Lt3/p1;->b()Ly3/h0;

    move-result-object v2

    if-eq v3, v2, :cond_0

    return-object v3

    .line 20
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot happen in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_b
    invoke-static {}, Lt3/p1;->f()Ly3/h0;

    move-result-object p1

    return-object p1
.end method

.method public final l0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lt3/o1;->G0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {}, Lt3/p1;->a()Ly3/h0;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-static {}, Lt3/p1;->b()Ly3/h0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0, p1}, Lt3/o1;->Q(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 8
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public m0(Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ll3/p<",
            "-TR;-",
            "Ld3/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lt3/h1$a;->b(Lt3/h1;Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n0(Ll3/l;Z)Lt3/n1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;Z)",
            "Lt3/n1;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    instance-of p2, p1, Lt3/j1;

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Lt3/j1;

    :cond_0
    if-nez v0, :cond_4

    .line 2
    new-instance v0, Lt3/f1;

    invoke-direct {v0, p1}, Lt3/f1;-><init>(Ll3/l;)V

    goto :goto_0

    .line 3
    :cond_1
    instance-of p2, p1, Lt3/n1;

    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, Lt3/n1;

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    new-instance v0, Lt3/g1;

    invoke-direct {v0, p1}, Lt3/g1;-><init>(Ll3/l;)V

    .line 5
    :cond_4
    :goto_0
    invoke-virtual {v0, p0}, Lt3/n1;->B(Lt3/o1;)V

    return-object v0
.end method

.method public o0()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lt3/i0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p0(Ly3/s;)Lt3/q;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Ly3/s;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ly3/s;->r()Ly3/s;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ly3/s;->p()Ly3/s;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ly3/s;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    instance-of v0, p1, Lt3/q;

    if-eqz v0, :cond_1

    check-cast p1, Lt3/q;

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Lt3/s1;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public q()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lt3/o1$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lt3/o1$b;

    invoke-virtual {v1}, Lt3/o1$b;->d()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lt3/u;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lt3/u;

    iget-object v1, v1, Lt3/u;->a:Ljava/lang/Throwable;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lt3/d1;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 5
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lt3/i1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lt3/o1;->A0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lt3/i1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lt3/h1;)V

    :cond_3
    return-object v2

    .line 6
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be cancelling child in this state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final q0(Lt3/s1;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Lt3/o1;->s0(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p1}, Ly3/s;->o()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ly3/s;

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v0, p1}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    instance-of v2, v0, Lt3/j1;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lt3/n1;

    .line 5
    :try_start_0
    invoke-virtual {v2, p2}, Lt3/w;->z(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1, v3}, La3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v1, Lt3/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lt3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    sget-object v2, La3/o;->a:La3/o;

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ly3/s;->p()Ly3/s;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0, v1}, Lt3/o1;->c0(Ljava/lang/Throwable;)V

    .line 11
    :cond_3
    invoke-virtual {p0, p2}, Lt3/o1;->C(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final r0(Lt3/s1;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ly3/s;->o()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ly3/s;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v0, p1}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3
    instance-of v2, v0, Lt3/n1;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lt3/n1;

    .line 4
    :try_start_0
    invoke-virtual {v2, p2}, Lt3/w;->z(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1, v3}, La3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6
    :cond_0
    new-instance v1, Lt3/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lt3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    sget-object v2, La3/o;->a:La3/o;

    .line 8
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ly3/s;->p()Ly3/s;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Lt3/o1;->c0(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final s(Ljava/lang/Object;Lt3/s1;Lt3/n1;)Z
    .locals 2

    .line 1
    new-instance v0, Lt3/o1$c;

    invoke-direct {v0, p3, p0, p1}, Lt3/o1$c;-><init>(Ly3/s;Lt3/o1;Ljava/lang/Object;)V

    .line 2
    :goto_0
    invoke-virtual {p2}, Ly3/s;->r()Ly3/s;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Ly3/s;->y(Ly3/s;Ly3/s;Ly3/s$a;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public s0(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final start()Z
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lt3/o1;->z0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final t(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eq v1, p1, :cond_1

    if-eq v1, p1, :cond_1

    .line 5
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {p1, v1}, La3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public t0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lt3/o1;->D0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lt3/i0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()V
    .locals 0

    return-void
.end method

.method public v(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final v0(Lt3/s0;)V
    .locals 2

    .line 1
    new-instance v0, Lt3/s1;

    invoke-direct {v0}, Lt3/s1;-><init>()V

    .line 2
    invoke-virtual {p1}, Lt3/s0;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lt3/c1;

    invoke-direct {v1, v0}, Lt3/c1;-><init>(Lt3/s1;)V

    move-object v0, v1

    :goto_0
    sget-object v1, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    invoke-static {v1, p0, p1, v0}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final w(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lt3/o1;->z(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final w0(Lt3/n1;)V
    .locals 2

    .line 1
    new-instance v0, Lt3/s1;

    invoke-direct {v0}, Lt3/s1;-><init>()V

    invoke-virtual {p1, v0}, Ly3/s;->k(Ly3/s;)Z

    .line 2
    invoke-virtual {p1}, Ly3/s;->p()Ly3/s;

    move-result-object v0

    sget-object v1, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    invoke-static {v1, p0, p1, v0}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public x(Ld3/g;)Ld3/g;
    .locals 0

    invoke-static {p0, p1}, Lt3/h1$a;->f(Lt3/h1;Ld3/g;)Ld3/g;

    move-result-object p1

    return-object p1
.end method

.method public final x0(Lt3/n1;)V
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lt3/n1;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v1, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lt3/p1;->c()Lt3/s0;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_2
    instance-of v1, v0, Lt3/d1;

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Lt3/d1;

    invoke-interface {v0}, Lt3/d1;->i()Lt3/s1;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ly3/s;->t()Z

    :cond_3
    return-void
.end method

.method public final y()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lt3/o1;->a0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lt3/o1$b;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lt3/o1$b;

    invoke-virtual {v0}, Lt3/o1$b;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lt3/i0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lt3/o1;->B0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    instance-of v1, v0, Lt3/d1;

    if-nez v1, :cond_3

    .line 5
    instance-of v1, v0, Lt3/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lt3/u;

    iget-object v0, v0, Lt3/u;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lt3/o1;->C0(Lt3/o1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lt3/i1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lt3/i0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lt3/i1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lt3/h1;)V

    :goto_0
    return-object v0

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y0(Lt3/p;)V
    .locals 1

    sget-object v0, Lt3/o1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final z(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-static {}, Lt3/p1;->a()Ly3/h0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lt3/o1;->W()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lt3/o1;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object v1, Lt3/p1;->b:Ly3/h0;

    if-ne v0, v1, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-static {}, Lt3/p1;->a()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lt3/o1;->k0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    :cond_1
    invoke-static {}, Lt3/p1;->a()Ly3/h0;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lt3/p1;->b:Ly3/h0;

    if-ne v0, p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lt3/p1;->f()Ly3/h0;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0, v0}, Lt3/o1;->v(Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method public final z0(Ljava/lang/Object;)I
    .locals 4

    .line 1
    instance-of v0, p1, Lt3/s0;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lt3/s0;

    invoke-virtual {v0}, Lt3/s0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 3
    :cond_0
    sget-object v0, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lt3/p1;->c()Lt3/s0;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lt3/o1;->u0()V

    return v2

    .line 5
    :cond_2
    instance-of v0, p1, Lt3/c1;

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Lt3/o1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lt3/c1;

    invoke-virtual {v3}, Lt3/c1;->i()Lt3/s1;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lt3/o1;->u0()V

    return v2

    :cond_4
    return v3
.end method
