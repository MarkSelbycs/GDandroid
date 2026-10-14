.class public Lcom/cndatacom/topology/TopologyManager;
.super Ljava/lang/Object;
.source "TopologyManager.java"


# static fields
.field private static _TopologyManager:Lcom/cndatacom/topology/TopologyManager;


# instance fields
.field private mIsOpen:Z

.field private mNeighbourDiscover:Lcom/cndatacom/topology/NeighbourDiscover;

.field private mNeighbourDiscoverEvent:Lcom/cndatacom/topology/NeighbourDiscover$NeighbourDiscoverEvent;

.field private mRouterDiscover:Lcom/cndatacom/topology/RouterDiscover;

.field private mRouterDiscoverEvent:Lcom/cndatacom/topology/RouterDiscover$RouterDiscoverEvent;

.field private mTeamWorkDiscover:Lcom/cndatacom/topology/TeamWorkDiscover;

.field private mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cndatacom/topology/TopologyManager;->mIsOpen:Z

    .line 3
    new-instance v0, Lcom/cndatacom/topology/TopologyManager$1;

    invoke-direct {v0, p0}, Lcom/cndatacom/topology/TopologyManager$1;-><init>(Lcom/cndatacom/topology/TopologyManager;)V

    iput-object v0, p0, Lcom/cndatacom/topology/TopologyManager;->mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

    .line 4
    new-instance v0, Lcom/cndatacom/topology/TopologyManager$2;

    invoke-direct {v0, p0}, Lcom/cndatacom/topology/TopologyManager$2;-><init>(Lcom/cndatacom/topology/TopologyManager;)V

    iput-object v0, p0, Lcom/cndatacom/topology/TopologyManager;->mNeighbourDiscoverEvent:Lcom/cndatacom/topology/NeighbourDiscover$NeighbourDiscoverEvent;

    .line 5
    new-instance v0, Lcom/cndatacom/topology/TopologyManager$3;

    invoke-direct {v0, p0}, Lcom/cndatacom/topology/TopologyManager$3;-><init>(Lcom/cndatacom/topology/TopologyManager;)V

    iput-object v0, p0, Lcom/cndatacom/topology/TopologyManager;->mRouterDiscoverEvent:Lcom/cndatacom/topology/RouterDiscover$RouterDiscoverEvent;

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/NeighbourDiscover;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/topology/TopologyManager;->mNeighbourDiscover:Lcom/cndatacom/topology/NeighbourDiscover;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/RouterDiscover;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/topology/TopologyManager;->mRouterDiscover:Lcom/cndatacom/topology/RouterDiscover;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/TeamWorkDiscover;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/topology/TopologyManager;->mTeamWorkDiscover:Lcom/cndatacom/topology/TeamWorkDiscover;

    return-object p0
.end method

.method public static getInstance()Lcom/cndatacom/topology/TopologyManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/cndatacom/topology/TopologyManager;->_TopologyManager:Lcom/cndatacom/topology/TopologyManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cndatacom/topology/TopologyManager;

    invoke-direct {v0}, Lcom/cndatacom/topology/TopologyManager;-><init>()V

    sput-object v0, Lcom/cndatacom/topology/TopologyManager;->_TopologyManager:Lcom/cndatacom/topology/TopologyManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/cndatacom/topology/TopologyManager;->_TopologyManager:Lcom/cndatacom/topology/TopologyManager;

    return-object v0
.end method

