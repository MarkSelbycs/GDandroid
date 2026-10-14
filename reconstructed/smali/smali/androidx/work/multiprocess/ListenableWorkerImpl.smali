.class public Landroidx/work/multiprocess/ListenableWorkerImpl;
.super Landroidx/work/multiprocess/IListenableWorkerImpl$Stub;
.source "ListenableWorkerImpl.java"


# static fields
.field public static final j:Ljava/lang/String;

.field public static k:[B

.field public static final l:Ljava/lang/Object;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroidx/work/a;

.field public final f:Lc1/b;

.field public final g:Lq0/u;

.field public final h:Lq0/i;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/multiprocess/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WM-RemoteWorker ListenableWorkerImpl"

    .line 1
    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/ListenableWorkerImpl;->j:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    sput-object v0, Landroidx/work/multiprocess/ListenableWorkerImpl;->k:[B

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/ListenableWorkerImpl;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/work/multiprocess/IListenableWorkerImpl$Stub;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->d:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroidx/work/multiprocess/k;->c(Landroid/content/Context;)Landroidx/work/multiprocess/k;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroidx/work/multiprocess/k;->a()Landroidx/work/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->e:Landroidx/work/a;

    .line 5
    invoke-virtual {p1}, Landroidx/work/multiprocess/k;->e()Lc1/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->f:Lc1/b;

    .line 6
    invoke-virtual {p1}, Landroidx/work/multiprocess/k;->d()Lq0/u;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->g:Lq0/u;

    .line 7
    invoke-virtual {p1}, Landroidx/work/multiprocess/k;->b()Lq0/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->h:Lq0/i;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->i:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Landroidx/work/multiprocess/l;ILandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/multiprocess/ListenableWorkerImpl;->lambda$interrupt$0(Landroidx/work/multiprocess/l;ILandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method

.method private executeWorkRequest(Ljava/lang/String;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lr2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/work/WorkerParameters;",
            ")",
            "Lr2/a<",
            "Landroidx/work/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->d:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->e:Landroidx/work/a;

    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->f:Lc1/b;

    invoke-static {v0, v1, p2, p3, v2}, Landroidx/work/multiprocess/o;->e(Landroid/content/Context;Landroidx/work/a;Ljava/lang/String;Landroidx/work/WorkerParameters;Lc1/b;)Landroidx/work/multiprocess/l;

    move-result-object p2

    .line 2
    sget-object p3, Landroidx/work/multiprocess/ListenableWorkerImpl;->l:Ljava/lang/Object;

    monitor-enter p3

    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p2}, Landroidx/work/multiprocess/l;->a()Lr2/a;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static synthetic lambda$interrupt$0(Landroidx/work/multiprocess/l;ILandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/l;->c(I)V

    .line 2
    sget-object p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->k:[B

    invoke-static {p2, p0}, Landroidx/work/multiprocess/a$a;->b(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V

    return-void
.end method


# virtual methods
.method public interrupt([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p1, v0}, Le1/a;->b([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;

    .line 3
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->a()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->b()I

    move-result p1

    .line 5
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/ListenableWorkerImpl;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupting work with id ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v1, Landroidx/work/multiprocess/ListenableWorkerImpl;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->i:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/l;

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 9
    :try_start_2
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->f:Lc1/b;

    invoke-interface {v1}, Lc1/b;->c()Lc1/a;

    move-result-object v1

    new-instance v2, Landroidx/work/multiprocess/b;

    invoke-direct {v2, v0, p1, p2}, Landroidx/work/multiprocess/b;-><init>(Landroidx/work/multiprocess/l;ILandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 10
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Landroidx/work/multiprocess/ListenableWorkerImpl;->k:[B

    invoke-static {p2, p1}, Landroidx/work/multiprocess/a$a;->b(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 13
    invoke-static {p2, p1}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public startWork([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p1, v0}, Le1/a;->b([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    .line 3
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->a()Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->e:Landroidx/work/a;

    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->f:Lc1/b;

    iget-object v3, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->g:Lq0/u;

    iget-object v4, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->h:Lq0/i;

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->a(Landroidx/work/a;Lc1/b;Lq0/u;Lq0/i;)Landroidx/work/WorkerParameters;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->d()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->b()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    sget-object v3, Landroidx/work/multiprocess/ListenableWorkerImpl;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing work request ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v1, p1, v0}, Landroidx/work/multiprocess/ListenableWorkerImpl;->executeWorkRequest(Ljava/lang/String;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lr2/a;

    move-result-object p1

    .line 10
    new-instance v0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/work/multiprocess/ListenableWorkerImpl$a;-><init>(Landroidx/work/multiprocess/ListenableWorkerImpl;Lr2/a;Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->f:Lc1/b;

    .line 11
    invoke-interface {v1}, Lc1/b;->c()Lc1/a;

    move-result-object v1

    .line 12
    invoke-interface {p1, v0, v1}, Lr2/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {p2, p1}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
