.class public Landroidx/work/multiprocess/c$a;
.super Ljava/lang/Object;
.source "ListenableWorkerImplClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/c;->b(Lr2/a;Landroidx/work/multiprocess/f;Landroidx/work/multiprocess/RemoteCallback;)Lr2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr2/a;

.field public final synthetic b:Landroidx/work/multiprocess/RemoteCallback;

.field public final synthetic c:Landroidx/work/multiprocess/f;

.field public final synthetic d:Landroidx/work/multiprocess/c;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/c;Lr2/a;Landroidx/work/multiprocess/RemoteCallback;Landroidx/work/multiprocess/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/multiprocess/c$a;->d:Landroidx/work/multiprocess/c;

    iput-object p2, p0, Landroidx/work/multiprocess/c$a;->a:Lr2/a;

    iput-object p3, p0, Landroidx/work/multiprocess/c$a;->b:Landroidx/work/multiprocess/RemoteCallback;

    iput-object p4, p0, Landroidx/work/multiprocess/c$a;->c:Landroidx/work/multiprocess/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/c$a;->a:Lr2/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/IListenableWorkerImpl;

    .line 2
    iget-object v1, p0, Landroidx/work/multiprocess/c$a;->b:Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/work/multiprocess/RemoteCallback;->setBinder(Landroid/os/IBinder;)V

    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/c$a;->d:Landroidx/work/multiprocess/c;

    iget-object v1, v1, Landroidx/work/multiprocess/c;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/work/multiprocess/c$a$a;

    invoke-direct {v2, p0, v0}, Landroidx/work/multiprocess/c$a$a;-><init>(Landroidx/work/multiprocess/c$a;Landroidx/work/multiprocess/IListenableWorkerImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    :goto_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/c;->e:Ljava/lang/String;

    const-string v3, "Unable to bind to service"

    invoke-virtual {v1, v2, v3, v0}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Landroidx/work/multiprocess/c$a;->b:Landroidx/work/multiprocess/RemoteCallback;

    invoke-static {v1, v0}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
