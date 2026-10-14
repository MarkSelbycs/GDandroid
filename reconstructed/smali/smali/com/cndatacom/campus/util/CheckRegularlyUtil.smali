.class public Lcom/cndatacom/campus/util/CheckRegularlyUtil;
.super Ljava/lang/Object;
.source "CheckRegularlyUtil.java"


# static fields
.field public static m_timeTask:Ljava/util/TimerTask;

.field public static m_timer:Ljava/util/Timer;


# instance fields
.field public httpTimeout:Ljava/lang/String;

.field public icmpTimeout:Ljava/lang/String;

.field public timeout:Ljava/lang/String;

.field public urlArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doHttpCheck(Ljava/util/ArrayList;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "http://"

    const-string v1, "CheckMananger  http\u63a2\u6d4b\u5931\u8d25  -->"

    .line 1
    iget-object v2, p0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->httpTimeout:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    move v3, v12

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 3
    :try_start_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 4
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v5, v4

    .line 7
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 9
    new-instance v4, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-direct {v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v6, v2

    move v7, v2

    invoke-static/range {v3 .. v9}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detectConfig(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;IIZZ)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckRegularWorker  detectConfig -->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const-string v4, "200"

    .line 12
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "CheckRegularWorker  http\u63a2\u6d4b\u5931\u8d25  -->"

    .line 13
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    :goto_1
    move v3, v10

    goto :goto_0

    :cond_1
    const-string v4, "201"

    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "CheckRegularWorker  http\u63a2\u6d4b\u6210\u529f -->"

    if-eqz v4, :cond_2

    .line 15
    :try_start_1
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    return v12

    .line 16
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    const/16 v6, 0x12c

    if-lt v3, v4, :cond_3

    if-ge v3, v6, :cond_3

    .line 17
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    return v12

    :cond_3
    if-lt v3, v6, :cond_4

    const/16 v4, 0x190

    if-ge v3, v4, :cond_4

    .line 18
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v11, [Ljava/lang/String;

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v12

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    :goto_2
    move v3, v11

    goto/16 :goto_0

    :cond_5
    return v3
.end method

.method public doIcmpCheck(Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 2
    :try_start_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 3
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 5
    iget-object v6, p0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->icmpTimeout:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v5

    if-eqz v5, :cond_0

    new-array v3, v3, [Ljava/lang/String;

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckRegularWorker  icmp\u63a2\u6d4b\u6210\u529f -->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    return v2

    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckRegularWorker  icmp\u63a2\u6d4b\u5931\u8d25 -->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return v3
.end method

.method public startCheck(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 7

    const-string v0, "CheckNetRegularly"

    const-string v1, "icmpUrl"

    const-string v2, ""

    .line 1
    invoke-virtual {p1, v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "icmpTimeout"

    const-string v3, "2000"

    .line 2
    invoke-virtual {p1, v0, v2, v3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->icmpTimeout:Ljava/lang/String;

    const-string v2, "periodTime"

    const-string v3, "5000"

    .line 3
    invoke-virtual {p1, v0, v2, v3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->urlArray:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Lcom/cndatacom/campus/util/CheckRegularlyUtil$1;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/util/CheckRegularlyUtil$1;-><init>(Lcom/cndatacom/campus/util/CheckRegularlyUtil;)V

    sput-object v0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->m_timeTask:Ljava/util/TimerTask;

    .line 7
    sget-object v0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 9
    :cond_1
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->m_timer:Ljava/util/Timer;

    .line 10
    sget-object v2, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->m_timeTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x1388

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
