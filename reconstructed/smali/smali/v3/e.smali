.class public Lv3/e;
.super Lt3/a;
.source "ChannelCoroutine.kt"

# interfaces
.implements Lv3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lt3/a<",
        "La3/o;",
        ">;",
        "Lv3/d<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Lv3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/d<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld3/g;Lv3/d;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/g;",
            "Lv3/d<",
            "TE;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lt3/a;-><init>(Ld3/g;ZZ)V

    .line 2
    iput-object p2, p0, Lv3/e;->d:Lv3/d;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, v0}, Lt3/o1;->C0(Lt3/o1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lv3/e;->d:Lv3/d;

    invoke-interface {v0, p1}, Lv3/s;->e(Ljava/util/concurrent/CancellationException;)V

    .line 3
    invoke-virtual {p0, p1}, Lt3/o1;->w(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final N0()Lv3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/d<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final O0()Lv3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/d<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lv3/e;->d:Lv3/d;

    return-object v0
.end method

.method public a(Ld3/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "-",
            "Lv3/h<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lv3/e;->d:Lv3/d;

    invoke-interface {v0, p1}, Lv3/s;->a(Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    return-object p1
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv3/e;->d:Lv3/d;

    invoke-interface {v0}, Lv3/s;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt3/o1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    new-instance v0, Lt3/i1;

    invoke-static {p0}, Lt3/o1;->p(Lt3/o1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lt3/i1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lt3/h1;)V

    move-object p1, v0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lv3/e;->A(Ljava/lang/Throwable;)V

    return-void
.end method

.method public g(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lv3/e;->d:Lv3/d;

    invoke-interface {v0, p1}, Lv3/t;->g(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lv3/e;->d:Lv3/d;

    invoke-interface {v0, p1}, Lv3/t;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Lv3/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/f<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lv3/e;->d:Lv3/d;

    invoke-interface {v0}, Lv3/s;->iterator()Lv3/f;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lv3/e;->d:Lv3/d;

    invoke-interface {v0}, Lv3/t;->l()Z

    move-result v0

    return v0
.end method

.method public n(Ll3/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lv3/e;->d:Lv3/d;

    invoke-interface {v0, p1}, Lv3/t;->n(Ll3/l;)V

    return-void
.end method

.method public o(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lv3/e;->d:Lv3/d;

    invoke-interface {v0, p1, p2}, Lv3/t;->o(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
