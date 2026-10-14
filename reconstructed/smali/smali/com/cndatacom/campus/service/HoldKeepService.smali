.class public Lcom/cndatacom/campus/service/HoldKeepService;
.super Landroidx/work/Worker;
.source "HoldKeepService.java"


# instance fields
.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    iput-object p1, p0, Lcom/cndatacom/campus/service/HoldKeepService;->f:Landroid/content/Context;

    return-void
.end method

.method public static cancelWork(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lq0/z;->e(Landroid/content/Context;)Lq0/z;

    move-result-object p0

    const-string v0, "KeepTask"

    invoke-virtual {p0, v0}, Lq0/z;->a(Ljava/lang/String;)Lq0/r;

    return-void
.end method

.method public static startOneTimeWork(Landroid/content/Context;J)V
    .locals 2

    .line 1
    new-instance v0, Lq0/q$a;

    const-class v1, Lcom/cndatacom/campus/service/HoldKeepService;

    invoke-direct {v0, v1}, Lq0/q$a;-><init>(Ljava/lang/Class;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lq0/b0$a;->i(JLjava/util/concurrent/TimeUnit;)Lq0/b0$a;

    move-result-object p1

    check-cast p1, Lq0/q$a;

    .line 3
    invoke-virtual {p1}, Lq0/b0$a;->a()Lq0/b0;

    move-result-object p1

    check-cast p1, Lq0/q;

    .line 4
    invoke-static {p0}, Lq0/z;->e(Landroid/content/Context;)Lq0/z;

    move-result-object p0

    invoke-virtual {p0, p1}, Lq0/z;->c(Lq0/b0;)Lq0/r;

    return-void
.end method

.method public static startPeriodicWork(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Lq0/t$a;

    const-class v1, Lcom/cndatacom/campus/service/HoldKeepService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    invoke-direct {v0, v1, v3, v4, v2}, Lq0/t$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    invoke-virtual {v0}, Lq0/b0$a;->a()Lq0/b0;

    move-result-object v0

    check-cast v0, Lq0/t;

    .line 3
    invoke-static {p0}, Lq0/z;->e(Landroid/content/Context;)Lq0/z;

    move-result-object p0

    sget-object v1, Lq0/f;->c:Lq0/f;

    const-string v2, "KeepTask"

    invoke-virtual {p0, v2, v1, v0}, Lq0/z;->d(Ljava/lang/String;Lq0/f;Lq0/t;)Lq0/r;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lq0/h;
    .locals 4

    .line 1
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "KeepChannel"

    const-string v2, "KeepChannelName"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2
    iget-object v2, p0, Lcom/cndatacom/campus/service/HoldKeepService;->f:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 4
    new-instance v0, Landroidx/core/app/f;

    iget-object v2, p0, Lcom/cndatacom/campus/service/HoldKeepService;->f:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroidx/core/app/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroidx/core/app/f;->i(Z)Landroidx/core/app/f;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Landroidx/core/app/f;->f(Ljava/lang/CharSequence;)Landroidx/core/app/f;

    move-result-object p1

    const v0, 0x7f0a0001

    .line 7
    invoke-virtual {p1, v0}, Landroidx/core/app/f;->j(I)Landroidx/core/app/f;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/core/app/f;->a()Landroid/app/Notification;

    move-result-object p1

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/16 v3, 0x22

    if-lt v0, v3, :cond_0

    .line 10
    new-instance v0, Lq0/h;

    invoke-direct {v0, v2, p1, v1}, Lq0/h;-><init>(ILandroid/app/Notification;I)V

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Lq0/h;

    invoke-direct {v0, v2, p1}, Lq0/h;-><init>(ILandroid/app/Notification;)V

    return-object v0
.end method

.method public final c()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->load()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getLoginState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v0, "HoldKeepService state not online->"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isOnline()Z

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HoldKeepService isOnline->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/cndatacom/campus/service/HoldKeepService;->f:Landroid/content/Context;

    new-instance v3, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-direct {v3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;-><init>()V

    invoke-static {v1, v3, v5, v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detect(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;ZZ)I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    const-string v0, "HoldKeepService not online->"

    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/cndatacom/campus/service/HoldKeepService;->f:Landroid/content/Context;

    new-instance v1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v2, "200117"

    invoke-direct {v1, v2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/campus/service/HoldKeepService;->d(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    return-void

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/cndatacom/campus/service/HoldKeepService;->f:Landroid/content/Context;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v1, v0, v3}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onKeep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HoldKeepService errorcode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and suberrorcode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final d(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;ILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    return-void
.end method

.method public doWork()Landroidx/work/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/service/HoldKeepService;->f:Landroid/content/Context;

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/service/HoldKeepService;->b(Ljava/lang/String;)Lq0/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/work/c;->setForegroundAsync(Lq0/h;)Lr2/a;

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/service/HoldKeepService;->c()V

    .line 4
    invoke-static {}, Landroidx/work/c$a;->e()Landroidx/work/c$a;

    move-result-object v0

    return-object v0
.end method
