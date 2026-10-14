.class public Lr0/z;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Schedulers"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr0/z;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/Executor;Ljava/util/List;Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Lz0/m;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lr0/z;->e(Ljava/util/concurrent/Executor;Ljava/util/List;Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Lz0/m;Z)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Lz0/m;Landroidx/work/a;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lr0/z;->d(Ljava/util/List;Lz0/m;Landroidx/work/a;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;)Lr0/w;
    .locals 1

    .line 1
    new-instance v0, Lu0/b;

    invoke-direct {v0, p0, p1, p2}, Lu0/b;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;)V

    .line 2
    const-class p1, Landroidx/work/impl/background/systemjob/SystemJobService;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, La1/l;->c(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p0

    sget-object p1, Lr0/z;->a:Ljava/lang/String;

    const-string p2, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {p0, p1, p2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic d(Ljava/util/List;Lz0/m;Landroidx/work/a;Landroidx/work/impl/WorkDatabase;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/w;

    .line 2
    invoke-virtual {p1}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lr0/w;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2, p3, p0}, Lr0/z;->h(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/concurrent/Executor;Ljava/util/List;Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Lz0/m;Z)V
    .locals 0

    new-instance p5, Lr0/x;

    invoke-direct {p5, p1, p4, p2, p3}, Lr0/x;-><init>(Ljava/util/List;Lz0/m;Landroidx/work/a;Landroidx/work/impl/WorkDatabase;)V

    invoke-interface {p0, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f(Lz0/v;Lq0/b;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/v;",
            "Lq0/b;",
            "Ljava/util/List<",
            "Lz0/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lq0/b;->a()J

    move-result-wide v0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz0/u;

    .line 4
    iget-object p2, p2, Lz0/u;->a:Ljava/lang/String;

    invoke-interface {p0, p2, v0, v1}, Lz0/v;->t(Ljava/lang/String;J)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static g(Ljava/util/List;Lr0/u;Ljava/util/concurrent/Executor;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr0/w;",
            ">;",
            "Lr0/u;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/work/impl/WorkDatabase;",
            "Landroidx/work/a;",
            ")V"
        }
    .end annotation

    new-instance v0, Lr0/y;

    invoke-direct {v0, p2, p0, p4, p3}, Lr0/y;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Landroidx/work/a;Landroidx/work/impl/WorkDatabase;)V

    invoke-virtual {p1, v0}, Lr0/u;->e(Lr0/f;)V

    return-void
.end method

.method public static h(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lr0/w;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroidx/room/i0;->e()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Lz0/v;->B()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroidx/work/a;->a()Lq0/b;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lr0/z;->f(Lz0/v;Lq0/b;Ljava/util/List;)V

    .line 6
    invoke-virtual {p0}, Landroidx/work/a;->h()I

    move-result v2

    .line 7
    invoke-interface {v0, v2}, Lz0/v;->e(I)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Landroidx/work/a;->a()Lq0/b;

    move-result-object p0

    invoke-static {v0, p0, v2}, Lr0/z;->f(Lz0/v;Lq0/b;Ljava/util/List;)V

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/16 p0, 0xc8

    .line 10
    invoke-interface {v0, p0}, Lz0/v;->w(I)Ljava/util/List;

    move-result-object p0

    .line 11
    invoke-virtual {p1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p1}, Landroidx/room/i0;->i()V

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lz0/u;

    .line 15
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lz0/u;

    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/w;

    .line 17
    invoke-interface {v1}, Lr0/w;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    invoke-interface {v1, p1}, Lr0/w;->e([Lz0/u;)V

    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lz0/u;

    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lz0/u;

    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr0/w;

    .line 23
    invoke-interface {p2}, Lr0/w;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 24
    invoke-interface {p2, p0}, Lr0/w;->e([Lz0/u;)V

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 25
    invoke-virtual {p1}, Landroidx/room/i0;->i()V

    .line 26
    throw p0

    :cond_6
    :goto_2
    return-void
.end method
