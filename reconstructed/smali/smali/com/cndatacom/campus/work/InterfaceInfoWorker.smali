.class public Lcom/cndatacom/campus/work/InterfaceInfoWorker;
.super Ljava/lang/Object;
.source "InterfaceInfoWorker.java"


# static fields
.field public static e:Lcom/cndatacom/campus/work/InterfaceInfoWorker;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InterfaceInfoUploadURL"

    .line 2
    iput-object v0, p0, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->b:Ljava/lang/String;

    const-string v0, "LocalInterfaceInfoKey"

    .line 4
    iput-object v0, p0, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->c:Ljava/lang/String;

    const-string v0, "LocalUploadInterfaceInfoKey"

    .line 5
    iput-object v0, p0, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->d:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/cndatacom/campus/work/InterfaceInfoWorker;
    .locals 3

    .line 1
    sget-object v0, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->e:Lcom/cndatacom/campus/work/InterfaceInfoWorker;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cndatacom/campus/work/InterfaceInfoWorker;

    invoke-direct {v0}, Lcom/cndatacom/campus/work/InterfaceInfoWorker;-><init>()V

    sput-object v0, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->e:Lcom/cndatacom/campus/work/InterfaceInfoWorker;

    .line 3
    :cond_0
    sget-object v0, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->e:Lcom/cndatacom/campus/work/InterfaceInfoWorker;

    return-object v0
.end method


