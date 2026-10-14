.class public Landroidx/work/multiprocess/RemoteCallback;
.super Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;
.source "RemoteCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/RemoteCallback$a;
    }
.end annotation


# instance fields
.field public final d:Lb1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/c<",
            "[B>;"
        }
    .end annotation
.end field

.field public e:Landroid/os/IBinder;

.field public final f:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->e:Landroid/os/IBinder;

    .line 3
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->d:Lb1/c;

    .line 4
    new-instance v0, Landroidx/work/multiprocess/RemoteCallback$a;

    invoke-direct {v0, p0}, Landroidx/work/multiprocess/RemoteCallback$a;-><init>(Landroidx/work/multiprocess/RemoteCallback;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->f:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->d:Lb1/c;

    invoke-virtual {v0, p1}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    .line 3
    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteCallback;->unlinkToDeath()V

    .line 4
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteCallback;->onRequestCompleted()V

    return-void
.end method

.method private unlinkToDeath()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->e:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteCallback;->f:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getFuture()Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->d:Lb1/c;

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/work/multiprocess/RemoteCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRequestCompleted()V
    .locals 0

    return-void
.end method

.method public onSuccess([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->d:Lb1/c;

    invoke-virtual {v0, p1}, Lb1/c;->p(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteCallback;->unlinkToDeath()V

    .line 3
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteCallback;->onRequestCompleted()V

    return-void
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteCallback;->e:Landroid/os/IBinder;

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->f:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Landroidx/work/multiprocess/RemoteCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
