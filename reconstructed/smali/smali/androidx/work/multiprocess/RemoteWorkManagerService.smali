.class public Landroidx/work/multiprocess/RemoteWorkManagerService;
.super Landroid/app/Service;
.source "RemoteWorkManagerService.java"


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RemoteWorkManagerService"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerService;->b:Ljava/lang/String;

    const-string v1, "Binding to RemoteWorkManager"

    invoke-virtual {p1, v0, v1}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerService;->a:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    invoke-direct {v0, p0}, Landroidx/work/multiprocess/RemoteWorkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerService;->a:Landroid/os/IBinder;

    return-void
.end method
