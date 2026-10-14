.class public abstract Lcom/cndatacom/sdk/portal/service/BaseHoldService;
.super Landroid/app/Service;
.source "BaseHoldService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private pushForegroundNotification(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/service/BaseHoldService;->getForegroundNotificationActivity()Ljava/lang/Class;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/service/BaseHoldService;->getForegroundNotificationTitle()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/service/BaseHoldService;->getForegroundNotificationIcon()I

    move-result v5

    if-eqz v2, :cond_1

    if-lez v5, :cond_1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    move-object v4, v0

    .line 5
    invoke-static {}, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->getInstance()Lcom/cndatacom/sdk/portal/notify/NotifyManager;

    move-result-object v0

    move-object v1, p1

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->pushForegroundNotification(Landroid/content/Context;Ljava/lang/Class;Landroid/app/Service;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract clearAllTask()V
.end method

.method public abstract getForegroundNotificationActivity()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getForegroundNotificationIcon()I
.end method

.method public abstract getForegroundNotificationTitle()Ljava/lang/String;
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "BaseHoldService onDestroy->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public abstract onHandleIntent()V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "BaseHoldService onStartCommand->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/cndatacom/sdk/portal/service/BaseHoldService;->pushForegroundNotification(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;->newInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/cndatacom/sdk/portal/service/BaseHoldService$1;

    invoke-direct {v1, p0}, Lcom/cndatacom/sdk/portal/service/BaseHoldService$1;-><init>(Lcom/cndatacom/sdk/portal/service/BaseHoldService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BaseHoldService onStartCommand result->"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return p1
.end method
