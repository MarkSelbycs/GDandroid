.class public Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;
.super Landroidx/work/multiprocess/RemoteCallback;
.source "RemoteWorkManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionRemoteCallback"
.end annotation


# instance fields
.field public final g:Landroidx/work/multiprocess/RemoteWorkManagerClient;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteCallback;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->g:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    return-void
.end method


# virtual methods
.method public onRequestCompleted()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/work/multiprocess/RemoteCallback;->onRequestCompleted()V

    .line 2
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->g:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->k()Landroid/os/Handler;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->g:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->o()Landroidx/work/multiprocess/RemoteWorkManagerClient$e;

    move-result-object v1

    .line 4
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->g:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v2}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->n()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
