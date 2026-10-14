.class public Lcom/cndatacom/collection/CollectionManager;
.super Ljava/lang/Object;
.source "CollectionManager.java"


# static fields
.field private static _CollectionManager:Lcom/cndatacom/collection/CollectionManager;


# instance fields
.field private mCurCollectionInfo:Lcom/cndatacom/collection/entity/CollectionInfo;

.field private mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/collection/CollectionManager;)Lcom/cndatacom/collection/entity/CollectionInfo;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/collection/CollectionManager;->mCurCollectionInfo:Lcom/cndatacom/collection/entity/CollectionInfo;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/cndatacom/collection/CollectionManager;Lcom/cndatacom/collection/entity/CollectionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/collection/CollectionManager;->updateCollectionInfo(Lcom/cndatacom/collection/entity/CollectionInfo;)V

    return-void
.end method

.method public static getInstance()Lcom/cndatacom/collection/CollectionManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/cndatacom/collection/CollectionManager;->_CollectionManager:Lcom/cndatacom/collection/CollectionManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cndatacom/collection/CollectionManager;

    invoke-direct {v0}, Lcom/cndatacom/collection/CollectionManager;-><init>()V

    sput-object v0, Lcom/cndatacom/collection/CollectionManager;->_CollectionManager:Lcom/cndatacom/collection/CollectionManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/cndatacom/collection/CollectionManager;->_CollectionManager:Lcom/cndatacom/collection/CollectionManager;

    return-object v0
.end method

.method private updateCollectionInfo(Lcom/cndatacom/collection/entity/CollectionInfo;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->load()Lcom/cndatacom/collection/entity/CollectionFileInfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->getCollectionInfos()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cndatacom/collection/entity/CollectionInfo;

    .line 6
    invoke-virtual {v3}, Lcom/cndatacom/collection/entity/CollectionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cndatacom/collection/entity/CollectionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDHMSString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/cndatacom/collection/entity/CollectionInfo;->setStoptime(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->save()Lcom/cndatacom/collection/entity/CollectionFileInfo;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public release(Landroid/content/Context;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/cndatacom/collection/CollectionManager;->mCurCollectionInfo:Lcom/cndatacom/collection/entity/CollectionInfo;

    .line 2
    iget-object v0, p0, Lcom/cndatacom/collection/CollectionManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/collection/CollectionManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancel(I)V

    .line 4
    :cond_0
    sput-object p1, Lcom/cndatacom/collection/CollectionManager;->_CollectionManager:Lcom/cndatacom/collection/CollectionManager;

    return-void
.end method

.method public start(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 7

    const-string v0, "Collection"

    const-string v1, ""

    .line 1
    invoke-virtual {p2, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "uploadCollectionInfo url is null"

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "interval"

    .line 4
    invoke-virtual {p2, v0, v2, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "18000"

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 7
    invoke-static {p1, p2}, Lcom/cndatacom/collection/entity/CollectionInfo;->madeDefCollectionInfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/collection/entity/CollectionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/collection/CollectionManager;->mCurCollectionInfo:Lcom/cndatacom/collection/entity/CollectionInfo;

    .line 8
    invoke-static {}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->load()Lcom/cndatacom/collection/entity/CollectionFileInfo;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->getCollectionInfos()Ljava/util/Vector;

    move-result-object p2

    .line 10
    iget-object v0, p0, Lcom/cndatacom/collection/CollectionManager;->mCurCollectionInfo:Lcom/cndatacom/collection/entity/CollectionInfo;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p1}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->save()Lcom/cndatacom/collection/entity/CollectionFileInfo;

    .line 12
    new-instance p1, Lcom/cndatacom/collection/CollectionManager$1;

    invoke-direct {p1, p0}, Lcom/cndatacom/collection/CollectionManager$1;-><init>(Lcom/cndatacom/collection/CollectionManager;)V

    iput-object p1, p0, Lcom/cndatacom/collection/CollectionManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    .line 13
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v1

    iget-object v4, p0, Lcom/cndatacom/collection/CollectionManager;->mUpdateWorkerInfo:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    move-wide v2, v5

    invoke-virtual/range {v1 .. v6}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startPeriodicWork(JLcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    return-void
.end method

.method public uploadCollectionInfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 9

    const-string v0, "Collection"

    const-string v1, ""

    .line 1
    invoke-virtual {p2, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "uploadCollectionInfo url is null"

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "interval"

    .line 4
    invoke-virtual {p2, v0, v3, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "18000"

    .line 6
    :cond_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string p2, "COLLECTION_LAST_UPLOAD_TIME"

    .line 7
    invoke-static {p1, p2, v1}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    :goto_0
    move p1, v1

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v3, v7

    add-long/2addr p1, v3

    cmp-long p1, p1, v5

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_1
    if-eqz p1, :cond_7

    .line 12
    invoke-static {}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->load()Lcom/cndatacom/collection/entity/CollectionFileInfo;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->getCollectionInfos()Ljava/util/Vector;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 14
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_2

    .line 15
    :cond_4
    :try_start_0
    new-instance v3, Ls2/e;

    invoke-direct {v3}, Ls2/e;-><init>()V

    invoke-virtual {v3, p2}, Ls2/e;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 16
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    .line 17
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v4, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {v4}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v4, v2, v3, p2}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 19
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    const/4 v4, -0x1

    .line 22
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 23
    invoke-virtual {p1}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->clear()V

    .line 24
    invoke-virtual {p1}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->save()Lcom/cndatacom/collection/entity/CollectionFileInfo;

    return-void

    :cond_5
    new-array p1, v1, [Ljava/lang/String;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadCollectionInfo httpcode ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/String;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadCollectionInfo error ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    const-string p1, "uploadCollectionInfo data is null"

    .line 28
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method
