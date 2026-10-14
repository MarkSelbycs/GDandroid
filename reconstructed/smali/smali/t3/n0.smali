.class public abstract Lt3/n0;
.super La4/h;
.source "DispatchedTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La4/h;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, La4/h;-><init>()V

    .line 2
    iput p1, p0, Lt3/n0;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public abstract c()Ld3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
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

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p1, p2}, La3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    .line 2
    :cond_2
    new-instance p2, Lt3/h0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lm3/k;->b(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p2, v0, p1}, Lt3/h0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lt3/n0;->c()Ld3/d;

    move-result-object p1

    invoke-interface {p1}, Ld3/d;->b()Ld3/g;

    move-result-object p1

    invoke-static {p1, p2}, Lt3/d0;->a(Ld3/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, La4/h;->b:La4/i;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lt3/n0;->c()Ld3/d;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    invoke-static {v1, v2}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ly3/j;

    .line 3
    iget-object v2, v1, Ly3/j;->e:Ld3/d;

    .line 4
    iget-object v1, v1, Ly3/j;->g:Ljava/lang/Object;

    .line 5
    invoke-interface {v2}, Ld3/d;->b()Ld3/g;

    move-result-object v3

    .line 6
    invoke-static {v3, v1}, Ly3/l0;->c(Ld3/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    sget-object v4, Ly3/l0;->a:Ly3/h0;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_0

    .line 8
    invoke-static {v2, v3, v1}, Lt3/a0;->f(Ld3/d;Ld3/g;Ljava/lang/Object;)Lt3/a2;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 9
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ld3/d;->b()Ld3/g;

    move-result-object v6

    .line 10
    invoke-virtual {p0}, Lt3/n0;->h()Ljava/lang/Object;

    move-result-object v7

    .line 11
    invoke-virtual {p0, v7}, Lt3/n0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_1

    .line 12
    iget v9, p0, Lt3/n0;->c:I

    invoke-static {v9}, Lt3/o0;->b(I)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lt3/h1;->m:Lt3/h1$b;

    invoke-interface {v6, v9}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object v6

    check-cast v6, Lt3/h1;

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    .line 13
    invoke-interface {v6}, Lt3/h1;->f()Z

    move-result v9

    if-nez v9, :cond_2

    .line 14
    invoke-interface {v6}, Lt3/h1;->y()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    .line 15
    invoke-virtual {p0, v7, v6}, Lt3/n0;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 16
    sget-object v7, La3/i;->a:La3/i$a;

    invoke-static {v6}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ld3/d;->F(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    .line 17
    sget-object v6, La3/i;->a:La3/i$a;

    invoke-static {v8}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ld3/d;->F(Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_3
    sget-object v6, La3/i;->a:La3/i$a;

    invoke-virtual {p0, v7}, Lt3/n0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ld3/d;->F(Ljava/lang/Object;)V

    .line 19
    :goto_2
    sget-object v2, La3/o;->a:La3/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    .line 20
    :try_start_2
    invoke-virtual {v4}, Lt3/a2;->N0()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    :cond_4
    invoke-static {v3, v1}, Ly3/l0;->a(Ld3/g;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    :cond_5
    :try_start_3
    sget-object v1, La3/i;->a:La3/i$a;

    invoke-interface {v0}, La4/i;->b()V

    invoke-static {v2}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, La3/i;->a:La3/i$a;

    invoke-static {v0}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    :goto_3
    invoke-static {v0}, La3/i;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lt3/n0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v2

    if-eqz v4, :cond_6

    .line 24
    :try_start_4
    invoke-virtual {v4}, Lt3/a2;->N0()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25
    :cond_6
    invoke-static {v3, v1}, Ly3/l0;->a(Ld3/g;Ljava/lang/Object;)V

    :cond_7
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 26
    :try_start_5
    sget-object v2, La3/i;->a:La3/i$a;

    invoke-interface {v0}, La4/i;->b()V

    sget-object v0, La3/o;->a:La3/o;

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    sget-object v2, La3/i;->a:La3/i$a;

    invoke-static {v0}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    :goto_4
    invoke-static {v0}, La3/i;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lt3/n0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method
