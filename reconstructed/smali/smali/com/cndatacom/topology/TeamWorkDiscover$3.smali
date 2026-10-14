.class Lcom/cndatacom/topology/TeamWorkDiscover$3;
.super Ljava/lang/Thread;
.source "TeamWorkDiscover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/topology/TeamWorkDiscover;->startReceiveTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/topology/TeamWorkDiscover;


# direct methods
.method public constructor <init>(Lcom/cndatacom/topology/TeamWorkDiscover;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover$3;->this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover$3;->this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

    invoke-static {v0}, Lcom/cndatacom/topology/TeamWorkDiscover;->access$200(Lcom/cndatacom/topology/TeamWorkDiscover;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover$3;->this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

    invoke-static {v0}, Lcom/cndatacom/topology/TeamWorkDiscover;->access$300(Lcom/cndatacom/topology/TeamWorkDiscover;)Ljava/net/MulticastSocket;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover$3;->this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

    invoke-static {v0}, Lcom/cndatacom/topology/TeamWorkDiscover;->access$300(Lcom/cndatacom/topology/TeamWorkDiscover;)Ljava/net/MulticastSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v0, [B

    .line 2
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 3
    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover$3;->this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

    invoke-static {v0}, Lcom/cndatacom/topology/TeamWorkDiscover;->access$300(Lcom/cndatacom/topology/TeamWorkDiscover;)Ljava/net/MulticastSocket;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 4
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/String;

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discover TeamWorkDiscover startReceiveTask socketIpAddress ->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 8
    iget-object v4, p0, Lcom/cndatacom/topology/TeamWorkDiscover$3;->this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

    invoke-static {v4}, Lcom/cndatacom/topology/TeamWorkDiscover;->access$400(Lcom/cndatacom/topology/TeamWorkDiscover;)Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    iget-object v4, p0, Lcom/cndatacom/topology/TeamWorkDiscover$3;->this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

    invoke-static {v4, v3, v0}, Lcom/cndatacom/topology/TeamWorkDiscover;->access$500(Lcom/cndatacom/topology/TeamWorkDiscover;[BLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Discover TeamWorkDiscover startReceiveTask selfIpAddress ->"

    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v2, [Ljava/lang/String;

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discover TeamWorkDiscover startReceiveTask Exception ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "Discover TeamWorkDiscover startReceiveTask finish ->"

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void
.end method
