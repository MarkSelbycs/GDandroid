.class Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$5;
.super Ljava/lang/Object;
.source "ExCheckManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->startUdpReceiveTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;


# direct methods
.method public constructor <init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$5;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "%"

    const/16 v1, 0x7fff

    .line 1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$5;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v2}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$400(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    :try_start_0
    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$5;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v4}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$400(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/nio/channels/DatagramChannel;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 6
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_1
    new-array v6, v2, [Ljava/lang/String;

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExCheckManager UDPTask  ->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --\u53d1\u6765\u6d88\u606f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v7, v6, [B

    .line 11
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 13
    iget-object v8, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$5;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v8, v7, v6, v5, v4}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$1100(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;[BILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 14
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v2, [Ljava/lang/String;

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExCheckManager UDPTask startUdpReceiveTask Exception ->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "ExCheckManager UDPTask startUdpReceiveTask finish ->"

    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void
.end method
