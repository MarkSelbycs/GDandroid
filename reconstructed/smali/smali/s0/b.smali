.class public Ls0/b;
.super Ljava/lang/Object;
.source "GreedyScheduler.java"

# interfaces
.implements Lr0/w;
.implements Lv0/d;
.implements Lr0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls0/b$b;
    }
.end annotation


# static fields
.field public static final t:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz0/m;",
            "Lt3/h1;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ls0/a;

.field public d:Z

.field public final e:Ljava/lang/Object;

.field public final f:Lr0/b0;

.field public final g:Lr0/u;

.field public final h:Lr0/n0;

.field public final i:Landroidx/work/a;

.field public final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz0/m;",
            "Ls0/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/Boolean;

.field public final q:Lv0/e;

.field public final r:Lc1/b;

.field public final s:Ls0/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls0/b;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lx0/m;Lr0/u;Lr0/n0;Lc1/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls0/b;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls0/b;->e:Ljava/lang/Object;

    .line 4
    new-instance v0, Lr0/b0;

    invoke-direct {v0}, Lr0/b0;-><init>()V

    iput-object v0, p0, Ls0/b;->f:Lr0/b0;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls0/b;->o:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Ls0/b;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {p2}, Landroidx/work/a;->k()Lq0/v;

    move-result-object p1

    .line 8
    new-instance v0, Ls0/a;

    .line 9
    invoke-virtual {p2}, Landroidx/work/a;->a()Lq0/b;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Ls0/a;-><init>(Lr0/w;Lq0/v;Lq0/b;)V

    iput-object v0, p0, Ls0/b;->c:Ls0/a;

    .line 10
    new-instance v0, Ls0/d;

    invoke-direct {v0, p1, p5}, Ls0/d;-><init>(Lq0/v;Lr0/n0;)V

    iput-object v0, p0, Ls0/b;->s:Ls0/d;

    .line 11
    iput-object p6, p0, Ls0/b;->r:Lc1/b;

    .line 12
    new-instance p1, Lv0/e;

    invoke-direct {p1, p3}, Lv0/e;-><init>(Lx0/m;)V

    iput-object p1, p0, Ls0/b;->q:Lv0/e;

    .line 13
    iput-object p2, p0, Ls0/b;->i:Landroidx/work/a;

    .line 14
    iput-object p4, p0, Ls0/b;->g:Lr0/u;

    .line 15
    iput-object p5, p0, Ls0/b;->h:Lr0/n0;

    return-void
.end method


