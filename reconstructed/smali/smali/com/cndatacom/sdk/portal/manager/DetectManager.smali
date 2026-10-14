.class public Lcom/cndatacom/sdk/portal/manager/DetectManager;
.super Ljava/lang/Object;
.source "DetectManager.java"


# static fields
.field public static CURRENT_IP_TYPE:Z = true

.field private static TAG:Ljava/lang/String; = "index.cgi"

.field private static volatile _DetectManager:Lcom/cndatacom/sdk/portal/manager/DetectManager; = null

.field private static volatile mLastFileCom:Ljava/lang/String; = ""


# instance fields
.field private volatile mCurDetectUrl:Ljava/lang/String;

.field private volatile mPercentages:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mUrls:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mWeights:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mCurDetectUrl:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    .line 4
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mWeights:Ljava/util/TreeMap;

    .line 5
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mPercentages:Ljava/util/TreeMap;

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->readDetectUrlData(Z)V

    .line 7
    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->readCurDetectUr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mCurDetectUrl:Ljava/lang/String;

    return-void
.end method

.method public static containsTag(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-boolean v0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->CURRENT_IP_TYPE:Z

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getIpType(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getIpType(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->CURRENT_IP_TYPE:Z

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->readDetectUrlData(Z)V

    .line 5
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v1

    invoke-direct {v1}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->readCurDetectUr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mCurDetectUrl:Ljava/lang/String;

    .line 6
    :cond_0
    sget-object v0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;
    .locals 4

    .line 1
    const-class v0, Lcom/cndatacom/sdk/portal/manager/DetectManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/cndatacom/sdk/portal/manager/DetectManager;->_DetectManager:Lcom/cndatacom/sdk/portal/manager/DetectManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/cndatacom/sdk/portal/manager/DetectManager;

    invoke-direct {v1}, Lcom/cndatacom/sdk/portal/manager/DetectManager;-><init>()V

    sput-object v1, Lcom/cndatacom/sdk/portal/manager/DetectManager;->_DetectManager:Lcom/cndatacom/sdk/portal/manager/DetectManager;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->_DetectManager:Lcom/cndatacom/sdk/portal/manager/DetectManager;

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

.method public static getIpType(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 4
    instance-of p0, p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private readCurDetectUr()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    const-string v1, ""

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mPercentages:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mWeights:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 6
    iget-object v7, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mWeights:Ljava/util/TreeMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mWeights:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v6, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 10
    iget-object v9, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mWeights:Ljava/util/TreeMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    div-double/2addr v9, v4

    mul-double/2addr v9, v7

    add-double/2addr v2, v9

    .line 11
    iget-object v7, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mPercentages:Ljava/util/TreeMap;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 13
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v2, v7

    .line 14
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mPercentages:Ljava/util/TreeMap;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mPercentages:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method private readDetectUrlData(Z)V
    .locals 10

    const-string v0, "weight"

    const-string v1, "detect"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    const-string v3, "DetectData"

    const-string v4, ""

    .line 2
    invoke-virtual {p1, v3, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    sget-object v3, Lcom/cndatacom/sdk/portal/BuildConfig;->DEF_DETECT:[Ljava/lang/String;

    .line 5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 7
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 8
    array-length v7, v3

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v3, v8

    .line 9
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v9, 0x1

    .line 10
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 14
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_1
    :goto_1
    sput-object p1, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mLastFileCom:Ljava/lang/String;

    goto :goto_2

    .line 16
    :cond_2
    sget-object p1, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mLastFileCom:Ljava/lang/String;

    .line 17
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 18
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 20
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v3, v1, :cond_4

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_6

    .line 23
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getIpType(Ljava/lang/String;)Z

    move-result v4

    .line 24
    sget-boolean v5, Lcom/cndatacom/sdk/portal/manager/DetectManager;->CURRENT_IP_TYPE:Z

    if-ne v4, v5, :cond_3

    .line 25
    iget-object v4, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mWeights:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_4
    if-ge v0, v3, :cond_6

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getIpType(Ljava/lang/String;)Z

    move-result v4

    .line 27
    sget-boolean v5, Lcom/cndatacom/sdk/portal/manager/DetectManager;->CURRENT_IP_TYPE:Z

    if-ne v4, v5, :cond_5

    .line 28
    iget-object v4, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mWeights:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "1"

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-ge v2, v1, :cond_8

    .line 29
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getIpType(Ljava/lang/String;)Z

    move-result v0

    .line 30
    sget-boolean v3, Lcom/cndatacom/sdk/portal/manager/DetectManager;->CURRENT_IP_TYPE:Z

    if-ne v0, v3, :cond_7

    .line 31
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-void
.end method

.method public static setTAG(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetectUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mCurDetectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasDetectUrl()Z
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeDetectUrl()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    iget-object v3, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mCurDetectUrl:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_3

    .line 7
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mWeights:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->readCurDetectUr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mCurDetectUrl:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method

.method public replaceDetectUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public resetLastLocalDetectUrlData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mWeights:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mPercentages:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->readDetectUrlData(Z)V

    .line 5
    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->readCurDetectUr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mCurDetectUrl:Ljava/lang/String;

    return-void
.end method

.method public saveDetectUrlData(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "weight"

    const-string v1, ""

    const-string v2, "enable"

    const-string v3, "0"

    .line 1
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v2, "url"

    .line 3
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ","

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 8
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v4, v6

    .line 9
    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_1

    .line 10
    aget-object v7, v2, v4

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 14
    :goto_1
    array-length v4, p2

    if-ge v6, v4, :cond_3

    .line 15
    aget-object v4, p2, v6

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 16
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v6, p2, :cond_3

    const/4 p2, 0x1

    .line 17
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const-string p2, "detect"

    .line 18
    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "DetectData"

    .line 20
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public useIndexDetectUrlData()V
    .locals 1

    const-string v0, ""

    .line 1
    sput-object v0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mLastFileCom:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mUrls:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mWeights:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 4
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mPercentages:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->readDetectUrlData(Z)V

    .line 6
    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->readCurDetectUr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/DetectManager;->mCurDetectUrl:Ljava/lang/String;

    return-void
.end method
