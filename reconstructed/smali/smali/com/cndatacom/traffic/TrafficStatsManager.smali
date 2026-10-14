.class public Lcom/cndatacom/traffic/TrafficStatsManager;
.super Ljava/lang/Object;
.source "TrafficStatsManager.java"


# static fields
.field private static final KEY_TERM_TIME:Ljava/lang/String; = "Key_Term_Time"

.field private static final KEY_TRAFFIC:Ljava/lang/String; = "Key_TrafficStats"

.field private static _TrafficStatsManager:Lcom/cndatacom/traffic/TrafficStatsManager;


# instance fields
.field private mCurCount:I

.field private mLastDown:J

.field private mLastUp:J

.field private mMaxCount:I

.field private mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

.field private mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mLastUp:J

    .line 3
    iput-wide v0, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mLastDown:J

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mMaxCount:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mCurCount:I

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/traffic/TrafficStatsManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cndatacom/traffic/TrafficStatsManager;->handleTrafficStatsData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;I)V

    return-void
.end method

.method private clienthotspotinfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Lorg/json/JSONArray;Landroid/location/Location;Ljava/lang/String;)Z
    .locals 8

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v3

    .line 2
    invoke-virtual {p2, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "account"

    .line 4
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "clientid"

    .line 5
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ostype"

    const-string v7, "4"

    .line 6
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "mac"

    .line 7
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "version"

    .line 8
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "schoolid"

    .line 9
    invoke-virtual {v5, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ipv4"

    .line 10
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ipv6"

    .line 11
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "gateway"

    .line 12
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "brasip"

    .line 13
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getWlanacip()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mask"

    .line 14
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "hotspotmac"

    .line 15
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "hotspot"

    .line 16
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getSsid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "hotspotduration"

    .line 17
    invoke-virtual {v5, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "nearbyhotspots"

    .line 18
    invoke-virtual {v5, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string p1, "latitude"

    const-string p2, "longitude"

    if-eqz p5, :cond_0

    .line 19
    :try_start_1
    invoke-virtual {p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v5, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide p4

    invoke-virtual {v5, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v5, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    :goto_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string p2, "utf-8"

    if-nez p1, :cond_1

    :try_start_2
    const-string p1, "xfokM0h3GcRAqRZT"

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string p4, "aLX32gHbG3fBxNpQ"

    .line 25
    invoke-virtual {p4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    .line 26
    invoke-virtual {p6, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p5

    invoke-static {p1, p4, p5}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeCBC([B[B[B)[B

    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p1

    const-string p4, "token"

    .line 28
    invoke-virtual {v5, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "starttime"

    .line 29
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    invoke-static {p4}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 31
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p4, "9vApxLk5G3PAsJrM"

    .line 32
    invoke-virtual {p4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    const-string p5, "FnJL7EDzjqWjcaY9"

    .line 33
    invoke-virtual {p5, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p5

    .line 34
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p4, p5, p1}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeCBC([B[B[B)[B

    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance p4, Landroid/util/ArrayMap;

    invoke-direct {p4}, Landroid/util/ArrayMap;-><init>()V

    const-string p5, "Content-Type"

    const-string v0, "text/plain;charset=utf-8"

    .line 37
    invoke-virtual {p4, p5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance p5, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p5}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p5, p3, p4, p1}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string p2, "handleTrafficStatsData httpcode ->"

    if-eqz p1, :cond_4

    .line 39
    :try_start_3
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 40
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 41
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p3

    .line 42
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "code"

    const/4 p5, -0x1

    .line 43
    invoke-virtual {p4, p3, p5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez p3, :cond_2

    move p4, v1

    goto :goto_1

    :cond_2
    move p4, v2

    :goto_1
    :try_start_4
    new-array p5, v1, [Ljava/lang/String;

    .line 44
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleTrafficStatsData code ->"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p5, v2

    invoke-static {p5}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move p4, v1

    :goto_2
    new-array p3, v1, [Ljava/lang/String;

    .line 45
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_4
    :try_start_5
    new-array p3, v1, [Ljava/lang/String;

    .line 46
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    move p4, v2

    .line 47
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/String;

    .line 48
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "clienthotspotinfo error ->"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :goto_4
    move v2, p4

    :goto_5
    return v2
.end method

.method public static getInstance()Lcom/cndatacom/traffic/TrafficStatsManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/cndatacom/traffic/TrafficStatsManager;->_TrafficStatsManager:Lcom/cndatacom/traffic/TrafficStatsManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cndatacom/traffic/TrafficStatsManager;

    invoke-direct {v0}, Lcom/cndatacom/traffic/TrafficStatsManager;-><init>()V

    sput-object v0, Lcom/cndatacom/traffic/TrafficStatsManager;->_TrafficStatsManager:Lcom/cndatacom/traffic/TrafficStatsManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/cndatacom/traffic/TrafficStatsManager;->_TrafficStatsManager:Lcom/cndatacom/traffic/TrafficStatsManager;

    return-object v0
.end method

.method private handleTrafficStatsData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;I)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "down"

    const-string v5, "up"

    const-string v6, "200"

    const-string v7, "start_down"

    const-string v8, "start_up"

    const-string v9, "Key_TrafficStats"

    const-string v10, ""

    .line 1
    :try_start_0
    invoke-virtual {v2, v9, v10}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 3
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "ticket"

    .line 4
    invoke-virtual {v12, v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getTicket()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v11, :cond_10

    const-string v11, "time"

    const-string v13, "stattype"

    const-string v14, "StatsInfor"

    const/4 v15, -0x1

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    if-ne v3, v15, :cond_2

    :try_start_1
    const-string v15, "interval"

    .line 6
    invoke-virtual {v2, v14, v15, v10}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v16, 0x3e8

    div-long v4, v20, v16

    const-string v1, "Key_Term_Time"

    move-object/from16 v20, v9

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v1, v9}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putCacheConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-wide/16 v9, 0x0

    .line 9
    invoke-virtual {v12, v11, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v21

    const-wide/16 v16, 0x3e8

    div-long v21, v21, v16

    sub-long v4, v4, v21

    .line 10
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    cmp-long v1, v21, v9

    if-eqz v1, :cond_1

    cmp-long v1, v4, v24

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 11
    invoke-virtual {v12, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_9

    :cond_2
    move-object/from16 v20, v9

    if-nez v3, :cond_3

    const-string v1, "2"

    .line 12
    invoke-virtual {v12, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const-string v1, "1"

    .line 13
    invoke-virtual {v12, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v1, "stop"

    .line 14
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    .line 16
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v9

    const-string v1, "stop_totalTxBytes"

    .line 17
    invoke-virtual {v12, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "stop_mobileTxBytes"

    .line 18
    invoke-virtual {v12, v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sub-long/2addr v4, v9

    const-string v1, "stop_up"

    .line 19
    invoke-virtual {v12, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v9

    .line 21
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    const-string v13, "stop_totalRxBytes"

    .line 22
    invoke-virtual {v12, v13, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v13, "stop_mobileRxBytes"

    .line 23
    invoke-virtual {v12, v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sub-long/2addr v9, v0

    const-string v0, "stop_down"

    .line 24
    invoke-virtual {v12, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 25
    invoke-virtual {v12, v8, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 26
    invoke-virtual {v12, v7, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v26

    sub-long v0, v4, v24

    move-wide/from16 v24, v4

    sub-long v4, v9, v26

    const-string v13, "upThreshold"

    .line 27
    invoke-virtual {v2, v14, v13, v6}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0xc8

    .line 28
    invoke-static {v13, v15}, Lcom/cndatacom/sdk/portal/util/CdcUtil;->toInt(Ljava/lang/String;I)I

    move-result v13

    const-string v15, "downThreshold"

    .line 29
    invoke-virtual {v2, v14, v15, v6}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v15, 0xc8

    .line 30
    invoke-static {v6, v15}, Lcom/cndatacom/sdk/portal/util/CdcUtil;->toInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v21, 0x0

    cmp-long v15, v0, v21

    move-object/from16 v21, v11

    const-string v11, "->"

    const-wide/16 v26, 0x400

    move-object/from16 v28, v14

    const-string v14, "[MODULE_TRAFFIC] "

    if-lez v15, :cond_5

    .line 31
    :try_start_2
    div-long v29, v0, v26

    int-to-long v2, v13

    cmp-long v2, v29, v2

    if-gez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_2
    const-wide/16 v22, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "up="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v3, v13

    invoke-static {v14, v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->m(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_2

    :goto_4
    cmp-long v3, v4, v22

    if-lez v3, :cond_6

    .line 33
    div-long v26, v4, v26

    move-object v13, v7

    int-to-long v6, v6

    cmp-long v6, v26, v6

    if-gez v6, :cond_7

    goto :goto_5

    :cond_6
    move-object v13, v7

    :goto_5
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "down="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v14, v6}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->m(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_7
    if-eqz v2, :cond_8

    .line 35
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "os_tag"

    .line 36
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "sdk_int"

    .line 37
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "sdk_name"

    .line 38
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "app_version"

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    new-instance v6, Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-object/from16 v7, p1

    const/4 v11, 0x0

    invoke-direct {v6, v7, v11}, Lcom/cndatacom/sdk/portal/entity/NetInfo;-><init>(Landroid/content/Context;Z)V

    const-string v11, "netInfo"

    .line 41
    invoke-virtual {v6}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ip address"

    .line 42
    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "networkInterfaces"

    .line 43
    invoke-virtual {v2, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/String;

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v13

    const-string v13, "other->"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v11, v6

    invoke-static {v14, v11}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->m(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :cond_8
    move-object/from16 v7, p1

    move-object/from16 v26, v13

    const/4 v6, 0x0

    :goto_6
    const/4 v2, 0x2

    const-string v11, "upState"

    if-lez v15, :cond_9

    move/from16 v13, p3

    if-eq v13, v2, :cond_a

    move-object/from16 v14, v19

    const-wide/16 v6, 0x0

    .line 45
    :try_start_3
    invoke-virtual {v12, v14, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v29

    add-long v0, v0, v29

    .line 46
    invoke-virtual {v12, v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 47
    invoke-virtual {v12, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_7

    :cond_9
    move/from16 v13, p3

    const/4 v0, -0x1

    .line 48
    invoke-virtual {v12, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_a
    :goto_7
    const-string v0, "downState"

    if-lez v3, :cond_b

    if-eq v13, v2, :cond_c

    move-object/from16 v1, v18

    const-wide/16 v2, 0x0

    .line 49
    :try_start_4
    invoke-virtual {v12, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 50
    invoke-virtual {v12, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_8

    :cond_b
    const/4 v1, -0x1

    .line 52
    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_c
    :goto_8
    move-wide/from16 v4, v24

    .line 53
    invoke-virtual {v12, v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, v26

    .line 54
    invoke-virtual {v12, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const/4 v0, -0x1

    if-ne v13, v0, :cond_e

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTrafficStatsData  term --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    const-string v0, "frequency"

    const-string v2, "300"

    move-object/from16 v3, v28

    .line 57
    invoke-virtual {v1, v3, v0, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    move-object/from16 v6, v21

    const-wide/16 v7, 0x0

    .line 59
    invoke-virtual {v12, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    div-long/2addr v6, v4

    sub-long/2addr v2, v6

    .line 60
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    cmp-long v0, v2, v4

    if-gez v0, :cond_d

    return-void

    :cond_d
    const/4 v3, 0x1

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    .line 61
    :try_start_5
    invoke-direct {v2, v0, v1, v12, v3}, Lcom/cndatacom/traffic/TrafficStatsManager;->uploadTrafficStatsData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lorg/json/JSONObject;Z)V

    goto :goto_a

    :cond_e
    move-object/from16 v2, p0

    move-object/from16 v0, p1

    if-nez v13, :cond_f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTrafficStatsData time  upload --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 63
    invoke-direct {v2, v0, v1, v12, v3}, Lcom/cndatacom/traffic/TrafficStatsManager;->uploadTrafficStatsData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lorg/json/JSONObject;Z)V

    goto :goto_a

    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTrafficStatsData  update --> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :cond_10
    move-object v2, v1

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v2, v1

    .line 65
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method

.method private uploadTrafficStatsData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lorg/json/JSONObject;Z)V
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "mac"

    const-string v3, "ticket"

    const-string v4, "stattype"

    const-string v5, "start"

    const-string v6, "brasip"

    const-string v7, "ipv4"

    const-string v9, "schoolid"

    const-string v10, "account"

    const-string v11, "timestamp"

    const-string v12, "stop"

    const-string v13, "down"

    const-string v14, "up"

    const-string v15, ""

    .line 1
    :try_start_0
    invoke-virtual {v1, v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const-wide/16 v2, 0x0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 3
    invoke-virtual {v1, v14, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 4
    invoke-virtual {v1, v13, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 5
    iget-wide v2, v8, Lcom/cndatacom/traffic/TrafficStatsManager;->mLastUp:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    move-wide/from16 v22, v4

    iget-wide v3, v8, Lcom/cndatacom/traffic/TrafficStatsManager;->mLastDown:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    iput v2, v8, Lcom/cndatacom/traffic/TrafficStatsManager;->mCurCount:I

    goto :goto_1

    :cond_1
    move-wide/from16 v22, v4

    .line 7
    :goto_0
    iget v3, v8, Lcom/cndatacom/traffic/TrafficStatsManager;->mCurCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v8, Lcom/cndatacom/traffic/TrafficStatsManager;->mCurCount:I

    :goto_1
    move-wide/from16 v3, v22

    .line 8
    iput-wide v3, v8, Lcom/cndatacom/traffic/TrafficStatsManager;->mLastUp:J

    .line 9
    iput-wide v6, v8, Lcom/cndatacom/traffic/TrafficStatsManager;->mLastDown:J

    .line 10
    iget v5, v8, Lcom/cndatacom/traffic/TrafficStatsManager;->mCurCount:I

    iget v2, v8, Lcom/cndatacom/traffic/TrafficStatsManager;->mMaxCount:I

    if-ne v5, v2, :cond_2

    const/4 v2, 0x0

    .line 11
    iput v2, v8, Lcom/cndatacom/traffic/TrafficStatsManager;->mCurCount:I

    const-string v5, "[MODULE_TRAFFIC] "

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v8, v2

    invoke-static {v5, v8}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->m(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    const-wide/16 v22, 0x400

    .line 13
    div-long v4, v3, v22

    invoke-virtual {v1, v14, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 14
    div-long v6, v6, v22

    invoke-virtual {v1, v13, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1, v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    invoke-virtual {v1, v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-virtual {v1, v9, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ostype"

    const-string v4, "4"

    .line 19
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v3, v21

    .line 20
    invoke-virtual {v1, v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v3, v20

    .line 21
    invoke-virtual {v1, v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v3, v19

    .line 22
    invoke-virtual {v1, v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v1, v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v3, 0x0

    .line 24
    invoke-virtual {v1, v14, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v0, v14, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v1, v13, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v0, v13, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "0"

    move-object/from16 v4, v18

    .line 26
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v3, 0x0

    .line 27
    invoke-virtual {v1, v11, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v3, v17

    .line 28
    invoke-virtual {v1, v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v3, v16

    .line 29
    invoke-virtual {v1, v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "handleTrafficStatsData  upload -->"

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const-string v1, "StatsInfor"

    const/4 v2, 0x0

    move-object/from16 v8, p2

    .line 31
    invoke-virtual {v8, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 32
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/cndatacom/traffic/TrafficStatsManager;->clienthotspotinfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Lorg/json/JSONArray;Landroid/location/Location;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 33
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/cndatacom/traffic/TrafficStatsManager;->clienthotspotinfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Lorg/json/JSONArray;Landroid/location/Location;Ljava/lang/String;)Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    const-string v0, "Key_TrafficStats"

    .line 34
    invoke-virtual {v8, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->removePrivateConfig(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public changeNet(Landroid/content/Context;)V
    .locals 3

    const-string v0, "handleTrafficStatsData  changeNet --> "

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v0

    iget-object v2, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->isTaskRunning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v0

    iget-object v2, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancel(I)V

    .line 5
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/cndatacom/traffic/TrafficStatsManager;->handleTrafficStatsData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;I)V

    .line 6
    :cond_0
    iput-object v1, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->isTaskRunning(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancel(I)V

    .line 10
    :cond_2
    iput-object v1, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    :cond_3
    return-void
.end method

.method public release(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/cndatacom/traffic/TrafficStatsManager;->handleTrafficStatsData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;I)V

    const-string p1, "handleTrafficStatsData  release --> "

    .line 2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancel(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancel(I)V

    :cond_1
    const/4 p1, 0x0

    .line 7
    sput-object p1, Lcom/cndatacom/traffic/TrafficStatsManager;->_TrafficStatsManager:Lcom/cndatacom/traffic/TrafficStatsManager;

    return-void
.end method

.method public start(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Z)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "Key_TrafficStats"

    const-string v4, ""

    const-string v5, "600"

    const-string v6, "uploadtime"

    const-string v7, "300"

    const-string v8, "collecttime"

    const-string v9, "StatsInfor"

    const/4 v10, 0x0

    .line 1
    invoke-virtual {v3, v9, v10}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    return-void

    :cond_0
    const-wide/16 v10, -0x1

    const-wide/16 v12, 0x3e8

    .line 3
    :try_start_0
    iput-wide v10, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mLastUp:J

    .line 4
    iput-wide v10, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mLastDown:J

    const/4 v10, 0x0

    .line 5
    iput v10, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mCurCount:I

    const-string v11, "maxCount"

    .line 6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mMaxCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v9, v11, v14}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7
    iget v14, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mMaxCount:I

    invoke-static {v11, v14}, Lcom/cndatacom/sdk/portal/util/CdcUtil;->toInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mMaxCount:I

    const/4 v11, 0x1

    if-eqz p3, :cond_3

    .line 8
    invoke-direct {v1, v2, v3, v11}, Lcom/cndatacom/traffic/TrafficStatsManager;->handleTrafficStatsData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {v3, v9, v8, v7}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 13
    new-instance v0, Lcom/cndatacom/traffic/TrafficStatsManager$1;

    invoke-direct {v0, v1, v2, v3}, Lcom/cndatacom/traffic/TrafficStatsManager$1;-><init>(Lcom/cndatacom/traffic/TrafficStatsManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    iput-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    .line 14
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v14

    mul-long v18, v7, v12

    iget-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v19}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    .line 15
    :cond_1
    iget-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {v3, v9, v6, v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 18
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 19
    new-instance v0, Lcom/cndatacom/traffic/TrafficStatsManager$2;

    invoke-direct {v0, v1, v2, v3}, Lcom/cndatacom/traffic/TrafficStatsManager$2;-><init>(Lcom/cndatacom/traffic/TrafficStatsManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    iput-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    .line 20
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v6

    mul-long v10, v4, v12

    iget-object v9, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    move-wide v7, v10

    invoke-virtual/range {v6 .. v11}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    :cond_2
    return-void

    .line 21
    :cond_3
    :try_start_1
    invoke-virtual {v3, v0, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 22
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 23
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v14, "loginTime"

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    div-long v10, v16, v12

    invoke-virtual {v15, v14, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    .line 25
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleTrafficStatsData  oldLogin --> "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v11, v14

    invoke-static {v11}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 26
    invoke-direct {v1, v2, v3, v15, v10}, Lcom/cndatacom/traffic/TrafficStatsManager;->uploadTrafficStatsData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lorg/json/JSONObject;Z)V

    .line 27
    :cond_4
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "ticket"

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getTicket()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "start"

    .line 29
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-static {v14}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v14

    .line 31
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v12

    const-string v11, "start_totalTxBytes"

    .line 32
    invoke-virtual {v10, v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v11, "start_mobileTxBytes"

    .line 33
    invoke-virtual {v10, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sub-long/2addr v14, v12

    const-string v11, "start_up"

    .line 34
    invoke-virtual {v10, v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v11

    .line 36
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v13

    const-string v15, "start_totalRxBytes"

    .line 37
    invoke-virtual {v10, v15, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v15, "start_mobileRxBytes"

    .line 38
    invoke-virtual {v10, v15, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sub-long/2addr v11, v13

    const-string v13, "start_down"

    .line 39
    invoke-virtual {v10, v13, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v11, "up"

    const/4 v12, 0x0

    .line 40
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "down"

    .line 41
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "account"

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v11

    const-string v12, "ipv4"

    .line 44
    invoke-virtual {v11}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getWlanacip()Ljava/lang/String;

    move-result-object v11

    const-string v12, "brasip"

    .line 46
    invoke-virtual {v10, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v3, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "schoolid"

    .line 48
    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "ostype"

    const-string v11, "4"

    .line 49
    invoke-virtual {v10, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "stattype"

    const-string v11, "0"

    .line 50
    invoke-virtual {v10, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "time"

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 52
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleTrafficStatsData  save --> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v4, v12

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 53
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    iget-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-nez v0, :cond_5

    .line 55
    invoke-virtual {v3, v9, v8, v7}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 57
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 58
    new-instance v0, Lcom/cndatacom/traffic/TrafficStatsManager$1;

    invoke-direct {v0, v1, v2, v3}, Lcom/cndatacom/traffic/TrafficStatsManager$1;-><init>(Lcom/cndatacom/traffic/TrafficStatsManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    iput-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    .line 59
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    mul-long v14, v7, v11

    iget-object v13, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    move-wide v11, v14

    invoke-virtual/range {v10 .. v15}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    .line 60
    :cond_5
    iget-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-nez v0, :cond_7

    .line 61
    invoke-virtual {v3, v9, v6, v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 63
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 64
    new-instance v0, Lcom/cndatacom/traffic/TrafficStatsManager$2;

    invoke-direct {v0, v1, v2, v3}, Lcom/cndatacom/traffic/TrafficStatsManager$2;-><init>(Lcom/cndatacom/traffic/TrafficStatsManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    :goto_0
    iput-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    .line 65
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v6

    const-wide/16 v2, 0x3e8

    mul-long v10, v4, v2

    iget-object v9, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    move-wide v7, v10

    invoke-virtual/range {v6 .. v11}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 66
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    iget-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-nez v0, :cond_6

    .line 68
    invoke-virtual {v3, v9, v8, v7}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 70
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 71
    new-instance v0, Lcom/cndatacom/traffic/TrafficStatsManager$1;

    invoke-direct {v0, v1, v2, v3}, Lcom/cndatacom/traffic/TrafficStatsManager$1;-><init>(Lcom/cndatacom/traffic/TrafficStatsManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    iput-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    .line 72
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    mul-long v14, v7, v11

    iget-object v13, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    move-wide v11, v14

    invoke-virtual/range {v10 .. v15}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    .line 73
    :cond_6
    iget-object v0, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-nez v0, :cond_7

    .line 74
    invoke-virtual {v3, v9, v6, v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 76
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 77
    new-instance v0, Lcom/cndatacom/traffic/TrafficStatsManager$2;

    invoke-direct {v0, v1, v2, v3}, Lcom/cndatacom/traffic/TrafficStatsManager$2;-><init>(Lcom/cndatacom/traffic/TrafficStatsManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    goto :goto_0

    :cond_7
    :goto_1
    return-void

    .line 78
    :goto_2
    iget-object v4, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-nez v4, :cond_8

    .line 79
    invoke-virtual {v3, v9, v8, v7}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 81
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 82
    new-instance v4, Lcom/cndatacom/traffic/TrafficStatsManager$1;

    invoke-direct {v4, v1, v2, v3}, Lcom/cndatacom/traffic/TrafficStatsManager$1;-><init>(Lcom/cndatacom/traffic/TrafficStatsManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    iput-object v4, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    .line 83
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    mul-long v14, v7, v11

    iget-object v13, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    move-wide v11, v14

    invoke-virtual/range {v10 .. v15}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    .line 84
    :cond_8
    iget-object v4, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-nez v4, :cond_9

    .line 85
    invoke-virtual {v3, v9, v6, v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 87
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 88
    new-instance v6, Lcom/cndatacom/traffic/TrafficStatsManager$2;

    invoke-direct {v6, v1, v2, v3}, Lcom/cndatacom/traffic/TrafficStatsManager$2;-><init>(Lcom/cndatacom/traffic/TrafficStatsManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    iput-object v6, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    .line 89
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v7

    const-wide/16 v2, 0x3e8

    mul-long v11, v4, v2

    iget-object v10, v1, Lcom/cndatacom/traffic/TrafficStatsManager;->mUploadWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    move-wide v8, v11

    invoke-virtual/range {v7 .. v12}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    .line 90
    :cond_9
    throw v0
.end method
