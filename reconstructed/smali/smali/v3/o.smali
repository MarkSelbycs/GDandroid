.class public final Lv3/o;
.super Ljava/lang/Object;
.source "Produce.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lv3/q;Ll3/a;Ld3/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/q<",
            "*>;",
            "Ll3/a<",
            "La3/o;",
            ">;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lv3/o$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv3/o$a;

    iget v1, v0, Lv3/o$a;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv3/o$a;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv3/o$a;

    invoke-direct {v0, p2}, Lv3/o$a;-><init>(Ld3/d;)V

    :goto_0
    iget-object p2, v0, Lv3/o$a;->f:Ljava/lang/Object;

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lv3/o$a;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lv3/o$a;->e:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ll3/a;

    iget-object p0, v0, Lv3/o$a;->d:Ljava/lang/Object;

    check-cast p0, Lv3/q;

    :try_start_0
    invoke-static {p2}, La3/j;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La3/j;->b(Ljava/lang/Object;)V

    .line 2
    invoke-interface {v0}, Ld3/d;->b()Ld3/g;

    move-result-object p2

    sget-object v2, Lt3/h1;->m:Lt3/h1$b;

    invoke-interface {p2, v2}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object p2

    if-ne p2, p0, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_6

    .line 3
    :try_start_1
    iput-object p0, v0, Lv3/o$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lv3/o$a;->e:Ljava/lang/Object;

    iput v3, v0, Lv3/o$a;->g:I

    .line 4
    new-instance p2, Lt3/k;

    invoke-static {v0}, Le3/b;->b(Ld3/d;)Ld3/d;

    move-result-object v2

    invoke-direct {p2, v2, v3}, Lt3/k;-><init>(Ld3/d;I)V

    .line 5
    invoke-virtual {p2}, Lt3/k;->w()V

    .line 6
    new-instance v2, Lv3/o$b;

    invoke-direct {v2, p2}, Lv3/o$b;-><init>(Lt3/j;)V

    invoke-interface {p0, v2}, Lv3/t;->n(Ll3/l;)V

    .line 7
    invoke-virtual {p2}, Lt3/k;->t()Ljava/lang/Object;

    move-result-object p0

    .line 8
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p0, p2, :cond_4

    invoke-static {v0}, Lf3/h;->c(Ld3/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-ne p0, v1, :cond_5

    return-object v1

    .line 9
    :cond_5
    :goto_2
    invoke-interface {p1}, Ll3/a;->c()Ljava/lang/Object;

    .line 10
    sget-object p0, La3/o;->a:La3/o;

    return-object p0

    .line 11
    :goto_3
    invoke-interface {p1}, Ll3/a;->c()Ljava/lang/Object;

    throw p0

    .line 12
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lt3/e0;Ld3/g;ILv3/a;Lt3/g0;Ll3/l;Ll3/p;)Lv3/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lt3/e0;",
            "Ld3/g;",
            "I",
            "Lv3/a;",
            "Lt3/g0;",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;",
            "Ll3/p<",
            "-",
            "Lv3/q<",
            "-TE;>;-",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lv3/s<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-static {p2, p3, v0, v1, v0}, Lv3/g;->b(ILv3/a;Ll3/l;ILjava/lang/Object;)Lv3/d;

    move-result-object p2

    .line 2
    invoke-static {p0, p1}, Lt3/a0;->d(Lt3/e0;Ld3/g;)Ld3/g;

    move-result-object p0

    .line 3
    new-instance p1, Lv3/p;

    invoke-direct {p1, p0, p2}, Lv3/p;-><init>(Ld3/g;Lv3/d;)V

    if-eqz p5, :cond_0

    .line 4
    invoke-virtual {p1, p5}, Lt3/o1;->X(Ll3/l;)Lt3/r0;

    .line 5
    :cond_0
    invoke-virtual {p1, p4, p1, p6}, Lt3/a;->M0(Lt3/g0;Ljava/lang/Object;Ll3/p;)V

    return-object p1
.end method

.method public static synthetic c(Lt3/e0;Ld3/g;ILv3/a;Lt3/g0;Ll3/l;Ll3/p;ILjava/lang/Object;)Lv3/s;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 1
    sget-object p1, Ld3/h;->a:Ld3/h;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    .line 2
    sget-object p3, Lv3/a;->a:Lv3/a;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    .line 3
    sget-object p4, Lt3/g0;->a:Lt3/g0;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    move-object v0, p0

    move-object v6, p6

    .line 4
    invoke-static/range {v0 .. v6}, Lv3/o;->b(Lt3/e0;Ld3/g;ILv3/a;Lt3/g0;Ll3/l;Ll3/p;)Lv3/s;

    move-result-object p0

    return-object p0
.end method
