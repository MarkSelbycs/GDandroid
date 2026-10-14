.class public Lcom/cndatacom/safecollection/SafeCollectionManager;
.super Ljava/lang/Object;
.source "SafeCollectionManager.java"


# static fields
.field private static _Safe_CollectionManager:Lcom/cndatacom/safecollection/SafeCollectionManager;


# instance fields
.field private mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/safecollection/SafeCollectionManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cndatacom/safecollection/SafeCollectionManager;->uploadLocationAndHotdot(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    return-void
.end method

.method private clienthotspotinfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Lorg/json/JSONArray;Landroid/location/Location;Ljava/lang/String;)V
    .locals 7

    const-string p5, ""

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v2

    .line 2
    invoke-virtual {p2, p5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "account"

    .line 4
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "clientid"

    .line 5
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ostype"

    const-string v6, "4"

    .line 6
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "mac"

    .line 7
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "version"

    .line 8
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "schoolid"

    .line 9
    invoke-virtual {v4, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ipv4"

    .line 10
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ipv6"

    .line 11
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "gateway"

    .line 12
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "brasip"

    .line 13
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getWlanacip()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mask"

    .line 14
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "hotspotmac"

    .line 15
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "hotspot"

    .line 16
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getSsid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "hotspotduration"

    .line 17
    invoke-virtual {v4, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    .line 18
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "nearbyhotspots"

    .line 19
    invoke-virtual {v4, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "utf-8"

    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "xfokM0h3GcRAqRZT "

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string p4, "aLX32gHbG3fBxNpQ"

    .line 22
    invoke-virtual {p4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    .line 23
    invoke-virtual {p6, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p5

    invoke-static {p1, p4, p5}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeCBC([B[B[B)[B

    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p1

    const-string p4, "token"

    .line 25
    invoke-virtual {v4, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "starttime"

    .line 26
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    invoke-static {p4}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDHMSString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 28
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p4, "9vApxLk5G3PAsJrM"

    .line 29
    invoke-virtual {p4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    const-string p5, "FnJL7EDzjqWjcaY9"

    .line 30
    invoke-virtual {p5, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p5

    .line 31
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p4, p5, p1}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeCBC([B[B[B)[B

    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance p4, Landroid/util/ArrayMap;

    invoke-direct {p4}, Landroid/util/ArrayMap;-><init>()V

    const-string p5, "Content-Type"

    const-string v2, "text/plain;charset=utf-8"

    .line 34
    invoke-virtual {p4, p5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance p5, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p5}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p5, p3, p4, p1}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "clienthotspotinfo httpcode ->"

    if-eqz p1, :cond_3

    .line 36
    :try_start_2
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 37
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p3

    .line 39
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "code"

    const/4 p5, -0x1

    .line 40
    invoke-virtual {p4, p3, p5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    new-array p4, v1, [Ljava/lang/String;

    .line 41
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "clienthotspotinfo code ->"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p4, v0

    invoke-static {p4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    :cond_2
    new-array p3, v1, [Ljava/lang/String;

    .line 42
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-array p3, v1, [Ljava/lang/String;

    .line 43
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/String;

    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "clienthotspotinfo error ->"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/cndatacom/safecollection/SafeCollectionManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/cndatacom/safecollection/SafeCollectionManager;->_Safe_CollectionManager:Lcom/cndatacom/safecollection/SafeCollectionManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cndatacom/safecollection/SafeCollectionManager;

    invoke-direct {v0}, Lcom/cndatacom/safecollection/SafeCollectionManager;-><init>()V

    sput-object v0, Lcom/cndatacom/safecollection/SafeCollectionManager;->_Safe_CollectionManager:Lcom/cndatacom/safecollection/SafeCollectionManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/cndatacom/safecollection/SafeCollectionManager;->_Safe_CollectionManager:Lcom/cndatacom/safecollection/SafeCollectionManager;

    return-object v0
.end method

.method private uploadLocationAndHotdot(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "SafetyDataCollectionURL"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p2, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "clienthotspotinfo url is null"

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "ssid"

    const-string v2, "0"

    .line 4
    invoke-virtual {p2, v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rssi"

    .line 5
    invoke-virtual {p2, v0, v4, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "wifi"

    .line 7
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 10
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget v8, v7, Landroid/net/wifi/ScanResult;->level:I

    const/16 v9, -0x4c

    if-gt v8, v9, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 13
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "mac"

    .line 14
    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 16
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    const-string v8, ""

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 17
    invoke-direct/range {v2 .. v8}, Lcom/cndatacom/safecollection/SafeCollectionManager;->clienthotspotinfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Lorg/json/JSONArray;Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public release(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cndatacom/safecollection/SafeCollectionManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/cndatacom/safecollection/SafeCollectionManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancel(I)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    sput-object p1, Lcom/cndatacom/safecollection/SafeCollectionManager;->_Safe_CollectionManager:Lcom/cndatacom/safecollection/SafeCollectionManager;

    return-void
.end method

.method public start(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 10

    const-string v0, "SafetyDataCollectionURL"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p2, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "clienthotspotinfo url is null"

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "time"

    const-string v2, "0"

    .line 4
    invoke-virtual {p2, v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v8, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    .line 6
    new-instance v0, Lcom/cndatacom/safecollection/SafeCollectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cndatacom/safecollection/SafeCollectionManager$1;-><init>(Lcom/cndatacom/safecollection/SafeCollectionManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    iput-object v0, p0, Lcom/cndatacom/safecollection/SafeCollectionManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    .line 7
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v4

    iget-object v7, p0, Lcom/cndatacom/safecollection/SafeCollectionManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    move-wide v5, v8

    invoke-virtual/range {v4 .. v9}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    :cond_1
    return-void
.end method
