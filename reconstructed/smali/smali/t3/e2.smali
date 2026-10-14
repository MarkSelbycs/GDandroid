.class public final Lt3/e2;
.super Ljava/lang/Object;
.source "Yield.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ld3/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ld3/d;->b()Ld3/g;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lt3/l1;->d(Ld3/g;)V

    .line 3
    invoke-static {p0}, Le3/b;->b(Ld3/d;)Ld3/d;

    move-result-object v1

    instance-of v2, v1, Ly3/j;

    if-eqz v2, :cond_0

    check-cast v1, Ly3/j;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    sget-object v0, La3/o;->a:La3/o;

    goto :goto_2

    .line 4
    :cond_1
    iget-object v2, v1, Ly3/j;->d:Lt3/b0;

    invoke-virtual {v2, v0}, Lt3/b0;->n(Ld3/g;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, La3/o;->a:La3/o;

    invoke-virtual {v1, v0, v2}, Ly3/j;->k(Ld3/g;Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v2, Lt3/d2;

    invoke-direct {v2}, Lt3/d2;-><init>()V

    .line 7
    invoke-interface {v0, v2}, Ld3/g;->x(Ld3/g;)Ld3/g;

    move-result-object v0

    sget-object v3, La3/o;->a:La3/o;

    invoke-virtual {v1, v0, v3}, Ly3/j;->k(Ld3/g;Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, v2, Lt3/d2;->b:Z

    if-eqz v0, :cond_4

    .line 9
    invoke-static {v1}, Ly3/k;->d(Ly3/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_2

    .line 10
    :cond_4
    :goto_1
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    .line 11
    :goto_2
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {p0}, Lf3/h;->c(Ld3/d;)V

    :cond_5
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_6

    return-object v0

    :cond_6
    sget-object p0, La3/o;->a:La3/o;

    return-object p0
.end method
