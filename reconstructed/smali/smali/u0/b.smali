.class public Lu0/b;
.super Ljava/lang/Object;
.source "SystemJobScheduler.java"

# interfaces
.implements Lr0/w;


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/job/JobScheduler;

.field public final c:Lu0/a;

.field public final d:Landroidx/work/impl/WorkDatabase;

.field public final e:Landroidx/work/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "SystemJobScheduler"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu0/b;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;)V
    .locals 7

    const-string v0, "jobscheduler"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/job/JobScheduler;

    new-instance v6, Lu0/a;

    .line 2
    invoke-virtual {p3}, Landroidx/work/a;->a()Lq0/b;

    move-result-object v0

    invoke-direct {v6, p1, v0}, Lu0/a;-><init>(Landroid/content/Context;Lq0/b;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Lu0/b;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;Landroid/app/job/JobScheduler;Lu0/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;Landroid/app/job/JobScheduler;Lu0/a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lu0/b;->a:Landroid/content/Context;

    .line 6
    iput-object p4, p0, Lu0/b;->b:Landroid/app/job/JobScheduler;

    .line 7
    iput-object p5, p0, Lu0/b;->c:Lu0/a;

    .line 8
    iput-object p2, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    .line 9
    iput-object p3, p0, Lu0/b;->e:Landroidx/work/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, v0}, Lu0/b;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 5
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lu0/b;->c(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Landroid/app/job/JobScheduler;I)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Lu0/b;->f:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "Exception while trying to cancel job (%d)"

    .line 5
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v1, p1, p0}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static f(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lu0/b;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 4
    invoke-static {v0}, Lu0/b;->h(Landroid/app/job/JobInfo;)Lz0/m;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Lu0/b;->f:Ljava/lang/String;

    const-string v3, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v1, v2, v3, p1}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    .line 6
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static h(Landroid/app/job/JobInfo;)Lz0/m;
    .locals 3

    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 1
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4
    new-instance v2, Lz0/m;

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lz0/m;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;)Z
    .locals 6

    const-string v0, "jobscheduler"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 2
    invoke-static {p0, v0}, Lu0/b;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->G()Lz0/j;

    move-result-object v1

    invoke-interface {v1}, Lz0/j;->e()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    if-eqz p0, :cond_2

    .line 6
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 8
    invoke-static {v3}, Lu0/b;->h(Landroid/app/job/JobInfo;)Lz0/m;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v5}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v0, v3}, Lu0/b;->c(Landroid/app/job/JobScheduler;I)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p0

    sget-object v0, Lu0/b;->f:Ljava/lang/String;

    const-string v2, "Reconciling jobs"

    invoke-virtual {p0, v0, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_6

    .line 14
    invoke-virtual {p1}, Landroidx/room/i0;->e()V

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object p0

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 17
    invoke-interface {p0, v1, v3, v4}, Lz0/v;->t(Ljava/lang/String;J)I

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {p1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p1}, Landroidx/room/i0;->i()V

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroidx/room/i0;->i()V

    .line 20
    throw p0

    :cond_6
    :goto_3
    return v2
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lu0/b;->b:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Lu0/b;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    iget-object v2, p0, Lu0/b;->b:Landroid/app/job/JobScheduler;

    invoke-static {v2, v1}, Lu0/b;->c(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->G()Lz0/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lz0/j;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public varargs e([Lz0/u;)V
    .locals 8

    .line 1
    new-instance v0, La1/g;

    iget-object v1, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    invoke-direct {v0, v1}, La1/g;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 3
    iget-object v4, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/room/i0;->e()V

    .line 4
    :try_start_0
    iget-object v4, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v4

    iget-object v5, v3, Lz0/u;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Lz0/v;->f(Ljava/lang/String;)Lz0/u;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Skipping scheduling "

    if-nez v4, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v4

    sget-object v6, Lu0/b;->f:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lz0/u;->a:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because it\'s no longer in the DB"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/room/i0;->B()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_1
    iget-object v3, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/room/i0;->i()V

    goto :goto_3

    .line 8
    :cond_0
    :try_start_2
    iget-object v4, v4, Lz0/u;->b:Lq0/y$c;

    sget-object v6, Lq0/y$c;->a:Lq0/y$c;

    if-eq v4, v6, :cond_1

    .line 9
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v4

    sget-object v6, Lu0/b;->f:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lz0/u;->a:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because it is no longer enqueued"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/room/i0;->B()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v3}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object v4

    .line 12
    iget-object v5, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->G()Lz0/j;

    move-result-object v5

    invoke-interface {v5, v4}, Lz0/j;->i(Lz0/m;)Lz0/i;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 13
    iget v6, v5, Lz0/i;->c:I

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lu0/b;->e:Landroidx/work/a;

    .line 14
    invoke-virtual {v6}, Landroidx/work/a;->i()I

    move-result v6

    iget-object v7, p0, Lu0/b;->e:Landroidx/work/a;

    .line 15
    invoke-virtual {v7}, Landroidx/work/a;->g()I

    move-result v7

    .line 16
    invoke-virtual {v0, v6, v7}, La1/g;->e(II)I

    move-result v6

    :goto_2
    if-nez v5, :cond_3

    .line 17
    invoke-static {v4, v6}, Lz0/l;->a(Lz0/m;I)Lz0/i;

    move-result-object v4

    .line 18
    iget-object v5, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->G()Lz0/j;

    move-result-object v5

    invoke-interface {v5, v4}, Lz0/j;->c(Lz0/i;)V

    .line 19
    :cond_3
    invoke-virtual {p0, v3, v6}, Lu0/b;->j(Lz0/u;I)V

    .line 20
    iget-object v3, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/room/i0;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 21
    iget-object v0, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 22
    throw p1

    :cond_4
    return-void
.end method

.method public j(Lz0/u;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lu0/b;->c:Lu0/a;

    invoke-virtual {v0, p1, p2}, Lu0/a;->a(Lz0/u;I)Landroid/app/job/JobInfo;

    move-result-object v0

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Lu0/b;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling work ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lz0/u;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Job ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3
    :try_start_0
    iget-object v4, p0, Lu0/b;->b:Landroid/app/job/JobScheduler;

    invoke-virtual {v4, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to schedule work ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lz0/u;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p1, Lz0/u;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lz0/u;->r:Lq0/s;

    sget-object v4, Lq0/s;->a:Lq0/s;

    if-ne v0, v4, :cond_1

    .line 6
    iput-boolean v3, p1, Lz0/u;->q:Z

    const-string v0, "Scheduling a non-expedited job (work ID %s)"

    new-array v4, v1, [Ljava/lang/Object;

    .line 7
    iget-object v5, p1, Lz0/u;->a:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lu0/b;->j(Lz0/u;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p2

    .line 10
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Lu0/b;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to schedule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    iget-object p2, p0, Lu0/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lu0/b;->b:Landroid/app/job/JobScheduler;

    invoke-static {p2, v0}, Lu0/b;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v3

    .line 13
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    iget-object p2, p0, Lu0/b;->d:Landroidx/work/impl/WorkDatabase;

    .line 15
    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object p2

    invoke-interface {p2}, Lz0/v;->v()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    const/4 p2, 0x2

    iget-object v1, p0, Lu0/b;->e:Landroidx/work/a;

    .line 16
    invoke-virtual {v1}, Landroidx/work/a;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p2

    const-string p2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 17
    invoke-static {v0, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Lu0/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iget-object p1, p0, Lu0/b;->e:Landroidx/work/a;

    invoke-virtual {p1}, Landroidx/work/a;->l()Lv/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 21
    invoke-interface {p1, v0}, Lv/a;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    .line 22
    :cond_2
    throw v0
.end method
