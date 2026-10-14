.class public final synthetic Lw3/h;
.super Ljava/lang/Object;
.source "Channels.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lw3/e;Lv3/s;ZLd3/d;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lw3/h;->c(Lw3/e;Lv3/s;ZLd3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lw3/e;Lv3/s;Ld3/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw3/e<",
            "-TT;>;",
            "Lv3/s<",
            "+TT;>;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lw3/h;->c(Lw3/e;Lv3/s;ZLd3/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, La3/o;->a:La3/o;

    return-object p0
.end method

.method public static final c(Lw3/e;Lv3/s;ZLd3/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw3/e<",
            "-TT;>;",
            "Lv3/s<",
            "+TT;>;Z",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lw3/h$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lw3/h$a;

    iget v1, v0, Lw3/h$a;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lw3/h$a;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lw3/h$a;

    invoke-direct {v0, p3}, Lw3/h$a;-><init>(Ld3/d;)V

    :goto_0
    iget-object p3, v0, Lw3/h$a;->h:Ljava/lang/Object;

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lw3/h$a;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-boolean p2, v0, Lw3/h$a;->g:Z

    iget-object p0, v0, Lw3/h$a;->f:Ljava/lang/Object;

    check-cast p0, Lv3/f;

    iget-object p1, v0, Lw3/h$a;->e:Ljava/lang/Object;

    check-cast p1, Lv3/s;

    iget-object v2, v0, Lw3/h$a;->d:Ljava/lang/Object;

    check-cast v2, Lw3/e;

    :try_start_0
    invoke-static {p3}, La3/j;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p3, p0

    move-object p0, v2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-boolean p2, v0, Lw3/h$a;->g:Z

    iget-object p0, v0, Lw3/h$a;->f:Ljava/lang/Object;

    check-cast p0, Lv3/f;

    iget-object p1, v0, Lw3/h$a;->e:Ljava/lang/Object;

    check-cast p1, Lv3/s;

    iget-object v2, v0, Lw3/h$a;->d:Ljava/lang/Object;

    check-cast v2, Lw3/e;

    :try_start_1
    invoke-static {p3}, La3/j;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p3}, La3/j;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lw3/f;->d(Lw3/e;)V

    .line 3
    :try_start_2
    invoke-interface {p1}, Lv3/s;->iterator()Lv3/f;

    move-result-object p3

    :goto_1
    iput-object p0, v0, Lw3/h$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lw3/h$a;->e:Ljava/lang/Object;

    iput-object p3, v0, Lw3/h$a;->f:Ljava/lang/Object;

    iput-boolean p2, v0, Lw3/h$a;->g:Z

    iput v4, v0, Lw3/h$a;->i:I

    invoke-interface {p3, v0}, Lv3/f;->a(Ld3/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, v2

    move-object v2, p0

    move-object p0, p3

    move-object p3, v6

    :goto_2
    const/4 v5, 0x0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Lv3/f;->next()Ljava/lang/Object;

    move-result-object p3

    .line 4
    iput-object v2, v0, Lw3/h$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lw3/h$a;->e:Ljava/lang/Object;

    iput-object p0, v0, Lw3/h$a;->f:Ljava/lang/Object;

    iput-boolean p2, v0, Lw3/h$a;->g:Z

    iput v3, v0, Lw3/h$a;->i:I

    invoke-interface {v2, p3, v0}, Lw3/e;->a(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    :cond_6
    if-eqz p2, :cond_7

    .line 5
    invoke-static {p1, v5}, Lv3/j;->a(Lv3/s;Ljava/lang/Throwable;)V

    .line 6
    :cond_7
    sget-object p0, La3/o;->a:La3/o;

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_8

    .line 8
    invoke-static {p1, p0}, Lv3/j;->a(Lv3/s;Ljava/lang/Throwable;)V

    :cond_8
    throw p3
.end method
