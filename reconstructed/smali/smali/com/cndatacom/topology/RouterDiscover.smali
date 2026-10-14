.class public Lcom/cndatacom/topology/RouterDiscover;
.super Lcom/cndatacom/sdk/portal/work/WorkerInfo;
.source "RouterDiscover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/topology/RouterDiscover$RouterDiscoverEvent;
    }
.end annotation


# instance fields
.field private final DISCOVER_GROUP_KEY:Ljava/lang/String;

.field private final DISCOVER_GROUP_RESULT_KEY:Ljava/lang/String;

.field private final DISCOVER_INTERVAL_KEY:Ljava/lang/String;

.field private final DISCOVER_LIST_RESULT_KEY:Ljava/lang/String;

.field private final INTERVAL_DEF:I

.field private final IP_OPTION:B

.field private final TTL:B

.field private mBrasip:Ljava/lang/String;

.field private mChecktime:Ljava/lang/String;

.field private mClientid:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDiscoveredGroups:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscoveredRouterInfos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/cndatacom/topology/entity/RouterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

.field private mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

.field private mRouterDiscoverEvent:Lcom/cndatacom/topology/RouterDiscover$RouterDiscoverEvent;

.field private mRouterDiscoverGroupResult:Ls2/g;

.field private mRouterDiscoverListResult:Ls2/l;

.field private mSchoolid:Ljava/lang/String;

.field private mSnmpConInfo:Lcom/cndatacom/topology/entity/SnmpConInfo;

