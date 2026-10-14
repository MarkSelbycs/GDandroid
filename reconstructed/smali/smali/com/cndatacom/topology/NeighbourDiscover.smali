.class public Lcom/cndatacom/topology/NeighbourDiscover;
.super Ljava/lang/Object;
.source "NeighbourDiscover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/topology/NeighbourDiscover$NeighbourDiscoverEvent;
    }
.end annotation


# instance fields
.field private final DISCOVER_GROUP_INDEX_KEY:Ljava/lang/String;

.field private final DISCOVER_INTERVAL_KEY:Ljava/lang/String;

.field private final GROUP_SIZE:I

.field private final INTERVAL_DEF:I

.field private final NEIGHBOUR_DISCOVER_GROUP_RESULT_KEY:Ljava/lang/String;

.field private final NEIGHBOUR_DISCOVER_RESULT_KEY:Ljava/lang/String;

.field private mAllDiscoverIps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrasip:Ljava/lang/String;

.field private mChecktime:Ljava/lang/String;

.field private mClientid:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDiscoveredGroupIndexs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGiveupCount:I

.field private mNeighbourConInfo:Lcom/cndatacom/topology/entity/NeighbourConInfo;

.field private mNeighbourDiscoverEvent:Lcom/cndatacom/topology/NeighbourDiscover$NeighbourDiscoverEvent;

.field private mNeighbourDiscoverGroupResult:Ls2/g;

.field private mNeighbourDiscoverResult:Ls2/g;

.field private mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

.field private mRandom:Ljava/util/Random;