# virtual methods
.method public collection(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;JJI)V
    .locals 7

    const-string v0, ""

    const-string v1, "LocalInterfaceInfoKey"

    :try_start_0
    const-string v2, "InterfaceInfoUploadURL"

    const/4 v3, 0x0

    .line 1
    invoke-virtual {p2, v2, v3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "uploadInterfaceInfo url is null"

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    .line 6
    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v5, 0x1

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    add-int/2addr p3, v5

    invoke-virtual {v3, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    .line 9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 10
    invoke-virtual {p2, v1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sub-long/2addr p6, p4

    const-wide/16 p4, 0x0

    .line 14
    invoke-static {p6, p7, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 15
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, "#"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string p7, "interface"

    .line 16
    invoke-virtual {v4, p7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p7, "host"

    .line 17
    invoke-virtual {v4, p7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "duration"

    .line 18
    invoke-virtual {v4, p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p3, "key"

    .line 19
    invoke-virtual {v4, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "status"

    .line 20
    invoke-virtual {v4, p3, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "time"

    .line 21
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    invoke-static {p4}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {p2, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 23
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p1

    .line 24
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object p4

    .line 25
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p7, p0, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->b:Ljava/lang/String;

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p7, "account"

    .line 26
    invoke-virtual {v4, p7, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "clientid"

    .line 27
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v4, p4, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "cid"

    .line 28
    invoke-virtual {v4, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "version"

    .line 29
    invoke-virtual {v4, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 31
    invoke-virtual {v2, p5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 32
    invoke-virtual {v2, p5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 33
    :cond_3
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 34
    invoke-virtual {p1, p6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 35
    invoke-virtual {p1, p6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    .line 36
    :cond_4
    invoke-virtual {p3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 37
    invoke-virtual {p1, p6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v2, p5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v5, [Ljava/lang/String;

    const/4 p4, 0x0

    .line 40
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "uploadInterfaceInfo->"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p3, p4

    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2, v1, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 42
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public release(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    sput-object p1, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->e:Lcom/cndatacom/campus/work/InterfaceInfoWorker;

    return-void
.end method

.method public uploadInterfaceInfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 36

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "time"

    const-string v3, "LocalInterfaceInfoKey"

    const-string v4, "LocalUploadInterfaceInfoKey"

    const-string v5, ""

    :try_start_0
    const-string v6, "InterfaceInfoUploadURL"

    const/4 v7, 0x0

    .line 1
    invoke-virtual {v1, v6, v7}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "uploadInterfaceInfo url is null"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "none"

    .line 5
    invoke-static {v0, v4, v8}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v0, "uploadInterfaceInfo has done"

    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 9
    invoke-virtual {v1, v3, v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 11
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    :cond_2
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 13
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 14
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 15
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 17
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 18
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    move-object/from16 v16, v5

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "version"

    move-object/from16 v23, v8

    const-string v8, "cid"

    move-object/from16 v24, v10

    const-string v10, "clientid"

    const-string v1, "account"

    if-eqz v22, :cond_f

    .line 19
    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v25, v15

    move-object/from16 v15, v22

    check-cast v15, Ljava/lang/String;

    move-object/from16 v22, v3

    .line 20
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 21
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    if-nez v15, :cond_4

    move-object/from16 v1, p2

    move-object/from16 v3, v22

    move-object/from16 v8, v23

    move-object/from16 v10, v24

    move-object/from16 v15, v25

    goto :goto_1

    :cond_4
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v29

    move-object/from16 v31, v7

    move-object/from16 v26, v11

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v27, 0x0

    .line 22
    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v32, v6

    const-string v6, "host"

    move-object/from16 v33, v9

    const-string v9, "duration"

    move-object/from16 v34, v13

    const-string v13, "interface"

    if-ge v11, v7, :cond_d

    .line 23
    :try_start_2
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 24
    invoke-virtual {v7, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 25
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 26
    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 27
    :cond_5
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 28
    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 29
    :cond_6
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 30
    invoke-virtual {v7, v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 31
    :cond_7
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 32
    invoke-virtual {v7, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 33
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v16

    .line 35
    :cond_8
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 36
    invoke-virtual {v7, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 37
    :cond_9
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 38
    invoke-virtual {v7, v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 39
    :cond_a
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 40
    invoke-virtual {v7, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    :cond_b
    const-string v6, "status"

    const/4 v13, -0x1

    .line 41
    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_c

    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x0

    .line 42
    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    add-int v27, v27, v7

    goto :goto_3

    :cond_c
    add-int/lit8 v4, v4, 0x1

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v32

    move-object/from16 v9, v33

    move-object/from16 v13, v34

    goto/16 :goto_2

    :cond_d
    move-object/from16 v1, v29

    .line 43
    invoke-virtual {v3, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "times"

    .line 44
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_4

    .line 45
    :cond_e
    div-int v0, v27, v0

    :goto_4
    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "timeouts"

    .line 46
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v0, v30

    .line 47
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v14, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, v22

    move-object/from16 v8, v23

    move-object/from16 v10, v24

    move-object/from16 v15, v25

    move-object/from16 v11, v26

    move-object/from16 v4, v28

    move-object/from16 v7, v31

    move-object/from16 v6, v32

    move-object/from16 v9, v33

    move-object/from16 v13, v34

    goto/16 :goto_1

    :cond_f
    move-object/from16 v22, v3

    move-object/from16 v28, v4

    move-object/from16 v32, v6

    move-object/from16 v31, v7

    move-object/from16 v33, v9

    move-object/from16 v34, v13

    const-string v0, "dials"

    move-object/from16 v3, v34

    .line 49
    invoke-virtual {v3, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v16

    .line 50
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v17

    .line 51
    invoke-virtual {v3, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v18

    .line 52
    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ostype"

    const/4 v1, 0x4

    .line 53
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v0, v19

    .line 54
    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "stattime"

    .line 55
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "starttime"

    move-object/from16 v1, v20

    .line 56
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "stoptime"

    move-object/from16 v1, v21

    .line 57
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v33

    .line 58
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v1, p2

    move-object v9, v0

    move-object/from16 v3, v22

    move-object/from16 v8, v23

    move-object/from16 v10, v24

    move-object/from16 v4, v28

    move-object/from16 v7, v31

    move-object/from16 v6, v32

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v22, v3

    move-object/from16 v28, v4

    move-object/from16 v32, v6

    move-object/from16 v31, v7

    move-object v0, v9

    .line 59
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v2, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {v2}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object/from16 v3, v32

    invoke-virtual {v2, v3, v1, v0}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "uploadInterfaceInfo httpcode ->"

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 62
    :try_start_3
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v3, p1

    move-object/from16 v6, v28

    move-object/from16 v4, v31

    .line 63
    invoke-static {v3, v6, v4}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    .line 66
    invoke-virtual {v0, v1, v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    goto :goto_5

    :cond_11
    new-array v2, v2, [Ljava/lang/String;

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method
