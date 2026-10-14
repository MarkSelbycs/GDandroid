.class public final Lt3/a0;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ld3/g;Ld3/g;Z)Ld3/g;
    .locals 3

    .line 1
    invoke-static {p0}, Lt3/a0;->c(Ld3/g;)Z

    move-result v0

    .line 2
    invoke-static {p1}, Lt3/a0;->c(Ld3/g;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p0, p1}, Ld3/g;->x(Ld3/g;)Ld3/g;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lm3/q;

    invoke-direct {v0}, Lm3/q;-><init>()V

    iput-object p1, v0, Lm3/q;->a:Ljava/lang/Object;

    .line 5
    sget-object p1, Ld3/h;->a:Ld3/h;

    new-instance v2, Lt3/a0$b;

    invoke-direct {v2, v0, p2}, Lt3/a0$b;-><init>(Lm3/q;Z)V

    invoke-interface {p0, p1, v2}, Ld3/g;->m0(Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld3/g;

    if-eqz v1, :cond_1

    .line 6
    iget-object p2, v0, Lm3/q;->a:Ljava/lang/Object;

    check-cast p2, Ld3/g;

    sget-object v1, Lt3/a0$a;->b:Lt3/a0$a;

    invoke-interface {p2, p1, v1}, Ld3/g;->m0(Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lm3/q;->a:Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object p1, v0, Lm3/q;->a:Ljava/lang/Object;

    check-cast p1, Ld3/g;

    invoke-interface {p0, p1}, Ld3/g;->x(Ld3/g;)Ld3/g;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ld3/g;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final c(Ld3/g;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lt3/a0$c;->b:Lt3/a0$c;

    invoke-interface {p0, v0, v1}, Ld3/g;->m0(Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Lt3/e0;Ld3/g;)Ld3/g;
    .locals 1

    .line 1
    invoke-interface {p0}, Lt3/e0;->k()Ld3/g;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lt3/a0;->a(Ld3/g;Ld3/g;Z)Ld3/g;

    move-result-object p0

    .line 2
    invoke-static {}, Lt3/q0;->a()Lt3/b0;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, Ld3/e;->k:Ld3/e$b;

    invoke-interface {p0, p1}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lt3/q0;->a()Lt3/b0;

    move-result-object p1

    invoke-interface {p0, p1}, Ld3/g;->x(Ld3/g;)Ld3/g;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final e(Lf3/e;)Lt3/a2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf3/e;",
            ")",
            "Lt3/a2<",
            "*>;"
        }
    .end annotation

    .line 1
    :cond_0
    instance-of v0, p0, Lt3/m0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-interface {p0}, Lf3/e;->D()Lf3/e;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    .line 3
    :cond_2
    instance-of v0, p0, Lt3/a2;

    if-eqz v0, :cond_0

    check-cast p0, Lt3/a2;

    return-object p0
.end method

.method public static final f(Ld3/d;Ld3/g;Ljava/lang/Object;)Lt3/a2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "*>;",
            "Ld3/g;",
            "Ljava/lang/Object;",
            ")",
            "Lt3/a2<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lf3/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lt3/b2;->a:Lt3/b2;

    invoke-interface {p1, v0}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 3
    :cond_2
    check-cast p0, Lf3/e;

    invoke-static {p0}, Lt3/a0;->e(Lf3/e;)Lt3/a2;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {p0, p1, p2}, Lt3/a2;->O0(Ld3/g;Ljava/lang/Object;)V

    :cond_3
    return-object p0
.end method
