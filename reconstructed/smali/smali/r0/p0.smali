.class public Lr0/p0;
.super Lq0/z;
.source "WorkManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/p0$a;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String;

.field public static m:Lr0/p0;

.field public static n:Lr0/p0;

.field public static final o:Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/work/a;

.field public c:Landroidx/work/impl/WorkDatabase;

.field public d:Lc1/b;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr0/w;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lr0/u;

.field public g:La1/m;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;

.field public volatile j:Landroidx/work/multiprocess/j;

.field public final k:Lx0/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    .line 1
    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr0/p0;->l:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lr0/p0;->m:Lr0/p0;

    .line 3
    sput-object v0, Lr0/p0;->n:Lr0/p0;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr0/p0;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lr0/u;Lx0/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/a;",
            "Lc1/b;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lr0/w;",
            ">;",
            "Lr0/u;",
            "Lx0/m;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq0/z;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lr0/p0;->h:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lr0/p0$a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lq0/n$a;

    invoke-virtual {p2}, Landroidx/work/a;->j()I

    move-result v1

    invoke-direct {v0, v1}, Lq0/n$a;-><init>(I)V

    invoke-static {v0}, Lq0/n;->h(Lq0/n;)V

    .line 6
    iput-object p1, p0, Lr0/p0;->a:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lr0/p0;->d:Lc1/b;

    .line 8
    iput-object p4, p0, Lr0/p0;->c:Landroidx/work/impl/WorkDatabase;

    .line 9
    iput-object p6, p0, Lr0/p0;->f:Lr0/u;

    .line 10
    iput-object p7, p0, Lr0/p0;->k:Lx0/m;

    .line 11
    iput-object p2, p0, Lr0/p0;->b:Landroidx/work/a;

    .line 12
    iput-object p5, p0, Lr0/p0;->e:Ljava/util/List;

    .line 13
    new-instance p6, La1/m;

    invoke-direct {p6, p4}, La1/m;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object p6, p0, Lr0/p0;->g:La1/m;

    .line 14
    iget-object p4, p0, Lr0/p0;->f:Lr0/u;

    .line 15
    invoke-interface {p3}, Lc1/b;->c()Lc1/a;

    move-result-object p3

    iget-object p6, p0, Lr0/p0;->c:Landroidx/work/impl/WorkDatabase;

    .line 16
    invoke-static {p5, p4, p3, p6, p2}, Lr0/z;->g(Ljava/util/List;Lr0/u;Ljava/util/concurrent/Executor;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;)V

    .line 17
    iget-object p2, p0, Lr0/p0;->d:Lc1/b;

    new-instance p3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {p3, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Lr0/p0;)V

    invoke-interface {p2, p3}, Lc1/b;->a(Ljava/lang/Runnable;)V

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static f(Landroid/content/Context;Landroidx/work/a;)V
    .locals 3

    .line 1
    sget-object v0, Lr0/p0;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lr0/p0;->m:Lr0/p0;

    if-eqz v1, :cond_1

    sget-object v2, Lr0/p0;->n:Lr0/p0;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 5
    sget-object v1, Lr0/p0;->n:Lr0/p0;

    if-nez v1, :cond_2

    .line 6
    invoke-static {p0, p1}, Landroidx/work/impl/a;->c(Landroid/content/Context;Landroidx/work/a;)Lr0/p0;

    move-result-object p0

    sput-object p0, Lr0/p0;->n:Lr0/p0;

    .line 7
    :cond_2
    sget-object p0, Lr0/p0;->n:Lr0/p0;

    sput-object p0, Lr0/p0;->m:Lr0/p0;

    .line 8
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static g()Z
    .locals 3

    invoke-static {}, Lr0/p0;->n()Lr0/p0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static n()Lr0/p0;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lr0/p0;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lr0/p0;->m:Lr0/p0;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    sget-object v1, Lr0/p0;->n:Lr0/p0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static o(Landroid/content/Context;)Lr0/p0;
    .locals 2

    .line 1
    sget-object v0, Lr0/p0;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lr0/p0;->n()Lr0/p0;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 4
    instance-of v1, p0, Landroidx/work/a$c;

    if-eqz v1, :cond_0

    .line 5
    move-object v1, p0

    check-cast v1, Landroidx/work/a$c;

    .line 6
    invoke-interface {v1}, Landroidx/work/a$c;->a()Landroidx/work/a;

    move-result-object v1

    .line 7
    invoke-static {p0, v1}, Lr0/p0;->f(Landroid/content/Context;Landroidx/work/a;)V

    .line 8
    invoke-static {p0}, Lr0/p0;->o(Landroid/content/Context;)Lr0/p0;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public A(Lz0/m;)V
    .locals 4

    iget-object v0, p0, Lr0/p0;->d:Lc1/b;

    new-instance v1, La1/s;

    iget-object v2, p0, Lr0/p0;->f:Lr0/u;

    new-instance v3, Lr0/a0;

    invoke-direct {v3, p1}, Lr0/a0;-><init>(Lz0/m;)V

    const/4 p1, 0x1

    invoke-direct {v1, v2, v3, p1}, La1/s;-><init>(Lr0/u;Lr0/a0;Z)V

    invoke-interface {v0, v1}, Lc1/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final B()V
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;

    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient;->j:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lr0/p0;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lr0/p0;->a:Landroid/content/Context;

    aput-object v2, v1, v4

    aput-object p0, v1, v5

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/j;

    iput-object v0, p0, Lr0/p0;->j:Landroidx/work/multiprocess/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Lr0/p0;->l:Ljava/lang/String;

    const-string v3, "Unable to initialize multi-process support"

    invoke-virtual {v1, v2, v3, v0}, Lq0/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)Lq0/r;
    .locals 1

    .line 1
    invoke-static {p1, p0}, La1/b;->e(Ljava/lang/String;Lr0/p0;)La1/b;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lr0/p0;->d:Lc1/b;

    invoke-interface {v0, p1}, Lc1/b;->a(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, La1/b;->f()Lq0/r;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Lq0/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lq0/b0;",
            ">;)",
            "Lq0/r;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lr0/c0;

    invoke-direct {v0, p0, p1}, Lr0/c0;-><init>(Lr0/p0;Ljava/util/List;)V

    invoke-virtual {v0}, Lr0/c0;->a()Lq0/r;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;Lq0/f;Lq0/t;)Lq0/r;
    .locals 1

    .line 1
    sget-object v0, Lq0/f;->c:Lq0/f;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-static {p0, p1, p3}, Lr0/u0;->c(Lr0/p0;Ljava/lang/String;Lq0/b0;)Lq0/r;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lr0/p0;->k(Ljava/lang/String;Lq0/f;Lq0/t;)Lr0/c0;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lr0/c0;->a()Lq0/r;

    move-result-object p1

    return-object p1