.field private mSnmpManager:Lcom/cndatacom/topology/SnmpManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;Lcom/cndatacom/topology/entity/RouterConInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-byte v0, p0, Lcom/cndatacom/topology/RouterDiscover;->TTL:B

    const/4 v0, 0x2

    .line 3
    iput-byte v0, p0, Lcom/cndatacom/topology/RouterDiscover;->IP_OPTION:B

    const-string v0, "Discover_Router_Interval_Key"

    .line 4
    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->DISCOVER_INTERVAL_KEY:Ljava/lang/String;

    const/16 v0, 0x7530

    .line 5
    iput v0, p0, Lcom/cndatacom/topology/RouterDiscover;->INTERVAL_DEF:I

    const-string v0, "Discover_Router_Group_Key"

    .line 6
    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->DISCOVER_GROUP_KEY:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredGroups:Ljava/util/Vector;

    const-string v0, "Discover_Router_Group_Result_Key"

    .line 8
    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->DISCOVER_GROUP_RESULT_KEY:Ljava/lang/String;

    .line 9
    new-instance v0, Ls2/g;

    invoke-direct {v0}, Ls2/g;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverGroupResult:Ls2/g;

    const-string v0, "Discover_Router_List_Result_Key"

    .line 10
    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->DISCOVER_LIST_RESULT_KEY:Ljava/lang/String;

    .line 11
    new-instance v0, Ls2/l;

    invoke-direct {v0}, Ls2/l;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverListResult:Ls2/l;

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredRouterInfos:Ljava/util/Vector;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mClientid:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mSchoolid:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mBrasip:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mChecktime:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    .line 18
    iput-object p3, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    .line 19
    iput-object p1, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->loadDiscoveredGroupData()V

    .line 21
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->loadDiscoverResultData()V

    .line 22
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->loadDiscoveredListData()V

    .line 23
    iget-object p1, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/RouterConInfo;->getSnmpConInfo()Lcom/cndatacom/topology/entity/SnmpConInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/topology/RouterDiscover;->mSnmpConInfo:Lcom/cndatacom/topology/entity/SnmpConInfo;

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/SnmpConInfo;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    :try_start_0
    new-instance p1, Lcom/cndatacom/topology/SnmpManager;

    invoke-direct {p1}, Lcom/cndatacom/topology/SnmpManager;-><init>()V

    iput-object p1, p0, Lcom/cndatacom/topology/RouterDiscover;->mSnmpManager:Lcom/cndatacom/topology/SnmpManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
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
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mClientid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "schoolid"

    .line 6
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mSchoolid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ostype"

    const-string v2, "4"

    .line 7
    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version"

    .line 8
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mBrasip:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ipv4"

    .line 11
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ipv6"

    .line 12
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gateway"

    .line 13
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mask"

    .line 14
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mac"

    .line 15
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "publicIp"

    .line 16
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v2}, Lcom/cndatacom/topology/entity/RouterConInfo;->getPublicIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dns"

    const-string v2, ""

    .line 17
    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iswireless"

    const-string v2, "0"

    .line 18
    invoke-virtual {v1, v0, v2}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "datatype"

    const/4 v2, 0x2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ls2/l;->k(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v0, "checktime"

    .line 20
    invoke-virtual {v1, v0, p3}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "ip route show"

    .line 21
    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "routetable"

    .line 22
    invoke-virtual {v1, v0, p3}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p3, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverGroupResult:Ls2/g;

    invoke-virtual {p3, v1}, Ls2/g;->k(Ls2/i;)V

    .line 24
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->saveDiscoverGroupResult()V

    .line 25
    iget-object p3, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    const-string v0, "Discover_Router_Interval_Key"

    invoke-static {p3, v0, p1, p2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private clearDiscoverResult()V
    .locals 3

    .line 1
    new-instance v0, Ls2/g;

    invoke-direct {v0}, Ls2/g;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverGroupResult:Ls2/g;

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Discover_Router_Group_Result_Key"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    new-instance v0, Ls2/l;

    invoke-direct {v0}, Ls2/l;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverListResult:Ls2/l;

    .line 4
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Discover_Router_List_Result_Key"

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private clearDiscoveredGroupData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredGroups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Discover_Router_Group_Key"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private handleIpOptionTask()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v0}, Lcom/cndatacom/topology/entity/RouterConInfo;->getPublicIp()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v1}, Lcom/cndatacom/topology/entity/RouterConInfo;->getRetryCount()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v2}, Lcom/cndatacom/topology/entity/RouterConInfo;->getRetryInterval()I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v1, "ping -c %d -i %d -R  %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const-string v5, "\n"

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v5, v4

    .line 8
    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_5

    .line 9
    aget-object v6, v1, v4

    .line 10
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "PING"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "RR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move v5, v2

    :cond_2
    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TTL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    const-string v7, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    .line 14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 16
    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 17
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 18
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 19
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 20
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 21
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v3, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 23
    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 24
    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_3
    if-ltz v1, :cond_8

    .line 25
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 26
    iget-object v4, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    .line 27
    :cond_6
    new-instance v4, Lcom/cndatacom/topology/entity/RouterInfo;

    invoke-direct {v4}, Lcom/cndatacom/topology/entity/RouterInfo;-><init>()V

    .line 28
    invoke-virtual {v4, v2}, Lcom/cndatacom/topology/entity/RouterInfo;->setIp(Ljava/lang/String;)V

    .line 29
    iget-object v5, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredRouterInfos:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 31
    :cond_8
    :goto_5
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->handleRouterIps()V

    return-void
.end method

.method private handleRouterIps()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mSnmpConInfo:Lcom/cndatacom/topology/entity/SnmpConInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mSnmpManager:Lcom/cndatacom/topology/SnmpManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->sendSnmpMsg()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v3}, Lcom/cndatacom/topology/entity/RouterConInfo;->getPublicIp()Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/cndatacom/topology/RouterDiscover;->mChecktime:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createRouterKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ls2/g;

    invoke-direct {v1}, Ls2/g;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredRouterInfos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 11
    iget-object v3, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredRouterInfos:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cndatacom/topology/entity/RouterInfo;

    .line 12
    new-instance v4, Ls2/l;

    invoke-direct {v4}, Ls2/l;-><init>()V

    .line 13
    invoke-virtual {v3}, Lcom/cndatacom/topology/entity/RouterInfo;->getIp()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ip"

    invoke-virtual {v4, v6, v5}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3}, Lcom/cndatacom/topology/entity/RouterInfo;->getModel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "model"

    invoke-virtual {v4, v6, v5}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3}, Lcom/cndatacom/topology/entity/RouterInfo;->getOs()Ljava/lang/String;

    move-result-object v5

    const-string v6, "os"

    invoke-virtual {v4, v6, v5}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Lcom/cndatacom/topology/entity/RouterInfo;->getTtl()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ttl"

    invoke-virtual {v4, v5, v3}, Ls2/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v4}, Ls2/g;->k(Ls2/i;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverListResult:Ls2/l;

    invoke-virtual {v2, v0, v1}, Ls2/l;->j(Ljava/lang/String;Ls2/i;)V

    .line 19
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->saveDiscoveredListResult()V

    .line 20
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->saveDiscoveredGroupData()V

    .line 21
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->uploadDiscoverResult()V

    return-void
.end method

.method private handleRouterTask(B)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->handleIpOptionTask()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->handleTTLRouterTask()V

    :goto_0
    return-void
.end method

.method private handleTTLRouterTask()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v0}, Lcom/cndatacom/topology/entity/RouterConInfo;->getPublicIp()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v1}, Lcom/cndatacom/topology/entity/RouterConInfo;->getMaxTTL()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v2}, Lcom/cndatacom/topology/entity/RouterConInfo;->getRetryCount()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v3}, Lcom/cndatacom/topology/entity/RouterConInfo;->getRetryInterval()I

    move-result v3

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-gt v5, v1, :cond_6

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const-string v7, "ping -c %d -i %d -t %d  %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    .line 7
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v7, v8

    .line 8
    :goto_1
    array-length v9, v6

    const-string v10, ""

    if-ge v7, v9, :cond_3

    .line 9
    aget-object v9, v6, v7

    .line 10
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "PING"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v12, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    .line 12
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 13
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 14
    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 15
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 16
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 17
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 18
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 19
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 20
    new-instance v7, Lcom/cndatacom/topology/entity/RouterInfo;

    invoke-direct {v7}, Lcom/cndatacom/topology/entity/RouterInfo;-><init>()V

    .line 21
    invoke-virtual {v7, v6}, Lcom/cndatacom/topology/entity/RouterInfo;->setIp(Ljava/lang/String;)V

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/cndatacom/topology/entity/RouterInfo;->setTtl(Ljava/lang/String;)V

    .line 23
    iget-object v6, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredRouterInfos:Ljava/util/Vector;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v9, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TTL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    move v8, v6

    goto :goto_3

    :cond_1
    move v6, v8

    move v8, v4

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_3
    move v6, v8

    :goto_3
    if-nez v8, :cond_4

    .line 25
    new-instance v7, Lcom/cndatacom/topology/entity/RouterInfo;

    invoke-direct {v7}, Lcom/cndatacom/topology/entity/RouterInfo;-><init>()V

    .line 26
    invoke-virtual {v7, v10}, Lcom/cndatacom/topology/entity/RouterInfo;->setIp(Ljava/lang/String;)V

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/cndatacom/topology/entity/RouterInfo;->setTtl(Ljava/lang/String;)V

    .line 28
    iget-object v8, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredRouterInfos:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 29
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->handleRouterIps()V

    return-void
