.class public Lcom/cndatacom/sdk/portal/http/CdcProtocol;
.super Ljava/lang/Object;
.source "CdcProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;
    }
.end annotation


# static fields
.field public static final DETECTED_CAMPUS:I = 0xc8

.field public static final DETECTED_JUMP:I = 0xc9

.field public static final DETECTED_JUMP_INDEX:I = 0xca


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static auth(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 5

    .line 1
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    const-string v1, "auth-url"

    const-string v2, ""

    .line 2
    invoke-virtual {p1, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "300309"

    .line 4
    invoke-virtual {v0, p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    invoke-static {p2, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->getDomainUserId(Ljava/lang/String;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v2, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    invoke-direct {v2, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 7
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addTicket()Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v3

    const-string v4, "userid"

    invoke-virtual {v3, v4, p2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object p2

    const-string v3, "passwd"

    invoke-virtual {p2, v3, p3}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    .line 8
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "verify"

    invoke-virtual {v2, p2, p4}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    .line 9
    :cond_1
    new-instance p2, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    const/16 p3, 0x7530

    invoke-direct {p2, p1, p3, p3}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;II)V

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->toBytes()[B

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->post(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseAuthXml(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getCdcCode()Ljava/lang/String;

    move-result-object p0

    const-string p1, "300"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 13
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getCdcCode()Ljava/lang/String;

    move-result-object p0

    const-string p1, "301"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {p2}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makeUiErrorCode(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getCdcCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static authOtherClient(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 8

    const-string v0, "auth-url"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 2
    invoke-static/range {v2 .. v7}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->authOtherClient(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0
.end method

.method public static authOtherClient(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 1

    .line 3
    new-instance p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "300309"

    .line 5
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    .line 6
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p3, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->getDomainUserId(Ljava/lang/String;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance p3, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    invoke-direct {p3, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    const-string v0, "userid"

    .line 9
    invoke-virtual {p3, v0, p0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object p0

    const-string v0, "passwd"

    invoke-virtual {p0, v0, p4}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object p0

    const-string p4, "ticket"

    invoke-virtual {p0, p4, p5}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    .line 10
    new-instance p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    invoke-direct {p0, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->toBytes()[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->post(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makeUiErrorCode(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p1, "100"

    .line 12
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makePortalErrorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0
.end method

.method public static checkVerifyCode(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string p0, "QueryVerificateCodeStatus"

    const-string v0, ""

    .line 1
    invoke-virtual {p1, p0, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string p1, "Eshore!@#"

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/FileUtil;->md5([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/FileUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "schoolid"

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "username"

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "timestamp"

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "authenticator"

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    const-string p2, "Content-Type"

    const-string p3, "application/json"

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p2, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p2}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p0, p1, p3}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 16
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "rescode"

    .line 17
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "11062000"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public static detect(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;ZZ)I
    .locals 10

    .line 1
    sget-object v6, Lcom/cndatacom/sdk/portal/BuildConfig;->DETECT_URLS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v0, -0x1

    move v8, v7

    .line 2
    :goto_0
    array-length v1, v6

    if-ge v8, v1, :cond_6

    .line 3
    aget-object v0, v6, v8

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v9, ""

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v0, "DetectRedirectUrl"

    .line 5
    invoke-virtual {p1, v0, v9}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detect redirectUrl->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "http://www.189.cn"

    :cond_1
    :goto_1
    move-object v3, v0

    new-array v0, v2, [Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detect->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    if-nez v8, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, p2

    move v4, p3

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detectConfig(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;ZZZ)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0xc8

    goto :goto_3

    :cond_3
    const-string v2, "201"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0xc9

    goto :goto_3

    :cond_4
    const-string v2, "202"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "DetectIndexUrl"

    .line 14
    invoke-virtual {p1, v1, v9}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 15
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 17
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_3
    return v0
.end method

.method public static detectConfig(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;IIZZ)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-static/range {v0 .. v7}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detectConfig(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;IIZZZ)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0
.end method

.method public static detectConfig(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;IIZZZ)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 1

    .line 4
    new-instance p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    .line 5
    new-instance v0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    invoke-direct {v0, p1, p3, p4}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;II)V

    invoke-virtual {v0, p2, p7, p5}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->get(Ljava/lang/String;ZZ)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;

    move-result-object p2

    if-eqz p7, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->getRedirectUrl()Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 p5, 0x0

    .line 8
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save redirectUrl->"

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    aput-object p7, p4, p5

    invoke-static {p4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const-string p4, "DetectRedirectUrl"

    .line 9
    invoke-virtual {p1, p4, p3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result p3

    const-string p4, "201"

    if-eqz p3, :cond_4

    .line 11
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "<!--//config.campus.js.chinatelecom.com"

    .line 12
    invoke-virtual {p3, p5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p5

    if-gez p5, :cond_1

    .line 13
    invoke-virtual {p0, p4}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    :cond_1
    add-int/lit8 p5, p5, 0x27

    const-string p6, "//config.campus.js.chinatelecom.com-->"

    .line 14
    invoke-virtual {p3, p6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p6

    if-gez p6, :cond_2

    .line 15
    invoke-virtual {p0, p4}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    .line 16
    :cond_2
    invoke-virtual {p3, p5, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 17
    new-instance p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->isHasIndexPage()Z

    move-result p5

    if-eqz p5, :cond_3

    .line 19
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->getFinalUrl()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_3

    const-string p5, "DetectIndexUrl"

    .line 21
    invoke-virtual {p1, p5, p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 22
    :cond_3
    invoke-static {p4, p3, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseDetectXml(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 23
    invoke-virtual {p1, p4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setConfigObject(Ljava/util/concurrent/ConcurrentHashMap;)V

    const-string p1, "200"

    .line 24
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    .line 25
    :cond_4
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->isHasIndexPage()Z

    move-result p1

    const-string p3, ""

    if-eqz p1, :cond_5

    if-eqz p6, :cond_5

    const-string p1, "202"

    .line 26
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getHttpCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setSubErrorCode(Ljava/lang/String;)V

    return-object p0

    .line 28
    :cond_5
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->isHasIndexPage()Z

    move-result p1

    if-nez p1, :cond_6

    .line 29
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->getFinalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->getFinalUrl()Ljava/lang/String;

    move-result-object p1

    const-string p5, "detect.html"

    invoke-virtual {p1, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const/16 p1, 0x190

    .line 30
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getHttpCode()I

    move-result p5

    if-gt p1, p5, :cond_6

    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getHttpCode()I

    move-result p1

    const/16 p5, 0x258

    if-gt p1, p5, :cond_6

    .line 31
    invoke-virtual {p0, p4}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    .line 32
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getHttpCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0
.end method

.method public static detectConfig(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;ZZ)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 7

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detectConfig(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;IIZZ)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0
.end method

.method public static detectConfig(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;ZZZ)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 8

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 3
    invoke-static/range {v0 .. v7}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detectConfig(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;IIZZZ)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0
.end method

.method public static getAdvData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ADInfo;
    .locals 7

    const-string v0, "data"

    const-string v1, "NewSplashAndDialogAD"

    const-string v2, ""

    .line 1
    invoke-virtual {p1, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string p0, "NewSplashAndDialogAD url is null"

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-object v4

    .line 4
    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-string v5, "ostype"

    const-string v6, "4"

    .line 5
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "version"

    invoke-virtual {v3, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    const-string v5, "dialupaccount"

    invoke-virtual {v3, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId()Ljava/lang/String;

    move-result-object p0

    const-string v5, "cid"

    invoke-virtual {v3, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "clientid"

    invoke-virtual {v3, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key"

    const-string p1, "0"

    .line 10
    invoke-virtual {v3, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "adtype"

    const-string p1, "1"

    .line 11
    invoke-virtual {v3, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p0, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {p0, v1, v4, v3}, Lcom/cndatacom/sdk/portal/http/HttpClient;->get(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 15
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    const/4 v3, -0x1

    .line 16
    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    .line 17
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 20
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 21
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ADInfo;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/ADInfo;-><init>()V

    const-string v3, "href"

    .line 22
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cndatacom/sdk/portal/entity/ADInfo;->setHref(Ljava/lang/String;)V

    const-string v3, "src"

    .line 23
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cndatacom/sdk/portal/entity/ADInfo;->setUrl(Ljava/lang/String;)V

    const-string p1, "type"

    .line 24
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cndatacom/sdk/portal/entity/ADInfo;->setType(I)V

    const-string p1, "adid"

    .line 25
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cndatacom/sdk/portal/entity/ADInfo;->setAdid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdvUrl result ->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v4
.end method

.method public static getDaMod(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 4

    .line 1
    new-instance p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    invoke-direct {v1, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    new-instance v2, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    invoke-direct {v2, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "host-name"

    .line 4
    invoke-virtual {v2, v3, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addNetInfo()Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v2

    const-string v3, "ostag"

    .line 6
    invoke-virtual {v2, v3, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gwip"

    invoke-virtual {p1, v2, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->toBytes()[B

    move-result-object p1

    .line 9
    invoke-virtual {v1, p2, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->getDaMod(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getCdcCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "0"

    .line 11
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makeUiErrorCode(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0
.end method

.method private static getDomainUserId(Ljava/lang/String;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Ljava/lang/String;
    .locals 3

    const-string v0, "modify"

    :try_start_0
    const-string v1, "account"

    const-string v2, ""

    .line 1
    invoke-virtual {p1, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Lorg/json/JSONObject;

    .line 8
    invoke-static {p0, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->handleModify(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 9
    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    .line 10
    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {p0, v1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->handleModify(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-object p0
.end method

.method public static getSchoolInfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 10

    const-string v0, "area"

    const-string v1, "domain"

    .line 1
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId()Ljava/lang/String;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EXPIRED_KEY"

    const-string v5, ""

    .line 3
    invoke-static {p0, v4, v5}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    :cond_0
    const-string v2, "SchoolInfoURL"

    .line 5
    invoke-virtual {p1, v2, v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "getSchoolInfo url is null"

    .line 7
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v3

    .line 9
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    const-string v7, "ostype"

    const-string v8, "4"

    .line 10
    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "version"

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "account"

    .line 12
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "ticket"

    .line 13
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getTicket()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "gateway"

    .line 14
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "ipv4"

    .line 15
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "ipv6"

    .line 16
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v3, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {v3}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v6}, Lcom/cndatacom/sdk/portal/http/HttpClient;->get(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 20
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    const/4 v6, -0x1

    .line 21
    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "schoolid"

    .line 22
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "schoolID"

    .line 25
    invoke-virtual {p1, v8, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 26
    invoke-virtual {p1, v0, v7}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 27
    invoke-virtual {p1, v1, v6}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 28
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-string p1, "expired"

    .line 29
    invoke-virtual {v3, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p0, v4, p1}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSchoolInfo error ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static getVerifyCode(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string p0, "QueryAuthCode"

    const-string v0, ""

    .line 1
    invoke-virtual {p1, p0, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string p1, "Eshore!@#"

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/FileUtil;->md5([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/FileUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "schoolid"

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "username"

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "timestamp"

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "authenticator"

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    const-string p2, "Content-Type"

    const-string p3, "application/json"

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p2, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p2}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p0, p1, p3}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 16
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "rescode"

    .line 17
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method

.method private static handleModify(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "type"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "@"

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    const-string v1, "del-domain"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    :cond_3
    invoke-static {p0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_1
    return-object p0
.end method

.method private static handleQueryData(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "ticket"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "isSelf"

    if-eqz p2, :cond_0

    const-string p2, "1"

    .line 3
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p2, "0"

    .line 4
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method public static keep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->keep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0
.end method

.method public static keep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 6
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

    .line 2
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    :try_start_0
    const-string v1, "keep-url"

    const-string v2, ""

    .line 3
    invoke-virtual {p1, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "300309"

    .line 5
    invoke-virtual {v0, p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v2, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    invoke-direct {v2, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 8
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    goto :goto_0

    .line 10
    :cond_1
    new-instance p2, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    invoke-direct {p2, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 11
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addTicket()Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addNetInfo()Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->toBytes()[B

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->post(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseKeepXml(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    invoke-static {p2}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makeUiErrorCode(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v1, "keep exception: "

    aput-object v1, p1, p2

    const/4 p2, 0x1

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    return-object v0
.end method

.method public static onCheckUpdate(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lorg/json/JSONObject;
    .locals 9

    const-string v0, "&"

    const-string v1, "&amp;"

    const-string v2, ""

    .line 1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "UpdateCheck"

    .line 2
    invoke-virtual {p1, v4, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "errorCode"

    if-eqz v5, :cond_0

    :try_start_1
    const-string p0, "300309"

    .line 4
    invoke-virtual {v3, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 5
    :cond_0
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const-string v7, "areaCode"

    const-string v8, "zs"

    .line 6
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "osType"

    const-string v8, "androidphone"

    .line 7
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "dialType"

    const-string v8, "3"

    .line 8
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "verno"

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v7, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "CID"

    .line 10
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "account"

    .line 12
    invoke-virtual {v5, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p0, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/cndatacom/sdk/portal/http/HttpClient;->get(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 17
    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseUpdateXml([BLorg/json/JSONObject;)V

    const-string p0, "data"

    .line 20
    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->getErrorCode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v3
.end method

.method public static onQueryClient(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "query-url"

    const-string v1, ""

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "errorCode"

    if-eqz v1, :cond_0

    :try_start_1
    const-string p1, "300309"

    .line 4
    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    invoke-direct {v1, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    new-instance v3, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    invoke-direct {v3, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 6
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->toBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->post(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getTicket()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseQueryXml(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "clients"

    .line 10
    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_1
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makeUiErrorCode(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "subErrCode"

    .line 13
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method private static parseAuthXml(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 4

    .line 1
    new-instance p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseJsonFromXml(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "response"

    .line 4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    .line 8
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v3, "userid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {p1, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "@"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-static {v2, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 14
    :cond_2
    invoke-virtual {p1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setUserId(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    goto :goto_0

    :cond_3
    const-string p1, "0"

    .line 15
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    :cond_4
    const-string p1, "200115"

    .line 16
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0
.end method

.method private static parseDetectXml(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/cndatacom/sdk/portal/entity/ConfigInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "&"

    const-string v1, "&amp;"

    :try_start_0
    const-string v2, "<config>"

    const-string v3, "</config>"

    .line 1
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 3
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseJsonFromXml(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 8
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, -0x1

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x4b4d717b

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "funcfg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 13
    invoke-static {p2, v3, p0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseFunData(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lorg/json/JSONObject;Ljava/util/concurrent/ConcurrentHashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private static parseFunData(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lorg/json/JSONObject;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cndatacom/sdk/portal/entity/ConfigInfo;",
            "Lorg/json/JSONObject;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "Detect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FUN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "&amp;"

    const-string v4, "&"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->saveDetectUrlData(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static parseJsonFromXml(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lf2/p;->h(Ljava/lang/String;)Lf2/l;

    move-result-object p0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lf2/l;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method private static parseKeepXml(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 5

    .line 1
    new-instance p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseJsonFromXml(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "response"

    .line 4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    .line 8
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v3, "interval"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {p1, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "interval => "

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 11
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    invoke-virtual {p1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setKeepExpire(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    goto :goto_0

    :cond_2
    const-string p1, "0"

    .line 14
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    :cond_3
    const-string p1, "200115"

    .line 15
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0
.end method

.method private static parseQueryXml(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4

    const-string v0, "client"

    .line 1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseJsonFromXml(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "response"

    .line 4
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 8
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {v1, p0, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->handleQueryData(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_0
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 10
    check-cast p0, Lorg/json/JSONArray;

    move v0, v2

    .line 11
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v1, v3, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->handleQueryData(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "parseQueryXml exception: "

    aput-object v0, p1, v2

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method private static parseUpdateXml([BLorg/json/JSONObject;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "UTF-8"

    invoke-interface {v3, v4, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    if-eq p0, v2, :cond_8

    .line 4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-ne p0, v1, :cond_7

    const/4 p0, -0x1

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x1b1cc

    if-eq v5, v6, :cond_2

    const v6, 0x6ac9171

    if-eq v5, v6, :cond_1

    const v6, 0x6006c9b9

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "Mandatory"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move p0, v2

    goto :goto_1

    :cond_1
    const-string v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move p0, v0

    goto :goto_1

    :cond_2
    const-string v5, "pkg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move p0, v1

    :cond_3
    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_5

    .line 8
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&amp;"

    const-string v9, "&"

    .line 9
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 12
    :cond_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_7
    :goto_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "parseUpdateXml exception: "

    aput-object v1, p1, v0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static state(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    const-string v1, "state-url"

    const-string v2, ""

    .line 2
    invoke-virtual {p1, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "300309"

    .line 4
    invoke-virtual {v0, p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    invoke-direct {v0, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    new-instance v2, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    invoke-direct {v2, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 6
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addTicket()Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->toBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->post(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseAuthXml(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makeUiErrorCode(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0
.end method

.method public static term(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getTicket()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->term(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, ""

    .line 3
    invoke-virtual {p1, p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setTicket(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setExpire(Ljava/lang/String;J)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    :cond_0
    return-object p0
.end method

.method private static term(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 2

    const-string v0, "term-url"

    const-string v1, ""

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    new-instance p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    const-string p1, "300309"

    .line 15
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    .line 16
    :cond_0
    invoke-static {p0, p1, v0, p2, p3}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->term(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0
.end method

.method public static term(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 2

    .line 4
    new-instance p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    .line 5
    new-instance v0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    invoke-direct {v0, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    const-string v1, "ticket"

    .line 6
    invoke-virtual {v0, v1, p3}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object p3

    const-string v1, "reason"

    invoke-virtual {p3, v1, p4}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    .line 7
    new-instance p3, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    invoke-direct {p3, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 8
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->toBytes()[B

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->post(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getCdcCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "0"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getCdcCode()Ljava/lang/String;

    move-result-object p2

    const-string p4, "14"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makeUiErrorCode(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0
.end method

.method public static termOtherClient(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "8"

    .line 2
    invoke-static {p0, p1, p2, v1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->term(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    const-string p1, "errorCode"

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "subErrCode"

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static ticket(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 7

    .line 1
    new-instance p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    const-string v0, "ticket-url"

    const-string v1, ""

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "300309"

    .line 4
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    invoke-direct {v3, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    new-instance v4, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    invoke-direct {v4, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "host-name"

    .line 7
    invoke-virtual {v4, v6, v5}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addNetInfo()Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v4

    const-string v6, "ostag"

    .line 9
    invoke-virtual {v4, v6, v5}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v4

    .line 10
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v2

    const-string v5, "gwip"

    invoke-virtual {v4, v5, v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->toBytes()[B

    move-result-object v2

    .line 12
    invoke-virtual {v3, v0, v2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->post(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->parseJsonFromXml(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "response"

    .line 16
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ticket"

    .line 17
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "ticket => "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 18
    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const-string v4, "expire"

    .line 19
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "expire => "

    aput-object v3, v1, v6

    aput-object v0, v1, v5

    .line 20
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    invoke-virtual {p1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setTicket(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setExpire(Ljava/lang/String;J)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-string p1, "0"

    .line 23
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string p1, "200115"

    .line 24
    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    .line 25
    :cond_2
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makeUiErrorCode(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p0

    return-object p0
.end method

.method public static uploadLog(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 10

    const-string v0, "SubErrorData"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "uploadLog url is null"

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isUpload"

    const-string v4, "none"

    .line 5
    invoke-static {p0, v3, v4}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "uploadLog has done"

    .line 7
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v4

    .line 9
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const-string v6, "ErrType"

    const-string v7, "android"

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ErrCode"

    const-string v7, "10000"

    .line 11
    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Account"

    invoke-virtual {v5, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getIpType()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v6, "IPAddr"

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "361"

    .line 14
    invoke-virtual {p1, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "CID"

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ClientID"

    invoke-virtual {v5, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Version"

    invoke-virtual {v5, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_LOGCAT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v4, 0x0

    move v6, v4

    .line 19
    :goto_1
    array-length v7, v1

    const-string v8, ".zip"

    if-ge v6, v7, :cond_4

    .line 20
    aget-object v7, v1, v6

    .line 21
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 22
    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 23
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDCLogs_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDHMSString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 28
    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 29
    :cond_5
    invoke-static {p1, v1}, Lcom/cndatacom/sdk/portal/util/FileUtil;->toZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p0, "uploadLog files to zip is error"

    .line 30
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    return-void

    .line 31
    :cond_6
    new-instance p1, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v5, v6}, Lcom/cndatacom/sdk/portal/http/HttpClient;->uploadFile(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/io/File;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    .line 33
    invoke-static {p0, v3, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_7
    new-array p0, v5, [Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadLog files success ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    new-array p0, v5, [Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadLog files error ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static uploadModuleLog(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 10

    const-string v0, "SubErrorData"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "uploadModuleLog url is null"

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isUploadModuleLog"

    const-string v4, "none"

    .line 5
    invoke-static {p0, v3, v4}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "uploadModuleLog has done"

    .line 7
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v4

    .line 9
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const-string v6, "ErrType"

    const-string v7, "android"

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ErrCode"

    const-string v7, "10087"

    .line 11
    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Account"

    invoke-virtual {v5, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getIpType()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v6, "IPAddr"

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "361"

    .line 14
    invoke-virtual {p1, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "CID"

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ClientID"

    invoke-virtual {v5, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Version"

    invoke-virtual {v5, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_MODULE_LOGCAT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 19
    array-length v4, v1

    if-nez v4, :cond_3

    const-string p0, "uploadModuleLog no log file"

    .line 20
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v4, 0x0

    move v6, v4

    .line 21
    :goto_1
    array-length v7, v1

    const-string v8, ".zip"

    if-ge v6, v7, :cond_5

    .line 22
    aget-object v7, v1, v6

    .line 23
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 24
    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 25
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDCLogs_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDHMSString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 30
    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 31
    :cond_6
    invoke-static {p1, v1}, Lcom/cndatacom/sdk/portal/util/FileUtil;->toZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p0, "uploadModuleLog files to zip is error"

    .line 32
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    return-void

    .line 33
    :cond_7
    new-instance p1, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v5, v6}, Lcom/cndatacom/sdk/portal/http/HttpClient;->uploadFile(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/io/File;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_9

    .line 35
    invoke-static {p0, v3, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_8
    new-array p0, v5, [Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadModuleLog files success ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    new-array p0, v5, [Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadModuleLog files error ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static uploadPhoneMarketingData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 8

    const-string v0, "PhoneMarketingData"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "uploadPhoneMarketingData url is null"

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v2

    .line 5
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-string v4, "361"

    .line 6
    invoke-virtual {p1, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Account"

    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 10
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UpdateTime"

    .line 11
    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "IsFirstTime"

    const-string v6, "1"

    .line 12
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "Versions"

    invoke-virtual {v3, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Language"

    const-string v5, "2052_936"

    .line 14
    invoke-virtual {v3, p0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "DialUptype"

    const-string v5, "3"

    .line 15
    invoke-virtual {v3, p0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x3

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    move v5, v7

    .line 21
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "IPv6"

    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ClientID"

    invoke-virtual {v3, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "WifiMac"

    .line 23
    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "IP"

    .line 24
    invoke-virtual {v3, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "CID"

    .line 25
    invoke-virtual {v3, p0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "areaCode"

    const-string p1, "zs"

    .line 26
    invoke-virtual {v3, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "android"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "osType"

    invoke-virtual {v3, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance p0, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v3}, Lcom/cndatacom/sdk/portal/http/HttpClient;->get(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p0

    const-string p1, "uploadPhoneMarketingData httpcode ->"

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 29
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v7, [Ljava/lang/String;

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-array v1, v7, [Ljava/lang/String;

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static uploadSSIDData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 9

    const-string v0, "PostSSID"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "uploadSSIDData url is null"

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isUploadSSIDData"

    const-string v3, "none"

    .line 5
    invoke-static {p0, v2, v3}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "uploadSSIDData has done"

    .line 7
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getTicket()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v5

    .line 11
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "account"

    .line 12
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "ticket"

    .line 13
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clientid"

    .line 14
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ostype"

    const-string v1, "2"

    .line 15
    invoke-virtual {v6, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mac"

    .line 16
    invoke-virtual {v5}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ssid"

    .line 17
    invoke-virtual {v5}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    .line 18
    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v6, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "cid"

    .line 19
    invoke-virtual {v6, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "utf-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeECB([B)Ljava/lang/String;

    move-result-object p0

    .line 21
    new-instance p1, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "uploadSSIDData httpcode ->"

    if-eqz p0, :cond_2

    .line 22
    :try_start_1
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-array p1, v4, [Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadSSIDData error ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v3

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method
