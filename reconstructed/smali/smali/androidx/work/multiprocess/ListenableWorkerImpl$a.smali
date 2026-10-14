.class public Landroidx/work/multiprocess/ListenableWorkerImpl$a;
.super Ljava/lang/Object;
.source "ListenableWorkerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/ListenableWorkerImpl;->startWork([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr2/a;

.field public final synthetic b:Landroidx/work/multiprocess/IWorkManagerImplCallback;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/work/multiprocess/ListenableWorkerImpl;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/ListenableWorkerImpl;Lr2/a;Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->d:Landroidx/work/multiprocess/ListenableWorkerImpl;

    iput-object p2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->a:Lr2/a;

    iput-object p3, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->b:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    iput-object p4, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->a:Lr2/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/c$a;

    .line 2
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableResult;

    invoke-direct {v1, v0}, Landroidx/work/multiprocess/parcelable/ParcelableResult;-><init>(Landroidx/work/c$a;)V

    .line 3
    invoke-static {v1}, Le1/a;->a(Landroid/os/Parcelable;)[B

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->b:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    invoke-static {v1, v0}, Landroidx/work/multiprocess/a$a;->b(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    sget-object v0, Landroidx/work/multiprocess/ListenableWorkerImpl;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_1
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->d:Landroidx/work/multiprocess/ListenableWorkerImpl;

    iget-object v1, v1, Landroidx/work/multiprocess/ListenableWorkerImpl;->i:Ljava/util/Map;

    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 8
    :try_start_2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/ListenableWorkerImpl;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Worker ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") was cancelled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->b:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    invoke-static {v1, v0}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    sget-object v0, Landroidx/work/multiprocess/ListenableWorkerImpl;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_3
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->d:Landroidx/work/multiprocess/ListenableWorkerImpl;

    iget-object v1, v1, Landroidx/work/multiprocess/ListenableWorkerImpl;->i:Ljava/util/Map;

    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v0

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 13
    :goto_0
    :try_start_4
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->b:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    invoke-static {v1, v0}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 14
    sget-object v0, Landroidx/work/multiprocess/ListenableWorkerImpl;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_5
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->d:Landroidx/work/multiprocess/ListenableWorkerImpl;

    iget-object v1, v1, Landroidx/work/multiprocess/ListenableWorkerImpl;->i:Ljava/util/Map;

    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    monitor-exit v0

    :goto_1
    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1

    .line 17
    :goto_2
    sget-object v1, Landroidx/work/multiprocess/ListenableWorkerImpl;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_6
    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->d:Landroidx/work/multiprocess/ListenableWorkerImpl;

    iget-object v2, v2, Landroidx/work/multiprocess/ListenableWorkerImpl;->i:Ljava/util/Map;

    iget-object v3, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$a;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 20
    throw v0

    :catchall_4
    move-exception v0

    .line 21
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method