# virtual methods
.method public a(Lz0/u;Lv0/b;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lv0/b$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Ls0/b;->f:Lr0/b0;

    invoke-virtual {p2, p1}, Lr0/b0;->a(Lz0/m;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p2

    sget-object v0, Ls0/b;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constraints met: Scheduling work ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Ls0/b;->f:Lr0/b0;

    invoke-virtual {p2, p1}, Lr0/b0;->d(Lz0/m;)Lr0/a0;

    move-result-object p1

    .line 6
    iget-object p2, p0, Ls0/b;->s:Ls0/d;

    invoke-virtual {p2, p1}, Ls0/d;->c(Lr0/a0;)V

    .line 7
    iget-object p2, p0, Ls0/b;->h:Lr0/n0;

    invoke-interface {p2, p1}, Lr0/n0;->e(Lr0/a0;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Ls0/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraints not met: Cancelling work ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Ls0/b;->f:Lr0/b0;

    invoke-virtual {v0, p1}, Lr0/b0;->c(Lz0/m;)Lr0/a0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object v0, p0, Ls0/b;->s:Ls0/d;

    invoke-virtual {v0, p1}, Ls0/d;->b(Lr0/a0;)V

    .line 11
    check-cast p2, Lv0/b$b;

    invoke-virtual {p2}, Lv0/b$b;->a()I

    move-result p2

    .line 12
    iget-object v0, p0, Ls0/b;->h:Lr0/n0;

    invoke-interface {v0, p1, p2}, Lr0/n0;->a(Lr0/a0;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls0/b;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls0/b;->f()V

    .line 3
    :cond_0
    iget-object v0, p0, Ls0/b;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Ls0/b;->t:Ljava/lang/String;

    const-string v1, "Ignoring schedule request in non-main process"

    invoke-virtual {p1, v0, v1}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Ls0/b;->g()V

    .line 6
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Ls0/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling work ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Ls0/b;->c:Ls0/a;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Ls0/a;->b(Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v0, p0, Ls0/b;->f:Lr0/b0;

    invoke-virtual {v0, p1}, Lr0/b0;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/a0;

    .line 10
    iget-object v1, p0, Ls0/b;->s:Ls0/d;

    invoke-virtual {v1, v0}, Ls0/d;->b(Lr0/a0;)V

    .line 11
    iget-object v1, p0, Ls0/b;->h:Lr0/n0;

    invoke-interface {v1, v0}, Lr0/n0;->b(Lr0/a0;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public c(Lz0/m;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/b;->f:Lr0/b0;

    invoke-virtual {v0, p1}, Lr0/b0;->c(Lz0/m;)Lr0/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ls0/b;->s:Ls0/d;

    invoke-virtual {v1, v0}, Ls0/d;->b(Lr0/a0;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ls0/b;->h(Lz0/m;)V

    if-nez p2, :cond_1

    .line 4
    iget-object p2, p0, Ls0/b;->e:Ljava/lang/Object;

    monitor-enter p2

    .line 5
    :try_start_0
    iget-object v0, p0, Ls0/b;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs e([Lz0/u;)V
    .locals 11

    .line 1
    iget-object v0, p0, Ls0/b;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls0/b;->f()V

    .line 3
    :cond_0
    iget-object v0, p0, Ls0/b;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Ls0/b;->t:Ljava/lang/String;

    const-string v1, "Ignoring schedule request in a secondary process"

    invoke-virtual {p1, v0, v1}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Ls0/b;->g()V

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 8
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, p1, v3

    .line 9
    invoke-static {v4}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object v5

    .line 10
    iget-object v6, p0, Ls0/b;->f:Lr0/b0;

    invoke-virtual {v6, v5}, Lr0/b0;->a(Lz0/m;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0, v4}, Ls0/b;->i(Lz0/u;)J

    move-result-wide v5

    .line 12
    invoke-virtual {v4}, Lz0/u;->c()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 13
    iget-object v7, p0, Ls0/b;->i:Landroidx/work/a;

    invoke-virtual {v7}, Landroidx/work/a;->a()Lq0/b;

    move-result-object v7

    invoke-interface {v7}, Lq0/b;->a()J

    move-result-wide v7

    .line 14
    iget-object v9, v4, Lz0/u;->b:Lq0/y$c;

    sget-object v10, Lq0/y$c;->a:Lq0/y$c;

    if-ne v9, v10, :cond_7

    cmp-long v7, v7, v5

    if-gez v7, :cond_3

    .line 15
    iget-object v7, p0, Ls0/b;->c:Ls0/a;

    if-eqz v7, :cond_7

    .line 16
    invoke-virtual {v7, v4, v5, v6}, Ls0/a;->a(Lz0/u;J)V

    goto/16 :goto_1

    .line 17
    :cond_3
    invoke-virtual {v4}, Lz0/u;->k()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 18
    iget-object v5, v4, Lz0/u;->j:Lq0/d;

    invoke-virtual {v5}, Lq0/d;->h()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v5

    sget-object v6, Ls0/b;->t:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Requires device idle."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object v5, v4, Lz0/u;->j:Lq0/d;

    invoke-virtual {v5}, Lq0/d;->e()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v5

    sget-object v6, Ls0/b;->t:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Requires ContentUri triggers."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v4, v4, Lz0/u;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_6
    iget-object v5, p0, Ls0/b;->f:Lr0/b0;

    invoke-static {v4}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object v6

    invoke-virtual {v5, v6}, Lr0/b0;->a(Lz0/m;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 25
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v5

    sget-object v6, Ls0/b;->t:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting work for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lz0/u;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v5, p0, Ls0/b;->f:Lr0/b0;

    invoke-virtual {v5, v4}, Lr0/b0;->e(Lz0/u;)Lr0/a0;

    move-result-object v4

    .line 27
    iget-object v5, p0, Ls0/b;->s:Ls0/d;

    invoke-virtual {v5, v4}, Ls0/d;->c(Lr0/a0;)V

    .line 28
    iget-object v5, p0, Ls0/b;->h:Lr0/n0;

    invoke-interface {v5, v4}, Lr0/n0;->e(Lr0/a0;)V

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 29
    :cond_8
    iget-object p1, p0, Ls0/b;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 30
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ","

    .line 31
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    sget-object v3, Ls0/b;->t:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting tracking for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz0/u;

    .line 34
    invoke-static {v1}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object v2

    .line 35
    iget-object v3, p0, Ls0/b;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 36
    iget-object v3, p0, Ls0/b;->q:Lv0/e;

    iget-object v4, p0, Ls0/b;->r:Lc1/b;

    .line 37
    invoke-interface {v4}, Lc1/b;->d()Lt3/b0;

    move-result-object v4

    .line 38
    invoke-static {v3, v1, v4, p0}, Lv0/f;->b(Lv0/e;Lz0/u;Lt3/b0;Lv0/d;)Lt3/h1;

    move-result-object v1

    .line 39
    iget-object v3, p0, Ls0/b;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 40
    :cond_a
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Ls0/b;->a:Landroid/content/Context;

    iget-object v1, p0, Ls0/b;->i:Landroidx/work/a;

    invoke-static {v0, v1}, La1/n;->b(Landroid/content/Context;Landroidx/work/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ls0/b;->p:Ljava/lang/Boolean;

    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls0/b;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ls0/b;->g:Lr0/u;

    invoke-virtual {v0, p0}, Lr0/u;->e(Lr0/f;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ls0/b;->d:Z

    :cond_0
    return-void
.end method

.method public final h(Lz0/m;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ls0/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ls0/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt3/h1;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v2, Ls0/b;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping tracking for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    invoke-interface {v1, p1}, Lt3/h1;->e(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Lz0/u;)J
    .locals 7

    .line 1
    iget-object v0, p0, Ls0/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object v1

    .line 3
    iget-object v2, p0, Ls0/b;->o:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b$b;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ls0/b$b;

    iget v3, p1, Lz0/u;->k:I

    iget-object v4, p0, Ls0/b;->i:Landroidx/work/a;

    .line 5
    invoke-virtual {v4}, Landroidx/work/a;->a()Lq0/b;

    move-result-object v4

    invoke-interface {v4}, Lq0/b;->a()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ls0/b$b;-><init>(IJLs0/b$a;)V

    .line 6
    iget-object v3, p0, Ls0/b;->o:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-wide v3, v2, Ls0/b$b;->b:J

    iget p1, p1, Lz0/u;->k:I

    iget v1, v2, Ls0/b$b;->a:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x5

    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v5, 0x7530

    mul-long/2addr v1, v5

    add-long/2addr v3, v1

    monitor-exit v0

    return-wide v3

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
