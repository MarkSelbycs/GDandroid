.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "DiagnosticsWorker.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/c$a;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/work/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lr0/p0;->o(Landroid/content/Context;)Lr0/p0;

    move-result-object v0

    const-string v1, "getInstance(applicationContext)"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    const-string v2, "workManager.workDatabase"

    invoke-static {v1, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->H()Lz0/o;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->K()Lz0/z;

    move-result-object v4

    .line 6
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->G()Lz0/j;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lr0/p0;->m()Landroidx/work/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/a;->a()Lq0/b;

    move-result-object v0

    invoke-interface {v0}, Lq0/b;->a()J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 8
    invoke-interface {v2, v5, v6}, Lz0/v;->C(J)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v2}, Lz0/v;->j()Ljava/util/List;

    move-result-object v5

    const/16 v6, 0xc8

    .line 10
    invoke-interface {v2, v6}, Lz0/v;->w(I)Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 12
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v6

    invoke-static {}, Ld1/e;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Recently completed work:\n\n"

    invoke-virtual {v6, v7, v8}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v6

    .line 14
    invoke-static {}, Ld1/e;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v1, v0}, Ld1/e;->b(Lz0/o;Lz0/z;Lz0/j;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v6, v7, v0}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 17
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    invoke-static {}, Ld1/e;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Running work:\n\n"

    invoke-virtual {v0, v6, v7}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    invoke-static {}, Ld1/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v1, v5}, Ld1/e;->b(Lz0/o;Lz0/z;Lz0/j;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 20
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    invoke-static {}, Ld1/e;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Enqueued work:\n\n"

    invoke-virtual {v0, v5, v6}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    invoke-static {}, Ld1/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v1, v2}, Ld1/e;->b(Lz0/o;Lz0/z;Lz0/j;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_2
    invoke-static {}, Landroidx/work/c$a;->e()Landroidx/work/c$a;

    move-result-object v0

    const-string v1, "success()"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
