.class public final synthetic Lt3/m1;
.super Ljava/lang/Object;
.source "Job.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lt3/h1;)Lt3/s;
    .locals 1

    new-instance v0, Lt3/k1;

    invoke-direct {v0, p0}, Lt3/k1;-><init>(Lt3/h1;)V

    return-object v0
.end method

.method public static synthetic b(Lt3/h1;ILjava/lang/Object;)Lt3/s;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lt3/l1;->a(Lt3/h1;)Lt3/s;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ld3/g;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, Lt3/h1;->m:Lt3/h1$b;

    invoke-interface {p0, v0}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object p0

    check-cast p0, Lt3/h1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lt3/h1;->e(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static final d(Ld3/g;)V
    .locals 1

    sget-object v0, Lt3/h1;->m:Lt3/h1$b;

    invoke-interface {p0, v0}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object p0

    check-cast p0, Lt3/h1;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lt3/l1;->e(Lt3/h1;)V

    :cond_0
    return-void
.end method

.method public static final e(Lt3/h1;)V
    .locals 1

    invoke-interface {p0}, Lt3/h1;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lt3/h1;->y()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method
