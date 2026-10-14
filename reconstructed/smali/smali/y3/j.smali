.class public final Ly3/j;
.super Lt3/n0;
.source "DispatchedContinuation.kt"

# interfaces
.implements Lf3/e;
.implements Ld3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lt3/n0<",
        "TT;>;",
        "Lf3/e;",
        "Ld3/d<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public final d:Lt3/b0;

.field public final e:Ld3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Ly3/j;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lt3/b0;Ld3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/b0;",
            "Ld3/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lt3/n0;-><init>(I)V

    .line 2
    iput-object p1, p0, Ly3/j;->d:Lt3/b0;

    .line 3
    iput-object p2, p0, Ly3/j;->e:Ld3/d;

    .line 4
    invoke-static {}, Ly3/k;->a()Ly3/h0;

    move-result-object p1

    iput-object p1, p0, Ly3/j;->f:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Ly3/j;->b()Ld3/g;

    move-result-object p1

    invoke-static {p1}, Ly3/l0;->b(Ld3/g;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ly3/j;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public D()Lf3/e;
    .locals 2

    iget-object v0, p0, Ly3/j;->e:Ld3/d;

    instance-of v1, v0, Lf3/e;

    if-eqz v1, :cond_0

    check-cast v0, Lf3/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public F(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly3/j;->e:Ld3/d;

    invoke-interface {v0}, Ld3/d;->b()Ld3/g;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v1, v2, v1}, Lt3/y;->d(Ljava/lang/Object;Ll3/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3
    iget-object v4, p0, Ly3/j;->d:Lt3/b0;

    invoke-virtual {v4, v0}, Lt3/b0;->n(Ld3/g;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 4
    iput-object v3, p0, Ly3/j;->f:Ljava/lang/Object;

    .line 5
    iput v5, p0, Lt3/n0;->c:I

    .line 6
    iget-object p1, p0, Ly3/j;->d:Lt3/b0;

    invoke-virtual {p1, v0, p0}, Lt3/b0;->i(Ld3/g;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lt3/y1;->a:Lt3/y1;

    invoke-virtual {v0}, Lt3/y1;->a()Lt3/t0;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lt3/t0;->Y()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    iput-object v3, p0, Ly3/j;->f:Ljava/lang/Object;

    .line 10
    iput v5, p0, Lt3/n0;->c:I

    .line 11
    invoke-virtual {v0, p0}, Lt3/t0;->z(Lt3/n0;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0, v2}, Lt3/t0;->K(Z)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Ly3/j;->b()Ld3/g;

    move-result-object v3

    iget-object v4, p0, Ly3/j;->g:Ljava/lang/Object;

    .line 14
    invoke-static {v3, v4}, Ly3/l0;->c(Ld3/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v5, p0, Ly3/j;->e:Ld3/d;

    invoke-interface {v5, p1}, Ld3/d;->F(Ljava/lang/Object;)V

    .line 16
    sget-object p1, La3/o;->a:La3/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-static {v3, v4}, Ly3/l0;->a(Ld3/g;Ljava/lang/Object;)V

    .line 18
    :cond_2
    invoke-virtual {v0}, Lt3/t0;->b0()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    invoke-static {v3, v4}, Ly3/l0;->a(Ld3/g;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 20
    :try_start_3
    invoke-virtual {p0, p1, v1}, Lt3/n0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    :goto_0
    invoke-virtual {v0, v2}, Lt3/t0;->r(Z)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v2}, Lt3/t0;->r(Z)V

    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lt3/v;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lt3/v;

    iget-object p1, p1, Lt3/v;->b:Ll3/l;

    invoke-interface {p1, p2}, Ll3/l;->x(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b()Ld3/g;
    .locals 1

    iget-object v0, p0, Ly3/j;->e:Ld3/d;

    invoke-interface {v0}, Ld3/d;->b()Ld3/g;

    move-result-object v0

    return-object v0
.end method

.method public c()Ld3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/d<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public h()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ly3/j;->f:Ljava/lang/Object;

    .line 2
    invoke-static {}, Ly3/k;->a()Ly3/h0;

    move-result-object v1

    iput-object v1, p0, Ly3/j;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()V
    .locals 3

    sget-object v0, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ly3/k;->b:Ly3/h0;

    if-eq v1, v2, :cond_0

    return-void
.end method

.method public final j()Lt3/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt3/k<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1
    sget-object v0, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    sget-object v1, Ly3/k;->b:Ly3/h0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    instance-of v2, v1, Lt3/k;

    if-eqz v2, :cond_2

    .line 4
    sget-object v2, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Ly3/k;->b:Ly3/h0;

    invoke-static {v2, p0, v1, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lt3/k;

    return-object v1

    .line 6
    :cond_2
    sget-object v2, Ly3/k;->b:Ly3/h0;

    if-eq v1, v2, :cond_0

    .line 7
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Ld3/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/g;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Ly3/j;->f:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lt3/n0;->c:I

    .line 3
    iget-object p2, p0, Ly3/j;->d:Lt3/b0;

    invoke-virtual {p2, p1, p0}, Lt3/b0;->l(Ld3/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l()Lt3/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt3/k<",
            "*>;"
        }
    .end annotation

    sget-object v0, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lt3/k;

    if-eqz v1, :cond_0

    check-cast v0, Lt3/k;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final m()Z
    .locals 1

    sget-object v0, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n(Ljava/lang/Throwable;)Z
    .locals 5

    sget-object v0, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    sget-object v2, Ly3/k;->b:Ly3/h0;

    invoke-static {v1, v2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 2
    sget-object v1, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v2, p1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    .line 3
    :cond_1
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    return v4

    .line 4
    :cond_2
    sget-object v2, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly3/j;->i()V

    .line 2
    invoke-virtual {p0}, Ly3/j;->l()Lt3/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt3/k;->o()V

    :cond_0
    return-void
.end method

.method public final p(Lt3/j;)Ljava/lang/Throwable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/j<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    sget-object v0, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    sget-object v2, Ly3/k;->b:Ly3/h0;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 2
    sget-object v1, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v2, p1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    .line 3
    :cond_1
    instance-of p1, v1, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    sget-object p1, Ly3/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    invoke-static {p1, p0, v1, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly3/j;->d:Lt3/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly3/j;->e:Ld3/d;

    invoke-static {v1}, Lt3/i0;->c(Ld3/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