.end method

.method private initResultData(ZJJ)V
    .locals 8

    .line 1
    invoke-static {p2, p3}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDHMSString(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p4, p5}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDHMSString(J)Ljava/lang/String;

    move-result-object p4

    .line 3
    iget-object p5, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverGroupResult:Ls2/g;

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ls2/g;->size()I

    move-result p5

    if-eqz p5, :cond_4

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p5, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p5}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object p5

    .line 6
    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v2}, Lcom/cndatacom/topology/entity/RouterConInfo;->getPublicIp()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {p1, p5, v1, v2, p4}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createRouterKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x0

    move v1, p5

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverGroupResult:Ls2/g;

    invoke-virtual {v2}, Ls2/g;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverGroupResult:Ls2/g;

    invoke-virtual {v2, v1}, Ls2/g;->l(I)Ls2/i;

    move-result-object v2

    invoke-virtual {v2}, Ls2/i;->c()Ls2/l;

    move-result-object v2

    const-string v3, "gateway"

    .line 12
    invoke-virtual {v2, v3}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v3

    invoke-virtual {v3}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mask"

    .line 13
    invoke-virtual {v2, v4}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v4

    invoke-virtual {v4}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ipv4"

    .line 14
    invoke-virtual {v2, v5}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v5

    invoke-virtual {v5}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ipv6"

    .line 15
    invoke-virtual {v2, v6}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v6

    invoke-virtual {v6}, Ls2/i;->e()Ljava/lang/String;

    const-string v6, "publicIp"

    .line 16
    invoke-virtual {v2, v6}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v6

    invoke-virtual {v6}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, "checktime"

    .line 17
    invoke-virtual {v2, v7}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v2

    invoke-virtual {v2}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v3, v4, v5, v6, v2}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createRouterKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p5, :cond_3

    const-string p1, "Discover RouterDiscover initResultData router ip not same"

    .line 20
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 21
    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mChecktime:Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->clearDiscoverResult()V

    .line 23
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->clearDiscoveredGroupData()V

    .line 24
    invoke-direct {p0, p2, p3, v0}, Lcom/cndatacom/topology/RouterDiscover;->appendCurDiscoverResult(JLjava/lang/String;)V

    goto :goto_3

    .line 25
    :cond_3
    iput-object p4, p0, Lcom/cndatacom/topology/RouterDiscover;->mChecktime:Ljava/lang/String;

    goto :goto_3

    .line 26
    :cond_4
    :goto_2
    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mChecktime:Ljava/lang/String;

    .line 27
    invoke-direct {p0, p2, p3, v0}, Lcom/cndatacom/topology/RouterDiscover;->appendCurDiscoverResult(JLjava/lang/String;)V

    :goto_3
    return-void
