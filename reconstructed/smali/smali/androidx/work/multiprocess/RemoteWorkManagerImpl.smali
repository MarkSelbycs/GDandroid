.class public Landroidx/work/multiprocess/RemoteWorkManagerImpl;
.super Landroidx/work/multiprocess/IWorkManagerImpl$Stub;
.source "RemoteWorkManagerImpl.java"


# static fields
.field public static e:[B


# instance fields
.field public final d:Lr0/p0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->e:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;-><init>()V

    .line 2
    invoke-static {p1}, Lr0/p0;->o(Landroid/content/Context;)Lr0/p0;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    return-void
.end method


# virtual methods
.method public cancelAllWork(Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->h()Lq0/r;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v1}, Lr0/p0;->w()Lc1/b;

    move-result-object v1

    invoke-interface {v1}, Lc1/b;->c()Lc1/a;

    move-result-object v1

    .line 3
    new-instance v2, Landroidx/work/multiprocess/RemoteWorkManagerImpl$g;

    .line 4
    invoke-interface {v0}, Lq0/r;->a()Lr2/a;

    move-result-object v0

    invoke-direct {v2, p0, v1, p1, v0}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$g;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    .line 5
    invoke-virtual {v2}, Landroidx/work/multiprocess/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {p1, v0}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancelAllWorkByTag(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0, p1}, Lr0/p0;->a(Ljava/lang/String;)Lq0/r;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->w()Lc1/b;

    move-result-object v0

    invoke-interface {v0}, Lc1/b;->c()Lc1/a;

    move-result-object v0

    .line 3
    new-instance v1, Landroidx/work/multiprocess/RemoteWorkManagerImpl$e;

    .line 4
    invoke-interface {p1}, Lq0/r;->a()Lr2/a;

    move-result-object p1

    invoke-direct {v1, p0, v0, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$e;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    .line 5
    invoke-virtual {v1}, Landroidx/work/multiprocess/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p2, p1}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0, p1}, Lr0/p0;->i(Ljava/lang/String;)Lq0/r;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->w()Lc1/b;

    move-result-object v0

    invoke-interface {v0}, Lc1/b;->c()Lc1/a;

    move-result-object v0

    .line 3
    new-instance v1, Landroidx/work/multiprocess/RemoteWorkManagerImpl$f;

    .line 4
    invoke-interface {p1}, Lq0/r;->a()Lr2/a;

    move-result-object p1

    invoke-direct {v1, p0, v0, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$f;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    .line 5
    invoke-virtual {v1}, Landroidx/work/multiprocess/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p2, p1}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancelWorkById(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr0/p0;->j(Ljava/util/UUID;)Lq0/r;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->w()Lc1/b;

    move-result-object v0

    invoke-interface {v0}, Lc1/b;->c()Lc1/a;

    move-result-object v0

    .line 3
    new-instance v1, Landroidx/work/multiprocess/RemoteWorkManagerImpl$d;

    .line 4
    invoke-interface {p1}, Lq0/r;->a()Lr2/a;

    move-result-object p1

    invoke-direct {v1, p0, v0, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$d;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    .line 5
    invoke-virtual {v1}, Landroidx/work/multiprocess/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p2, p1}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public enqueueContinuation([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p1, v0}, Le1/a;->b([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    .line 3
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    .line 4
    invoke-virtual {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->b(Lr0/p0;)Lr0/c0;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lr0/c0;->a()Lq0/r;

    move-result-object p1

    .line 6
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->w()Lc1/b;

    move-result-object v0

    invoke-interface {v0}, Lc1/b;->c()Lc1/a;

    move-result-object v0

    .line 7
    new-instance v1, Landroidx/work/multiprocess/RemoteWorkManagerImpl$c;

    .line 8
    invoke-interface {p1}, Lq0/r;->a()Lr2/a;

    move-result-object p1

    invoke-direct {v1, p0, v0, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$c;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    .line 9
    invoke-virtual {v1}, Landroidx/work/multiprocess/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p2, p1}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public enqueueWorkRequests([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p1, v0}, Le1/a;->b([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    .line 3
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;->a()Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0, p1}, Lr0/p0;->b(Ljava/util/List;)Lq0/r;

    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->w()Lc1/b;

    move-result-object v0

    invoke-interface {v0}, Lc1/b;->c()Lc1/a;

    move-result-object v0

    .line 6
    new-instance v1, Landroidx/work/multiprocess/RemoteWorkManagerImpl$b;

    .line 7
    invoke-interface {p1}, Lq0/r;->a()Lr2/a;

    move-result-object p1

    invoke-direct {v1, p0, v0, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$b;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    .line 8
    invoke-virtual {v1}, Landroidx/work/multiprocess/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p2, p1}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public queryWorkInfo([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p1, v0}, Le1/a;->b([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    .line 3
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->w()Lc1/b;

    move-result-object v0

    invoke-interface {v0}, Lc1/b;->c()Lc1/a;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    .line 5
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->a()Lq0/a0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr0/p0;->v(Lq0/a0;)Lr2/a;

    move-result-object p1

    .line 6
    new-instance v1, Landroidx/work/multiprocess/RemoteWorkManagerImpl$h;

    invoke-direct {v1, p0, v0, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$h;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    .line 7
    invoke-virtual {v1}, Landroidx/work/multiprocess/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p2, p1}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setForegroundAsync([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p1, v0}, Le1/a;->b([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;

    .line 3
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->w()Lc1/b;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lc1/b;->c()Lc1/a;

    move-result-object v1

    .line 5
    new-instance v2, La1/y;

    iget-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    .line 6
    invoke-virtual {v3}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v3

    iget-object v4, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    .line 7
    invoke-virtual {v4}, Lr0/p0;->q()Lr0/u;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, La1/y;-><init>(Landroidx/work/impl/WorkDatabase;Ly0/a;Lc1/b;)V

    .line 8
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    .line 9
    invoke-virtual {v0}, Lr0/p0;->l()Landroid/content/Context;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->a()Lq0/h;

    move-result-object p1

    .line 12
    invoke-virtual {v2, v0, v3, p1}, La1/y;->a(Landroid/content/Context;Ljava/util/UUID;Lq0/h;)Lr2/a;

    move-result-object p1

    .line 13
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerImpl$j;

    invoke-direct {v0, p0, v1, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$j;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    .line 14
    invoke-virtual {v0}, Landroidx/work/multiprocess/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    invoke-static {p2, p1}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setProgress([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p1, v0}, Le1/a;->b([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;

    .line 3
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->l()Landroid/content/Context;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v1}, Lr0/p0;->w()Lc1/b;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lc1/b;->c()Lc1/a;

    move-result-object v2

    .line 6
    iget-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {v3}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v3

    .line 7
    new-instance v4, La1/z;

    invoke-direct {v4, v3, v1}, La1/z;-><init>(Landroidx/work/impl/WorkDatabase;Lc1/b;)V

    .line 8
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->a()Landroidx/work/b;

    move-result-object p1

    .line 10
    invoke-virtual {v4, v0, v1, p1}, La1/z;->a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/b;)Lr2/a;

    move-result-object p1

    .line 11
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerImpl$i;

    invoke-direct {v0, p0, v2, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$i;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    .line 12
    invoke-virtual {v0}, Landroidx/work/multiprocess/a;->a()V
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

.method public updateUniquePeriodicWorkRequest(Ljava/lang/String;[BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Le1/a;->b([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    .line 2
    invoke-virtual {p2}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->a()Lq0/b0;

    move-result-object p2

    .line 3
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-static {v0, p1, p2}, Lr0/u0;->c(Lr0/p0;Ljava/lang/String;Lq0/b0;)Lq0/r;

    move-result-object p1

    .line 4
    iget-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->d:Lr0/p0;

    invoke-virtual {p2}, Lr0/p0;->w()Lc1/b;

    move-result-object p2

    invoke-interface {p2}, Lc1/b;->c()Lc1/a;

    move-result-object p2

    .line 5
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerImpl$a;

    .line 6
    invoke-interface {p1}, Lq0/r;->a()Lr2/a;

    move-result-object p1

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$a;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    .line 7
    invoke-virtual {v0}, Landroidx/work/multiprocess/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p3, p1}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
