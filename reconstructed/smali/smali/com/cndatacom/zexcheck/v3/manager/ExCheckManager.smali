.class public Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;
.super Ljava/lang/Object;
.source "ExCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$ExCheckTask;,
        Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;
    }
.end annotation


# static fields
.field private static instance:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;


# instance fields
.field private mCurTaskCount:I

.field private mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

.field public mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResultList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Ljava/lang/Runnable;

.field public mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

.field private mTcpExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mTcpServerChannel:Ljava/nio/channels/ServerSocketChannel;

.field private mTimer:Ljava/util/Timer;

.field private mUdpChannel:Ljava/nio/channels/DatagramChannel;

.field private mUdpExecutorService:Ljava/util/concurrent/ExecutorService;

.field public udpPortArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mCurTaskCount:I

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;

    invoke-direct {v0, p0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;-><init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V

    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    .line 7
    new-instance v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    invoke-direct {v0, p0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;-><init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V

    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)I
    .locals 0

    iget p0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mCurTaskCount:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Ljava/nio/channels/SocketChannel;[BLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->parseTcpPacket(Ljava/nio/channels/SocketChannel;[BLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$102(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;I)I
    .locals 0

    iput p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mCurTaskCount:I

    return p1
.end method

.method public static synthetic access$108(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)I
    .locals 2

    iget v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mCurTaskCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mCurTaskCount:I

    return v0
.end method

.method public static synthetic access$1100(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;[BILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->parseUdpPacket([BILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->handleUploadData(Z)V

    return-void
.end method

.method public static synthetic access$300(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/nio/channels/DatagramChannel;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mUdpChannel:Ljava/nio/channels/DatagramChannel;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->initUdpChannel()V

    return-void
.end method

.method public static synthetic access$600(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/nio/channels/ServerSocketChannel;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTcpServerChannel:Ljava/nio/channels/ServerSocketChannel;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->initTcpServerChannel()V

    return-void
.end method

.method public static synthetic access$800(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mUdpExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mUdpExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTcpExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static synthetic access$902(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTcpExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method private createReturnTcpMsg(Ljava/lang/String;I)[B
    .locals 4

    const/4 p1, 0x0

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v2, 0x3

    .line 6
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x4

    .line 7
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 8
    iget-object v3, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v3}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cndatacom/zexcheck/v3/util/IpUtil;->ipToInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v3, 0x9

    .line 9
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x2

    .line 10
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 11
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 p2, 0xb

    .line 12
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 13
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 14
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 p2, 0xff

    .line 15
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 16
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 17
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 19
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    new-array p1, p1, [B

    return-object p1
.end method

.method private createReturnUdpMsg(Ljava/lang/String;I)[B
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x8

    .line 4
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v4, 0x3

    .line 6
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    .line 7
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 8
    iget-object v5, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v5}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cndatacom/zexcheck/v3/util/IpUtil;->ipToInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v5, 0x5

    .line 9
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x10

    .line 10
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 11
    iget-object v6, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v6}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 14
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 15
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 17
    instance-of p1, p1, Ljava/net/Inet6Address;

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    .line 18
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 19
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 21
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 22
    :goto_0
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    const/4 p1, 0x7

    .line 23
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 p1, 0x2

    .line 24
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 25
    iget-object v5, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v5}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getUdpPort()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 26
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 28
    iget-object v3, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v3}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getTcpPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v3, 0x9

    .line 29
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 30
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 31
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 p1, 0xb

    .line 32
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 33
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 34
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 p1, 0xff

    .line 35
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 36
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 37
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    new-array p1, v0, [B

    return-object p1
.end method

.method public static getInstance()Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;
    .locals 2

    .line 1
    const-class v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->instance:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-direct {v1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;-><init>()V

    sput-object v1, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->instance:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->instance:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getMacString([B)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x3a

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getResponseTicket(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;

    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->getTicket()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private handleUploadData(Z)V
    .locals 12

    const-string v0, "utf-8"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-string v4, "Content-Type"

    const-string v5, "text/plain;charset=utf-8"

    .line 2
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "account"

    .line 4
    iget-object v6, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v6}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "clientid"

    .line 5
    iget-object v6, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v6}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "cid"

    .line 6
    iget-object v6, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v6}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getSchoolId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ostype"

    const/4 v6, 0x4

    .line 7
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "version"

    .line 8
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v7, v1

    .line 11
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 12
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    .line 13
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "ticket"

    .line 14
    invoke-virtual {v8}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getTicket()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "cmd"

    .line 15
    invoke-virtual {v8}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->isUdp()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "hello"

    goto :goto_1

    :cond_0
    const-string v11, "conn"

    :goto_1
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "result"

    .line 16
    invoke-virtual {v8}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getErrType()I

    move-result v8

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "data"

    .line 18
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/String;

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExCheckManager handleUploadData \u4e0a\u62a5\u6570\u636e->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v5}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const-string v5, "9vApxLk5G3PAsJrM"

    .line 21
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "FnJL7EDzjqWjcaY9"

    .line 22
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeCBC([B[B[B)[B

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v4, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {v4}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    iget-object v5, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v5}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getUploadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v5, v3, v0}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExCheckManager handleUploadData \u4e0a\u62a5\u7ed3\u679c->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 28
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$2;

    invoke-direct {v0, p0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$2;-><init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v2, [Ljava/lang/String;

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExCheckManager handleUploadData->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private initTcpServerChannel()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTcpServerChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 2
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->isIpv4()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTcpServerChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v3}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getTcpPort()I

    move-result v3

    invoke-direct {v2, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 4
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTcpServerChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 5
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTcpServerChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-direct {p0, v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->startTcpReceiveTask(Ljava/nio/channels/ServerSocketChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private initUdpChannel()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-nez v2, :cond_2

    .line 1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v4

    iput-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mUdpChannel:Ljava/nio/channels/DatagramChannel;

    .line 2
    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v4}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->isIpv4()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v4}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v4}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v4

    .line 3
    :goto_1
    iget-object v5, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mUdpChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v5}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v5

    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v7}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getUdpPort()I

    move-result v7

    invoke-direct {v6, v4, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mUdpChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v2, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 5
    invoke-direct {p0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->startUdpReceiveTask()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v4

    move v2, v0

    goto :goto_2

    :catch_1
    move-exception v4

    .line 6
    :goto_2
    iget-object v5, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mUdpChannel:Ljava/nio/channels/DatagramChannel;

    if-eqz v5, :cond_1

    .line 7
    :try_start_2
    invoke-virtual {v5}, Ljava/nio/channels/DatagramChannel;->close()V

    const/4 v5, 0x0

    .line 8
    iput-object v5, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mUdpChannel:Ljava/nio/channels/DatagramChannel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    .line 9
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 10
    iget-object v5, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->udpPortArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 11
    iget-object v5, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    iget-object v6, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->udpPortArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setUdpPort(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private parseMsgBody([BLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    const-string v2, "ExCheckManager UDPTask parseMsgBody->type="

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    int-to-long v0, v0

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 7
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 8
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/String;

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",ipv6="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 12
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 13
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/String;

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",ip="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :pswitch_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    goto/16 :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    .line 19
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v4, v4, [Ljava/lang/String;

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",versionCode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    .line 22
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    new-array v4, v4, [Ljava/lang/String;

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",tcpPort="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;

    invoke-virtual {v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->setTcpPort(I)V

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseTcpPacket(Ljava/nio/channels/SocketChannel;[BLjava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    .line 5
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 6
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    .line 7
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    .line 8
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readShort()S

    const/4 p2, 0x5

    if-ne v1, p2, :cond_2

    .line 9
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "CE"

    .line 11
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 12
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x6

    .line 13
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 14
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 15
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 16
    invoke-direct {p0, p3, p4}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->createReturnTcpMsg(Ljava/lang/String;I)[B

    move-result-object p3

    .line 17
    invoke-static {p3}, Lcom/cndatacom/zexcheck/v3/util/CRC16Util;->calcCrc16([B)I

    move-result p4

    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 18
    iget-object p4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {p4}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getTicket()Ljava/lang/String;

    move-result-object p4

    const/16 v2, 0x10

    invoke-virtual {p4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getTicket()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p4, v0, p3}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeCBC([B[B[B)[B

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 19
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 20
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 21
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 22
    invoke-virtual {p1, p2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V

    :cond_2
    return-void
.end method

.method private parseUdpPacket([BILjava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v8, 0x1

    if-ne v0, v2, :cond_1

    .line 10
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "CE"

    .line 12
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 14
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 15
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 16
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 17
    invoke-direct {p0, p3, p4}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->createReturnUdpMsg(Ljava/lang/String;I)[B

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/util/CRC16Util;->calcCrc16([B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 19
    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getTicket()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v4}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getTicket()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeCBC([B[B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 20
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 21
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 22
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 23
    iget-object p4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mUdpChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p4, p2, v0}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    new-array p2, v8, [Ljava/lang/String;

    .line 24
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ExCheckManager UDPTask  parseUdpPacket \u8fd4\u56de\u68c0\u6d4b\u5e94\u7b54\u62a5\u6587"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    if-ne v0, v3, :cond_3

    .line 25
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;

    invoke-virtual {p1, v8}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->setRecvUdp(Z)V

    move-object v1, p0

    move-object v2, p3

    move-object v3, v7

    move v6, p2

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->parseUdpReceiveMsgBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataInputStream;SI)V

    .line 27
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getErrType()I

    move-result p1

    if-ne p1, v8, :cond_2

    .line 28
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;

    .line 29
    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->getTcpPort()I

    move-result p2

    .line 30
    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->getIp()Ljava/lang/String;

    move-result-object p3

    .line 31
    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->getTicket()Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance v3, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    invoke-direct {v3}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;-><init>()V

    .line 33
    invoke-virtual {v3, p2}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->setTcpPort(I)V

    .line 34
    invoke-virtual {v3, p3}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->setIp(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v3, p1}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->setTicket(Ljava/lang/String;)V

    .line 36
    new-instance p1, Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTcpExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;)V

    .line 37
    iget-object p2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    invoke-virtual {p1, p2}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->setTaskEvent(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;)V

    .line 38
    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->start()V

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    if-eqz p1, :cond_5

    .line 40
    iget-object p2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-interface {p1, p2}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;->doFinish(Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;)V

    goto :goto_1

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 42
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    .line 43
    :cond_4
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    if-eqz p1, :cond_5

    .line 44
    iget-object p2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-interface {p1, p2}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;->doFinish(Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private parseUdpReceiveMsgBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataInputStream;SI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, p1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->getResponseTicket(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p5, p5, -0x8

    .line 2
    new-array p5, p5, [B

    .line 3
    invoke-virtual {p3, p5}, Ljava/io/DataInputStream;->read([B)I

    move-result p3

    const/4 v1, 0x6

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-lez p3, :cond_3

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    const/16 v2, 0x10

    .line 6
    invoke-virtual {v0, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p3, v0, p5}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3DecodeCBC([B[B[B)[B

    move-result-object p3

    .line 7
    invoke-direct {p0, p3, p1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->parseMsgBody([BLjava/lang/String;)V

    .line 8
    invoke-static {p3}, Lcom/cndatacom/zexcheck/v3/util/CRC16Util;->calcCrc16([B)I

    move-result p1

    int-to-short p1, p1

    if-eq p1, p4, :cond_1

    .line 9
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-virtual {p1, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    return-void

    .line 13
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-virtual {p1, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    :cond_4
    return-void
.end method

.method private startTcpReceiveTask(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 1

    const-string v0, "ExCheckManager TCPTask startTcpReceiveTask->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$4;

    invoke-direct {v0, p0, p1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$4;-><init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Ljava/nio/channels/ServerSocketChannel;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startUdpReceiveTask()V
    .locals 2

    const-string v0, "ExCheckManager UDPTask startUdpReceiveTask->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$5;

    invoke-direct {v1, p0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$5;-><init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mUdpChannel:Ljava/nio/channels/DatagramChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 4
    iput-object v1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mUdpChannel:Ljava/nio/channels/DatagramChannel;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTcpServerChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 7
    iput-object v1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTcpServerChannel:Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public start(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 14

    const-string v0, "url"

    const-string v1, "ipv6Url"

    const-string v2, "enable"

    .line 1
    new-instance v3, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-direct {v3}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;-><init>()V

    iput-object v3, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    .line 2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x4e20

    .line 3
    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setTcpPort(Ljava/lang/String;)V

    .line 4
    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setSchoolId(Ljava/lang/String;)V

    .line 5
    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setNetInfo(Lcom/cndatacom/sdk/portal/entity/NetInfo;)V

    .line 6
    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getTicket()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setTicket(Ljava/lang/String;)V

    .line 7
    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setClientId(Ljava/lang/String;)V

    .line 8
    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setAccount(Ljava/lang/String;)V

    :try_start_0
    const-string v4, "excheck-args"

    .line 9
    invoke-virtual {p1, v4, v6}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "1"

    const/4 v6, 0x0

    const-string v7, "value"

    if-eqz p1, :cond_1

    .line 13
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v6

    :goto_0
    if-eqz p1, :cond_4

    const-string p1, "uploadurl"

    .line 15
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "geturl"

    .line 16
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v8, "timeout"

    .line 17
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "interval"

    .line 18
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "port"

    .line 19
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "delay"

    .line 20
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "isIpv6First"

    .line 21
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 22
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    iget-object v12, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v12, v4}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setIpv6First(Z)V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 24
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ExCheckManager ipv6First ->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v13}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->isIpv6First()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v6

    invoke-static {v5}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 25
    iget-object v5, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v5}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->isIpv4()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 26
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setUploadUrl(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setGetUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setUploadUrl(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setGetUrl(Ljava/lang/String;)V

    .line 30
    :goto_1
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->udpPortArray:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->udpPortArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v0, p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setUdpPort(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setInterval(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setTimeout(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->setDelay(Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExCheckManager tcp port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",udp,Port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "ExCheckManager udp \u7aef\u53e3\u88ab\u5360\u7528"

    .line 39
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$ExCheckTask;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$ExCheckTask;-><init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;)V

    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getDelay()I

    move-result p1

    int-to-long v2, p1

    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getInterval()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