.end method

.method private loadDiscoverResultData()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Discover_Router_Group_Result_Key"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Ls2/g;

    invoke-direct {v0}, Ls2/g;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverGroupResult:Ls2/g;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ls2/n;

    invoke-direct {v1}, Ls2/n;-><init>()V

    invoke-virtual {v1, v0}, Ls2/n;->b(Ljava/lang/String;)Ls2/i;

    move-result-object v0

    invoke-virtual {v0}, Ls2/i;->b()Ls2/g;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverGroupResult:Ls2/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private loadDiscoveredGroupData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Discover_Router_Group_Key"

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
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredGroups:Ljava/util/Vector;

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

.method private loadDiscoveredListData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Discover_Router_List_Result_Key"

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

    invoke-virtual {v0}, Ls2/i;->c()Ls2/l;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ls2/l;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls2/i;

    .line 6
    iget-object v3, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverListResult:Ls2/l;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ls2/l;->j(Ljava/lang/String;Ls2/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private saveDiscoverGroupResult()V
    .locals 3

    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverGroupResult:Ls2/g;

    invoke-virtual {v1}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Discover_Router_Group_Result_Key"

    invoke-static {v0, v2, v1}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private saveDiscoveredGroupData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredGroups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    const-string v1, "Discover_Router_Group_Key"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ls2/g;

    invoke-direct {v0}, Ls2/g;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredGroups:Ljava/util/Vector;

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
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private saveDiscoveredListResult()V
    .locals 3

    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverListResult:Ls2/l;

    invoke-virtual {v1}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Discover_Router_List_Result_Key"

    invoke-static {v0, v2, v1}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private sendSnmpMsg()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mSnmpManager:Lcom/cndatacom/topology/SnmpManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "1.3.6.1.2.1.1.5.0"

    .line 3
    new-instance v1, Lr4/v;

    new-instance v2, Lr4/j;

    invoke-direct {v2, v8}, Lr4/j;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lr4/v;-><init>(Lr4/j;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "1.3.6.1.2.1.1.1.0"

    .line 4
    new-instance v1, Lr4/v;

    new-instance v2, Lr4/j;

    invoke-direct {v2, v9}, Lr4/j;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lr4/v;-><init>(Lr4/j;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mSnmpConInfo:Lcom/cndatacom/topology/entity/SnmpConInfo;

    invoke-virtual {v1}, Lcom/cndatacom/topology/entity/SnmpConInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 7
    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredRouterInfos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v11, v1

    :goto_0
    if-ltz v11, :cond_6

    .line 8
    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredRouterInfos:Ljava/util/Vector;

    invoke-virtual {v1, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/cndatacom/topology/entity/RouterInfo;

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mSnmpManager:Lcom/cndatacom/topology/SnmpManager;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 10
    :cond_1
    invoke-virtual {v12}, Lcom/cndatacom/topology/entity/RouterInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa1

    iget-object v4, p0, Lcom/cndatacom/topology/RouterDiscover;->mSnmpConInfo:Lcom/cndatacom/topology/entity/SnmpConInfo;

    invoke-virtual {v4}, Lcom/cndatacom/topology/entity/SnmpConInfo;->getRetryCount()I

    move-result v4

    iget-object v5, p0, Lcom/cndatacom/topology/RouterDiscover;->mSnmpConInfo:Lcom/cndatacom/topology/entity/SnmpConInfo;

    invoke-virtual {v5}, Lcom/cndatacom/topology/entity/SnmpConInfo;->getTimeout()I

    move-result v5

    move-object v6, v0

    move-object v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/cndatacom/topology/SnmpManager;->sendMsg(Ljava/lang/String;IIILjava/util/List;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 11
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/v;

    .line 13
    invoke-virtual {v3}, Lr4/v;->x()Lr4/u;

    move-result-object v4

    .line 14
    invoke-virtual {v3}, Lr4/v;->u()Lr4/j;

    move-result-object v3

    invoke-virtual {v3}, Lr4/j;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-interface {v4}, Lr4/u;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "Null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v4}, Lr4/u;->q()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "noSuchObject"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "noSuchInstance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v12, v5}, Lcom/cndatacom/topology/entity/RouterInfo;->setModel(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {v12, v5}, Lcom/cndatacom/topology/entity/RouterInfo;->setOs(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private startTask()V
    .locals 12

    const-string v0, "Discover RouterDiscover->startTask"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredRouterInfos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 4
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mContext:Landroid/content/Context;

    const-string v1, "Discover_Router_Interval_Key"

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

    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/String;

    .line 5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discover RouterDiscover startTask time->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " interval->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v9}, Lcom/cndatacom/topology/entity/RouterConInfo;->getInterval()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v2, v9

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v2}, Lcom/cndatacom/topology/entity/RouterConInfo;->getInterval()I

    move-result v2

    const/4 v8, 0x2

    mul-int/2addr v2, v8

    int-to-long v10, v2

    cmp-long v2, v0, v10

    if-lez v2, :cond_1

    const-string v0, "Discover RouterDiscover startTask clear last data"

    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->clearDiscoveredGroupData()V

    .line 9
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->clearDiscoverResult()V

    :goto_1
    move v2, v7

    goto :goto_2

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v2}, Lcom/cndatacom/topology/entity/RouterConInfo;->getInterval()I

    move-result v2

    int-to-long v10, v2

    cmp-long v0, v10, v0

    if-gtz v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->uploadDiscoverResult()V

    .line 12
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->clearDiscoverResult()V

    .line 13
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->clearDiscoveredGroupData()V

    const-string v0, "Discover RouterDiscover startTask upload last data"

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v2, v9

    :goto_2
    move-object v1, p0

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/cndatacom/topology/RouterDiscover;->initResultData(ZJJ)V

    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/2addr v0, v8

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v7, v8

    .line 17
    :goto_3
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverEvent:Lcom/cndatacom/topology/RouterDiscover$RouterDiscoverEvent;

    if-eqz v0, :cond_4

    .line 18
    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v1}, Lcom/cndatacom/topology/entity/RouterConInfo;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/cndatacom/topology/RouterDiscover$RouterDiscoverEvent;->sendRouterTeamWorkMsg(BLjava/lang/String;)V

    .line 19
    :cond_4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v1}, Lcom/cndatacom/topology/entity/RouterConInfo;->getInterval()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startOneTimeWorkDelayed(Lcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    return-void
.end method

.method private uploadDiscoverResult()V
    .locals 11

    const-string v0, "utf-8"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterConInfo:Lcom/cndatacom/topology/entity/RouterConInfo;

    invoke-virtual {v1}, Lcom/cndatacom/topology/entity/RouterConInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Discover RouterDiscover uploadDiscoverResult url is null"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v2, Ls2/g;

    invoke-direct {v2}, Ls2/g;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverGroupResult:Ls2/g;

    invoke-virtual {v5}, Ls2/g;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 6
    iget-object v5, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverGroupResult:Ls2/g;

    invoke-virtual {v5, v4}, Ls2/g;->l(I)Ls2/i;

    move-result-object v5

    invoke-virtual {v5}, Ls2/i;->c()Ls2/l;

    move-result-object v5

    const-string v6, "brasip"

    .line 7
    invoke-virtual {v5, v6}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v6

    invoke-virtual {v6}, Ls2/i;->e()Ljava/lang/String;

    const-string v6, "gateway"

    .line 8
    invoke-virtual {v5, v6}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v6

    invoke-virtual {v6}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mask"

    .line 9
    invoke-virtual {v5, v7}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v7

    invoke-virtual {v7}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ipv4"

    .line 10
    invoke-virtual {v5, v8}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v8

    invoke-virtual {v8}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ipv6"

    .line 11
    invoke-virtual {v5, v9}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v9

    invoke-virtual {v9}, Ls2/i;->e()Ljava/lang/String;

    const-string v9, "publicIp"

    .line 12
    invoke-virtual {v5, v9}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v9

    invoke-virtual {v9}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v9

    const-string v10, "checktime"

    .line 13
    invoke-virtual {v5, v10}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v10

    invoke-virtual {v10}, Ls2/i;->e()Ljava/lang/String;

    move-result-object v10

    .line 14
    invoke-static {v6, v7, v8, v9, v10}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createRouterKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    new-instance v7, Ls2/n;

    invoke-direct {v7}, Ls2/n;-><init>()V

    invoke-virtual {v5}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ls2/n;->b(Ljava/lang/String;)Ls2/i;

    move-result-object v5

    invoke-virtual {v5}, Ls2/i;->c()Ls2/l;

    move-result-object v5

    .line 16
    iget-object v7, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverListResult:Ls2/l;

    invoke-virtual {v7, v6}, Ls2/l;->p(Ljava/lang/String;)Ls2/g;

    move-result-object v6

    if-nez v6, :cond_1

    .line 17
    new-instance v6, Ls2/g;

    invoke-direct {v6}, Ls2/g;-><init>()V

    .line 18
    :cond_1
    invoke-virtual {v6}, Ls2/g;->size()I

    move-result v7

    if-lez v7, :cond_2

    const-string v7, "datainfo"

    .line 19
    invoke-virtual {v5, v7, v6}, Ls2/l;->j(Ljava/lang/String;Ls2/i;)V

    .line 20
    invoke-virtual {v2, v5}, Ls2/g;->k(Ls2/i;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 21
    :cond_3
    invoke-virtual {v2}, Ls2/g;->size()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discover RouterDiscover upload data  ->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v5}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    const-string v5, "9vApxLk5G3PAsJrM"

    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "FnJL7EDzjqWjcaY9"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2}, Ls2/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeCBC([B[B[B)[B

    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 25
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const-string v6, "Content-Type"

    const-string v7, "text/plain;charset=utf-8"

    .line 26
    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v6, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {v6}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v1, v5, v0}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Discover RouterDiscover uploadDiscoverResult httpcode ->"

    if-eqz v0, :cond_4

    .line 28
    :try_start_1
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 30
    new-instance v5, Ls2/n;

    invoke-direct {v5}, Ls2/n;-><init>()V

    invoke-virtual {v5, v2}, Ls2/n;->b(Ljava/lang/String;)Ls2/i;

    move-result-object v5

    invoke-virtual {v5}, Ls2/i;->c()Ls2/l;

    move-result-object v5

    const-string v6, "code"

    .line 31
    invoke-virtual {v5, v6}, Ls2/l;->o(Ljava/lang/String;)Ls2/i;

    move-result-object v5

    invoke-virtual {v5}, Ls2/i;->a()I

    move-result v5

    if-nez v5, :cond_6

    .line 32
    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->clearDiscoverResult()V

    new-array v5, v4, [Ljava/lang/String;

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discover RouterDiscover uploadDiscoverResult ->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v5}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/String;

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_4
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/String;

    .line 36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discover RouterDiscover uploadDiscoverResult e->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v5}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/String;

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getHttpCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "Discover RouterDiscover uploadDiscoverResult data is null->"

    .line 38
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public appendToDiscovered(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredGroups:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredGroups:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public doRouterTask(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/cndatacom/topology/RouterDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredGroups:Ljava/util/Vector;

    invoke-virtual {p2, p5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    .line 3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Discover RouterDiscover-> doRouterTask method:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/cndatacom/topology/RouterDiscover;->handleRouterTask(B)V

    :cond_0
    return-void
.end method

.method public isDiscovered(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mDiscoveredGroups:Ljava/util/Vector;

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

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancel(I)V

    .line 2
    iget-object p1, p0, Lcom/cndatacom/topology/RouterDiscover;->mSnmpManager:Lcom/cndatacom/topology/SnmpManager;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/cndatacom/topology/SnmpManager;->release()V

    :cond_0
    return-void
.end method

.method public runTask()V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/topology/RouterDiscover;->startTask()V

    return-void
.end method

.method public setRouterDiscoverEvent(Lcom/cndatacom/topology/RouterDiscover$RouterDiscoverEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/RouterDiscover;->mRouterDiscoverEvent:Lcom/cndatacom/topology/RouterDiscover$RouterDiscoverEvent;

    return-void
.end method

.method public start(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mClientid:Ljava/lang/String;

    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/RouterDiscover;->mSchoolid:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getWlanacip()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/topology/RouterDiscover;->mBrasip:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p0, v0, v1}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->startOneTimeWorkDelayed(Lcom/cndatacom/sdk/portal/work/WorkerInfo;J)V

    return-void
.end method