.end method

.method public h()Lq0/r;
    .locals 2

    .line 1
    invoke-static {p0}, La1/b;->b(Lr0/p0;)La1/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lr0/p0;->d:Lc1/b;

    invoke-interface {v1, v0}, Lc1/b;->a(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, La1/b;->f()Lq0/r;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lq0/r;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p0, v0}, La1/b;->d(Ljava/lang/String;Lr0/p0;Z)La1/b;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lr0/p0;->d:Lc1/b;

    invoke-interface {v0, p1}, Lc1/b;->a(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, La1/b;->f()Lq0/r;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/util/UUID;)Lq0/r;
    .locals 1

    .line 1
    invoke-static {p1, p0}, La1/b;->c(Ljava/util/UUID;Lr0/p0;)La1/b;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lr0/p0;->d:Lc1/b;

    invoke-interface {v0, p1}, Lc1/b;->a(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, La1/b;->f()Lq0/r;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Lq0/f;Lq0/t;)Lr0/c0;
    .locals 1

    .line 1
    sget-object v0, Lq0/f;->b:Lq0/f;

    if-ne p2, v0, :cond_0

    .line 2
    sget-object p2, Lq0/g;->b:Lq0/g;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lq0/g;->a:Lq0/g;

    .line 4
    :goto_0
    new-instance v0, Lr0/c0;

    .line 5
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lr0/c0;-><init>(Lr0/p0;Ljava/lang/String;Lq0/g;Ljava/util/List;)V

    return-object v0
.end method

.method public l()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lr0/p0;->a:Landroid/content/Context;

    return-object v0
.end method

.method public m()Landroidx/work/a;
    .locals 1

    iget-object v0, p0, Lr0/p0;->b:Landroidx/work/a;

    return-object v0
.end method

.method public p()La1/m;
    .locals 1

    iget-object v0, p0, Lr0/p0;->g:La1/m;

    return-object v0
.end method

.method public q()Lr0/u;
    .locals 1

    iget-object v0, p0, Lr0/p0;->f:Lr0/u;

    return-object v0
.end method

.method public r()Landroidx/work/multiprocess/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lr0/p0;->j:Landroidx/work/multiprocess/j;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lr0/p0;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lr0/p0;->j:Landroidx/work/multiprocess/j;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lr0/p0;->B()V

    .line 5
    iget-object v1, p0, Lr0/p0;->j:Landroidx/work/multiprocess/j;

    if-nez v1, :cond_1

    iget-object v1, p0, Lr0/p0;->b:Landroidx/work/a;

    .line 6
    invoke-virtual {v1}, Landroidx/work/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Invalid multiprocess configuration. Define an `implementation` dependency on :work:work-multiprocess library"

    .line 8
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Lr0/p0;->j:Landroidx/work/multiprocess/j;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr0/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr0/p0;->e:Ljava/util/List;

    return-object v0
.end method

.method public t()Lx0/m;
    .locals 1

    iget-object v0, p0, Lr0/p0;->k:Lx0/m;

    return-object v0
.end method

.method public u()Landroidx/work/impl/WorkDatabase;
    .locals 1

    iget-object v0, p0, Lr0/p0;->c:Landroidx/work/impl/WorkDatabase;

    return-object v0
.end method

.method public v(Lq0/a0;)Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/a0;",
            ")",
            "Lr2/a<",
            "Ljava/util/List<",
            "Lq0/y;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, La1/r;->a(Lr0/p0;Lq0/a0;)La1/r;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lr0/p0;->d:Lc1/b;

    invoke-interface {v0}, Lc1/b;->c()Lc1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, La1/r;->b()Lr2/a;

    move-result-object p1

    return-object p1
.end method

.method public w()Lc1/b;
    .locals 1

    iget-object v0, p0, Lr0/p0;->d:Lc1/b;

    return-object v0
.end method

.method public x()V
    .locals 2

    .line 1
    sget-object v0, Lr0/p0;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lr0/p0;->h:Z

    .line 3
    iget-object v1, p0, Lr0/p0;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lr0/p0;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
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

.method public y()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lr0/p0;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu0/b;->a(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v0

    invoke-interface {v0}, Lz0/v;->z()I

    .line 3
    invoke-virtual {p0}, Lr0/p0;->m()Landroidx/work/a;

    move-result-object v0

    invoke-virtual {p0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lr0/p0;->s()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lr0/z;->h(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public z(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 1
    sget-object v0, Lr0/p0;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr0/p0;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 4
    :cond_0
    iput-object p1, p0, Lr0/p0;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 5
    iget-boolean v1, p0, Lr0/p0;->h:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lr0/p0;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
