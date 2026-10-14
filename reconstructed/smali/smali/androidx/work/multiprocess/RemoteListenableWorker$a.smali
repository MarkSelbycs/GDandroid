.class public Landroidx/work/multiprocess/RemoteListenableWorker$a;
.super Ljava/lang/Object;
.source "RemoteListenableWorker.java"

# interfaces
.implements Landroidx/work/multiprocess/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteListenableWorker;->startWork()Lr2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/work/multiprocess/f<",
        "Landroidx/work/multiprocess/IListenableWorkerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr0/p0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/work/multiprocess/RemoteListenableWorker;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteListenableWorker;Lr0/p0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteListenableWorker$a;->c:Landroidx/work/multiprocess/RemoteListenableWorker;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteListenableWorker$a;->a:Lr0/p0;

    iput-object p3, p0, Landroidx/work/multiprocess/RemoteListenableWorker$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p1, Landroidx/work/multiprocess/IListenableWorkerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/RemoteListenableWorker$a;->b(Landroidx/work/multiprocess/IListenableWorkerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method

.method public b(Landroidx/work/multiprocess/IListenableWorkerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker$a;->a:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableWorker$a;->b:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Lz0/v;->f(Ljava/lang/String;)Lz0/u;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableWorker$a;->c:Landroidx/work/multiprocess/RemoteListenableWorker;

    iget-object v2, v0, Lz0/u;->c:Ljava/lang/String;

    iput-object v2, v1, Landroidx/work/multiprocess/RemoteListenableWorker;->g:Ljava/lang/String;

    .line 5
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    iget-object v0, v0, Lz0/u;->c:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/multiprocess/RemoteListenableWorker$a;->c:Landroidx/work/multiprocess/RemoteListenableWorker;

    iget-object v2, v2, Landroidx/work/multiprocess/RemoteListenableWorker;->e:Landroidx/work/WorkerParameters;

    invoke-direct {v1, v0, v2}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;-><init>(Ljava/lang/String;Landroidx/work/WorkerParameters;)V

    .line 6
    invoke-static {v1}, Le1/a;->a(Landroid/os/Parcelable;)[B

    move-result-object v0

    .line 7
    invoke-interface {p1, v0, p2}, Landroidx/work/multiprocess/IListenableWorkerImpl;->startWork([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method
