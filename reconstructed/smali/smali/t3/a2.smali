.class public final Lt3/a2;
.super Ly3/d0;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ly3/d0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "La3/h<",
            "Ld3/g;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile threadLocalIsSet:Z


# virtual methods
.method public J0(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lt3/a2;->threadLocalIsSet:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lt3/a2;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La3/h;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld3/g;

    invoke-virtual {v0}, La3/h;->c()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v1, v0}, Ly3/l0;->a(Ld3/g;Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lt3/a2;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 5
    :cond_1
    iget-object v0, p0, Ly3/d0;->d:Ld3/d;

    invoke-static {p1, v0}, Lt3/y;->a(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-object v0, p0, Ly3/d0;->d:Ld3/d;

    .line 7
    invoke-interface {v0}, Ld3/d;->b()Ld3/g;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Ly3/l0;->c(Ld3/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    sget-object v4, Ly3/l0;->a:Ly3/h0;

    if-eq v3, v4, :cond_2

    .line 10
    invoke-static {v0, v1, v3}, Lt3/a0;->f(Ld3/d;Ld3/g;Ljava/lang/Object;)Lt3/a2;

    move-result-object v2

    .line 11
    :cond_2
    :try_start_0
    iget-object v0, p0, Ly3/d0;->d:Ld3/d;

    invoke-interface {v0, p1}, Ld3/d;->F(Ljava/lang/Object;)V

    .line 12
    sget-object p1, La3/o;->a:La3/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v2}, Lt3/a2;->N0()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    :cond_3
    invoke-static {v1, v3}, Ly3/l0;->a(Ld3/g;Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {v2}, Lt3/a2;->N0()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    :cond_5
    invoke-static {v1, v3}, Ly3/l0;->a(Ld3/g;Ljava/lang/Object;)V

    :cond_6
    throw p1
.end method

.method public final N0()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lt3/a2;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt3/a2;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lt3/a2;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/2addr v0, v1

    return v0
.end method

.method public final O0(Ld3/g;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lt3/a2;->threadLocalIsSet:Z

    .line 2
    iget-object v0, p0, Lt3/a2;->e:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, La3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)La3/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
