.class public Lr0/u;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ly0/a;


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field public a:Landroid/os/PowerManager$WakeLock;

.field public b:Landroid/content/Context;

.field public c:Landroidx/work/a;

.field public d:Lc1/b;

.field public e:Landroidx/work/impl/WorkDatabase;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr0/w0;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr0/w0;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lr0/a0;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr0/f;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr0/u;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr0/u;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lr0/u;->c:Landroidx/work/a;

    .line 4
    iput-object p3, p0, Lr0/u;->d:Lc1/b;

    .line 5
    iput-object p4, p0, Lr0/u;->e:Landroidx/work/impl/WorkDatabase;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lr0/u;->g:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lr0/u;->f:Ljava/util/Map;

    .line 8
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lr0/u;->i:Ljava/util/Set;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr0/u;->j:Ljava/util/List;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lr0/u;->a:Landroid/os/PowerManager$WakeLock;

    .line 11
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/u;->k:Ljava/lang/Object;

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lr0/u;->h:Ljava/util/Map;

    return-void
.end method

.method public static synthetic b(Lr0/u;Lz0/m;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr0/u;->l(Lz0/m;Z)V

    return-void
.end method

.method public static synthetic c(Lr0/u;Ljava/util/ArrayList;Ljava/lang/String;)Lz0/u;
    .locals 0

    invoke-direct {p0, p1, p2}, Lr0/u;->m(Ljava/util/ArrayList;Ljava/lang/String;)Lz0/u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lr0/u;Lr2/a;Lr0/w0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr0/u;->n(Lr2/a;Lr0/w0;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Lr0/w0;I)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Lr0/w0;->g(I)V

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object p2, Lr0/u;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkerWrapper interrupted for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object p2, Lr0/u;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkerWrapper could not be found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic l(Lz0/m;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr0/u;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/f;

    .line 3
    invoke-interface {v2, p1, p2}, Lr0/f;->c(Lz0/m;Z)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic m(Ljava/util/ArrayList;Ljava/lang/String;)Lz0/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr0/u;->e:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->K()Lz0/z;

    move-result-object v0

    invoke-interface {v0, p2}, Lz0/z;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object p1, p0, Lr0/u;->e:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object p1

    invoke-interface {p1, p2}, Lz0/v;->f(Ljava/lang/String;)Lz0/u;

    move-result-object p1

    return-object p1
.end method

.method private synthetic n(Lr2/a;Lr0/w0;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 2
    :goto_0
    invoke-virtual {p0, p2, p1}, Lr0/u;->o(Lr0/w0;Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lq0/h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Lr0/u;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving WorkSpec ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") to the foreground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lr0/u;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/w0;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Lr0/u;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lr0/u;->b:Landroid/content/Context;

    const-string v3, "ProcessorForegroundLck"

    invoke-static {v2, v3}, La1/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lr0/u;->a:Landroid/os/PowerManager$WakeLock;

    .line 6
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7
    :cond_0
    iget-object v2, p0, Lr0/u;->f:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lr0/u;->b:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Lr0/w0;->d()Lz0/m;

    move-result-object v1

    .line 10
    invoke-static {p1, v1, p2}, Landroidx/work/impl/foreground/a;->f(Landroid/content/Context;Lz0/m;Lq0/h;)Landroid/content/Intent;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lr0/u;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Landroidx/core/content/a;->g(Landroid/content/Context;Landroid/content/Intent;)V

    .line 12
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

.method public e(Lr0/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr0/u;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f(Ljava/lang/String;)Lr0/w0;
    .locals 3

    .line 1
    iget-object v0, p0, Lr0/u;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/w0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 2
    iget-object v0, p0, Lr0/u;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/w0;

    .line 3
    :cond_1
    iget-object v2, p0, Lr0/u;->h:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lr0/u;->u()V

    :cond_2
    return-object v0
.end method

.method public g(Ljava/lang/String;)Lz0/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lr0/u;->h(Ljava/lang/String;)Lr0/w0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lr0/w0;->e()Lz0/u;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final h(Ljava/lang/String;)Lr0/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/u;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/w0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lr0/u;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lr0/w0;

    :cond_0
    return-object v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr0/u;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lr0/u;->h(Ljava/lang/String;)Lr0/w0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final o(Lr0/w0;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lr0/w0;->d()Lz0/m;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v2}, Lr0/u;->h(Ljava/lang/String;)Lr0/w0;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lr0/u;->f(Ljava/lang/String;)Lr0/w0;

    .line 6
    :cond_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v3, Lr0/u;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " executed; reschedule = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v3, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lr0/u;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/f;

    .line 10
    invoke-interface {v2, v1, p2}, Lr0/f;->c(Lz0/m;Z)V

    goto :goto_0

    .line 11
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

.method public p(Lr0/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr0/u;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final q(Lz0/m;Z)V
    .locals 2

    iget-object v0, p0, Lr0/u;->d:Lc1/b;

    invoke-interface {v0}, Lc1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lr0/s;

    invoke-direct {v1, p0, p1, p2}, Lr0/s;-><init>(Lr0/u;Lz0/m;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r(Lr0/a0;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr0/u;->s(Lr0/a0;Landroidx/work/WorkerParameters$a;)Z

    move-result p1

    return p1
.end method

.method public s(Lr0/a0;Landroidx/work/WorkerParameters$a;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Lr0/a0;->a()Lz0/m;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lr0/u;->e:Landroidx/work/impl/WorkDatabase;

    new-instance v3, Lr0/t;

    invoke-direct {v3, p0, v9, v1}, Lr0/t;-><init>(Lr0/u;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/room/i0;->z(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lz0/u;

    const/4 v2, 0x0

    if-nez v8, :cond_0

    .line 5
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object p2, Lr0/u;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t find WorkSpec for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0, v2}, Lr0/u;->q(Lz0/m;Z)V

    return v2

    .line 7
    :cond_0
    iget-object v10, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v10

    .line 8
    :try_start_0
    invoke-virtual {p0, v1}, Lr0/u;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object p2, p0, Lr0/u;->h:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 10
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/a0;

    .line 11
    invoke-virtual {v1}, Lr0/a0;->a()Lz0/m;

    move-result-object v1

    invoke-virtual {v1}, Lz0/m;->a()I

    move-result v1

    .line 12
    invoke-virtual {v0}, Lz0/m;->a()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 13
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object p2, Lr0/u;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Work "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is already enqueued for processing"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, v0, v2}, Lr0/u;->q(Lz0/m;Z)V

    .line 16
    :goto_0
    monitor-exit v10

    return v2

    .line 17
    :cond_2
    invoke-virtual {v8}, Lz0/u;->f()I

    move-result v3

    invoke-virtual {v0}, Lz0/m;->a()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 18
    invoke-virtual {p0, v0, v2}, Lr0/u;->q(Lz0/m;Z)V

    .line 19
    monitor-exit v10

    return v2

    .line 20
    :cond_3
    new-instance v11, Lr0/w0$c;

    iget-object v3, p0, Lr0/u;->b:Landroid/content/Context;

    iget-object v4, p0, Lr0/u;->c:Landroidx/work/a;

    iget-object v5, p0, Lr0/u;->d:Lc1/b;

    iget-object v7, p0, Lr0/u;->e:Landroidx/work/impl/WorkDatabase;

    move-object v2, v11

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Lr0/w0$c;-><init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;Ly0/a;Landroidx/work/impl/WorkDatabase;Lz0/u;Ljava/util/List;)V

    .line 21
    invoke-virtual {v11, p2}, Lr0/w0$c;->c(Landroidx/work/WorkerParameters$a;)Lr0/w0$c;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lr0/w0$c;->b()Lr0/w0;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lr0/w0;->c()Lr2/a;

    move-result-object v2

    .line 24
    new-instance v3, Lr0/r;

    invoke-direct {v3, p0, v2, p2}, Lr0/r;-><init>(Lr0/u;Lr2/a;Lr0/w0;)V

    iget-object v4, p0, Lr0/u;->d:Lc1/b;

    .line 25
    invoke-interface {v4}, Lc1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 26
    invoke-interface {v2, v3, v4}, Lr2/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 27
    iget-object v2, p0, Lr0/u;->g:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 29
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p1, p0, Lr0/u;->h:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object p1, p0, Lr0/u;->d:Lc1/b;

    invoke-interface {p1}, Lc1/b;->c()Lc1/a;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object p2, Lr0/u;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public t(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Lr0/u;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processor cancelling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lr0/u;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, p1}, Lr0/u;->f(Ljava/lang/String;)Lr0/w0;

    move-result-object v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {p1, v1, p2}, Lr0/u;->i(Ljava/lang/String;Lr0/w0;I)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr0/u;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lr0/u;->b:Landroid/content/Context;

    invoke-static {v1}, Landroidx/work/impl/foreground/a;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v2, p0, Lr0/u;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    sget-object v3, Lr0/u;->l:Ljava/lang/String;

    const-string v4, "Unable to stop foreground service"

    invoke-virtual {v2, v3, v4, v1}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    iget-object v1, p0, Lr0/u;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lr0/u;->a:Landroid/os/PowerManager$WakeLock;

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public v(Lr0/a0;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lr0/a0;->a()Lz0/m;

    move-result-object p1

    invoke-virtual {p1}, Lz0/m;->b()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lr0/u;->f(Ljava/lang/String;)Lr0/w0;

    move-result-object v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {p1, v1, p2}, Lr0/u;->i(Ljava/lang/String;Lr0/w0;I)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public w(Lr0/a0;I)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lr0/a0;->a()Lz0/m;

    move-result-object v0

    invoke-virtual {v0}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lr0/u;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lr0/u;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object p2, Lr0/u;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored stopWork. WorkerWrapper "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is in foreground"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit v1

    return v3

    .line 6
    :cond_0
    iget-object v2, p0, Lr0/u;->h:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lr0/u;->f(Ljava/lang/String;)Lr0/w0;

    move-result-object p1

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v0, p1, p2}, Lr0/u;->i(Ljava/lang/String;Lr0/w0;I)Z

    move-result p1

    return p1

    .line 11
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
