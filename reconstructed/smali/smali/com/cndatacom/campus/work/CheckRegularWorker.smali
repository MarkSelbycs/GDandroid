.class public Lcom/cndatacom/campus/work/CheckRegularWorker;
.super Ljava/lang/Object;
.source "CheckRegularWorker.java"


# static fields
.field public static final CHECK_FAIL:I = 0x3

.field public static final CHECK_INIT:I = -0x1

.field public static final CHECK_REDIRECT:I = 0x2

.field public static final CHECK_SUCCESS:I = 0x0

.field public static final CHECK_TIMEOUT:I = 0x1

.field public static final INDEX_KEY:Ljava/lang/String; = "CheckNetRegularly"

.field public static d:Lcom/cndatacom/campus/work/CheckRegularWorker;


# instance fields
.field public a:I

.field public b:Ljava/util/Timer;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->a:I

    .line 3
    iput-boolean v0, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->c:Z

    return-void
.end method

.method public static getInstance()Lcom/cndatacom/campus/work/CheckRegularWorker;
    .locals 2

    .line 1
    sget-object v0, Lcom/cndatacom/campus/work/CheckRegularWorker;->d:Lcom/cndatacom/campus/work/CheckRegularWorker;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cndatacom/campus/work/CheckRegularWorker;

    invoke-direct {v0}, Lcom/cndatacom/campus/work/CheckRegularWorker;-><init>()V

    sput-object v0, Lcom/cndatacom/campus/work/CheckRegularWorker;->d:Lcom/cndatacom/campus/work/CheckRegularWorker;

    .line 3
    :cond_0
    sget-object v0, Lcom/cndatacom/campus/work/CheckRegularWorker;->d:Lcom/cndatacom/campus/work/CheckRegularWorker;

    return-object v0
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "http://|https://"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[a-zA-Z0-9-]+(\\.[a-zA-Z]{2,})+$"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 6
    instance-of v6, v5, Ljava/net/InetAddress;

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method


# virtual methods
.method public closeCheckNetRegularly()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_0
    sget-object v0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 5
    :cond_1
    sget-object v0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->m_timeTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->c:Z

    const-string v0, "CheckRegularWorker  \u7ed3\u675f\u63a2\u6d4b -->"

    .line 8
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void
.end method

.method public handleCheckResult()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v7

    .line 3
    iget-boolean v0, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->c:Z

    const/4 v1, 0x0

    .line 5
    invoke-static {v6, v7, v1, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detect(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;ZZ)I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->c:Z

    const-string v0, "CheckRegularWorker  \u7f51\u7edc\u68c0\u6d4b\u6210\u529f \u5f53\u524d\u5c5e\u4e8eping\u8bef\u5224-->"

    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;

    invoke-direct {v0}, Lcom/cndatacom/campus/util/CheckRegularlyUtil;-><init>()V

    .line 9
    invoke-virtual {v0, v7}, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->startCheck(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/cndatacom/campus/work/CheckRegularWorker;->closeCheckNetRegularly()V

    .line 11
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onState(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "11"

    .line 13
    invoke-static {v6, v7, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->term(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    :cond_2
    const-string v0, "CheckRegularWorker \u81ea\u52a8\u91cd\u62e8-->"

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    move v8, v1

    .line 15
    :goto_0
    iget v0, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->a:I

    if-ge v8, v0, :cond_4

    .line 16
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onTicket(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DialAccount"

    const-string v1, ""

    .line 18
    invoke-virtual {v7, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "DialPassword"

    .line 19
    invoke-virtual {v7, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "Cache_Verify"

    .line 20
    invoke-virtual {v7, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getCacheConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onAuth(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {v6}, Lcom/cndatacom/campus/PortalMananger;->startService(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 24
    :cond_4
    :goto_1
    iget v0, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->a:I

    if-ge v8, v0, :cond_5

    .line 25
    new-instance v0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;

    invoke-direct {v0}, Lcom/cndatacom/campus/util/CheckRegularlyUtil;-><init>()V

    .line 26
    invoke-virtual {v0, v7}, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->startCheck(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public startCheckNetRegularly(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;I)V
    .locals 3

    const-string v0, "CheckNetRegularly"

    const-string v1, "enable"

    const-string v2, "0"

    .line 1
    invoke-virtual {p1, v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "maxCount"

    const-string v2, "1"

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->a:I

    .line 4
    new-instance v0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;

    invoke-direct {v0}, Lcom/cndatacom/campus/util/CheckRegularlyUtil;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->b:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 7
    :cond_1
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/cndatacom/campus/work/CheckRegularWorker;->b:Ljava/util/Timer;

    .line 8
    new-instance v2, Lcom/cndatacom/campus/work/CheckRegularWorker$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/cndatacom/campus/work/CheckRegularWorker$1;-><init>(Lcom/cndatacom/campus/work/CheckRegularWorker;Lcom/cndatacom/campus/util/CheckRegularlyUtil;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    int-to-long p1, p2

    invoke-virtual {v1, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
