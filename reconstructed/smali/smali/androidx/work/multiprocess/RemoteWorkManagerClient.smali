.class public Landroidx/work/multiprocess/RemoteWorkManagerClient;
.super Landroidx/work/multiprocess/j;
.source "RemoteWorkManagerClient.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanKeepAnnotation"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/RemoteWorkManagerClient$d;,
        Landroidx/work/multiprocess/RemoteWorkManagerClient$e;,
        Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public a:Landroidx/work/multiprocess/RemoteWorkManagerClient$d;

.field public final b:Landroid/content/Context;

.field public final c:Lr0/p0;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/lang/Object;

.field public volatile f:J

.field public final g:J

.field public final h:Landroid/os/Handler;

.field public final i:Landroidx/work/multiprocess/RemoteWorkManagerClient$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RemoteWorkManagerClient"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lr0/p0;)V
    .locals 2

    const-wide/32 v0, 0xea60

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;-><init>(Landroid/content/Context;Lr0/p0;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lr0/p0;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/work/multiprocess/j;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->c:Lr0/p0;

    .line 5
    invoke-virtual {p2}, Lr0/p0;->w()Lc1/b;

    move-result-object p1

    invoke-interface {p1}, Lc1/b;->c()Lc1/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->d:Ljava/util/concurrent/Executor;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient$d;

    .line 8
    new-instance p1, Landroidx/work/multiprocess/RemoteWorkManagerClient$e;

    invoke-direct {p1, p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient$e;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->i:Landroidx/work/multiprocess/RemoteWorkManagerClient$e;

    .line 9
    iput-wide p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->g:J

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Ls/b;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->h:Landroid/os/Handler;

    return-void
.end method

.method public static p(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/multiprocess/RemoteWorkManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Lq0/h;)Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lq0/h;",
            ")",
            "Lr2/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$a;

    invoke-direct {v0, p0, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerClient$a;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Ljava/lang/String;Lq0/h;)V

    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->e(Landroidx/work/multiprocess/f;)Lr2/a;

    move-result-object p1

    .line 2
    sget-object p2, Landroidx/work/multiprocess/d;->a:Li/a;

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->d:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v0}, Landroidx/work/multiprocess/d;->a(Lr2/a;Li/a;Ljava/util/concurrent/Executor;)Lr2/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/UUID;Landroidx/work/b;)Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/b;",
            ")",
            "Lr2/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$c;

    invoke-direct {v0, p0, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerClient$c;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Ljava/util/UUID;Landroidx/work/b;)V

    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->e(Landroidx/work/multiprocess/f;)Lr2/a;

    move-result-object p1

    .line 2
    sget-object p2, Landroidx/work/multiprocess/d;->a:Li/a;

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->d:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v0}, Landroidx/work/multiprocess/d;->a(Lr2/a;Li/a;Ljava/util/concurrent/Executor;)Lr2/a;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->j:Ljava/lang/String;

    const-string v3, "Cleaning up."

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient$d;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(Landroidx/work/multiprocess/f;)Lr2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/multiprocess/f<",
            "Landroidx/work/multiprocess/IWorkManagerImpl;",
            ">;)",
            "Lr2/a<",
            "[B>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->i()Lr2/a;

    move-result-object v0

    new-instance v1, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V

    invoke-virtual {p0, v0, p1, v1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->f(Lr2/a;Landroidx/work/multiprocess/f;Landroidx/work/multiprocess/RemoteCallback;)Lr2/a;

    move-result-object p1

    return-object p1
.end method

.method public f(Lr2/a;Landroidx/work/multiprocess/f;Landroidx/work/multiprocess/RemoteCallback;)Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/a<",
            "Landroidx/work/multiprocess/IWorkManagerImpl;",
            ">;",
            "Landroidx/work/multiprocess/f<",
            "Landroidx/work/multiprocess/IWorkManagerImpl;",
            ">;",
            "Landroidx/work/multiprocess/RemoteCallback;",
            ")",
            "Lr2/a<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;

    invoke-direct {v0, p0, p1, p3, p2}, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Lr2/a;Landroidx/work/multiprocess/RemoteCallback;Landroidx/work/multiprocess/f;)V

    iget-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, p2}, Lr2/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-virtual {p3}, Landroidx/work/multiprocess/RemoteCallback;->getFuture()Lr2/a;

    move-result-object p1

    return-object p1
.end method

.method public g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->b:Landroid/content/Context;

    return-object v0
.end method

.method public h()Landroidx/work/multiprocess/RemoteWorkManagerClient$d;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient$d;

    return-object v0
.end method

.method public i()Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Landroidx/work/multiprocess/IWorkManagerImpl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->p(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->j(Landroid/content/Intent;)Lr2/a;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/content/Intent;)Lr2/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lr2/a<",
            "Landroidx/work/multiprocess/IWorkManagerImpl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->f:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->f:J

    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient$d;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->j:Ljava/lang/String;

    const-string v3, "Creating a new session"

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroidx/work/multiprocess/RemoteWorkManagerClient$d;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient$d;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V

    iput-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->b:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient$d;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to bind to service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->q(Landroidx/work/multiprocess/RemoteWorkManagerClient$d;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_2
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient$d;

    invoke-virtual {p0, v1, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->q(Landroidx/work/multiprocess/RemoteWorkManagerClient$d;Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->h:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->i:Landroidx/work/multiprocess/RemoteWorkManagerClient$e;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient$d;

    iget-object p1, p1, Landroidx/work/multiprocess/RemoteWorkManagerClient$d;->a:Lb1/c;

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public k()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->h:Landroid/os/Handler;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->f:J

    return-wide v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->g:J

    return-wide v0
.end method

.method public o()Landroidx/work/multiprocess/RemoteWorkManagerClient$e;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->i:Landroidx/work/multiprocess/RemoteWorkManagerClient$e;

    return-object v0
.end method

.method public final q(Landroidx/work/multiprocess/RemoteWorkManagerClient$d;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient;->j:Ljava/lang/String;

    const-string v2, "Unable to bind to service"

    invoke-virtual {v0, v1, v2, p2}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p1, Landroidx/work/multiprocess/RemoteWorkManagerClient$d;->a:Lb1/c;

    invoke-virtual {p1, p2}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    return-void
.end method
