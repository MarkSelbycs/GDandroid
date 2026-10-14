.class public Lcom/cndatacom/sdk/portal/http/CdcHttpClient;
.super Ljava/lang/Object;
.source "CdcHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/sdk/portal/http/CdcHttpClient$PriorityIPv4Dns;,
        Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;,
        Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;
    }
.end annotation


# static fields
.field private static mCdcHttpClientProxy:Lcom/cndatacom/sdk/portal/proxy/CdcHttpClientProxy;


# instance fields
.field private CONN_TIMEOUT:I

.field private final HTTP_OK:I

.field private final MAX_ALGO_ERROR:I

.field private final MAX_JUMP:I

.field private final META_REGEX:Ljava/util/regex/Pattern;

.field private final META_URL_GROUP:I

.field private READ_TIMEOUT:I

.field private final SCRIPT_REGEX:Ljava/util/regex/Pattern;

.field private final SCRIPT_URL_GROUP:I

.field private final ZERO_AID:Ljava/lang/String;

.field private final ZERO_DATA:[B

.field private mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 2
    iput v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->HTTP_OK:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->MAX_JUMP:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->MAX_ALGO_ERROR:I

    const/16 v1, 0x1388

    .line 5
    iput v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->CONN_TIMEOUT:I

    .line 6
    iput v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->READ_TIMEOUT:I

    const-string v1, "00000000-0000-0000-0000-000000000000"

    .line 7
    iput-object v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->ZERO_AID:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->ZERO_DATA:[B

    const-string v1, "<meta(\\s+)http-equiv=([\'\"])?refresh[^>]*url=([^\"^\']+)([\'\"])[^>]*>"

    const/4 v2, 0x2

    .line 9
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->META_REGEX:Ljava/util/regex/Pattern;

    const-string v1, "<script type=[^>]+>location.href=([\'\"])([^\"^\']+)([\'\"])[^<]*</script>"

    .line 10
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->SCRIPT_REGEX:Ljava/util/regex/Pattern;

    .line 11
    iput v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->META_URL_GROUP:I

    .line 12
    iput v2, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->SCRIPT_URL_GROUP:I

    .line 13
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-void
.end method

.method public constructor <init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;II)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 15
    iput v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->HTTP_OK:I

    const/4 v0, 0x5

    .line 16
    iput v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->MAX_JUMP:I

    const/4 v0, 0x3

    .line 17
    iput v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->MAX_ALGO_ERROR:I

    const/16 v1, 0x1388

    .line 18
    iput v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->CONN_TIMEOUT:I

    .line 19
    iput v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->READ_TIMEOUT:I

    const-string v1, "00000000-0000-0000-0000-000000000000"

    .line 20
    iput-object v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->ZERO_AID:Ljava/lang/String;

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->ZERO_DATA:[B

    const-string v1, "<meta(\\s+)http-equiv=([\'\"])?refresh[^>]*url=([^\"^\']+)([\'\"])[^>]*>"

    const/4 v2, 0x2

    .line 22
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->META_REGEX:Ljava/util/regex/Pattern;

    const-string v1, "<script type=[^>]+>location.href=([\'\"])([^\"^\']+)([\'\"])[^<]*</script>"

    .line 23
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->SCRIPT_REGEX:Ljava/util/regex/Pattern;

    .line 24
    iput v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->META_URL_GROUP:I

    .line 25
    iput v2, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->SCRIPT_URL_GROUP:I

    if-lez p2, :cond_0

    .line 26
    iput p2, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->CONN_TIMEOUT:I

    :cond_0
    if-lez p3, :cond_1

    .line 27
    iput p3, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->READ_TIMEOUT:I

    .line 28
    :cond_1
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-void
.end method

.method private addInnerConnHead(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3}, Lc4/y$b;->f(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "  PROP "

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, " = "

    aput-object v0, p1, p2

    const/4 p2, 0x3

    aput-object p3, p1, p2

    .line 3
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addInnerConnHeadCheck(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-string v1, ""

    invoke-virtual {v0, p3, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHead(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addInnerWlanInfo(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->hasAcAndUserIp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-string v2, "wlanipname"

    invoke-virtual {v1, v2, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-string v0, "wlanuserip"

    .line 5
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v2, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    :cond_0
    const-string v1, "userip"

    .line 8
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v2, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    :cond_1
    const-string v0, "wlanacip"

    .line 11
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v2, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    :cond_2
    const-string v1, "wlanacname"

    .line 14
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v2, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    :cond_3
    const-string v1, "mscgip"

    .line 17
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v1, v0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    :cond_4
    return-void
.end method

.method private doQuery(Ljava/lang/String;[BZ)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v7, v0

    move v6, v2

    .line 1
    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 2
    new-instance v10, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    invoke-direct {v10, v1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 3
    :try_start_1
    new-instance v7, Lc4/y$b;

    invoke-direct {v7}, Lc4/y$b;-><init>()V

    const-string v11, "accept"

    const-string v12, "text/html,text/xml,application/xhtml+xml,application/x-javascript,*/*"

    .line 4
    invoke-virtual {v7, v11, v12}, Lc4/y$b;->f(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    const-string v11, "Connection"

    const-string v12, "close"

    .line 5
    invoke-virtual {v7, v11, v12}, Lc4/y$b;->f(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    const-string v11, "CDC-SchoolId"

    const-string v12, "schoolID"

    .line 6
    invoke-direct {v1, v7, v11, v12}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHeadCheck(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "CDC-Domain"

    const-string v12, "domain"

    .line 7
    invoke-direct {v1, v7, v11, v12}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHeadCheck(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "CDC-Area"

    const-string v12, "area"

    .line 8
    invoke-direct {v1, v7, v11, v12}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHeadCheck(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Client-ID"

    .line 9
    iget-object v12, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v12}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v7, v11, v12}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHead(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v11, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v11, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserAgent(Z)Ljava/lang/String;

    move-result-object v11

    const-string v12, "User-Agent"

    .line 11
    invoke-direct {v1, v7, v12, v11}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHead(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    move-object v11, v0

    goto :goto_1

    .line 12
    :cond_0
    iget-object v11, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v11}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getDaMod()Lcom/cndatacom/campus/netcore/DaMod;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :goto_1
    const-string v12, ""

    if-eqz v11, :cond_3

    .line 13
    :try_start_2
    invoke-virtual {v11}, Lcom/cndatacom/campus/netcore/DaMod;->isOk()Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v11}, Lcom/cndatacom/campus/netcore/DaMod;->getId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p2

    .line 15
    invoke-virtual {v11, v14}, Lcom/cndatacom/campus/netcore/DaMod;->Encode([B)[B

    move-result-object v15

    if-eqz v15, :cond_2

    .line 16
    array-length v8, v15

    if-nez v8, :cond_4

    .line 17
    :cond_2
    invoke-static {v10, v12}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$102(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    invoke-static {v10, v12}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$202(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "200113"

    .line 19
    invoke-static {v10, v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$302(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v3

    move-object v7, v10

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move v6, v2

    move-object v9, v3

    move-object v7, v10

    goto/16 :goto_11

    :cond_3
    :goto_2
    move-object/from16 v14, p2

    :try_start_3
    const-string v13, "00000000-0000-0000-0000-000000000000"

    .line 20
    iget-object v15, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->ZERO_DATA:[B

    :cond_4
    const-string v8, "Algo-ID"

    .line 21
    invoke-direct {v1, v7, v8, v13}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHead(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v15}, Lcom/cndatacom/sdk/portal/util/FileUtil;->md5([B)[B

    move-result-object v8

    invoke-static {v8}, Lcom/cndatacom/sdk/portal/util/FileUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v8

    const-string v13, "CDC-Checksum"

    .line 23
    invoke-direct {v1, v7, v13, v8}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHead(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Content-Length"

    .line 24
    array-length v13, v15

    .line 25
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 26
    invoke-direct {v1, v7, v8, v13}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHead(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "text/plain; charset=utf-8"

    .line 27
    invoke-static {v8}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object v8

    .line 28
    invoke-static {v8, v15}, Lc4/z;->d(Lc4/t;[B)Lc4/z;

    move-result-object v8

    .line 29
    invoke-virtual {v7, v8}, Lc4/y$b;->l(Lc4/z;)Lc4/y$b;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 31
    invoke-virtual {v7, v3}, Lc4/y$b;->o(Ljava/lang/String;)Lc4/y$b;

    .line 32
    invoke-virtual {v7}, Lc4/y$b;->g()Lc4/y;

    move-result-object v7

    .line 33
    new-instance v8, Lc4/v$b;

    invoke-direct {v8}, Lc4/v$b;-><init>()V

    .line 34
    invoke-virtual {v8, v2}, Lc4/v$b;->h(Z)Lc4/v$b;

    move-result-object v13

    .line 35
    invoke-virtual {v13, v0}, Lc4/v$b;->c(Lc4/c;)Lc4/v$b;

    move-result-object v13

    .line 36
    invoke-virtual {v13, v2}, Lc4/v$b;->j(Z)Lc4/v$b;

    move-result-object v13

    iget v15, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->CONN_TIMEOUT:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    int-to-long v2, v15

    :try_start_4
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    invoke-virtual {v13, v2, v3, v15}, Lc4/v$b;->d(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    move-result-object v2

    iget v3, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->READ_TIMEOUT:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v18, v10

    int-to-long v9, v3

    .line 38
    :try_start_5
    invoke-virtual {v2, v9, v10, v15}, Lc4/v$b;->i(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    move-result-object v2

    iget v3, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->READ_TIMEOUT:I

    int-to-long v9, v3

    .line 39
    invoke-virtual {v2, v9, v10, v15}, Lc4/v$b;->l(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    move-result-object v2

    .line 40
    invoke-static {}, Lz2/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc4/s;

    invoke-virtual {v2, v3}, Lc4/v$b;->a(Lc4/s;)Lc4/v$b;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/4 v2, 0x1

    :try_start_6
    new-array v3, v2, [Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 41
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CdcHttpClient doQuery->"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v9, p1

    :try_start_8
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v10, 0x0

    :try_start_9
    aput-object v2, v3, v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 42
    invoke-virtual {v8}, Lc4/v$b;->b()Lc4/v;

    move-result-object v2

    .line 43
    invoke-virtual {v2, v7}, Lc4/v;->y(Lc4/y;)Lc4/e;

    move-result-object v2

    .line 44
    invoke-interface {v2}, Lc4/e;->a()Lc4/a0;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lc4/a0;->y()I

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v7, v18

    :try_start_b
    invoke-static {v7, v3}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$402(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;I)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    const/4 v3, 0x1

    :try_start_c
    new-array v8, v3, [Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 46
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CdcHttpClient httpCode->"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$400(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    const/4 v10, 0x0

    :try_start_e
    aput-object v3, v8, v10
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    invoke-static {v8}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 47
    invoke-virtual {v7}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 48
    invoke-virtual {v2}, Lc4/a0;->u()Lc4/b0;

    move-result-object v3

    invoke-virtual {v3}, Lc4/b0;->e()[B

    move-result-object v3

    const-string v8, "Error-Code"

    .line 49
    invoke-virtual {v2, v8}, Lc4/a0;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 50
    invoke-static {v7, v8}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$102(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;

    const/4 v10, 0x2

    new-array v15, v10, [Ljava/lang/String;

    const-string v18, "  Error-Code: "

    const/16 v17, 0x0

    aput-object v18, v15, v17

    const/4 v13, 0x1

    aput-object v8, v15, v13

    .line 51
    invoke-static {v15}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const-string v8, "Sub-Error"

    .line 52
    invoke-virtual {v2, v8}, Lc4/a0;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v7, v2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$202(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;

    new-array v8, v10, [Ljava/lang/String;

    const-string v10, "  Sub-Error: "
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    const/4 v15, 0x0

    :try_start_10
    aput-object v10, v8, v15
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const/4 v10, 0x1

    :try_start_11
    aput-object v2, v8, v10

    .line 54
    invoke-static {v8}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const-string v2, "200"

    .line 55
    invoke-static {v7}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$100(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    if-eqz v2, :cond_7

    add-int/2addr v6, v10

    const/4 v2, 0x3

    if-le v6, v2, :cond_5

    :try_start_12
    const-string v0, "algo count is surpass"

    .line 56
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto/16 :goto_7

    .line 57
    :cond_5
    iget-object v2, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v2, v3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setDaMod([B)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getDaMod()Lcom/cndatacom/campus/netcore/DaMod;

    if-eqz p3, :cond_6

    goto/16 :goto_7

    :cond_6
    move-object v3, v9

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    const-string v0, "0"

    .line 58
    invoke-static {v7}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$100(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    if-eqz v0, :cond_b

    const-string v0, "200114"

    if-eqz v11, :cond_9

    .line 59
    :try_start_13
    invoke-virtual {v11}, Lcom/cndatacom/campus/netcore/DaMod;->isOk()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v3, :cond_b

    .line 60
    array-length v2, v3

    if-lez v2, :cond_b

    .line 61
    invoke-virtual {v11, v3}, Lcom/cndatacom/campus/netcore/DaMod;->Decode([B)[B

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$502(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;[B)[B

    .line 62
    invoke-static {v7}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$500(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)[B

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v7}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$500(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_b

    .line 63
    :cond_8
    invoke-static {v7, v12}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$202(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    invoke-static {v7, v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$302(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_7

    :cond_9
    const-string v2, "daMod error"

    .line 65
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 66
    invoke-static {v7, v12}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$202(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    invoke-static {v7, v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->access$302(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto :goto_7

    :catch_0
    move-exception v0

    move v2, v10

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move v6, v15

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v2, v3

    goto/16 :goto_c

    :catch_2
    move-exception v0

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    move-object/from16 v7, v18

    :goto_3
    move v6, v10

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v7, v18

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v9, p1

    :goto_4
    move-object/from16 v7, v18

    goto/16 :goto_10

    :catch_5
    move-exception v0

    move-object/from16 v9, p1

    :goto_5
    move-object/from16 v7, v18

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object/from16 v9, p1

    move-object v7, v10

    goto/16 :goto_10

    :catch_6
    move-exception v0

    move-object/from16 v9, p1

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object v9, v3

    move-object v7, v10

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v9, v3

    :goto_6
    move-object v7, v10

    goto :goto_b

    :cond_a
    move-object v9, v3

    :cond_b
    :goto_7
    if-nez v7, :cond_c

    .line 68
    new-instance v7, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    invoke-direct {v7, v1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V

    :cond_c
    move-object v0, v7

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 70
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v8, 0x0

    goto :goto_8

    :cond_d
    const/4 v8, -0x1

    :goto_8
    move-object/from16 v3, p1

    :goto_9
    invoke-static/range {v2 .. v8}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendInterfaceInfoReceiver(Landroid/content/Context;Ljava/lang/String;JJI)V

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object v9, v3

    :goto_a
    move v6, v2

    goto :goto_11

    :catch_8
    move-exception v0

    move-object v9, v3

    :goto_b
    const/4 v2, 0x1

    :goto_c
    :try_start_14
    new-array v2, v2, [Ljava/lang/String;

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdcHttpClient Exception->"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    const/4 v6, 0x0

    :try_start_15
    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    if-nez v7, :cond_e

    .line 73
    new-instance v0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    invoke-direct {v0, v1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V

    goto :goto_d

    :cond_e
    move-object v0, v7

    .line 74
    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 75
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result v3

    if-eqz v3, :cond_f

    move/from16 v16, v6

    goto :goto_e

    :cond_f
    const/16 v16, -0x1

    :goto_e
    move-object/from16 v3, p1

    move-wide v6, v7

    move/from16 v8, v16

    goto :goto_9

    :goto_f
    return-object v0

    :catchall_9
    move-exception v0

    goto :goto_11

    :catchall_a
    move-exception v0

    :goto_10
    const/4 v6, 0x0

    :goto_11
    if-nez v7, :cond_10

    .line 76
    new-instance v7, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    invoke-direct {v7, v1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V

    .line 77
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 78
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v7}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result v3

    if-eqz v3, :cond_11

    move v8, v6

    goto :goto_12

    :cond_11
    const/4 v8, -0x1

    :goto_12
    move-object/from16 v3, p1

    move-wide v6, v10

    invoke-static/range {v2 .. v8}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendInterfaceInfoReceiver(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 79
    throw v0
.end method

.method private hasAcAndUserIp(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "userip"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "wlanuserip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mscgip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string v3, "wlanacip"

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "wlanacname"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v2

    :goto_3
    if-nez p1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method private readConnHeadAndSetInner(Lc4/a0;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Lc4/a0;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v0, p2, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Response Header "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    const-string v1, " = "

    aput-object v1, v0, p2

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 4
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setCdcHttpClientProxy(Lcom/cndatacom/sdk/portal/proxy/CdcHttpClientProxy;)V
    .locals 0

    sput-object p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mCdcHttpClientProxy:Lcom/cndatacom/sdk/portal/proxy/CdcHttpClientProxy;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;ZZ)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;
    .locals 28

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v0, "area"

    const-string v4, "domain"

    const-string v5, "schoolID"

    const-string v6, ""

    const-wide/16 v9, 0x0

    move-object v14, v6

    move-wide v10, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p1

    :goto_0
    const/4 v15, 0x5

    const/16 v16, -0x1

    if-ge v12, v15, :cond_11

    .line 1
    :try_start_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_11

    .line 2
    new-instance v7, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;

    invoke-direct {v7, v1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 3
    :try_start_1
    new-instance v13, Lc4/v$b;

    invoke-direct {v13}, Lc4/v$b;-><init>()V

    .line 4
    invoke-static {v9}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->containsTag(Ljava/lang/String;)Z

    move-result v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    if-eqz v18, :cond_0

    .line 5
    :try_start_2
    invoke-static {v9}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getIpType(Ljava/lang/String;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 6
    iget-object v15, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v15, v8}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setIpType(Ljava/lang/Boolean;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const/4 v8, 0x1

    .line 7
    invoke-virtual {v7, v8}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->setHasIndexPage(Z)V

    if-eqz v3, :cond_0

    .line 8
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->hasDetectUrl()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 9
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v8

    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getDetectUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15, v9}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->replaceDetectUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v13, v7

    move-object v3, v9

    move-wide/from16 v19, v10

    move-object v11, v14

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v13, v7

    move-wide/from16 v23, v10

    move-object v11, v14

    goto/16 :goto_f

    .line 10
    :cond_0
    :goto_1
    :try_start_3
    new-instance v8, Lc4/y$b;

    invoke-direct {v8}, Lc4/y$b;-><init>()V

    const-string v15, "accept"

    move-object/from16 v18, v6

    const-string v6, "text/html,text/xml,application/xhtml+xml,application/x-javascript,*/*"

    .line 11
    invoke-virtual {v8, v15, v6}, Lc4/y$b;->f(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    const-string v6, "Connection"

    const-string v15, "close"

    .line 12
    invoke-virtual {v8, v6, v15}, Lc4/y$b;->f(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    const-string v6, "CDC-SchoolId"

    .line 13
    invoke-direct {v1, v8, v6, v5}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHeadCheck(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "CDC-Domain"

    .line 14
    invoke-direct {v1, v8, v6, v4}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHeadCheck(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "CDC-Area"

    .line 15
    invoke-direct {v1, v8, v6, v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHeadCheck(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Client-ID"

    .line 16
    iget-object v15, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v15}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v8, v6, v15}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHead(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "User-Agent"

    .line 17
    iget-object v15, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-wide/from16 v19, v10

    const/4 v10, 0x1

    :try_start_4
    invoke-virtual {v15, v10}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserAgent(Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v8, v6, v11}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerConnHead(Lc4/y$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v8, v9}, Lc4/y$b;->o(Ljava/lang/String;)Lc4/y$b;

    .line 19
    invoke-virtual {v8}, Lc4/y$b;->g()Lc4/y;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/4 v8, 0x0

    .line 20
    :try_start_5
    invoke-virtual {v13, v8}, Lc4/v$b;->h(Z)Lc4/v$b;

    move-result-object v10

    const/4 v11, 0x0

    .line 21
    invoke-virtual {v10, v11}, Lc4/v$b;->c(Lc4/c;)Lc4/v$b;

    move-result-object v10

    .line 22
    invoke-virtual {v10, v8}, Lc4/v$b;->j(Z)Lc4/v$b;

    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    iget v8, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->CONN_TIMEOUT:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object v11, v14

    int-to-long v14, v8

    :try_start_7
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    invoke-virtual {v10, v14, v15, v8}, Lc4/v$b;->d(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    move-result-object v10

    iget v14, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->READ_TIMEOUT:I

    int-to-long v14, v14

    .line 24
    invoke-virtual {v10, v14, v15, v8}, Lc4/v$b;->i(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    move-result-object v10

    iget v14, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->READ_TIMEOUT:I

    int-to-long v14, v14

    .line 25
    invoke-virtual {v10, v14, v15, v8}, Lc4/v$b;->l(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    move-result-object v8

    .line 26
    invoke-static {}, Lz2/a;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc4/s;

    invoke-virtual {v8, v10}, Lc4/v$b;->a(Lc4/s;)Lc4/v$b;

    .line 27
    invoke-static {v9}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->containsTag(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 28
    new-instance v8, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$PriorityIPv4Dns;

    const/4 v10, 0x0

    invoke-direct {v8, v1, v10}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$PriorityIPv4Dns;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;Lcom/cndatacom/sdk/portal/http/CdcHttpClient$1;)V

    .line 29
    invoke-virtual {v13, v8}, Lc4/v$b;->g(Lc4/o;)Lc4/v$b;

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 30
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/4 v8, 0x1

    :try_start_8
    new-array v10, v8, [Ljava/lang/String;

    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-wide/from16 v19, v14

    :try_start_9
    const-string v14, "CdcHttpClient get->"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const/4 v14, 0x0

    :try_start_a
    aput-object v8, v10, v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-static {v10}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 32
    invoke-virtual {v13}, Lc4/v$b;->b()Lc4/v;

    move-result-object v8

    .line 33
    invoke-virtual {v8, v6}, Lc4/v;->y(Lc4/y;)Lc4/e;

    move-result-object v6

    .line 34
    invoke-interface {v6}, Lc4/e;->a()Lc4/a0;

    move-result-object v6

    .line 35
    invoke-direct {v1, v9}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->addInnerWlanInfo(Ljava/lang/String;)V

    .line 36
    invoke-direct {v1, v6, v5}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->readConnHeadAndSetInner(Lc4/a0;Ljava/lang/String;)V

    .line 37
    invoke-direct {v1, v6, v4}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->readConnHeadAndSetInner(Lc4/a0;Ljava/lang/String;)V

    .line 38
    invoke-direct {v1, v6, v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->readConnHeadAndSetInner(Lc4/a0;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v6}, Lc4/a0;->y()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->setHttpCode(I)V

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/String;

    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CdcHttpClient get httpCode->"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getHttpCode()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    const/4 v13, 0x0

    :try_start_c
    aput-object v8, v10, v13
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-static {v10}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 41
    invoke-virtual {v7}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isRedirect()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "Location"

    .line 42
    invoke-virtual {v6, v8}, Lc4/a0;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CdcHttpClient get isRedirect:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/4 v10, 0x0

    :try_start_e
    aput-object v6, v8, v10
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-static {v8}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    if-eqz v2, :cond_2

    if-nez v12, :cond_2

    move-object v14, v9

    goto/16 :goto_6

    :cond_2
    :goto_3
    move-object v14, v11

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v13, v7

    move-object v3, v9

    move v5, v10

    goto/16 :goto_13

    .line 44
    :cond_3
    invoke-virtual {v7}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "Server-Tag"

    .line 45
    invoke-direct {v1, v6, v8}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->readConnHeadAndSetInner(Lc4/a0;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v6}, Lc4/a0;->u()Lc4/b0;

    move-result-object v6

    invoke-virtual {v6}, Lc4/b0;->o()Ljava/lang/String;

    move-result-object v6

    .line 47
    iget-object v8, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->META_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 48
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    const/4 v13, 0x2

    if-eqz v10, :cond_4

    const/4 v10, 0x3

    .line 49
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    new-array v10, v13, [Ljava/lang/String;

    const-string v13, "FIND META URL => "
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    const/4 v14, 0x0

    :try_start_10
    aput-object v13, v10, v14
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const/4 v13, 0x1

    :try_start_11
    aput-object v8, v10, v13

    .line 50
    invoke-static {v10}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_4

    .line 51
    :cond_4
    iget-object v8, v1, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->SCRIPT_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 52
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 53
    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    new-array v10, v13, [Ljava/lang/String;

    const-string v13, "FIND SCRIPT URL => "
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    const/4 v14, 0x0

    :try_start_12
    aput-object v13, v10, v14
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const/4 v13, 0x1

    :try_start_13
    aput-object v8, v10, v13

    .line 54
    invoke-static {v10}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object/from16 v8, v18

    .line 55
    :goto_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 56
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->setData([B)V

    goto :goto_7

    :cond_6
    if-eqz v2, :cond_7

    if-nez v12, :cond_7

    move-object v14, v8

    goto :goto_5

    :cond_7
    move-object v14, v11

    :goto_5
    move-object v9, v8

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_9

    .line 57
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    invoke-static {v9}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->containsTag(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->hasDetectUrl()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 58
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->removeDetectUrl()V

    .line 59
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->hasDetectUrl()Z

    move-result v6
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v6, :cond_9

    goto/16 :goto_3

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object v13, v7

    move-object/from16 v6, v18

    move-wide/from16 v10, v19

    goto/16 :goto_0

    :cond_9
    :goto_7
    move-object v13, v7

    move-object v10, v9

    const/4 v5, 0x0

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    move-object v3, v9

    move v5, v13

    move-object v13, v7

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    move-object v13, v7

    move-object v3, v9

    move v5, v14

    goto/16 :goto_13

    :catchall_4
    move-exception v0

    move-wide/from16 v19, v14

    goto :goto_9

    :catch_1
    move-exception v0

    move-wide/from16 v19, v14

    goto :goto_b

    :catchall_5
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v11, v14

    move-object v13, v7

    move v5, v8

    move-object v3, v9

    goto/16 :goto_13

    :catchall_7
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_a

    :catchall_8
    move-exception v0

    move-wide/from16 v19, v10

    :goto_8
    move-object v11, v14

    :goto_9
    move-object v13, v7

    goto :goto_c

    :catch_4
    move-exception v0

    move-wide/from16 v19, v10

    :goto_a
    move-object v11, v14

    :goto_b
    move-object v13, v7

    goto :goto_e

    :catchall_9
    move-exception v0

    move-wide/from16 v19, v10

    move-object v11, v14

    :goto_c
    move-object v3, v9

    :goto_d
    const/4 v5, 0x0

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-wide/from16 v19, v10

    move-object v11, v14

    :goto_e
    move-wide/from16 v23, v19

    .line 60
    :goto_f
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdcHttpClient get Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    const/4 v5, 0x0

    :try_start_15
    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    if-eqz v3, :cond_c

    .line 62
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    invoke-static {v9}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->containsTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->hasDetectUrl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 63
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->removeDetectUrl()V

    .line 64
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->hasDetectUrl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 65
    invoke-virtual {v1, v9, v2, v3}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->get(Ljava/lang/String;ZZ)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    if-nez v13, :cond_a

    .line 66
    new-instance v13, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;

    invoke-direct {v13, v1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V

    .line 67
    :cond_a
    invoke-virtual {v13, v11}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->setRedirectUrl(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v13, v9}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->setFinalUrl(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 70
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual {v13}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result v2

    if-eqz v2, :cond_b

    move/from16 v27, v5

    goto :goto_10

    :cond_b
    move/from16 v27, v16

    :goto_10
    move-object/from16 v22, v9

    invoke-static/range {v21 .. v27}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendInterfaceInfoReceiver(Landroid/content/Context;Ljava/lang/String;JJI)V

    return-object v0

    :cond_c
    if-nez v13, :cond_d

    .line 71
    new-instance v13, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;

    invoke-direct {v13, v1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V

    .line 72
    :cond_d
    invoke-virtual {v13, v11}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->setRedirectUrl(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v13, v9}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->setFinalUrl(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 75
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual {v13}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result v0

    if-eqz v0, :cond_e

    move/from16 v27, v5

    goto :goto_11

    :cond_e
    move/from16 v27, v16

    :goto_11
    move-object/from16 v22, v9

    invoke-static/range {v21 .. v27}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendInterfaceInfoReceiver(Landroid/content/Context;Ljava/lang/String;JJI)V

    goto :goto_18

    :catchall_a
    move-exception v0

    goto :goto_12

    :catchall_b
    move-exception v0

    const/4 v5, 0x0

    :goto_12
    move-object v3, v9

    move-wide/from16 v19, v23

    :goto_13
    if-nez v13, :cond_f

    .line 76
    new-instance v13, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;

    invoke-direct {v13, v1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V

    .line 77
    :cond_f
    invoke-virtual {v13, v11}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->setRedirectUrl(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v13, v3}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->setFinalUrl(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 80
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v13}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result v4

    if-eqz v4, :cond_10

    move v8, v5

    goto :goto_14

    :cond_10
    move/from16 v8, v16

    :goto_14
    move-wide/from16 v4, v19

    invoke-static/range {v2 .. v8}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendInterfaceInfoReceiver(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 81
    throw v0

    :cond_11
    move-wide/from16 v19, v10

    move-object v11, v14

    const/4 v5, 0x0

    move-object v10, v9

    :goto_15
    if-nez v13, :cond_12

    .line 82
    new-instance v0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;

    invoke-direct {v0, v1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V

    goto :goto_16

    :cond_12
    move-object v0, v13

    .line 83
    :goto_16
    invoke-virtual {v0, v11}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->setRedirectUrl(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v10}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->setFinalUrl(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 86
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result v2

    if-eqz v2, :cond_13

    move v15, v5

    goto :goto_17

    :cond_13
    move/from16 v15, v16

    :goto_17
    move-wide/from16 v11, v19

    invoke-static/range {v9 .. v15}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendInterfaceInfoReceiver(Landroid/content/Context;Ljava/lang/String;JJI)V

    move-object v13, v0

    :goto_18
    return-object v13
.end method

.method public getDaMod(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    new-array p2, p2, [B

    :cond_1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->doQuery(Ljava/lang/String;[BZ)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    array-length v1, p2

    if-nez v1, :cond_1

    :cond_0
    new-array p2, v0, [B

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient;->doQuery(Ljava/lang/String;[BZ)Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;

    move-result-object p1

    return-object p1
.end method
