.class Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;
.super Ljava/lang/Object;
.source "ExCheckManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;


# direct methods
.method public constructor <init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$300(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/GetOnlineTask;->getOnlineClientInfo(Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$400(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$500(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$600(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$700(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExCheckManager \u83b7\u53d6\u5728\u7ebf\u7ec8\u7aef\u4e2a\u6570\uff08\u9664\u81ea\u8eab\uff09->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v2, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    iget-object v2, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v0, v2}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$102(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;I)I

    .line 9
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$800(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$800(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {}, Lcom/cndatacom/zexcheck/v3/util/ExecutorUtil;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$802(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 12
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$900(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$900(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {}, Lcom/cndatacom/zexcheck/v3/util/ExecutorUtil;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$902(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 15
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 16
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v1, v1, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    iget-object v1, v1, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    invoke-interface {v1, v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;->setTaskCount(I)V

    .line 17
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v2, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    iget-object v2, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;

    .line 19
    new-instance v5, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    invoke-direct {v5}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;-><init>()V

    .line 20
    invoke-virtual {v1}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->getUdpPort()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->setUdpPort(I)V

    .line 21
    invoke-virtual {v1}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->setIp(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->setTicket(Ljava/lang/String;)V

    .line 23
    new-instance v1, Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v2, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v2}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$800(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v2, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v2}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$400(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/nio/channels/DatagramChannel;

    move-result-object v4

    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v2, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v2}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$000(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v2, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    iget-object v7, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mOnlineClientInfos:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->udpPortArray:Ljava/util/ArrayList;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/DatagramChannel;Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V

    .line 24
    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;->this$1:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;

    iget-object v2, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    iget-object v2, v2, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->mTaskEvent:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    invoke-virtual {v1, v2}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->setTaskEvent(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;)V

    .line 25
    invoke-virtual {v1}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_1
    const-string v0, "ExCheckManager \u83b7\u53d6\u5728\u7ebf\u7ec8\u7aef\u4e2a\u6570->0\n\u4efb\u52a1\u7ed3\u675f\u3002"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-void
.end method
