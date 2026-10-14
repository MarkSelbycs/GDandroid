.class public final synthetic Landroidx/work/multiprocess/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/work/multiprocess/f;


# instance fields
.field public final synthetic a:Landroidx/work/multiprocess/RemoteListenableWorker;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/work/multiprocess/RemoteListenableWorker;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/h;->a:Landroidx/work/multiprocess/RemoteListenableWorker;

    iput p2, p0, Landroidx/work/multiprocess/h;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 2

    iget-object v0, p0, Landroidx/work/multiprocess/h;->a:Landroidx/work/multiprocess/RemoteListenableWorker;

    iget v1, p0, Landroidx/work/multiprocess/h;->b:I

    check-cast p1, Landroidx/work/multiprocess/IListenableWorkerImpl;

    invoke-static {v0, v1, p1, p2}, Landroidx/work/multiprocess/RemoteListenableWorker;->b(Landroidx/work/multiprocess/RemoteListenableWorker;ILandroidx/work/multiprocess/IListenableWorkerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method
