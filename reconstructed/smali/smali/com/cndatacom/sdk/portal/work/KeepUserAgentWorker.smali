.class public Lcom/cndatacom/sdk/portal/work/KeepUserAgentWorker;
.super Ljava/lang/Object;
.source "KeepUserAgentWorker.java"


# static fields
.field private static final INDEX_KEY:Ljava/lang/String; = "SystemIdentificationURL"

.field private static final LOCAL_CUR_DATA_KEY:Ljava/lang/String; = "LocalCurUserAgentKey"

.field private static final LOCAL_DATA_KEY:Ljava/lang/String; = "LocalUserAgentKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurUserAgentData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Ljava/lang/String;
    .locals 1

    const-string p0, "LocalCurUserAgentKey"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKeepUserAgent(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 10

    const-string v0, "utf-8"

    const-string v1, "validTime"

    const-string v2, "clientTag"

    const-string v3, "data"

    const-string v4, ""

    :try_start_0
    const-string v5, "SystemIdentificationURL"

    const/4 v6, 0x0

    .line 1
    invoke-virtual {p1, v5, v6}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string p0, "getKeepUserAgent url is null"

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    .line 6
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    const-string v8, "clientid"

    .line 7
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "cid"

    .line 8
    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ostype"

    const-string v8, "4"

    .line 9
    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "versions"

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v6, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    new-instance v6, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {v6}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {v6, v5, p0, v7}, Lcom/cndatacom/sdk/portal/http/HttpClient;->get(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "getKeepUserAgent httpcode ->"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    .line 14
    :try_start_1
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p0

    new-array v5, v7, [Ljava/lang/String;

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 16
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    const/4 v6, -0x1

    .line 17
    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    .line 18
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 19
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 20
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    .line 21
    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "9vApxLk5G3PAsJrM"

    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "FnJL7EDzjqWjcaY9"

    .line 24
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 25
    new-instance v6, Ljava/lang/String;

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3DecodeCBC([B[B[B)[B

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 26
    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v5, v0, p0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3DecodeCBC([B[B[B)[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v8}, Lcom/cndatacom/sdk/portal/work/KeepUserAgentWorker;->toLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 28
    invoke-virtual {v4, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    invoke-static {v2, v3}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseTimeToYMDHMSString(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "validTimeText"

    .line 30
    invoke-virtual {v4, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-array p0, v7, [Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKeepUserAgent ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v8

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    const-string p0, "LocalUserAgentKey"

    .line 32
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 33
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    goto :goto_0

    :cond_1
    new-array p1, v7, [Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v8

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static loadCurUserAgentData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 8

    const-string p0, "LocalUserAgentKey"

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "LocalCurUserAgentKey"

    if-nez v2, :cond_0

    .line 3
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "validTime"

    const-wide/16 v4, 0x0

    .line 4
    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 5
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    const-string p0, "clientTag"

    .line 6
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {p1, v3, p0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 8
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1, v3, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 10
    invoke-virtual {p1, p0, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 11
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static toLong(Ljava/lang/String;I)J
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    int-to-long p0, p1

    return-wide p0
.end method
