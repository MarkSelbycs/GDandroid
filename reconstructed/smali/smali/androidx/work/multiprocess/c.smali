.class public Landroidx/work/multiprocess/c;
.super Ljava/lang/Object;
.source "ListenableWorkerImplClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/c$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/Object;

.field public d:Landroidx/work/multiprocess/c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ListenableWorkerImplClient"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/c;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/work/multiprocess/c;->b:Ljava/util/concurrent/Executor;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public static d(Landroidx/work/multiprocess/c$b;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/c;->e:Ljava/lang/String;

    const-string v2, "Unable to bind to service"

    invoke-virtual {v0, v1, v2, p1}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p0, p0, Landroidx/work/multiprocess/c$b;->a:Lb1/c;

    invoke-virtual {p0, p1}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;Landroidx/work/multiprocess/f;)Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroidx/work/multiprocess/f<",
            "Landroidx/work/multiprocess/IListenableWorkerImpl;",
            ">;)",
            "Lr2/a<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/c;->c(Landroid/content/ComponentName;)Lr2/a;

    move-result-object p1

    .line 2
    new-instance v0, Landroidx/work/multiprocess/RemoteCallback;

    invoke-direct {v0}, Landroidx/work/multiprocess/RemoteCallback;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Landroidx/work/multiprocess/c;->b(Lr2/a;Landroidx/work/multiprocess/f;Landroidx/work/multiprocess/RemoteCallback;)Lr2/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lr2/a;Landroidx/work/multiprocess/f;Landroidx/work/multiprocess/RemoteCallback;)Lr2/a;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/a<",
            "Landroidx/work/multiprocess/IListenableWorkerImpl;",
            ">;",
            "Landroidx/work/multiprocess/f<",
            "Landroidx/work/multiprocess/IListenableWorkerImpl;",
            ">;",
            "Landroidx/work/multiprocess/RemoteCallback;",
            ")",
            "Lr2/a<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/c$a;

    invoke-direct {v0, p0, p1, p3, p2}, Landroidx/work/multiprocess/c$a;-><init>(Landroidx/work/multiprocess/c;Lr2/a;Landroidx/work/multiprocess/RemoteCallback;Landroidx/work/multiprocess/f;)V

    iget-object p2, p0, Landroidx/work/multiprocess/c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, p2}, Lr2/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-virtual {p3}, Landroidx/work/multiprocess/RemoteCallback;->getFuture()Lr2/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/ComponentName;)Lr2/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lr2/a<",
            "Landroidx/work/multiprocess/IListenableWorkerImpl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/multiprocess/c;->d:Landroidx/work/multiprocess/c$b;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/c;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Landroidx/work/multiprocess/c$b;

    invoke-direct {v1}, Landroidx/work/multiprocess/c$b;-><init>()V

    iput-object v1, p0, Landroidx/work/multiprocess/c;->d:Landroidx/work/multiprocess/c$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Landroidx/work/multiprocess/c;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/work/multiprocess/c;->d:Landroidx/work/multiprocess/c$b;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Landroidx/work/multiprocess/c;->d:Landroidx/work/multiprocess/c$b;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to bind to service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroidx/work/multiprocess/c;->d(Landroidx/work/multiprocess/c$b;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_2
    iget-object v1, p0, Landroidx/work/multiprocess/c;->d:Landroidx/work/multiprocess/c$b;

    invoke-static {v1, p1}, Landroidx/work/multiprocess/c;->d(Landroidx/work/multiprocess/c$b;Ljava/lang/Throwable;)V

    .line 12
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/work/multiprocess/c;->d:Landroidx/work/multiprocess/c$b;

    iget-object p1, p1, Landroidx/work/multiprocess/c$b;->a:Lb1/c;

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/multiprocess/c;->d:Landroidx/work/multiprocess/c$b;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/work/multiprocess/c;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroidx/work/multiprocess/c;->d:Landroidx/work/multiprocess/c$b;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