.field private mRandomDiscoverGroupIndexs:[I

.field private mSchoolid:Ljava/lang/String;

.field private mSingleWorker:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

.field private mTWorker:Lcom/cndatacom/sdk/portal/work/WorkerInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;Lcom/cndatacom/topology/entity/NeighbourConInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Discover_Neighbour_Interval_Key"

    .line 2
    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->DISCOVER_INTERVAL_KEY:Ljava/lang/String;

    const-string v0, "Discover_Group_Index_Key"

    .line 3
    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->DISCOVER_GROUP_INDEX_KEY:Ljava/lang/String;

    const-string v0, "Neighbour_Discover_Result_Key"

    .line 4
    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->NEIGHBOUR_DISCOVER_RESULT_KEY:Ljava/lang/String;

    const-string v0, "Neighbour_Discover_Group_Result_Key"

    .line 5
    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->NEIGHBOUR_DISCOVER_GROUP_RESULT_KEY:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mAllDiscoverIps:Ljava/util/Vector;

    const/16 v0, 0x8

    .line 7
    iput v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->GROUP_SIZE:I

    .line 8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mDiscoveredGroupIndexs:Ljava/util/Vector;

    .line 9
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mRandom:Ljava/util/Random;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mGiveupCount:I

    .line 11
    new-instance v0, Lcom/cndatacom/topology/NeighbourDiscover$1;

    invoke-direct {v0, p0}, Lcom/cndatacom/topology/NeighbourDiscover$1;-><init>(Lcom/cndatacom/topology/NeighbourDiscover;)V

    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mTWorker:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    .line 12
    new-instance v0, Lcom/cndatacom/topology/NeighbourDiscover$2;

    invoke-direct {v0, p0}, Lcom/cndatacom/topology/NeighbourDiscover$2;-><init>(Lcom/cndatacom/topology/NeighbourDiscover;)V

    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mSingleWorker:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    const/16 v0, 0x7530

    .line 13
    iput v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->INTERVAL_DEF:I

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mClientid:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mSchoolid:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mBrasip:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mChecktime:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    .line 20
    iput-object p3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourConInfo:Lcom/cndatacom/topology/entity/NeighbourConInfo;

    .line 21
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->loadInitData()V

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/topology/NeighbourDiscover;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->startTTask()V

    return-void
.end method

.method public static synthetic access$100(Lcom/cndatacom/topology/NeighbourDiscover;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->startSingleTask()V

    return-void
.end method

.method public static synthetic access$200(Lcom/cndatacom/topology/NeighbourDiscover;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/topology/NeighbourDiscover;->readLocArpAndSaveData(Ljava/util/Vector;)V

    return-void
.end method

.method private appendCurDiscoverResult(JLjava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ls2/l;

    invoke-direct {v1}, Ls2/l;-><init>()V

    const-string v2, "account"

    .line 4
    invoke-virtual {v1, v2, v0}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clientid"

    .line 5
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mClientid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "schoolid"

    .line 6
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mSchoolid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ostype"

    const-string v2, "4"

    .line 7
    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version"

    .line 8
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->k(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v0, "model"

    .line 9
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "brasip"

    .line 10
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mBrasip:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ipv4"

    .line 11
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ipv6"

    .line 12
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gateway"

    .line 13
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mask"

    .line 14
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mac"

    .line 15
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dns"

    const-string v2, ""

    .line 16
    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iswireless"

    const-string v2, "0"

    .line 17
    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "datatype"

    const/4 v2, 0x1

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->k(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v0, "checktime"

    .line 19
    invoke-virtual {v1, v0, p3}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "ip route show"

    .line 20
    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "routetable"

    .line 21
    invoke-virtual {v1, v0, p3}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverResult:Ls2/g;

    invoke-virtual {p3, v1}, Ls2/g;->k(Ls2/i;)V

    .line 23
    iget-object p3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    const-string v0, "Discover_Neighbour_Interval_Key"

    invoke-static {p3, v0, p1, p2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 24
    iget-object p1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    const-string p2, "Neighbour_Discover_Result_Key"

    iget-object p3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverResult:Ls2/g;

    invoke-virtual {p3}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private clearDiscoverResult()V
    .locals 3

    .line 1
    new-instance v0, Ls2/g;

    invoke-direct {v0}, Ls2/g;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverResult:Ls2/g;

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Neighbour_Discover_Result_Key"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    new-instance v0, Ls2/g;

    invoke-direct {v0}, Ls2/g;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverGroupResult:Ls2/g;

    .line 4
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Neighbour_Discover_Group_Result_Key"

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private clearDiscoveredGroupIndexData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mDiscoveredGroupIndexs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Discover_Group_Index_Key"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private createGroupIpData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMaskPrefixLength()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mAllDiscoverIps:Ljava/util/Vector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cndatacom/topology/util/IpUtil;->parseAllIpMaskRange(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discover NeighbourDiscover createGroupIpData AllDiscoverIps->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ls2/e;

    invoke-direct {v3}, Ls2/e;-><init>()V

    iget-object v4, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mAllDiscoverIps:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ls2/e;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    return-void
.end method

.method private createRandomIndexData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mAllDiscoverIps:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discover NeighbourDiscover createRandomIndexData page->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 3
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mRandomDiscoverGroupIndexs:[I

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mRandomDiscoverGroupIndexs:[I

    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getRandomGroupIndex()I
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->getRandomGroupIndexValidLength()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mRandom:Ljava/util/Random;

    mul-int/lit8 v3, v0, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    rem-int/2addr v2, v0

    .line 3
    iget-object v3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mRandomDiscoverGroupIndexs:[I

    aget v3, v3, v2

    .line 4
    iget-object v4, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v5}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v6}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createNeighbourTargetIp(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createNeighbourDiscoverKey(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mDiscoveredGroupIndexs:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget-object v3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mRandomDiscoverGroupIndexs:[I

    add-int/lit8 v0, v0, -0x1

    aget v4, v3, v0

    aput v4, v3, v2

    .line 7
    aput v1, v3, v0

    .line 8
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->getRandomGroupIndex()I

    move-result v0

    return v0

    :cond_1
    return v3
.end method

.method private getRandomGroupIndexValidLength()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mRandomDiscoverGroupIndexs:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2
    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private getValueByRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private handleNeighbourTask(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->readArp()Ljava/util/Vector;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 3
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 5
    invoke-virtual {p1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".255"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    :cond_0
    move v6, v3

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cndatacom/topology/entity/ArpInfo;

    .line 9
    invoke-virtual {v7}, Lcom/cndatacom/topology/entity/ArpInfo;->getIp()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 11
    invoke-virtual {v7}, Lcom/cndatacom/topology/entity/ArpInfo;->isValid()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v1, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_2
    if-nez v6, :cond_4

    .line 13
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_5
    invoke-direct {p0, v1}, Lcom/cndatacom/topology/NeighbourDiscover;->saveArpInfo(Ljava/util/Vector;)V

    .line 15
    invoke-direct {p0, v2}, Lcom/cndatacom/topology/NeighbourDiscover;->sendMsg(Ljava/util/Vector;)V

    .line 16
    new-instance p1, Lcom/cndatacom/topology/NeighbourDiscover$3;

    invoke-direct {p1, p0, v2}, Lcom/cndatacom/topology/NeighbourDiscover$3;-><init>(Lcom/cndatacom/topology/NeighbourDiscover;Ljava/util/Vector;)V

    .line 17
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;->getInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initResultData(ZJJ)Z
    .locals 8

    .line 1
    invoke-static {p2, p3}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDHMSString(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p4, p5}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDHMSString(J)Ljava/lang/String;

    move-result-object p4

    .line 3
    iget-object p5, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverResult:Ls2/g;

    const/4 v1, 0x1

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ls2/g;->size()I

    move-result p5

    if-eqz p5, :cond_4

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p5, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p5}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object p5

    .line 6
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    .line 8
    invoke-static {p1, p5, v2, p4}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createNeighbourKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x0

    move v2, p5

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverResult:Ls2/g;

    invoke-virtual {v3}, Ls2/g;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 10
    iget-object v3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverResult:Ls2/g;

    invoke-virtual {v3, v2}, Ls2/g;->l(I)Ls2/i;

    move-result-object v3

    invoke-virtual {v3}, Ls2/i;->c()Ls2/l;

    move-result-object v3

    const-string v4, "gateway"

    .line 11
    invoke-virtual {v3, v4}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v4

    invoke-virtual {v4}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mask"

    .line 12
    invoke-virtual {v3, v5}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v5

    invoke-virtual {v5}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ipv4"

    .line 13
    invoke-virtual {v3, v6}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v6

    invoke-virtual {v6}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ipv6"

    .line 14
    invoke-virtual {v3, v7}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v7

    invoke-virtual {v7}, Ls2/i;->e()Ljava/lang/String;

    const-string v7, "checktime"

    .line 15
    invoke-virtual {v3, v7}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v3

    invoke-virtual {v3}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {v4, v5, v6, v3}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createNeighbourKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move p5, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p5, :cond_3

    .line 18
    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mChecktime:Ljava/lang/String;

    const-string p1, "Discover NeighbourDiscover initResultData router ip not same"

    .line 19
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->clearDiscoverResult()V

    .line 21
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->clearDiscoveredGroupIndexData()V

    .line 22
    invoke-direct {p0, p2, p3, v0}, Lcom/cndatacom/topology/NeighbourDiscover;->appendCurDiscoverResult(JLjava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_3
    iput-object p4, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mChecktime:Ljava/lang/String;

    :goto_2
    xor-int/lit8 p1, p5, 0x1

    return p1

    .line 24
    :cond_4
    :goto_3
    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mChecktime:Ljava/lang/String;

    .line 25
    invoke-direct {p0, p2, p3, v0}, Lcom/cndatacom/topology/NeighbourDiscover;->appendCurDiscoverResult(JLjava/lang/String;)V

    return v1
.end method

.method private loadDiscoverResultData()V
    .locals 3

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    const-string v2, "Neighbour_Discover_Result_Key"

    invoke-static {v1, v2, v0}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v1, Ls2/g;

    invoke-direct {v1}, Ls2/g;-><init>()V

    iput-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverResult:Ls2/g;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Ls2/n;

    invoke-direct {v2}, Ls2/n;-><init>()V

    invoke-virtual {v2, v1}, Ls2/n;->b(Ljava/lang/String;)Ls2/i;

    move-result-object v1

    invoke-virtual {v1}, Ls2/i;->b()Ls2/g;

    move-result-object v1

    iput-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverResult:Ls2/g;

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    const-string v2, "Neighbour_Discover_Group_Result_Key"

    invoke-static {v1, v2, v0}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v0, Ls2/g;

    invoke-direct {v0}, Ls2/g;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverGroupResult:Ls2/g;

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Ls2/n;

    invoke-direct {v1}, Ls2/n;-><init>()V

    invoke-virtual {v1, v0}, Ls2/n;->b(Ljava/lang/String;)Ls2/i;

    move-result-object v0

    invoke-virtual {v0}, Ls2/i;->b()Ls2/g;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverGroupResult:Ls2/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private loadDiscoveredGroupIndexData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Discover_Group_Index_Key"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Ls2/n;

    invoke-direct {v1}, Ls2/n;-><init>()V

    invoke-virtual {v1, v0}, Ls2/n;->b(Ljava/lang/String;)Ls2/i;

    move-result-object v0

    invoke-virtual {v0}, Ls2/i;->b()Ls2/g;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ls2/g;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mDiscoveredGroupIndexs:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ls2/g;->l(I)Ls2/i;

    move-result-object v3

    invoke-virtual {v3}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private loadInitData()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->loadDiscoverResultData()V

    .line 2
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->loadDiscoveredGroupIndexData()V

    .line 3
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->createGroupIpData()V

    .line 4
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->createRandomIndexData()V

    return-void
.end method

.method private readArp()Ljava/util/Vector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/cndatacom/topology/entity/ArpInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "([0-9a-fA-F]{2})(([/\\s:-][0-9a-fA-F]{2}){5})"

    const-string v3, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    const/4 v4, 0x0

    const-string v5, "\n"

    const/16 v6, 0x1c

    if-gt v1, v6, :cond_2

    :try_start_0
    const-string v1, "cat /proc/net/arp"

    .line 3
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 6
    aget-object v5, v1, v4

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "IP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-direct {p0, v5, v3}, Lcom/cndatacom/topology/NeighbourDiscover;->getValueByRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-direct {p0, v5, v2}, Lcom/cndatacom/topology/NeighbourDiscover;->getValueByRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 12
    new-instance v7, Lcom/cndatacom/topology/entity/ArpInfo;

    invoke-direct {v7}, Lcom/cndatacom/topology/entity/ArpInfo;-><init>()V

    .line 13
    invoke-virtual {v7, v5}, Lcom/cndatacom/topology/entity/ArpInfo;->setMac(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v7, v6}, Lcom/cndatacom/topology/entity/ArpInfo;->setIp(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_2
    :try_start_1
    const-string v1, "ip neighbour"

    .line 17
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 19
    :goto_2
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 20
    aget-object v5, v1, v4

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    invoke-direct {p0, v5, v3}, Lcom/cndatacom/topology/NeighbourDiscover;->getValueByRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-direct {p0, v5, v2}, Lcom/cndatacom/topology/NeighbourDiscover;->getValueByRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 26
    new-instance v7, Lcom/cndatacom/topology/entity/ArpInfo;

    invoke-direct {v7}, Lcom/cndatacom/topology/entity/ArpInfo;-><init>()V

    .line 27
    invoke-virtual {v7, v5}, Lcom/cndatacom/topology/entity/ArpInfo;->setMac(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v7, v6}, Lcom/cndatacom/topology/entity/ArpInfo;->setIp(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    return-object v0
.end method

.method private readLocArpAndSaveData(Ljava/util/Vector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->readArp()Ljava/util/Vector;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4
    invoke-virtual {p1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move v5, v2

    .line 5
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 6
    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cndatacom/topology/entity/ArpInfo;

    .line 7
    invoke-virtual {v6}, Lcom/cndatacom/topology/entity/ArpInfo;->getIp()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9
    invoke-virtual {v6}, Lcom/cndatacom/topology/entity/ArpInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0, v0}, Lcom/cndatacom/topology/NeighbourDiscover;->saveArpInfo(Ljava/util/Vector;)V

    .line 12
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->saveDiscoveredGroupIndexData()V

    return-void
.end method

.method private saveArpInfo(Ljava/util/Vector;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/cndatacom/topology/entity/ArpInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "checktime"

    const-string v2, "mask"

    const-string v3, "ipv6"

    const-string v4, "ipv4"

    const-string v5, "gateway"

    const/4 v6, 0x0

    move v7, v6

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    move-object/from16 v8, p1

    .line 2
    invoke-virtual {v8, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cndatacom/topology/entity/ArpInfo;

    .line 3
    iget-object v10, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v10}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v10

    .line 4
    iget-object v11, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v11}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object v11

    .line 5
    invoke-virtual {v9}, Lcom/cndatacom/topology/entity/ArpInfo;->getIp()Ljava/lang/String;

    move-result-object v12

    .line 6
    new-instance v13, Ls2/l;

    invoke-direct {v13}, Ls2/l;-><init>()V

    .line 7
    invoke-virtual {v13, v5, v10}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v9}, Lcom/cndatacom/topology/entity/ArpInfo;->getIp()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v4, v14}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, ""

    .line 9
    invoke-virtual {v13, v3, v14}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v13, v2, v11}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "mac"

    .line 11
    invoke-virtual {v9}, Lcom/cndatacom/topology/entity/ArpInfo;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v14, v9}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v9, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mChecktime:Ljava/lang/String;

    invoke-virtual {v13, v0, v9}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "key"

    .line 13
    iget-object v14, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v14}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mChecktime:Ljava/lang/String;

    invoke-static {v10, v11, v14, v15}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createNeighbourKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v9, v14}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v9, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mChecktime:Ljava/lang/String;

    invoke-static {v10, v11, v12, v9}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createNeighbourKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move v10, v6

    .line 15
    :goto_1
    iget-object v11, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverGroupResult:Ls2/g;

    invoke-virtual {v11}, Ls2/g;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 16
    iget-object v11, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverGroupResult:Ls2/g;

    invoke-virtual {v11, v10}, Ls2/g;->l(I)Ls2/i;

    move-result-object v11

    invoke-virtual {v11}, Ls2/i;->c()Ls2/l;

    move-result-object v11

    .line 17
    invoke-virtual {v11, v5}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v12

    invoke-virtual {v12}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v12

    .line 18
    invoke-virtual {v11, v2}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v14

    invoke-virtual {v14}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v14

    .line 19
    invoke-virtual {v11, v4}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v15

    invoke-virtual {v15}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v15

    .line 20
    invoke-virtual {v11, v3}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ls2/i;->e()Ljava/lang/String;

    .line 21
    invoke-virtual {v11, v0}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v11

    invoke-virtual {v11}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v11

    .line 22
    invoke-static {v12, v14, v15, v11}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createNeighbourKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 23
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_2
    if-nez v9, :cond_2

    .line 24
    iget-object v9, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverGroupResult:Ls2/g;

    invoke-virtual {v9, v13}, Ls2/g;->k(Ls2/i;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 25
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/cndatacom/topology/NeighbourDiscover;->saveDiscoverGroupResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private saveDiscoverGroupResult()V
    .locals 3

    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverGroupResult:Ls2/g;

    invoke-virtual {v1}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Neighbour_Discover_Group_Result_Key"

    invoke-static {v0, v2, v1}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private saveDiscoveredGroupIndexData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mDiscoveredGroupIndexs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    const-string v1, "Discover_Group_Index_Key"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ls2/g;

    invoke-direct {v0}, Ls2/g;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mDiscoveredGroupIndexs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v3}, Ls2/g;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ls2/g;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private sendMsg(Ljava/util/Vector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 3
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v0}, Ljava/net/DatagramSocket;-><init>(I)V

    const/16 v2, 0xc8

    .line 4
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const-string v2, "data"

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-virtual {p1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v2

    invoke-direct {v5, v2, v6, v4, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 11
    invoke-virtual {v1, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private startSingleTask()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mGiveupCount:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 2
    iput v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mGiveupCount:I

    const-string v0, "Discover NeighbourDiscover-> startSingleTask GiveupCount = 3"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mSingleWorker:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourConInfo:Lcom/cndatacom/topology/entity/NeighbourConInfo;

    invoke-virtual {v2}, Lcom/cndatacom/topology/entity/NeighbourConInfo;->getInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startOneTimeWorkDelayed(Lcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    return-void

    :cond_0
    const-string v0, "Discover NeighbourDiscover-> startSingleTask"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->getRandomGroupIndex()I

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discover NeighbourDiscover-> startSingleTask groupIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Discover NeighbourDiscover-> startSingleTask upload"

    .line 8
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->uploadDiscoverResult()V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverEvent:Lcom/cndatacom/topology/NeighbourDiscover$NeighbourDiscoverEvent;

    if-eqz v1, :cond_2

    .line 11
    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createNeighbourTargetIp(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/cndatacom/topology/NeighbourDiscover$NeighbourDiscoverEvent;->sendNeighbourTeamWorkMsg(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private startTTask()V
    .locals 10

    const-string v0, "Discover NeighbourDiscover->startTTask"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 3
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Discover_Neighbour_Interval_Key"

    const-wide/16 v5, -0x1

    invoke-static {v0, v1, v5, v6}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-gez v2, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    move-wide v5, v0

    :goto_0
    sub-long v0, v3, v5

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discover NeighbourDiscover startTTask time->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " total->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourConInfo:Lcom/cndatacom/topology/entity/NeighbourConInfo;

    invoke-virtual {v9}, Lcom/cndatacom/topology/entity/NeighbourConInfo;->getTotal()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v7}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 5
    iget-object v7, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourConInfo:Lcom/cndatacom/topology/entity/NeighbourConInfo;

    invoke-virtual {v7}, Lcom/cndatacom/topology/entity/NeighbourConInfo;->getTotal()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    int-to-long v7, v7

    cmp-long v7, v0, v7

    if-lez v7, :cond_1

    const-string v0, "Discover NeighbourDiscover startTTask clear last data"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->clearDiscoveredGroupIndexData()V

    .line 8
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->clearDiscoverResult()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v7, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourConInfo:Lcom/cndatacom/topology/entity/NeighbourConInfo;

    invoke-virtual {v7}, Lcom/cndatacom/topology/entity/NeighbourConInfo;->getTotal()I

    move-result v7

    int-to-long v7, v7

    cmp-long v0, v7, v0

    if-gtz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->uploadDiscoverResult()V

    .line 11
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->clearDiscoverResult()V

    .line 12
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->clearDiscoveredGroupIndexData()V

    const-string v0, "Discover NeighbourDiscover startTTask upload last data"

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v2, v9

    :goto_1
    move-object v1, p0

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/cndatacom/topology/NeighbourDiscover;->initResultData(ZJJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iput v9, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mGiveupCount:I

    .line 16
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->createRandomIndexData()V

    .line 17
    :cond_3
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mTWorker:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    iget-object v2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourConInfo:Lcom/cndatacom/topology/entity/NeighbourConInfo;

    invoke-virtual {v2}, Lcom/cndatacom/topology/entity/NeighbourConInfo;->getTotal()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startOneTimeWorkDelayed(Lcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    .line 18
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mSingleWorker:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startOneTimeWorkDelayed(Lcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    return-void
.end method

.method private uploadDiscoverResult()V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "mac"

    const-string v2, "ipv6"

    const-string v3, "ipv4"

    const-string v4, "utf-8"

    .line 1
    :try_start_0
    iget-object v5, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourConInfo:Lcom/cndatacom/topology/entity/NeighbourConInfo;

    invoke-virtual {v5}, Lcom/cndatacom/topology/entity/NeighbourConInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "Discover NeighbourDiscover uploadDiscoverResult url is null"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v6, Ls2/g;

    invoke-direct {v6}, Ls2/g;-><init>()V

    const/4 v8, 0x0

    .line 5
    :goto_0
    iget-object v9, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverResult:Ls2/g;

    invoke-virtual {v9}, Ls2/g;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 6
    iget-object v9, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverResult:Ls2/g;

    invoke-virtual {v9, v8}, Ls2/g;->l(I)Ls2/i;

    move-result-object v9

    invoke-virtual {v9}, Ls2/i;->c()Ls2/l;

    move-result-object v9

    const-string v10, "brasip"

    .line 7
    invoke-virtual {v9, v10}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v10

    invoke-virtual {v10}, Ls2/i;->e()Ljava/lang/String;

    const-string v10, "gateway"

    .line 8
    invoke-virtual {v9, v10}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v10

    invoke-virtual {v10}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mask"

    .line 9
    invoke-virtual {v9, v11}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v11

    invoke-virtual {v11}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual {v9, v3}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v12

    invoke-virtual {v12}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-virtual {v9, v2}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v13

    invoke-virtual {v13}, Ls2/i;->e()Ljava/lang/String;

    const-string v13, "checktime"

    .line 12
    invoke-virtual {v9, v13}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v13

    invoke-virtual {v13}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v13

    .line 13
    invoke-static {v10, v11, v12, v13}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createNeighbourKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 14
    new-instance v11, Ls2/n;

    invoke-direct {v11}, Ls2/n;-><init>()V

    invoke-virtual {v9}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ls2/n;->b(Ljava/lang/String;)Ls2/i;

    move-result-object v9

    invoke-virtual {v9}, Ls2/i;->c()Ls2/l;

    move-result-object v9

    .line 15
    new-instance v11, Ls2/g;

    invoke-direct {v11}, Ls2/g;-><init>()V

    const/4 v12, 0x0

    .line 16
    :goto_1
    iget-object v13, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverGroupResult:Ls2/g;

    invoke-virtual {v13}, Ls2/g;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 17
    iget-object v13, v1, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverGroupResult:Ls2/g;

    invoke-virtual {v13, v12}, Ls2/g;->l(I)Ls2/i;

    move-result-object v13

    invoke-virtual {v13}, Ls2/i;->c()Ls2/l;

    move-result-object v13

    const-string v14, "key"

    .line 18
    invoke-virtual {v13, v14}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v14

    invoke-virtual {v14}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v14

    .line 19
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 20
    invoke-virtual {v13, v3}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v14

    invoke-virtual {v14}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v14

    .line 21
    invoke-virtual {v13, v2}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v15

    invoke-virtual {v15}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v15

    .line 22
    invoke-virtual {v13, v0}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v13

    invoke-virtual {v13}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v13

    .line 23
    new-instance v7, Ls2/l;

    invoke-direct {v7}, Ls2/l;-><init>()V

    .line 24
    invoke-virtual {v7, v3, v14}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v7, v2, v15}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v7, v0, v13}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v11, v7}, Ls2/g;->k(Ls2/i;)V

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {v11}, Ls2/g;->size()I

    move-result v7

    if-lez v7, :cond_3

    const-string v7, "datainfo"

    .line 29
    invoke-virtual {v9, v7, v11}, Ls2/l;->j(Ljava/lang/String;Ls2/i;)V

    .line 30
    invoke-virtual {v6, v9}, Ls2/g;->k(Ls2/i;)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 31
    :cond_4
    invoke-virtual {v6}, Ls2/g;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discover NeighbourDiscover upload data  ->"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    const-string v2, "9vApxLk5G3PAsJrM"

    .line 33
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "FnJL7EDzjqWjcaY9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v6}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeCBC([B[B[B)[B

    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 35
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-string v6, "Content-Type"

    const-string v7, "text/plain;charset=utf-8"

    .line 36
    invoke-virtual {v3, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v6, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {v6}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v6, v5, v3, v2}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Discover NeighbourDiscover uploadDiscoverResult httpcode ->"

    if-eqz v2, :cond_5

    .line 38
    :try_start_1
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 39
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 40
    new-instance v5, Ls2/n;

    invoke-direct {v5}, Ls2/n;-><init>()V

    invoke-virtual {v5, v4}, Ls2/n;->b(Ljava/lang/String;)Ls2/i;

    move-result-object v5

    invoke-virtual {v5}, Ls2/i;->c()Ls2/l;

    move-result-object v5

    const-string v6, "code"

    .line 41
    invoke-virtual {v5, v6}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v5

    invoke-virtual {v5}, Ls2/i;->a()I

    move-result v5

    if-nez v5, :cond_7

    .line 42
    invoke-direct/range {p0 .. p0}, Lcom/cndatacom/topology/NeighbourDiscover;->clearDiscoverResult()V

    new-array v5, v0, [Ljava/lang/String;

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discover NeighbourDiscover uploadDiscoverResult ->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/String;

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_2

    .line 45
    :cond_5
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discover NeighbourDiscover uploadDiscoverResult e->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v0, "Discover NeighbourDiscover uploadDiscoverResult data is null->"

    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public appendToDiscovered(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mDiscoveredGroupIndexs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mDiscoveredGroupIndexs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public doNeighbourTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 2
    iput p3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mGiveupCount:I

    .line 3
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mDiscoveredGroupIndexs:Ljava/util/Vector;

    invoke-virtual {v0, p5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    const/4 p5, 0x1

    new-array v0, p5, [Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discover NeighbourDiscover-> doNeighbourTask groupindex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 5
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, p1, 0x8

    .line 6
    iget-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mAllDiscoverIps:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mAllDiscoverIps:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mAllDiscoverIps:Ljava/util/Vector;

    sub-int/2addr v0, p5

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-direct {p0, p3, p4, p2}, Lcom/cndatacom/topology/NeighbourDiscover;->handleNeighbourTask(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    iget-object p2, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mSingleWorker:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    iget-object p3, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourConInfo:Lcom/cndatacom/topology/entity/NeighbourConInfo;

    invoke-virtual {p3}, Lcom/cndatacom/topology/entity/NeighbourConInfo;->getInterval()I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startOneTimeWorkDelayed(Lcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    :cond_2
    return-void
.end method

.method public doNextDiscover()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mGiveupCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mGiveupCount:I

    .line 2
    invoke-direct {p0}, Lcom/cndatacom/topology/NeighbourDiscover;->startSingleTask()V

    return-void
.end method

.method public isDiscovered(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mDiscoveredGroupIndexs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public release(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mTWorker:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancel(I)V

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mSingleWorker:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancel(I)V

    return-void
.end method

.method public setNeighbourDiscoverEvent(Lcom/cndatacom/topology/NeighbourDiscover$NeighbourDiscoverEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mNeighbourDiscoverEvent:Lcom/cndatacom/topology/NeighbourDiscover$NeighbourDiscoverEvent;

    return-void
.end method

.method public start(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mClientid:Ljava/lang/String;

    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mSchoolid:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getWlanacip()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mBrasip:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover;->mTWorker:Lcom/cndatacom/sdk/portal/work/WorkerInfo;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startOneTimeWorkDelayed(Lcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    return-void
.end method
