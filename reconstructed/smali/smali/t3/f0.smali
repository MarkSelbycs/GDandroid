.class public final Lt3/f0;
.super Ljava/lang/Object;
.source "CoroutineScope.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ld3/g;)Lt3/e0;
    .locals 3

    new-instance v0, Ly3/f;

    sget-object v1, Lt3/h1;->m:Lt3/h1$b;

    invoke-interface {p0, v1}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lt3/l1;->b(Lt3/h1;ILjava/lang/Object;)Lt3/s;

    move-result-object v1

    invoke-interface {p0, v1}, Ld3/g;->x(Ld3/g;)Ld3/g;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ly3/f;-><init>(Ld3/g;)V

    return-object v0
.end method

.method public static final b(Ll3/p;Ld3/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/p<",
            "-",
            "Lt3/e0;",
            "-",
            "Ld3/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ld3/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ly3/d0;

    invoke-interface {p1}, Ld3/d;->b()Ld3/g;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ly3/d0;-><init>(Ld3/g;Ld3/d;)V

    .line 2
    invoke-static {v0, v0, p0}, Lz3/b;->b(Ly3/d0;Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lf3/h;->c(Ld3/d;)V

    :cond_0
    return-object p0
.end method
