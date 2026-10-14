.class public Lcom/cndatacom/campus/work/WiFiInfoWorker;
.super Lcom/cndatacom/sdk/portal/work/WorkerInfo;
.source "WiFiInfoWorker.java"


# static fields
.field public static d:Lcom/cndatacom/campus/work/WiFiInfoWorker;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;-><init>()V

    const-string v0, "WiFiCollectUploadURL"

    .line 2
    iput-object v0, p0, Lcom/cndatacom/campus/work/WiFiInfoWorker;->a:Ljava/lang/String;

    const-string v0, "LocalWiFiInfoKey"

    .line 3
    iput-object v0, p0, Lcom/cndatacom/campus/work/WiFiInfoWorker;->b:Ljava/lang/String;

    const-string v0, "LocalUploadWiFiInfoKey"

    .line 4
    iput-object v0, p0, Lcom/cndatacom/campus/work/WiFiInfoWorker;->c:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/cndatacom/campus/work/WiFiInfoWorker;
    .locals 2

    .line 1
    sget-object v0, Lcom/cndatacom/campus/work/WiFiInfoWorker;->d:Lcom/cndatacom/campus/work/WiFiInfoWorker;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cndatacom/campus/work/WiFiInfoWorker;

    invoke-direct {v0}, Lcom/cndatacom/campus/work/WiFiInfoWorker;-><init>()V

    sput-object v0, Lcom/cndatacom/campus/work/WiFiInfoWorker;->d:Lcom/cndatacom/campus/work/WiFiInfoWorker;

    .line 3
    :cond_0
    sget-object v0, Lcom/cndatacom/campus/work/WiFiInfoWorker;->d:Lcom/cndatacom/campus/work/WiFiInfoWorker;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stattime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isOpenSSID()Z

    move-result p2

    invoke-direct {v1, p1, p2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;-><init>(Landroid/content/Context;Z)V

    .line 4
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getWifiMac()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bssid"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getSsid()Ljava/lang/String;

    move-result-object p1

    const-string p2, "essid"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getRssi()I

    move-result p1

    const-string p2, "rssi"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5

    const-string v0, "LocalUploadWiFiInfoKey"

    .line 1
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    .line 2
    invoke-static {p1, v0, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "uploadWiFiInfo has done"

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    .line 6
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v3, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {v3}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    invoke-virtual {v3, p3, v2, p4}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, "uploadWiFiInfo httpcode ->"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    .line 8
    :try_start_1
    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-static {p1, v0, v1}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const-string p1, "LocalWiFiInfoKey"

    const-string p3, ""

    .line 12
    invoke-virtual {p2, p1, p3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 13
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    goto :goto_0

    :cond_1
    new-array p1, v3, [Ljava/lang/String;

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public release(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    invoke-static {}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->getInstance()Lcom/cndatacom/campus/work/WiFiInfoWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancel(I)V

    const/4 p1, 0x0

    .line 2
    sput-object p1, Lcom/cndatacom/campus/work/WiFiInfoWorker;->d:Lcom/cndatacom/campus/work/WiFiInfoWorker;

    return-void
.end method

.method public runTask()V
    .locals 2

    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->startTask(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    return-void
.end method

.method public startTask(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "LocalWiFiInfoKey"

    const-string v3, "WiFiCollectUploadURL"

    const-string v4, "#"

    const-string v5, ""

    const/4 v6, 0x0

    .line 1
    :try_start_0
    invoke-virtual {v1, v3, v6}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "uploadWiFiInfo url is null"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v7, "wifi"

    .line 4
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 6
    invoke-virtual {v1, v2, v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 8
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v1, v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v10

    .line 12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v13, "wifis"

    const-string v14, "cid"

    const-string v15, "version"

    move-object/from16 v16, v3

    const-string v3, "account"

    const/16 v17, 0x0

    if-lez v12, :cond_4

    move/from16 v12, v17

    .line 14
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v12, v0, :cond_4

    .line 15
    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v18, v6

    .line 16
    invoke-virtual {v0, v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {v0, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v2

    .line 18
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v5

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 22
    invoke-virtual/range {p0 .. p2}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->a(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p2

    move-object/from16 v6, v18

    move-object/from16 v2, v19

    move-object/from16 v5, v20

    goto :goto_0

    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v18, v6

    move/from16 v0, v17

    :goto_1
    if-nez v0, :cond_5

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clientid"

    .line 25
    invoke-virtual/range {p2 .. p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v0, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ostype"

    const/4 v2, 0x4

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v0, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 30
    invoke-virtual/range {p0 .. p2}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->a(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 31
    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 33
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    move/from16 v0, v17

    .line 34
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 35
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v2, v20

    .line 36
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 38
    invoke-virtual {v1, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v20, v2

    goto :goto_2

    .line 39
    :cond_7
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadWiFiInfo->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    .line 41
    invoke-virtual {v1, v2, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    move-object/from16 v3, v18

    .line 43
    :try_start_2
    invoke-virtual {v2, v0, v1, v3, v7}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->b(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string v0, "frequency"

    const-string v3, "1800"

    move-object/from16 v4, v16

    .line 44
    invoke-virtual {v1, v4, v0, v3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 46
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v3

    invoke-static {}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->getInstance()Lcom/cndatacom/campus/work/WiFiInfoWorker;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    invoke-virtual {v3, v4, v0, v1}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startOneTimeWorkDelayed(Lcom/cndatacom/sdk/portal/work/WorkerInfo;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    .line 47
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method
