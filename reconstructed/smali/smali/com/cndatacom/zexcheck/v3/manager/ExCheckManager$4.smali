.class Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$4;
.super Ljava/lang/Thread;
.source "ExCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->startTcpReceiveTask(Ljava/nio/channels/ServerSocketChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

.field public final synthetic val$tcpServerChannel:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method public constructor <init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Ljava/nio/channels/ServerSocketChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$4;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    iput-object p2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$4;->val$tcpServerChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "%"

    const/16 v1, 0x7fff

    .line 1
    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$4;->val$tcpServerChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v2, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-lez v3, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExCheckManager TCPTask  ->"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " --\u53d1\u6765\u6d88\u606f"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 13
    iget-object v5, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$4;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getPort()I

    move-result v6

    invoke-static {v5, v2, v4, v3, v6}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$1000(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Ljava/nio/channels/SocketChannel;[BLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method
