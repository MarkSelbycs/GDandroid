.class public Landroidx/work/multiprocess/RemoteWorkManagerClient$e;
.super Ljava/lang/Object;
.source "RemoteWorkManagerClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/work/multiprocess/RemoteWorkManagerClient;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SessionHandler"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$e;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$e;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->l()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$e;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v2}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->m()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$e;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v3}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->l()J

    move-result-wide v3

    .line 4
    iget-object v5, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$e;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v5}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->h()Landroidx/work/multiprocess/RemoteWorkManagerClient$d;

    move-result-object v5

    if-eqz v5, :cond_1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient$e;->b:Ljava/lang/String;

    const-string v3, "Unbinding service"

    invoke-virtual {v0, v1, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$e;->a:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 7
    invoke-virtual {v5}, Landroidx/work/multiprocess/RemoteWorkManagerClient$d;->a()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient$e;->b:Ljava/lang/String;

    const-string v3, "Ignoring request to unbind."

    invoke-virtual {v0, v1, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
