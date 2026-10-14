.class public Lcom/cndatacom/campus/service/HoldService;
.super Lcom/cndatacom/sdk/portal/service/BaseHoldService;
.source "HoldService.java"


# instance fields
.field public a:Lcom/cndatacom/campus/receiver/AppReceiver;

.field public b:Lcom/cndatacom/campus/manager/HoldExtraTaskManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/service/BaseHoldService;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cndatacom/campus/service/HoldService;Landroid/content/Intent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/service/HoldService;->d(Landroid/content/Intent;I)V

    return-void
.end method

.method public static start(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "HoldService->start"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cndatacom/campus/service/HoldService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 1

    const-string v0, "HoldService->stop"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/campus/service/HoldKeepService;->cancelWork(Landroid/content/Context;)V

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/service/HoldService;->e()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/service/HoldService;->b:Lcom/cndatacom/campus/manager/HoldExtraTaskManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/cndatacom/campus/manager/HoldExtraTaskManager;->exeTask(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public clearAllTask()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/service/HoldService;->b()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/service/HoldService;->a:Lcom/cndatacom/campus/receiver/AppReceiver;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/service/HoldService;->b:Lcom/cndatacom/campus/manager/HoldExtraTaskManager;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/campus/manager/HoldExtraTaskManager;->clearAllTask(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final d(Landroid/content/Intent;I)V
    .locals 0

    if-eqz p2, :cond_2

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x7

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "HoldService releaseMemory->"

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/cndatacom/campus/service/HoldService;->b:Lcom/cndatacom/campus/manager/HoldExtraTaskManager;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static/range {p2 .. p2}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cndatacom/campus/manager/HoldExtraTaskManager;->clearMemory(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/cndatacom/campus/service/HoldService;->b()V

    .line 5
    invoke-virtual {p0}, Lcom/cndatacom/campus/service/HoldService;->e()V

    goto :goto_0

    :cond_2
    const-string p1, "HoldService stop service->"

    .line 6
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/cndatacom/campus/service/HoldService;->clearAllTask()V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 10
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/cndatacom/campus/service/HoldKeepService;->startOneTimeWork(Landroid/content/Context;J)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/campus/service/HoldKeepService;->startPeriodicWork(Landroid/content/Context;)V

    return-void
.end method

.method public getForegroundNotificationActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/cndatacom/campus/MainActivity;

    return-object v0
.end method

.method public getForegroundNotificationIcon()I
    .locals 1

    const v0, 0x7f0a0001

    return v0
.end method

.method public getForegroundNotificationTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cndatacom/sdk/portal/service/BaseHoldService;->onDestroy()V

    const-string v0, "HoldService->onDestroy"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void
.end method

.method public onHandleIntent()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/cndatacom/campus/receiver/AppReceiver;

    invoke-direct {v1}, Lcom/cndatacom/campus/receiver/AppReceiver;-><init>()V

    iput-object v1, p0, Lcom/cndatacom/campus/service/HoldService;->a:Lcom/cndatacom/campus/receiver/AppReceiver;

    .line 3
    new-instance v2, Lcom/cndatacom/campus/service/HoldService$1;

    invoke-direct {v2, p0}, Lcom/cndatacom/campus/service/HoldService$1;-><init>(Lcom/cndatacom/campus/service/HoldService;)V

    invoke-virtual {v1, v2}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->setReceiverListener(Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;)V

    .line 4
    iget-object v1, p0, Lcom/cndatacom/campus/service/HoldService;->a:Lcom/cndatacom/campus/receiver/AppReceiver;

    invoke-virtual {v1, v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->registerReceiver(Landroid/content/Context;)V

    .line 5
    new-instance v1, Lcom/cndatacom/campus/manager/HoldExtraTaskManager;

    invoke-direct {v1}, Lcom/cndatacom/campus/manager/HoldExtraTaskManager;-><init>()V

    iput-object v1, p0, Lcom/cndatacom/campus/service/HoldService;->b:Lcom/cndatacom/campus/manager/HoldExtraTaskManager;

    .line 6
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/service/HoldService;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "HoldService->onTaskRemoved"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method
