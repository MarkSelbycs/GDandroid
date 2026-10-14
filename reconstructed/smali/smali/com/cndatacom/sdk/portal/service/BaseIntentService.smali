.class public abstract Lcom/cndatacom/sdk/portal/service/BaseIntentService;
.super Landroid/app/IntentService;
.source "BaseIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "KeepService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static cancel(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/cndatacom/sdk/portal/service/BaseIntentService;->startOneTimeWork(Landroid/content/Context;Ljava/lang/Class;J)V

    return-void
.end method

.method public static startOneTimeWork(Landroid/content/Context;Ljava/lang/Class;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;J)V"
        }
    .end annotation

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    const/high16 v2, 0x8000000

    .line 3
    invoke-static {p0, p1, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarmKeepStart set delayMillis => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_0

    const/4 p1, 0x2

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract doNextKeep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;JLcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
.end method

.method public abstract getKeepExtraParam(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cndatacom/sdk/portal/entity/ConfigInfo;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const-string v0, "KeepService onDestroy->"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    const-string p1, "KeepService onHandleIntent->"

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->load()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getLoginState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "KeepService state not online->"

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isOnline()Z

    move-result p1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeepService isOnline->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-direct {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;-><init>()V

    invoke-static {v1, p1, v5, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detect(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;ZZ)I

    move-result p1

    const/16 v3, 0xc8

    if-eq p1, v3, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    const-string p1, "KeepService not online->"

    .line 9
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v0, "200117"

    invoke-direct {p1, v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lcom/cndatacom/sdk/portal/service/BaseIntentService;->sendChange(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    return-void

    .line 11
    :cond_2
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getKeepInterval()J

    move-result-wide v3

    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/cndatacom/sdk/portal/service/BaseIntentService;->getKeepExtraParam(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 13
    invoke-static {v1, v2, p1}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onKeep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keep errorcode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and suberrorcode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getKeepInterval()J

    move-result-wide v3

    :cond_3
    move-object v0, p0

    move-object v5, p1

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/cndatacom/sdk/portal/service/BaseIntentService;->doNextKeep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;JLcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string v0, "KeepService onStartCommand->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public abstract sendChange(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
.end method
