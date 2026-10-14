.class public Lcom/cndatacom/topology/TeamWorkDiscover;
.super Ljava/lang/Object;
.source "TeamWorkDiscover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;
    }
.end annotation


# instance fields
.field private final MSG_TAG:Ljava/lang/String;

.field private mAddress:Ljava/net/InetAddress;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mIsStop:Z

.field private mMessageWhatMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMulticastSocket:Ljava/net/MulticastSocket;

.field private mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

.field private mPort:I

.field private mTeamWorkConInfo:Lcom/cndatacom/topology/entity/TeamWorkConInfo;

.field private mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

.field public mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/entity/NetInfo;Lcom/cndatacom/topology/entity/TeamWorkConInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMessageWhatMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mIsStop:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mPort:I

    const-string v1, "CNS"

    .line 5
    iput-object v1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->MSG_TAG:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    .line 7
    iput-object p2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkConInfo:Lcom/cndatacom/topology/entity/TeamWorkConInfo;

    .line 8
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "handleTeamWorkData"

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mHandlerThread:Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 10
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/cndatacom/topology/TeamWorkDiscover$1;

    invoke-direct {v0, p0}, Lcom/cndatacom/topology/TeamWorkDiscover$1;-><init>(Lcom/cndatacom/topology/TeamWorkDiscover;)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/topology/TeamWorkDiscover;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/topology/TeamWorkDiscover;->handleWorkerMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/cndatacom/topology/TeamWorkDiscover;Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/topology/TeamWorkDiscover;->handleTeamWorkTask(Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/cndatacom/topology/TeamWorkDiscover;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mIsStop:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/cndatacom/topology/TeamWorkDiscover;)Ljava/net/MulticastSocket;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMulticastSocket:Ljava/net/MulticastSocket;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/cndatacom/topology/TeamWorkDiscover;)Lcom/cndatacom/sdk/portal/entity/NetInfo;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/cndatacom/topology/TeamWorkDiscover;[BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/cndatacom/topology/TeamWorkDiscover;->parsePacket([BLjava/lang/String;)V

    return-void
.end method

.method private createChannel()V
    .locals 5

    const-string v0, ":"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkConInfo:Lcom/cndatacom/topology/entity/TeamWorkConInfo;

    invoke-virtual {v3}, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->getCastads()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5
    aget-object v3, v0, v1

    .line 6
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mAddress:Ljava/net/InetAddress;

    .line 7
    invoke-virtual {v3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    aget-object v0, v0, v2

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    .line 10
    invoke-static {v0, v3}, Lcom/cndatacom/topology/util/IpUtil;->toInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mPort:I

    if-lez v0, :cond_1

    .line 11
    new-instance v0, Ljava/net/MulticastSocket;

    iget v3, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mPort:I

    invoke-direct {v0, v3}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMulticastSocket:Ljava/net/MulticastSocket;

    .line 12
    iget-object v3, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v3}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 13
    invoke-direct {p0}, Lcom/cndatacom/topology/TeamWorkDiscover;->startReceiveTask()V

    goto :goto_0

    :cond_0
    const-string v0, "Discover TeamWorkDiscover createChannel -> is not MulticastAddress"

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v2, [Ljava/lang/String;

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discover TeamWorkDiscover createChannel Exception->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createNeighbourMsg(IILjava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "CNS"

    .line 3
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x4

    .line 6
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 8
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 9
    invoke-static {p3}, Lcom/cndatacom/topology/util/IpUtil;->ipToInt(Ljava/lang/String;)I

    move-result p1

    .line 10
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 11
    invoke-static {p4}, Lcom/cndatacom/topology/util/IpUtil;->ipToInt(Ljava/lang/String;)I

    move-result p1

    .line 12
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private createRouterMsg(IBLjava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "CNS"

    .line 3
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x4

    .line 6
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 8
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 9
    invoke-static {p3}, Lcom/cndatacom/topology/util/IpUtil;->ipToInt(Ljava/lang/String;)I

    move-result p1

    .line 10
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 11
    invoke-static {p4}, Lcom/cndatacom/topology/util/IpUtil;->ipToInt(Ljava/lang/String;)I

    move-result p1

    .line 12
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private handleTeamWorkTask(Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMessageWhatMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMessageWhatMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getTaskType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 7
    iget-object v1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getMask()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getGateway()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;->doRouterTask(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    iget-object v1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getMask()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getGateway()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;->doNeighbourTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleWorkerMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mIsStop:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;

    .line 5
    new-instance v0, Lcom/cndatacom/topology/TeamWorkDiscover$2;

    invoke-direct {v0, p0, p1}, Lcom/cndatacom/topology/TeamWorkDiscover$2;-><init>(Lcom/cndatacom/topology/TeamWorkDiscover;Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;)V

    .line 6
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;->getInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private parsePacket([BLjava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "CNS"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 8
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 10
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/topology/util/IpUtil;->getMaskMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 13
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 14
    invoke-static {v11}, Lcom/cndatacom/topology/util/IpUtil;->intToIP(I)Ljava/lang/String;

    move-result-object v12

    .line 15
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 16
    invoke-static {v13}, Lcom/cndatacom/topology/util/IpUtil;->intToIP(I)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x2

    const/4 v2, 0x1

    if-ne v14, v2, :cond_2

    .line 18
    invoke-static {v9, v12, v0, v1}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createNeighbourDiscoverKey(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v15, v2

    goto :goto_1

    .line 19
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-ne v14, v15, :cond_3

    .line 20
    invoke-static {v12, v0, v1}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createRouterDiscoverKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    const/4 v15, -0x1

    :goto_1
    new-array v14, v2, [Ljava/lang/String;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v13

    const-string v13, "Discover TeamWorkDiscover parsePacket taskType:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " groupOrMethod:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " gateway:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " mask:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " targetIp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " key:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v14, v1

    invoke-static {v14}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 22
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-lez v5, :cond_4

    const/4 v0, -0x1

    if-eq v15, v0, :cond_5

    .line 23
    iget-object v0, v10, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

    if-eqz v0, :cond_5

    .line 24
    invoke-interface {v0, v15, v8}, Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;->isDiscovered(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discover TeamWorkDiscover parsePacket isDiscovered :"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    if-eqz v0, :cond_5

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v9

    move v7, v11

    move/from16 v8, v16

    move-object/from16 v9, p2

    .line 26
    invoke-direct/range {v0 .. v9}, Lcom/cndatacom/topology/TeamWorkDiscover;->returnDiscoveredMsg(Ljava/lang/String;IIIIIIILjava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_4
    iget-object v0, v10, Lcom/cndatacom/topology/TeamWorkDiscover;->mMessageWhatMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, v10, Lcom/cndatacom/topology/TeamWorkDiscover;->mMessageWhatMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 29
    iget-object v1, v10, Lcom/cndatacom/topology/TeamWorkDiscover;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    iget-object v0, v10, Lcom/cndatacom/topology/TeamWorkDiscover;->mMessageWhatMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Discover TeamWorkDiscover parsePacket nothing to do and do next task"

    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 32
    iget-object v0, v10, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

    if-eqz v0, :cond_5

    .line 33
    invoke-interface {v0, v15}, Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;->giveup(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private returnDiscoveredMsg(Ljava/lang/String;IIIIIIILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    neg-int p1, p3

    .line 5
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6
    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7
    invoke-virtual {v1, p5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 8
    invoke-virtual {v1, p6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 9
    invoke-virtual {v1, p7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 10
    invoke-virtual {v1, p8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 12
    new-instance p2, Ljava/net/DatagramPacket;

    array-length p3, p1

    invoke-static {p9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p4

    iget p5, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mPort:I

    invoke-direct {p2, p1, p3, p4, p5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 13
    iget-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMulticastSocket:Ljava/net/MulticastSocket;

    invoke-virtual {p1, p2}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    const-string p1, "Discover TeamWorkDiscover returnDiscoveredMsg->"

    .line 14
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    .line 16
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Discover TeamWorkDiscover returnDiscoveredMsg Exception->"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startReceiveTask()V
    .locals 1

    const-string v0, "Discover TeamWorkDiscover startReceiveTask start ->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/cndatacom/topology/TeamWorkDiscover$3;

    invoke-direct {v0, p0}, Lcom/cndatacom/topology/TeamWorkDiscover$3;-><init>(Lcom/cndatacom/topology/TeamWorkDiscover;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mIsStop:Z

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMulticastSocket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mAddress:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMulticastSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_3
    return-void
.end method

.method public sendNeighbourTeamWorkMsg(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMulticastSocket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMaskPrefixLength()I

    move-result v2

    iget-object v3, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/cndatacom/topology/TeamWorkDiscover;->createNeighbourMsg(IILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 3
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v2

    iget-object v5, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mAddress:Ljava/net/InetAddress;

    iget v6, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mPort:I

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 4
    iget-object v2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMulticastSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 5
    iget-object v2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, p2}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createNeighbourDiscoverKey(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discover TeamWorkDiscover sendNeighbourTeamWorkMsg-> groupIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;

    invoke-direct {v2}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;-><init>()V

    .line 8
    invoke-virtual {v2, p2}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setKey(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setTaskType(I)V

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setExtra(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setGateway(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setMask(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setIp(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->hashCode()I

    move-result p1

    .line 15
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 16
    iput p1, v3, Landroid/os/Message;->what:I

    .line 17
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    iget-object v2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mWorkerHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkConInfo:Lcom/cndatacom/topology/entity/TeamWorkConInfo;

    invoke-virtual {v4}, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->getTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 19
    iget-object v2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMessageWhatMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

    if-eqz p1, :cond_0

    .line 21
    invoke-interface {p1, v1, p2}, Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;->sendTeamWorkMsgFinished(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/String;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discover TeamWorkDiscover sendNeighbourTeamWorkMsg Exception->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendRouterTeamWorkMsg(BLjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMulticastSocket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMaskPrefixLength()I

    move-result v2

    iget-object v3, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/cndatacom/topology/TeamWorkDiscover;->createRouterMsg(IBLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 3
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v2

    iget-object v5, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mAddress:Ljava/net/InetAddress;

    iget v6, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mPort:I

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 4
    iget-object v2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMulticastSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    new-array v2, v1, [Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discover TeamWorkDiscover sendRouterTeamWorkMsg->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/cndatacom/topology/util/TopologyKeyUtil;->createRouterDiscoverKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/String;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discover TeamWorkDiscover sendRouterTeamWorkMsg-> method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 8
    new-instance v2, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;

    invoke-direct {v2}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;-><init>()V

    .line 9
    invoke-virtual {v2, p2}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setKey(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 10
    invoke-virtual {v2, v3}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setTaskType(I)V

    .line 11
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setExtra(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getGateway()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setGateway(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMask()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setMask(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mNetInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->setIp(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->hashCode()I

    move-result p1

    .line 16
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 17
    iput p1, v4, Landroid/os/Message;->what:I

    .line 18
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    iget-object v2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mWorkerHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkConInfo:Lcom/cndatacom/topology/entity/TeamWorkConInfo;

    invoke-virtual {v5}, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->getTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 20
    iget-object v2, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mMessageWhatMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p1, v3, p2}, Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;->sendTeamWorkMsgFinished(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discover TeamWorkDiscover sendRouterTeamWorkMsg Exception->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTeamWorkDiscoverEvent(Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover;->mTeamWorkDiscoverEvent:Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;

    return-void
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/topology/TeamWorkDiscover;->createChannel()V

    return-void
.end method
