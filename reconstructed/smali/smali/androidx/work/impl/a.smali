.class public final Landroidx/work/impl/a;
.super Ljava/lang/Object;
.source "WorkManagerImplExt.kt"


# direct methods
.method public static final synthetic a(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Lx0/m;Lr0/u;)Ljava/util/List;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/work/impl/a;->b(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Lx0/m;Lr0/u;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Lx0/m;Lr0/u;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/a;",
            "Lc1/b;",
            "Landroidx/work/impl/WorkDatabase;",
            "Lx0/m;",
            "Lr0/u;",
            ")",
            "Ljava/util/List<",
            "Lr0/w;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lr0/w;

    .line 1
    invoke-static {p0, p3, p1}, Lr0/z;->c(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;)Lr0/w;

    move-result-object p3

    const-string v1, "createBestAvailableBackg\u2026kDatabase, configuration)"

    invoke-static {p3, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 2
    new-instance p3, Ls0/b;

    .line 3
    new-instance v7, Lr0/o0;

    invoke-direct {v7, p5, p2}, Lr0/o0;-><init>(Lr0/u;Lc1/b;)V

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move-object v8, p2

    .line 4
    invoke-direct/range {v2 .. v8}, Ls0/b;-><init>(Landroid/content/Context;Landroidx/work/a;Lx0/m;Lr0/u;Lr0/n0;Lc1/b;)V

    const/4 p0, 0x1

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lb3/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroid/content/Context;Landroidx/work/a;)Lr0/p0;
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Landroidx/work/impl/a;->e(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Lx0/m;Lr0/u;Ll3/t;ILjava/lang/Object;)Lr0/p0;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Lx0/m;Lr0/u;Ll3/t;)Lr0/p0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/a;",
            "Lc1/b;",
            "Landroidx/work/impl/WorkDatabase;",
            "Lx0/m;",
            "Lr0/u;",
            "Ll3/t<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Landroidx/work/a;",
            "-",
            "Lc1/b;",
            "-",
            "Landroidx/work/impl/WorkDatabase;",
            "-",
            "Lx0/m;",
            "-",
            "Lr0/u;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lr0/w;",
            ">;>;)",
            "Lr0/p0;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workTaskExecutor"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workDatabase"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackers"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processor"

    invoke-static {p5, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersCreator"

    invoke-static {p6, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-interface/range {v0 .. v6}, Ll3/t;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    move-object v5, p6

    check-cast v5, Ljava/util/List;

    .line 2
    new-instance p6, Lr0/p0;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p6

    move-object v7, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lr0/p0;-><init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lr0/u;Lx0/m;)V

    return-object p6
.end method

.method public static synthetic e(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Lx0/m;Lr0/u;Ll3/t;ILjava/lang/Object;)Lr0/p0;
    .locals 12

    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_0

    .line 1
    new-instance v0, Lc1/c;

    invoke-virtual {p1}, Landroidx/work/a;->m()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lc1/c;-><init>(Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p7, 0x8

    const-string v2, "context.applicationContext"

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Landroidx/work/impl/WorkDatabase;->p:Landroidx/work/impl/WorkDatabase$a;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lc1/b;->c()Lc1/a;

    move-result-object v4

    const-string v5, "workTaskExecutor.serialTaskExecutor"

    invoke-static {v4, v5}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroidx/work/a;->a()Lq0/b;

    move-result-object v5

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/work/R$bool;->workmanager_test_configuration:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 6
    invoke-virtual {v1, v3, v4, v5, v6}, Landroidx/work/impl/WorkDatabase$a;->b(Landroid/content/Context;Ljava/util/concurrent/Executor;Lq0/b;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v3, p7, 0x10

    if-eqz v3, :cond_2

    .line 7
    new-instance v11, Lx0/m;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v2, v11

    move-object v4, v0

    invoke-direct/range {v2 .. v10}, Lx0/m;-><init>(Landroid/content/Context;Lc1/b;Lx0/g;Lx0/c;Lx0/g;Lx0/g;ILm3/g;)V

    goto :goto_2

    :cond_2
    move-object/from16 v11, p4

    :goto_2
    and-int/lit8 v2, p7, 0x20

    if-eqz v2, :cond_3

    .line 8
    new-instance v2, Lr0/u;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, p1

    .line 10
    invoke-direct {v2, v3, p1, v0, v1}, Lr0/u;-><init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;)V

    goto :goto_3

    :cond_3
    move-object v4, p1

    move-object/from16 v2, p5

    :goto_3
    and-int/lit8 v3, p7, 0x40

    if-eqz v3, :cond_4

    .line 11
    sget-object v3, Landroidx/work/impl/a$a;->o:Landroidx/work/impl/a$a;

    goto :goto_4

    :cond_4
    move-object/from16 v3, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v0

    move-object/from16 p5, v1

    move-object/from16 p6, v11

    move-object/from16 p7, v2

    move-object/from16 p8, v3

    .line 12
    invoke-static/range {p2 .. p8}, Landroidx/work/impl/a;->d(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Lx0/m;Lr0/u;Ll3/t;)Lr0/p0;

    move-result-object v0

    return-object v0
.end method
