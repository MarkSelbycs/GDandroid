.class public Landroidx/work/multiprocess/RemoteWorkManagerClient$b$a;
.super Ljava/lang/Object;
.source "RemoteWorkManagerClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/work/multiprocess/IWorkManagerImpl;

.field public final synthetic b:Landroidx/work/multiprocess/RemoteWorkManagerClient$b;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient$b;Landroidx/work/multiprocess/IWorkManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b$a;->b:Landroidx/work/multiprocess/RemoteWorkManagerClient$b;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b$a;->a:Landroidx/work/multiprocess/IWorkManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b$a;->b:Landroidx/work/multiprocess/RemoteWorkManagerClient$b;

    iget-object v1, v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->c:Landroidx/work/multiprocess/f;

    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b$a;->a:Landroidx/work/multiprocess/IWorkManagerImpl;

    iget-object v0, v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->b:Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v1, v2, v0}, Landroidx/work/multiprocess/f;->a(Ljava/lang/Object;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->j:Ljava/lang/String;

    const-string v3, "Unable to execute"

    invoke-virtual {v1, v2, v3, v0}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$b$a;->b:Landroidx/work/multiprocess/RemoteWorkManagerClient$b;

    iget-object v1, v1, Landroidx/work/multiprocess/RemoteWorkManagerClient$b;->b:Landroidx/work/multiprocess/RemoteCallback;

    invoke-static {v1, v0}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
