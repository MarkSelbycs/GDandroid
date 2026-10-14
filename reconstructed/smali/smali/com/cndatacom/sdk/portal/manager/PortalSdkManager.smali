.class public Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;
.super Ljava/lang/Object;
.source "PortalSdkManager.java"


# static fields
.field private static volatile _PortalSdkManager:Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;


# instance fields
.field private mErrorHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager$1;

    invoke-direct {v0, p0}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager$1;-><init>(Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;)V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->mErrorHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;
    .locals 4

    .line 1
    const-class v0, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->_PortalSdkManager:Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    invoke-direct {v1}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;-><init>()V

    sput-object v1, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->_PortalSdkManager:Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->_PortalSdkManager:Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleAuth(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V
    .locals 7

    const-string v0, " and suberrorcode : "

    const-string v1, ""

    if-eqz p6, :cond_0

    .line 1
    :try_start_0
    new-instance v2, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v3, "60"

    invoke-direct {v2, v1, v1, v3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, v2}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onTicket(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ticket errorcode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5
    invoke-interface {p6, v2}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    if-eqz p6, :cond_2

    .line 7
    new-instance v2, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v4, "70"

    invoke-direct {v2, v1, v1, v4}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, v2}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 8
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onAuth(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/String;

    .line 9
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "handleAuth errorcode : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v6

    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    if-eqz p6, :cond_3

    .line 10
    new-instance p3, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string p4, "80"

    invoke-direct {p3, v1, v1, p4}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, p3}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p6, :cond_5

    .line 12
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->resetOnlineTime()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 13
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string p2, "200201"

    const-string p3, "0"

    invoke-direct {p1, p2, v1, p3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, v6, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectedMsg(ZLcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    goto :goto_0

    :cond_4
    if-eqz p6, :cond_5

    .line 14
    invoke-interface {p6, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method private handleDetectPortal(Landroid/content/Context;ILcom/cndatacom/sdk/portal/entity/ReturnUIResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDetectPortal step->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->removeDetectUrl()V

    move v2, v3

    :goto_0
    if-gt v2, p2, :cond_b

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->hasDetectUrl()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, -0x1

    if-nez v2, :cond_4

    .line 5
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/NetUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_5

    .line 6
    :cond_0
    new-instance v5, Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isOpenSSID()Z

    move-result v6

    invoke-direct {v5, p1, v6}, Lcom/cndatacom/sdk/portal/entity/NetInfo;-><init>(Landroid/content/Context;Z)V

    const-string v6, "DetectIndexUrl"

    const-string v7, ""

    .line 7
    invoke-virtual {v1, v6, v7}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    invoke-static {p1, v1, v0, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detect(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;ZZ)I

    move-result v6

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {p1, v1, v6, v0, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detectConfig(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;ZZ)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/cndatacom/sdk/portal/util/CdcUtil;->toInt(Ljava/lang/String;I)I

    move-result v6

    :goto_1
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_2

    .line 12
    invoke-virtual {v1, v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setNetInfo(Lcom/cndatacom/sdk/portal/entity/NetInfo;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    goto :goto_4

    :cond_2
    const/16 v2, 0xc9

    if-ne v6, v2, :cond_3

    goto :goto_5

    .line 13
    :cond_3
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->removeDetectUrl()V

    goto :goto_3

    :cond_4
    const/4 v5, 0x3

    if-eq v2, v0, :cond_5

    if-eq v2, v5, :cond_5

    const/4 v6, 0x2

    if-ne v2, v6, :cond_a

    if-eq p2, v5, :cond_a

    :cond_5
    if-ne v2, v0, :cond_6

    .line 14
    invoke-static {p1, v1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->ticket(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p3

    goto :goto_2

    :cond_6
    if-ne v2, v5, :cond_7

    .line 15
    invoke-static {p1, v1, p4, p5, p6}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->auth(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p3

    goto :goto_2

    .line 16
    :cond_7
    invoke-static {p1, v1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->state(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p3

    .line 17
    :goto_2
    invoke-static {p3}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->isNetError(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 18
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->removeDetectUrl()V

    :goto_3
    move v2, v4

    goto :goto_4

    .line 19
    :cond_8
    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    if-ne v2, p2, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    add-int/2addr v2, v0

    goto/16 :goto_0

    .line 20
    :cond_b
    :goto_5
    invoke-static {p3}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->isNetError(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 21
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    :cond_c
    new-array p1, v0, [Ljava/lang/String;

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "handleDetectPortal errorcode : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " and suberrorcode : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-object p3
.end method

.method private handlePortalNet(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;ZLcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V
    .locals 3

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v0, "200111"

    const-string v1, ""

    const-string v2, "90"

    invoke-direct {p3, v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p3}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isOnline()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePortalNet ->term ticket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getTicket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const-string p3, "5"

    .line 4
    invoke-static {p1, p2, p3}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->term(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    if-eqz p4, :cond_2

    .line 8
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string p2, "200104"

    invoke-direct {p1, p2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectedMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_2
    return-void
.end method

.method private handleUsefulNet(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lcom/cndatacom/sdk/portal/entity/NetInfo;ZLcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net wifi info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/String;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local wifi info : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->equals(Lcom/cndatacom/sdk/portal/entity/NetInfo;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, ""

    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    .line 5
    new-instance p4, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v0, "200111"

    const-string v2, "90"

    invoke-direct {p4, v0, p3, v2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, p4}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 6
    :cond_0
    invoke-static {p1, p2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->state(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p5, :cond_2

    .line 8
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getOnlineTime()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "200201"

    invoke-direct {p1, p4, p3, p2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, v1, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectedMsg(ZLcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    .line 9
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string p2, "200128"

    invoke-direct {p1, p2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p5, :cond_4

    .line 10
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string p2, "200102"

    invoke-direct {p1, p2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_4
    return-void
.end method

.method private onCheckNet(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lcom/cndatacom/sdk/portal/entity/NetInfo;ZLcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V
    .locals 4

    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    .line 13
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v1, "200111"

    const-string v2, ""

    const-string v3, "80"

    invoke-direct {v0, v1, v2, v3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-static {p1, p2, v0, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detect(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;ZZ)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    if-eqz p5, :cond_3

    .line 15
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makeUiErrorCode(I)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    .line 16
    invoke-interface {p5, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->handleUsefulNet(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lcom/cndatacom/sdk/portal/entity/NetInfo;ZLcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p2, p3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setNetInfo(Lcom/cndatacom/sdk/portal/entity/NetInfo;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 19
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->handlePortalNet(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;ZLcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onCheckVerifyCode(Landroid/content/Context;Ljava/lang/String;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1, p3, p2, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->checkVerifyCode(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static onKeep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onKeep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0
.end method

.method public static onKeep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cndatacom/sdk/portal/entity/ConfigInfo;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keep ticket->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getTicket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, p2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->keep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    new-array p2, v0, [Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keep expire->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getExpire()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getCacheData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    const-string v1, ""

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->init(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->mErrorHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public initLog(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_LOGCAT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_MODULE_LOGCAT:Ljava/lang/String;

    .line 2
    invoke-static {p1, v1}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDCLogs"

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->logBuildInfo(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAuth(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 7

    .line 10
    invoke-static {p1, p2, p3, p4, p5}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->auth(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v3

    .line 11
    invoke-static {v3}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->isNetError(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->hasDetectUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->handleDetectPortal(Landroid/content/Context;ILcom/cndatacom/sdk/portal/entity/ReturnUIResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p2, p4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setPassword(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 15
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    :cond_1
    return-object v3
.end method

.method public onAuth(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V
    .locals 3

    const-string v0, ""

    if-eqz p6, :cond_0

    .line 1
    :try_start_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v2, "30"

    invoke-direct {v1, v0, v0, v2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, v1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-direct {p0, p1, p3, p2}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onCheckVerifyCode(Landroid/content/Context;Ljava/lang/String;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p6, :cond_2

    .line 6
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string p2, "50"

    invoke-direct {p1, v0, v0, p2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 7
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string p2, "140102"

    const-string p3, "11062000"

    invoke-direct {p1, p2, p3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_2
    return-void

    .line 8
    :cond_3
    invoke-direct/range {p0 .. p6}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->handleAuth(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCheckNet(Landroid/content/Context;IZZLcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V
    .locals 9

    const-string v0, ""

    if-eqz p5, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1
    new-instance v1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v2, "200107"

    const-string v3, "20"

    invoke-direct {v1, v2, v0, v3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, v1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_9

    const/4 v1, 0x2

    const-string v2, "40"

    const-string v3, "200108"

    if-eq p2, v1, :cond_7

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eqz p5, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 2
    new-instance p2, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {p2, v3, v0, v2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, p2}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_2
    if-eqz p5, :cond_3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 3
    new-instance p2, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v1, "200109"

    const-string v2, "60"

    invoke-direct {p2, v1, v0, v2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, p2}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 4
    :cond_3
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v5

    .line 5
    new-instance v6, Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isOpenSSID()Z

    move-result p2

    invoke-direct {v6, p1, p2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;-><init>(Landroid/content/Context;Z)V

    if-eqz p5, :cond_4

    .line 6
    invoke-interface {p5, v6}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleNetworkInfoMsg(Lcom/cndatacom/sdk/portal/entity/NetInfo;)V

    :cond_4
    if-eqz p3, :cond_6

    .line 7
    invoke-virtual {v6}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->isLowRSSI()Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p5, :cond_5

    .line 8
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string p2, "200103"

    invoke-direct {p1, p2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_5
    return-void

    :cond_6
    move-object v3, p0

    move-object v4, p1

    move v7, p4

    move-object v8, p5

    .line 9
    invoke-direct/range {v3 .. v8}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onCheckNet(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lcom/cndatacom/sdk/portal/entity/NetInfo;ZLcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V

    goto :goto_0

    :cond_7
    if-eqz p5, :cond_8

    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    .line 10
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {p1, v3, v0, v2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_8
    if-eqz p5, :cond_a

    .line 11
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string p2, "200101"

    invoke-direct {p1, p2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    goto :goto_0

    :cond_9
    if-eqz p5, :cond_a

    .line 12
    new-instance p1, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string p2, "200100"

    invoke-direct {p1, p2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handlePreConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onGetVerificatioCode(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1, p2, p3, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->getVerifyCode(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onState(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 7

    .line 1
    invoke-static {p1, p2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->state(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onState errorcode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and suberrorcode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 3
    invoke-static {v3}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->isNetError(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->hasDetectUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->handleDetectPortal(Landroid/content/Context;ILcom/cndatacom/sdk/portal/entity/ReturnUIResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    :cond_1
    return-object v3
.end method

.method public onTerm(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V
    .locals 3

    if-eqz p4, :cond_0

    .line 1
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    invoke-interface {p4, v0}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleDisConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 2
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->term(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTerm errorcode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and suberrorcode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-wide/16 p2, 0x1388

    .line 6
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 8
    invoke-interface {p4, p1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleDisconnectedMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_2
    return-void
.end method

.method public onTicket(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 7

    .line 1
    invoke-static {p1, p2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->ticket(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTicket errorcode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and suberrorcode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 3
    invoke-static {v3}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->isNetError(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->hasDetectUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->handleDetectPortal(Landroid/content/Context;ILcom/cndatacom/sdk/portal/entity/ReturnUIResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    :cond_1
    return-object v3
.end method

.method public setCacheData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-void
.end method

.method public shareLog(Landroid/content/Context;Landroid/app/Activity;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_LOGCAT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    array-length v4, v1

    const-string v5, ".zip"

    if-ge v3, v4, :cond_1

    .line 4
    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDCLogs_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDHMSString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/util/FileUtil;->toZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "share files to zip is error"

    .line 11
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    return v2

    .line 12
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u65e5\u5fd7\u5206\u4eab\u5931\u8d25!"

    .line 14
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    return v2

    .line 15
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroidx/core/content/FileProvider;->f(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "*/*"

    .line 20
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "\u65e5\u5fd7\u5206\u4eab"

    .line 21
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u65e5\u5fd7\u5206\u4eab\u5931\u8d25!"

    .line 23
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    return v2
.end method
