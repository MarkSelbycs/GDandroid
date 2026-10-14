.class public Lcom/cndatacom/zexcheck/v3/task/UDPTask;
.super Ljava/lang/Object;
.source "UDPTask.java"


# instance fields
.field private final UDP_RETRY_TIME:I

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIndex:I

.field private mPacketInfo:Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

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

.field private mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

.field private mUdpChannel:Ljava/nio/channels/DatagramChannel;

.field private mUdpTimeout:Ljava/util/Timer;

.field private onlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private udpPortArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/DatagramChannel;Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/nio/channels/DatagramChannel;",
            "Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    .line 2
    iput v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->UDP_RETRY_TIME:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mIndex:I

    .line 4
    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object p2, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mUdpChannel:Ljava/nio/channels/DatagramChannel;

    .line 6
    iput-object p3, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mPacketInfo:Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    .line 7
    iput-object p4, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    iput-object p5, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->onlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    iput-object p6, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->udpPortArray:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mPacketInfo:Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mUdpTimeout:Ljava/util/Timer;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/cndatacom/zexcheck/v3/task/UDPTask;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mUdpTimeout:Ljava/util/Timer;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->onlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)I
    .locals 0

    iget p0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mIndex:I

    return p0
.end method

.method public static synthetic access$408(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)I
    .locals 2

    iget v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mIndex:I

    return v0
.end method

.method public static synthetic access$500(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->udpPortArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/cndatacom/zexcheck/v3/task/UDPTask;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->toInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->sendUdpMsg()V

    return-void
.end method

.method public static synthetic access$800(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    return-object p0
.end method

.method private createUdpMsg()[B
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "CE"

    .line 3
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x3

    .line 5
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x6

    .line 6
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 8
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    new-array v0, v0, [B

    return-object v0
.end method

.method private sendUdpMsg()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->createUdpMsg()[B

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mPacketInfo:Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    invoke-virtual {v2}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mPacketInfo:Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    invoke-virtual {v3}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->getUdpPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 4
    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mUdpChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    const-string v0, "ExCheckManager UDPTask sendUdpMsg->"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void
.end method

.method private toInt(Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method


# virtual methods
.method public cancelTime()V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mUdpTimeout:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public setTaskEvent(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    invoke-direct {v1, p0}, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;-><init>(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
