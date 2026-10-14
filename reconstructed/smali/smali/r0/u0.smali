.class public final Lr0/u0;
.super Ljava/lang/Object;
.source "WorkerUpdater.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lr0/p0;Ljava/lang/String;Lr0/q;Ll3/a;Lq0/b0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lr0/u0;->d(Lr0/p0;Ljava/lang/String;Lr0/q;Ll3/a;Lq0/b0;)V

    return-void
.end method

.method public static synthetic b(Landroidx/work/impl/WorkDatabase;Lz0/u;Lz0/u;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lr0/u0;->g(Landroidx/work/impl/WorkDatabase;Lz0/u;Lz0/u;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method public static final c(Lr0/p0;Ljava/lang/String;Lq0/b0;)Lq0/r;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workRequest"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lr0/q;

    invoke-direct {v0}, Lr0/q;-><init>()V

    .line 2
    new-instance v5, Lr0/u0$a;

    invoke-direct {v5, p2, p0, p1, v0}, Lr0/u0$a;-><init>(Lq0/b0;Lr0/p0;Ljava/lang/String;Lr0/q;)V

    .line 3
    invoke-virtual {p0}, Lr0/p0;->w()Lc1/b;

    move-result-object v1

    invoke-interface {v1}, Lc1/b;->c()Lc1/a;

    move-result-object v7

    new-instance v8, Lr0/t0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lr0/t0;-><init>(Lr0/p0;Ljava/lang/String;Lr0/q;Ll3/a;Lq0/b0;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static final d(Lr0/p0;Ljava/lang/String;Lr0/q;Ll3/a;Lq0/b0;)V
    .locals 47

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "$this_enqueueUniquelyNamedPeriodic"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$name"

    invoke-static {v0, v2}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$operation"

    invoke-static {v1, v2}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$enqueueNew"

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$workRequest"

    move-object/from16 v5, p4

    invoke-static {v5, v2}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v2

    .line 2
    invoke-interface {v2, v0}, Lz0/v;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    const-string v0, "Can\'t apply UPDATE policy to the chains of work."

    .line 4
    invoke-static {v1, v0}, Lr0/u0;->e(Lr0/q;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {v6}, Lb3/w;->p(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz0/u$b;

    if-nez v6, :cond_1

    .line 6
    invoke-interface/range {p3 .. p3}, Ll3/a;->c()Ljava/lang/Object;

    return-void

    .line 7
    :cond_1
    iget-object v7, v6, Lz0/u$b;->a:Ljava/lang/String;

    invoke-interface {v2, v7}, Lz0/v;->f(Ljava/lang/String;)Lz0/u;

    move-result-object v7

    if-nez v7, :cond_2

    .line 8
    new-instance v2, Lq0/r$b$a;

    .line 9
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WorkSpec with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lz0/u$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", that matches a name \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", wasn\'t found"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-direct {v2, v3}, Lq0/r$b$a;-><init>(Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {v1, v2}, Lr0/q;->b(Lq0/r$b;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {v7}, Lz0/u;->m()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    .line 13
    invoke-static {v1, v0}, Lr0/u0;->e(Lr0/q;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_3
    iget-object v0, v6, Lz0/u$b;->b:Lq0/y$c;

    sget-object v7, Lq0/y$c;->f:Lq0/y$c;

    if-ne v0, v7, :cond_4

    .line 15
    iget-object v0, v6, Lz0/u$b;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Lz0/v;->a(Ljava/lang/String;)V

    .line 16
    invoke-interface/range {p3 .. p3}, Ll3/a;->c()Ljava/lang/Object;

    return-void

    .line 17
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lq0/b0;->d()Lz0/u;

    move-result-object v7

    iget-object v8, v6, Lz0/u$b;->a:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const v39, 0x7ffffe

    const/16 v40, 0x0

    invoke-static/range {v7 .. v40}, Lz0/u;->e(Lz0/u;Ljava/lang/String;Lq0/y$c;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLq0/d;ILq0/a;JJJJZLq0/s;IIJIIILjava/lang/Object;)Lz0/u;

    move-result-object v45

    .line 18
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lr0/p0;->q()Lr0/u;

    move-result-object v0

    const-string v2, "processor"

    invoke-static {v0, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    const-string v4, "workDatabase"

    invoke-static {v2, v4}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lr0/p0;->m()Landroidx/work/a;

    move-result-object v4

    const-string v6, "configuration"

    invoke-static {v4, v6}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lr0/p0;->s()Ljava/util/List;

    move-result-object v3

    const-string v6, "schedulers"

    invoke-static {v3, v6}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lq0/b0;->c()Ljava/util/Set;

    move-result-object v46

    move-object/from16 v41, v0

    move-object/from16 v42, v2

    move-object/from16 v43, v4

    move-object/from16 v44, v3

    .line 19
    invoke-static/range {v41 .. v46}, Lr0/u0;->f(Lr0/u;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;Ljava/util/List;Lz0/u;Ljava/util/Set;)Lq0/z$a;

    .line 20
    sget-object v0, Lq0/r;->a:Lq0/r$b$c;

    invoke-virtual {v1, v0}, Lr0/q;->b(Lq0/r$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 21
    new-instance v2, Lq0/r$b$a;

    invoke-direct {v2, v0}, Lq0/r$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lr0/q;->b(Lq0/r$b;)V

    :goto_0
    return-void
.end method

.method public static final e(Lr0/q;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lq0/r$b$a;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lq0/r$b$a;-><init>(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0, v0}, Lr0/q;->b(Lq0/r$b;)V

    return-void
.end method

.method public static final f(Lr0/u;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;Ljava/util/List;Lz0/u;Ljava/util/Set;)Lq0/z$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/u;",
            "Landroidx/work/impl/WorkDatabase;",
            "Landroidx/work/a;",
            "Ljava/util/List<",
            "+",
            "Lr0/w;",
            ">;",
            "Lz0/u;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lq0/z$a;"
        }
    .end annotation

    .line 1
    iget-object v5, p4, Lz0/u;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v0

    invoke-interface {v0, v5}, Lz0/v;->f(Ljava/lang/String;)Lz0/u;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3
    iget-object v0, v2, Lz0/u;->b:Lq0/y$c;

    invoke-virtual {v0}, Lq0/y$c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lq0/z$a;->a:Lq0/z$a;

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {v2}, Lz0/u;->m()Z

    move-result v0

    invoke-virtual {p4}, Lz0/u;->m()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 5
    invoke-virtual {p0, v5}, Lr0/u;->k(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/w;

    .line 7
    invoke-interface {v1, v5}, Lr0/w;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v8, Lr0/s0;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p4

    move-object v4, p3

    move-object v6, p5

    move v7, p0

    invoke-direct/range {v0 .. v7}, Lr0/s0;-><init>(Landroidx/work/impl/WorkDatabase;Lz0/u;Lz0/u;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    invoke-virtual {p1, v8}, Landroidx/room/i0;->A(Ljava/lang/Runnable;)V

    if-nez p0, :cond_2

    .line 9
    invoke-static {p2, p1, p3}, Lr0/z;->h(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_2
    if-eqz p0, :cond_3

    .line 10
    sget-object p0, Lq0/z$a;->c:Lq0/z$a;

    goto :goto_1

    :cond_3
    sget-object p0, Lq0/z$a;->b:Lq0/z$a;

    :goto_1
    return-object p0

    .line 11
    :cond_4
    sget-object p0, Lr0/u0$b;->b:Lr0/u0$b;

    .line 12
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t update "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ll3/l;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Worker to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p4}, Ll3/l;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Worker. Update operation must preserve worker\'s type."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Worker with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final g(Landroidx/work/impl/WorkDatabase;Lz0/u;Lz0/u;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 39

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    const-string v5, "$workDatabase"

    move-object/from16 v15, p0

    invoke-static {v15, v5}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$oldWorkSpec"

    invoke-static {v0, v5}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$newWorkSpec"

    move-object/from16 v13, p2

    invoke-static {v13, v5}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$schedulers"

    invoke-static {v1, v5}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$workSpecId"

    invoke-static {v2, v5}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$tags"

    invoke-static {v3, v5}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v14

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->K()Lz0/z;

    move-result-object v11

    .line 3
    iget-object v6, v0, Lz0/u;->b:Lq0/y$c;

    .line 4
    iget v5, v0, Lz0/u;->k:I

    move/from16 v18, v5

    .line 5
    iget-wide v7, v0, Lz0/u;->n:J

    move-wide/from16 v22, v7

    .line 6
    invoke-virtual/range {p1 .. p1}, Lz0/u;->f()I

    move-result v5

    const/4 v12, 0x1

    add-int/lit8 v31, v5, 0x1

    .line 7
    invoke-virtual/range {p1 .. p1}, Lz0/u;->i()I

    move-result v30

    .line 8
    invoke-virtual/range {p1 .. p1}, Lz0/u;->g()J

    move-result-wide v32

    .line 9
    invoke-virtual/range {p1 .. p1}, Lz0/u;->h()I

    move-result v34

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    move-object v0, v11

    move-wide/from16 v11, v16

    move-object/from16 v38, v14

    move-wide/from16 v13, v16

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v35, 0x0

    const v36, 0x43dbfd

    const/16 v37, 0x0

    .line 10
    invoke-static/range {v4 .. v37}, Lz0/u;->e(Lz0/u;Ljava/lang/String;Lq0/y$c;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLq0/d;ILq0/a;JJJJZLq0/s;IIJIIILjava/lang/Object;)Lz0/u;

    move-result-object v4

    .line 11
    invoke-virtual/range {p2 .. p2}, Lz0/u;->h()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 12
    invoke-virtual/range {p2 .. p2}, Lz0/u;->g()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lz0/u;->n(J)V

    .line 13
    invoke-virtual {v4}, Lz0/u;->h()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lz0/u;->o(I)V

    .line 14
    :cond_0
    invoke-static {v1, v4}, La1/d;->b(Ljava/util/List;Lz0/u;)Lz0/u;

    move-result-object v1

    move-object/from16 v4, v38

    invoke-interface {v4, v1}, Lz0/v;->q(Lz0/u;)V

    .line 15
    invoke-interface {v0, v2}, Lz0/z;->a(Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, v2, v3}, Lz0/z;->d(Ljava/lang/String;Ljava/util/Set;)V

    if-nez p6, :cond_1

    const-wide/16 v0, -0x1

    .line 17
    invoke-interface {v4, v2, v0, v1}, Lz0/v;->t(Ljava/lang/String;J)I

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->I()Lz0/r;

    move-result-object v0

    invoke-interface {v0, v2}, Lz0/r;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
