.class public final Lz3/a;
.super Ljava/lang/Object;
.source "Cancellable.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ld3/d;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, La3/i;->a:La3/i$a;

    invoke-static {p1}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ld3/d;->F(Ljava/lang/Object;)V

    .line 2
    throw p1
.end method

.method public static final b(Ld3/d;Ld3/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;",
            "Ld3/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Le3/b;->b(Ld3/d;)Ld3/d;

    move-result-object p0

    sget-object v0, La3/i;->a:La3/i$a;

    sget-object v0, La3/o;->a:La3/o;

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Ly3/k;->c(Ld3/d;Ljava/lang/Object;Ll3/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p1, p0}, Lz3/a;->a(Ld3/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final c(Ll3/p;Ljava/lang/Object;Ld3/d;Ll3/l;)V
    .locals 0
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
            "-TT;>;",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Le3/b;->a(Ll3/p;Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p0

    invoke-static {p0}, Le3/b;->b(Ld3/d;)Ld3/d;

    move-result-object p0

    sget-object p1, La3/i;->a:La3/i$a;

    sget-object p1, La3/o;->a:La3/o;

    invoke-static {p1}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, Ly3/k;->b(Ld3/d;Ljava/lang/Object;Ll3/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p2, p0}, Lz3/a;->a(Ld3/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Ll3/p;Ljava/lang/Object;Ld3/d;Ll3/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lz3/a;->c(Ll3/p;Ljava/lang/Object;Ld3/d;Ll3/l;)V

    return-void
.end method
