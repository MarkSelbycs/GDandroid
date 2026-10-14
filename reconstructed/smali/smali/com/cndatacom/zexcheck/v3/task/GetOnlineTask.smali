.class public Lcom/cndatacom/zexcheck/v3/task/GetOnlineTask;
.super Ljava/lang/Object;
.source "GetOnlineTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOnlineClientInfo(Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "%"

    const-string v1, ""

    const-string v2, "utf-8"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getGetUrl()Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getSchoolId()Ljava/lang/String;

    move-result-object v6

    .line 4
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    const-string v8, "Content-Type"

    const-string v9, "application/json"

    .line 5
    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v11, "gwip"

    .line 8
    invoke-virtual {v8, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "schoolid"

    .line 9
    invoke-virtual {v8, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "timestamp"

    .line 10
    invoke-virtual {v8, v11, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "9vApxLk5G3PAsJrM"

    .line 12
    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v9, "FnJL7EDzjqWjcaY9"

    .line 13
    invoke-virtual {v9, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 14
    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v6, v9, v2}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeCBC([B[B[B)[B

    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    const-string v5, "sign"

    .line 16
    invoke-virtual {v8, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ExCheckManager GetOnlineTask postObject->"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    invoke-static {v5}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 18
    new-instance v5, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {v5}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v4, v7, v6}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 20
    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/String;

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExCheckManager GetOnlineTask getOnlineClientInfo->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 22
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    .line 23
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    const/4 v5, -0x1

    .line 24
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    .line 25
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v6, "data"

    .line 26
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    move v6, v9

    .line 28
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 29
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 30
    new-instance v8, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;

    invoke-direct {v8}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;-><init>()V

    const-string v10, "ticket"

    .line 31
    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ipv4"

    .line 32
    invoke-virtual {v7, v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ipv6"

    .line 33
    invoke-virtual {v7, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-virtual {v8, v10}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->setTicket(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->isIpv4()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 36
    invoke-virtual {v8, v11}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->setIp(Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v5, :cond_2

    .line 38
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 39
    :cond_2
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-virtual {v8, v7}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->setIp(Ljava/lang/String;)V

    .line 41
    :goto_1
    invoke-virtual {v8, v9}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->setRecvUdp(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getUdpPort()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->setUdpPort(I)V

    .line 43
    invoke-virtual {v8}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->getIp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->isIpv4()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {p0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 46
    :cond_4
    invoke-virtual {p0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v4

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object v3
.end method
