.class public Lcom/cndatacom/zexcheck/v3/task/TCPTask;
.super Ljava/lang/Object;
.source "TCPTask.java"


# instance fields
.field private final TIME_OUT:I

.field private mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;",
            ">;",
            "Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;",
            ">;",
            "Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    .line 2
    iput v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->TIME_OUT:I

    .line 3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mTimer:Ljava/util/Timer;

    .line 4
    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object p2, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    iput-object p3, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mPacketInfo:Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    .line 7
    iput-object p5, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    .line 8
    iput-object p4, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mPacketInfo:Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)[B
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->createTcpMsg()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mExCheckInfo:Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/cndatacom/zexcheck/v3/task/TCPTask;Ljava/nio/channels/SocketChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->startTcpClientReceiveTask(Ljava/nio/channels/SocketChannel;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/cndatacom/zexcheck/v3/task/TCPTask;Ljava/lang/String;Ljava/lang/String;Ljava/io/DataInputStream;SI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->parseTcpReceiveMsgBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataInputStream;SI)V

    return-void
.end method

.method private createTcpMsg()[B
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

    const/4 v3, 0x5

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

.method private getResponseTicket(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;

    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->getTicket()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private parseMsgBody([B)V
    .locals 2
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

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    int-to-long v0, v0

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    .line 7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    .line 9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 10
    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/util/IpUtil;->intToIP(I)Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 12
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private parseTcpReceiveMsgBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataInputStream;SI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->getResponseTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p5, p5, -0x8

    .line 2
    new-array p5, p5, [B

    .line 3
    invoke-virtual {p3, p5}, Ljava/io/DataInputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_3

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    const/16 v0, 0x10

    .line 5
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p3, p1, p5}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3DecodeCBC([B[B[B)[B

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->parseMsgBody([B)V

    .line 7
    invoke-static {p1}, Lcom/cndatacom/zexcheck/v3/util/CRC16Util;->calcCrc16([B)I

    move-result p1

    int-to-short p1, p1

    if-eq p1, p4, :cond_1

    .line 8
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 12
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mResultList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    :cond_4
    return-void
.end method

.method private startTcpClientReceiveTask(Ljava/nio/channels/SocketChannel;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;-><init>(Lcom/cndatacom/zexcheck/v3/task/TCPTask;Ljava/nio/channels/SocketChannel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public setTaskEvent(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;

    invoke-direct {v1, p0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;-><init>(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
