.class public abstract Landroidx/work/multiprocess/RemoteListenableWorker;
.super Landroidx/work/c;
.source "RemoteListenableWorker.java"


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field public final e:Landroidx/work/WorkerParameters;

.field public final f:Landroidx/work/multiprocess/c;

.field public g:Ljava/lang/String;

.field public h:Landroid/content/ComponentName;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RemoteListenableWorker"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteListenableWorker;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/c;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    iput-object p2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->e:Landroidx/work/WorkerParameters;

    .line 3
    new-instance p2, Landroidx/work/multiprocess/c;

    invoke-virtual {p0}, Landroidx/work/c;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroidx/work/multiprocess/c;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->f:Landroidx/work/multiprocess/c;

    return-void
.end method

.method public static synthetic b(Landroidx/work/multiprocess/RemoteListenableWorker;ILandroidx/work/multiprocess/IListenableWorkerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/work/multiprocess/RemoteListenableWorker;->c(ILandroidx/work/multiprocess/IListenableWorkerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method

.method private synthetic c(ILandroidx/work/multiprocess/IListenableWorkerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->e:Landroidx/work/WorkerParameters;

    .line 2
    invoke-virtual {v1}, Landroidx/work/WorkerParameters;->d()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-static {v0}, Le1/a;->a(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 4
    invoke-interface {p2, p1, p3}, Landroidx/work/multiprocess/IListenableWorkerImpl;->interrupt([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method


# virtual methods
.method public abstract d()Lr2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Landroidx/work/c$a;",
            ">;"
        }
    .end annotation
.end method

.method public onStopped()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/work/c;->onStopped()V

    .line 2
    invoke-virtual {p0}, Landroidx/work/c;->getStopReason()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->h:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->f:Landroidx/work/multiprocess/c;

    new-instance v3, Landroidx/work/multiprocess/h;

    invoke-direct {v3, p0, v0}, Landroidx/work/multiprocess/h;-><init>(Landroidx/work/multiprocess/RemoteListenableWorker;I)V

    invoke-virtual {v2, v1, v3}, Landroidx/work/multiprocess/c;->a(Landroid/content/ComponentName;Landroidx/work/multiprocess/f;)Lr2/a;

    :cond_0
    return-void
.end method

.method public final startWork()Lr2/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Landroidx/work/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/work/c;->getInputData()Landroidx/work/b;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->e:Landroidx/work/WorkerParameters;

    invoke-virtual {v2}, Landroidx/work/WorkerParameters;->d()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    .line 4
    invoke-virtual {v1, v3}, Landroidx/work/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    .line 5
    invoke-virtual {v1, v4}, Landroidx/work/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "Need to specify a package name for the Remote Service."

    .line 7
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    sget-object v3, Landroidx/work/multiprocess/RemoteListenableWorker;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    return-object v0

    .line 9
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "Need to specify a class name for the Remote Service."

    .line 10
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    sget-object v3, Landroidx/work/multiprocess/RemoteListenableWorker;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    return-object v0

    .line 12
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->h:Landroid/content/ComponentName;

    .line 13
    invoke-virtual {p0}, Landroidx/work/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lr0/p0;->o(Landroid/content/Context;)Lr0/p0;

    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->f:Landroidx/work/multiprocess/c;

    iget-object v3, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->h:Landroid/content/ComponentName;

    new-instance v4, Landroidx/work/multiprocess/RemoteListenableWorker$a;

    invoke-direct {v4, p0, v0, v2}, Landroidx/work/multiprocess/RemoteListenableWorker$a;-><init>(Landroidx/work/multiprocess/RemoteListenableWorker;Lr0/p0;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroidx/work/multiprocess/c;->a(Landroid/content/ComponentName;Landroidx/work/multiprocess/f;)Lr2/a;

    move-result-object v0

    .line 15
    new-instance v1, Landroidx/work/multiprocess/RemoteListenableWorker$b;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/RemoteListenableWorker$b;-><init>(Landroidx/work/multiprocess/RemoteListenableWorker;)V

    .line 16
    invoke-virtual {p0}, Landroidx/work/c;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 17
    invoke-static {v0, v1, v2}, Landroidx/work/multiprocess/d;->a(Lr2/a;Li/a;Ljava/util/concurrent/Executor;)Lr2/a;

    move-result-object v0

    return-object v0
.end method
