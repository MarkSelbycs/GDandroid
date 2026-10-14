.class public final La1/d;
.super Ljava/lang/Object;
.source "EnqueueUtils.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroidx/work/impl/WorkDatabase;Landroidx/work/a;Lr0/c0;)V
    .locals 7

    const-string v0, "workDatabase"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lr0/c0;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 1
    invoke-static {v1}, Lb3/o;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move v1, v2

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v0

    if-eqz v3, :cond_4

    .line 3
    invoke-static {p2}, Lb3/t;->o(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr0/c0;

    .line 4
    invoke-virtual {v3}, Lr0/c0;->f()Ljava/util/List;

    move-result-object v4

    const-string v5, "current.work"

    invoke-static {v4, v5}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_2

    .line 6
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq0/b0;

    .line 7
    invoke-virtual {v6}, Lq0/b0;->d()Lz0/u;

    move-result-object v6

    iget-object v6, v6, Lz0/u;->j:Lq0/d;

    invoke-virtual {v6}, Lq0/d;->e()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    if-gez v5, :cond_2

    .line 8
    invoke-static {}, Lb3/o;->j()V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/2addr v1, v5

    .line 9
    invoke-virtual {v3}, Lr0/c0;->e()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    return-void

    .line 10
    :cond_5
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object p0

    invoke-interface {p0}, Lz0/v;->s()I

    move-result p0

    .line 11
    invoke-virtual {p1}, Landroidx/work/a;->b()I

    move-result p1

    add-int p2, p0, v1

    if-gt p2, p1, :cond_6

    return-void

    .line 12
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";\nalready enqueued count: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";\ncurrent enqueue operation count: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final b(Ljava/util/List;Lz0/u;)Lz0/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lr0/w;",
            ">;",
            "Lz0/u;",
            ")",
            "Lz0/u;"
        }
    .end annotation

    const-string v0, "schedulers"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "workSpec"

    invoke-static {p1, p0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
