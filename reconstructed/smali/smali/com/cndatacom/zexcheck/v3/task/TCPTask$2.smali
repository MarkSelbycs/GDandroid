.class Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;
.super Ljava/lang/Object;
.source "TCPTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/zexcheck/v3/task/TCPTask;->startTcpClientReceiveTask(Ljava/nio/channels/SocketChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

.field public final synthetic val$socketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Lcom/cndatacom/zexcheck/v3/task/TCPTask;Ljava/nio/channels/SocketChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    iput-object p2, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->val$socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "%"

    const/16 v1, 0x7fff

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2
    iget-object v3, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->val$socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v3, :cond_5

    .line 3
    invoke-virtual {v3, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 4
    iget-object v3, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v3}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$500(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 5
    iget-object v3, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->val$socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 8
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v3

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->val$socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    if-lez v9, :cond_3

    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 14
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 15
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x2

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    .line 16
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    .line 18
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 19
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    .line 20
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    .line 21
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    const/4 v4, 0x6

    if-ne v1, v4, :cond_2

    .line 22
    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    move-object v6, v0

    invoke-static/range {v4 .. v9}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$700(Lcom/cndatacom/zexcheck/v3/task/TCPTask;Ljava/lang/String;Ljava/lang/String;Ljava/io/DataInputStream;SI)V

    goto :goto_2

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    goto :goto_2

    .line 25
    :cond_3
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    .line 27
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$400(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "ExCheckManager ExCheckManager TCPTask clientReceiveTask start finish ->"

    .line 28
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$400(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    move-result-object v1

    iget-object v3, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$2;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v3}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-interface {v1, v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;->doFinish(Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TCPTask clientReceiveTask Exception ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :cond_5
    :goto_3
    const-string v0, "ExCheckManager ExCheckManager TCPTask clientReceiveTask finish ->"

    .line 32
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void
.end method
