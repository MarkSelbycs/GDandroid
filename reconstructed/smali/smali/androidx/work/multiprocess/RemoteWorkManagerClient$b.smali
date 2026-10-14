.class public Landroidx/work/multiprocess/RemoteWorkManagerClient$b;
.super Ljava/lang/Object;
.source "RemoteWorkManagerClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient;->f(Lr2/a;Landroidx/work/multiprocess/f;Landroidx/work/multiprocess/RemoteCallback;)Lr2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr2/a;

.field public final synthetic b:Landroidx/work/multiprocess/RemoteCallback;

.field public final synthetic c:Landroidx/work/multiprocess/f;

.field public final synthetic d:Landroidx/work/multiprocess/RemoteWorkManagerClient;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Lr2/a;Landroidx/work/multiprocess/RemoteCallback;Landroidx/work/multiprocess/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->d:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->a:Lr2/a;

    iput-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->b:Landroidx/work/multiprocess/RemoteCallback;

    iput-object p4, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->c:Landroidx/work/multiprocess/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->a:Lr2/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/IWorkManagerImpl;

    .line 2
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->b:Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/work/multiprocess/RemoteCallback;->setBinder(Landroid/os/IBinder;)V

    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->d:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object v1, v1, Landroidx/work/multiprocess/RemoteWorkManagerClient;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/work/multiprocess/RemoteWorkManagerClient$b$a;

    invoke-direct {v2, p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient$b$a;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient$b;Landroidx/work/multiprocess/IWorkManagerImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient;->j:Ljava/lang/String;

    const-string v2, "Unable to bind to service"

    invoke-virtual {v0, v1, v2}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->b:Landroidx/work/multiprocess/RemoteCallback;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->d:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->d()V

    :goto_0
    return-void
.end method