.method private initData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "snmp"

    const-string v3, "retryCount"

    const-string v4, "neighbour"

    const-string v5, "teamwork"

    const-string v6, "router"

    const-string v7, ""

    :try_start_0
    const-string v8, "check-args"

    move-object/from16 v9, p2

    .line 1
    invoke-virtual {v9, v8, v7}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v9

    .line 4
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "url"

    const-string v12, "timeout"

    const-string v14, "interval"

    const-string v15, "enable"

    if-eqz v8, :cond_2

    .line 6
    :try_start_1
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 7
    new-instance v8, Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-direct {v8}, Lcom/cndatacom/topology/entity/RouterConInfo;-><init>()V

    move-object/from16 v16, v4

    const/16 v13, 0x12c

    .line 8
    invoke-virtual {v6, v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v8, v4}, Lcom/cndatacom/topology/entity/RouterConInfo;->setInterval(I)V

    const-string v4, "maxttl"

    const/16 v13, 0xa

    .line 9
    invoke-virtual {v6, v4, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/cndatacom/topology/entity/RouterConInfo;->setMaxTTL(I)V

    const/4 v4, 0x2

    .line 10
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/cndatacom/topology/entity/RouterConInfo;->setRetryCount(I)V

    const-string v13, "retryInterval"

    const/4 v4, 0x1

    .line 11
    invoke-virtual {v6, v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/cndatacom/topology/entity/RouterConInfo;->setRetryInterval(I)V

    const-string v4, "publicIp"

    .line 12
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/cndatacom/topology/entity/RouterConInfo;->setPublicIp(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/cndatacom/topology/entity/RouterConInfo;->setUrl(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 16
    new-instance v4, Lcom/cndatacom/topology/entity/SnmpConInfo;

    invoke-direct {v4}, Lcom/cndatacom/topology/entity/SnmpConInfo;-><init>()V

    const-string v6, "name"

    .line 17
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/cndatacom/topology/entity/SnmpConInfo;->setName(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 18
    invoke-virtual {v2, v15, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v6, 0x1

    if-ne v13, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v4, v6}, Lcom/cndatacom/topology/entity/SnmpConInfo;->setOpen(Z)V

    const/4 v6, 0x2

    .line 19
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/cndatacom/topology/entity/SnmpConInfo;->setRetryCount(I)V

    const/4 v3, 0x1

    .line 20
    invoke-virtual {v2, v12, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v4, v2}, Lcom/cndatacom/topology/entity/SnmpConInfo;->setTimeout(I)V

    .line 21
    invoke-virtual {v8, v4}, Lcom/cndatacom/topology/entity/RouterConInfo;->setSnmpConInfo(Lcom/cndatacom/topology/entity/SnmpConInfo;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 22
    :goto_1
    new-instance v2, Lcom/cndatacom/topology/RouterDiscover;

    invoke-direct {v2, v0, v9, v8}, Lcom/cndatacom/topology/RouterDiscover;-><init>(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;Lcom/cndatacom/topology/entity/RouterConInfo;)V

    iput-object v2, v1, Lcom/cndatacom/topology/TopologyManager;->mRouterDiscover:Lcom/cndatacom/topology/RouterDiscover;

    .line 23
    iget-object v4, v1, Lcom/cndatacom/topology/TopologyManager;->mRouterDiscoverEvent:Lcom/cndatacom/topology/RouterDiscover$RouterDiscoverEvent;

    invoke-virtual {v2, v4}, Lcom/cndatacom/topology/RouterDiscover;->setRouterDiscoverEvent(Lcom/cndatacom/topology/RouterDiscover$RouterDiscoverEvent;)V

    goto :goto_2

    :cond_2
    move-object/from16 v16, v4

    const/4 v3, 0x1

    .line 24
    :goto_2
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x78

    if-eqz v2, :cond_3

    .line 25
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 26
    new-instance v5, Lcom/cndatacom/topology/entity/TeamWorkConInfo;

    invoke-direct {v5}, Lcom/cndatacom/topology/entity/TeamWorkConInfo;-><init>()V

    const-string v6, "castads"

    .line 27
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->setCastads(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v5, v2}, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->setTimeout(I)V

    .line 29
    new-instance v2, Lcom/cndatacom/topology/TeamWorkDiscover;

    invoke-direct {v2, v9, v5}, Lcom/cndatacom/topology/TeamWorkDiscover;-><init>(Lcom/cndatacom/sdk/portal/entity/NetInfo;Lcom/cndatacom/topology/entity/TeamWorkConInfo;)V

    iput-object v2, v1, Lcom/cndatacom/topology/TopologyManager;->mTeamWorkDiscover:Lcom/cndatacom/topology/TeamWorkDiscover;

    .line 30
    iget-object v5, v1, Lcom/cndatacom/topology/TopologyManager;->mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

    invoke-virtual {v2, v5}, Lcom/cndatacom/topology/TeamWorkDiscover;->setTeamWorkDiscoverEvent(Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;)V

    :cond_3
    move-object/from16 v2, v16

    .line 31
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 32
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 33
    new-instance v5, Lcom/cndatacom/topology/entity/NeighbourConInfo;

    invoke-direct {v5}, Lcom/cndatacom/topology/entity/NeighbourConInfo;-><init>()V

    .line 34
    invoke-virtual {v2, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v5, v4}, Lcom/cndatacom/topology/entity/NeighbourConInfo;->setInterval(I)V

    const-string v4, "total"

    const/16 v6, 0x12c

    .line 35
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v5, v4}, Lcom/cndatacom/topology/entity/NeighbourConInfo;->setTotal(I)V

    .line 36
    invoke-virtual {v2, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/cndatacom/topology/entity/NeighbourConInfo;->setUrl(Ljava/lang/String;)V

    .line 37
    new-instance v2, Lcom/cndatacom/topology/NeighbourDiscover;

    invoke-direct {v2, v0, v9, v5}, Lcom/cndatacom/topology/NeighbourDiscover;-><init>(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;Lcom/cndatacom/topology/entity/NeighbourConInfo;)V

    iput-object v2, v1, Lcom/cndatacom/topology/TopologyManager;->mNeighbourDiscover:Lcom/cndatacom/topology/NeighbourDiscover;

    .line 38
    iget-object v0, v1, Lcom/cndatacom/topology/TopologyManager;->mNeighbourDiscoverEvent:Lcom/cndatacom/topology/NeighbourDiscover$NeighbourDiscoverEvent;

    invoke-virtual {v2, v0}, Lcom/cndatacom/topology/NeighbourDiscover;->setNeighbourDiscoverEvent(Lcom/cndatacom/topology/NeighbourDiscover$NeighbourDiscoverEvent;)V

    .line 39
    :cond_4
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "value"

    const-string v4, "0"

    .line 41
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v15, v3

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    iput-boolean v15, v1, Lcom/cndatacom/topology/TopologyManager;->mIsOpen:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public release(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/cndatacom/topology/TopologyManager;->mIsOpen:Z

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/TopologyManager;->mTeamWorkDiscover:Lcom/cndatacom/topology/TeamWorkDiscover;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/cndatacom/topology/TeamWorkDiscover;->release()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/topology/TopologyManager;->mRouterDiscover:Lcom/cndatacom/topology/RouterDiscover;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/cndatacom/topology/RouterDiscover;->release(Landroid/content/Context;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/topology/TopologyManager;->mNeighbourDiscover:Lcom/cndatacom/topology/NeighbourDiscover;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lcom/cndatacom/topology/NeighbourDiscover;->release(Landroid/content/Context;)V

    :cond_2
    const/4 p1, 0x0

    .line 8
    sput-object p1, Lcom/cndatacom/topology/TopologyManager;->_TopologyManager:Lcom/cndatacom/topology/TopologyManager;

    const-string p1, "Discover TopologyHelper release->"

    .line 9
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void
.end method

.method public start(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cndatacom/topology/TopologyManager;->initData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 2
    iget-boolean p1, p0, Lcom/cndatacom/topology/TopologyManager;->mIsOpen:Z

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager;->mTeamWorkDiscover:Lcom/cndatacom/topology/TeamWorkDiscover;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/cndatacom/topology/TeamWorkDiscover;->start()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager;->mRouterDiscover:Lcom/cndatacom/topology/RouterDiscover;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Lcom/cndatacom/topology/RouterDiscover;->start(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager;->mNeighbourDiscover:Lcom/cndatacom/topology/NeighbourDiscover;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1, p2}, Lcom/cndatacom/topology/NeighbourDiscover;->start(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    :cond_2
    return-void
.end method
