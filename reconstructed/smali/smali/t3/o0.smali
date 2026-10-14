.class public final Lt3/o0;
.super Ljava/lang/Object;
.source "DispatchedTask.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lt3/n0;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt3/n0<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lt3/n0;->c()Ld3/d;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 2
    instance-of v2, v0, Ly3/j;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lt3/o0;->b(I)Z

    move-result p1

    iget v2, p0, Lt3/n0;->c:I

    invoke-static {v2}, Lt3/o0;->b(I)Z

    move-result v2

    if-ne p1, v2, :cond_2

    .line 3
    move-object p1, v0

    check-cast p1, Ly3/j;

    iget-object p1, p1, Ly3/j;->d:Lt3/b0;

    .line 4
    invoke-interface {v0}, Ld3/d;->b()Ld3/g;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lt3/b0;->n(Ld3/g;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1, v0, p0}, Lt3/b0;->i(Ld3/g;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {p0}, Lt3/o0;->e(Lt3/n0;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {p0, v0, v1}, Lt3/o0;->d(Lt3/n0;Ld3/d;Z)V

    :goto_1
    return-void
.end method

.method public static final b(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final c(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(Lt3/n0;Ld3/d;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt3/n0<",
            "-TT;>;",
            "Ld3/d<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lt3/n0;->h()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lt3/n0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, La3/i;->a:La3/i$a;

    invoke-static {v1}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, La3/i;->a:La3/i$a;

    invoke-virtual {p0, v0}, Lt3/n0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p2, :cond_5

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    .line 4
    invoke-static {p1, p2}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ly3/j;

    .line 5
    iget-object p2, p1, Ly3/j;->e:Ld3/d;

    iget-object v0, p1, Ly3/j;->g:Ljava/lang/Object;

    .line 6
    invoke-interface {p2}, Ld3/d;->b()Ld3/g;

    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Ly3/l0;->c(Ld3/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    sget-object v2, Ly3/l0;->a:Ly3/h0;

    if-eq v0, v2, :cond_1

    .line 9
    invoke-static {p2, v1, v0}, Lt3/a0;->f(Ld3/d;Ld3/g;Ljava/lang/Object;)Lt3/a2;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 10
    :goto_1
    :try_start_0
    iget-object p1, p1, Ly3/j;->e:Ld3/d;

    invoke-interface {p1, p0}, Ld3/d;->F(Ljava/lang/Object;)V

    .line 11
    sget-object p0, La3/o;->a:La3/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {p2}, Lt3/a2;->N0()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 13
    :cond_2
    invoke-static {v1, v0}, Ly3/l0;->a(Ld3/g;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p2}, Lt3/a2;->N0()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    :cond_3
    invoke-static {v1, v0}, Ly3/l0;->a(Ld3/g;Ljava/lang/Object;)V

    :cond_4
    throw p0

    .line 16
    :cond_5
    invoke-interface {p1, p0}, Ld3/d;->F(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static final e(Lt3/n0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/n0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lt3/y1;->a:Lt3/y1;

    invoke-virtual {v0}, Lt3/y1;->a()Lt3/t0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lt3/t0;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lt3/t0;->z(Lt3/n0;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lt3/t0;->K(Z)V

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lt3/n0;->c()Ld3/d;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lt3/o0;->d(Lt3/n0;Ld3/d;Z)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Lt3/t0;->b0()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    .line 7
    :try_start_1
    invoke-virtual {p0, v2, v3}, Lt3/n0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lt3/t0;->r(Z)V

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v1}, Lt3/t0;->r(Z)V

    throw p0
.end method
