.class Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;
.super Ljava/lang/Object;
.source "TCPTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/zexcheck/v3/task/TCPTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;


# direct methods
.method public constructor <init>(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$000(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$000(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->getTcpPort()I

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\u6307\u4ee4\u6267\u884c:"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tcp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExCheckManager ExCheckManager do code->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-direct {v2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;-><init>()V

    .line 8
    invoke-virtual {v2, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setPort(I)V

    .line 9
    invoke-virtual {v2, v4}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setUdp(Z)V

    .line 10
    invoke-virtual {v2, v0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setIp(Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v3}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$000(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->getTicket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setTicket(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v5, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v5}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v2}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$200(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)[B

    move-result-object v2

    .line 15
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v5

    .line 16
    iget-object v6, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v6}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$300(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->isIpv4()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v6}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$300(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v6}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$300(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v6

    .line 17
    :goto_0
    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v6, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v7}, Ljava/nio/channels/SocketChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    .line 18
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 19
    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$400(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 23
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$400(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-interface {v0, v1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;->doFinish(Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;)V

    :cond_2
    return-void

    .line 24
    :cond_3
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 25
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {v5, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$500(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;

    invoke-direct {v1, p0, v3}, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;-><init>(Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;Ljava/lang/String;)V

    const-wide/16 v6, 0x4e20

    invoke-virtual {v0, v1, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 28
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0, v5}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$600(Lcom/cndatacom/zexcheck/v3/task/TCPTask;Ljava/nio/channels/SocketChannel;)V

    const-string v0, "ExCheckManager ExCheckManager TCPTask sendTcpMsg->"

    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$400(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 32
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$400(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-interface {v0, v1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;->doFinish(Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;)V

    :cond_5
    :goto_2
    return-void
.end method
