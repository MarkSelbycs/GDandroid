.class public Landroidx/work/impl/background/systemjob/SystemJobService;
.super Landroid/app/job/JobService;
.source "SystemJobService.java"

# interfaces
.implements Lr0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemjob/SystemJobService$a;,
        Landroidx/work/impl/background/systemjob/SystemJobService$b;,
        Landroidx/work/impl/background/systemjob/SystemJobService$c;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public a:Lr0/p0;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz0/m;",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr0/b0;

.field public d:Lr0/n0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobService"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Lr0/b0;

    invoke-direct {v0}, Lr0/b0;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lr0/b0;

    return-void
.end method

.method public static a(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, -0x200

    :pswitch_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/app/job/JobParameters;)Lz0/m;
    .locals 3

    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lz0/m;

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXTRA_WORK_SPEC_GENERATION"

    .line 4
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, v0, p0}, Lz0/m;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public c(Lz0/m;Z)V
    .locals 4

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " executed on JobScheduler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobParameters;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lr0/b0;

    invoke-virtual {v0, p1}, Lr0/b0;->c(Lz0/m;)Lr0/a0;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, v1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lr0/p0;->o(Landroid/content/Context;)Lr0/p0;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Lr0/p0;

    .line 3
    invoke-virtual {v0}, Lr0/p0;->q()Lr0/u;

    move-result-object v0

    .line 4
    new-instance v1, Lr0/o0;

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Lr0/p0;

    .line 5
    invoke-virtual {v2}, Lr0/p0;->w()Lc1/b;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lr0/o0;-><init>(Lr0/u;Lc1/b;)V

    iput-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Lr0/n0;

    .line 6
    invoke-virtual {v0, p0}, Lr0/u;->e(Lr0/f;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    const-class v1, Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->e:Ljava/lang/String;

    const-string v2, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer."

    invoke-virtual {v0, v1, v2}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate()."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Lr0/p0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lr0/p0;->q()Lr0/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr0/u;->p(Lr0/f;)V

    :cond_0
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Lr0/p0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobService;->e:Ljava/lang/String;

    const-string v4, "WorkManager is not initialized; requesting retry."

    invoke-virtual {v0, v3, v4}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v2

    .line 4
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->b(Landroid/app/job/JobParameters;)Lz0/m;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->e:Ljava/lang/String;

    const-string v1, "WorkSpec id not found!"

    invoke-virtual {p1, v0, v1}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 6
    :cond_1
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/Map;

    monitor-enter v3

    .line 7
    :try_start_0
    iget-object v4, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job is already being executed by SystemJobService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    monitor-exit v3

    return v2

    .line 10
    :cond_2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    sget-object v4, Landroidx/work/impl/background/systemjob/SystemJobService;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartJob for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    new-instance v2, Landroidx/work/WorkerParameters$a;

    invoke-direct {v2}, Landroidx/work/WorkerParameters$a;-><init>()V

    .line 14
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$a;->b(Landroid/app/job/JobParameters;)[Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 15
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$a;->b(Landroid/app/job/JobParameters;)[Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Landroidx/work/WorkerParameters$a;->b:Ljava/util/List;

    .line 16
    :cond_3
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$a;->a(Landroid/app/job/JobParameters;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 17
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$a;->a(Landroid/app/job/JobParameters;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Landroidx/work/WorkerParameters$a;->a:Ljava/util/List;

    .line 18
    :cond_4
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$b;->a(Landroid/app/job/JobParameters;)Landroid/net/Network;

    move-result-object p1

    iput-object p1, v2, Landroidx/work/WorkerParameters$a;->c:Landroid/net/Network;

    .line 19
    iget-object p1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Lr0/n0;

    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lr0/b0;

    invoke-virtual {v3, v0}, Lr0/b0;->d(Lz0/m;)Lr0/a0;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lr0/n0;->d(Lr0/a0;Landroidx/work/WorkerParameters$a;)V

    return v1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Lr0/p0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->e:Ljava/lang/String;

    const-string v2, "WorkManager is not initialized; requesting retry."

    invoke-virtual {p1, v0, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->b(Landroid/app/job/JobParameters;)Lz0/m;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->e:Ljava/lang/String;

    const-string v1, "WorkSpec id not found!"

    invoke-virtual {p1, v0, v1}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobService;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStopJob for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/Map;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lr0/b0;

    invoke-virtual {v2, v0}, Lr0/b0;->c(Lz0/m;)Lr0/a0;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 10
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_2

    .line 11
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$c;->a(Landroid/app/job/JobParameters;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 p1, -0x200

    .line 12
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Lr0/n0;

    invoke-interface {v3, v2, p1}, Lr0/n0;->a(Lr0/a0;I)V

    .line 13
    :cond_3
    iget-object p1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Lr0/p0;

    invoke-virtual {p1}, Lr0/p0;->q()Lr0/u;

    move-result-object p1

    invoke-virtual {v0}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/u;->j(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
