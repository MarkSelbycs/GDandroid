.class public abstract Lt3/a;
.super Lt3/o1;
.source "AbstractCoroutine.kt"

# interfaces
.implements Ld3/d;
.implements Lt3/e0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lt3/o1;",
        "Ld3/d<",
        "TT;>;",
        "Lt3/e0;"
    }
.end annotation


# instance fields
.field public final c:Ld3/g;


# direct methods
.method public constructor <init>(Ld3/g;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lt3/o1;-><init>(Z)V

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lt3/h1;->m:Lt3/h1$b;

    invoke-interface {p1, p2}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object p2

    check-cast p2, Lt3/h1;

    invoke-virtual {p0, p2}, Lt3/o1;->d0(Lt3/h1;)V

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Ld3/g;->x(Ld3/g;)Ld3/g;

    move-result-object p1

    iput-object p1, p0, Lt3/a;->c:Ld3/g;

    return-void
.end method


# virtual methods
.method public E()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lt3/i0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final F(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1, v0}, Lt3/y;->d(Ljava/lang/Object;Ll3/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt3/o1;->l0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lt3/p1;->b:Ly3/h0;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lt3/a;->J0(Ljava/lang/Object;)V

    return-void
.end method

.method public J0(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt3/o1;->v(Ljava/lang/Object;)V

    return-void
.end method

.method public K0(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public L0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final M0(Lt3/g0;Ljava/lang/Object;Ll3/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lt3/g0;",
            "TR;",
            "Ll3/p<",
            "-TR;-",
            "Ld3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p3, p2, p0}, Lt3/g0;->e(Ll3/p;Ljava/lang/Object;Ld3/d;)V

    return-void
.end method

.method public final b()Ld3/g;
    .locals 1

    iget-object v0, p0, Lt3/a;->c:Ld3/g;

    return-object v0
.end method

.method public final c0(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lt3/a;->c:Ld3/g;

    invoke-static {v0, p1}, Lt3/d0;->a(Ld3/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public f()Z
    .locals 1

    invoke-super {p0}, Lt3/o1;->f()Z

    move-result v0

    return v0
.end method

.method public k()Ld3/g;
    .locals 1

    iget-object v0, p0, Lt3/a;->c:Ld3/g;

    return-object v0
.end method

.method public o0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lt3/a;->c:Ld3/g;

    invoke-static {v0}, Lt3/a0;->b(Ld3/g;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lt3/o1;->o0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lt3/o1;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lt3/u;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lt3/u;

    iget-object v0, p1, Lt3/u;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lt3/u;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lt3/a;->K0(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lt3/a;->L0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
