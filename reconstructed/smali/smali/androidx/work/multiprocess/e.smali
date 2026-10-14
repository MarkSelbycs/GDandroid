.class public final synthetic Landroidx/work/multiprocess/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/multiprocess/RemoteCoroutineWorker;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/multiprocess/RemoteCoroutineWorker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/e;->a:Landroidx/work/multiprocess/RemoteCoroutineWorker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/e;->a:Landroidx/work/multiprocess/RemoteCoroutineWorker;

    invoke-static {v0}, Landroidx/work/multiprocess/RemoteCoroutineWorker;->e(Landroidx/work/multiprocess/RemoteCoroutineWorker;)V

    return-void
.end method
