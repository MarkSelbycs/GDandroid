.class public final Lz3/b;
.super Ljava/lang/Object;
.source "Undispatched.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ll3/p;Ljava/lang/Object;Ld3/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/p<",
            "-TR;-",
            "Ld3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Ld3/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lf3/h;->a(Ld3/d;)Ld3/d;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {p2}, Ld3/d;->b()Ld3/g;

    move-result-object p2

    const/4 v1, 0x0

    .line 3
    invoke-static {p2, v1}, Ly3/l0;->c(Ld3/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    .line 4
    :try_start_1
    invoke-static {p0, v2}, Lm3/t;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/p;

    invoke-interface {p0, p1, v0}, Ll3/p;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-static {p2, v1}, Ly3/l0;->a(Ld3/g;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    .line 7
    sget-object p1, La3/i;->a:La3/i$a;

    invoke-static {p0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ld3/d;->F(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_3
    invoke-static {p2, v1}, Ly3/l0;->a(Ld3/g;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 9
    sget-object p1, La3/i;->a:La3/i$a;

    invoke-static {p0}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ld3/d;->F(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final b(Ly3/d0;Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ly3/d0<",
            "-TT;>;TR;",
            "Ll3/p<",
            "-TR;-",
            "Ld3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-static {p2, v0}, Lm3/t;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll3/p;

    invoke-interface {p2, p1, p0}, Ll3/p;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    new-instance p2, Lt3/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v0, v2}, Lt3/u;-><init>(Ljava/lang/Throwable;ZILm3/g;)V

    move-object p1, p2

    .line 3
    :goto_0
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lt3/o1;->l0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    sget-object p1, Lt3/p1;->b:Ly3/h0;

    if-ne p0, p1, :cond_1

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 6
    :cond_1
    instance-of p1, p0, Lt3/u;

    if-nez p1, :cond_2

    .line 7
    invoke-static {p0}, Lt3/p1;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    .line 8
    :cond_2
    check-cast p0, Lt3/u;

    iget-object p0, p0, Lt3/u;->a:Ljava/lang/Throwable;

    .line 9
    throw p0
.end method
