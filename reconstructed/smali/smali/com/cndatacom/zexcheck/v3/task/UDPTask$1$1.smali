.class Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;
.super Ljava/util/TimerTask;
.source "UDPTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

.field public final synthetic val$ip:Ljava/lang/String;

.field public final synthetic val$port:I


# direct methods
.method public constructor <init>(Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iput-object p2, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->val$ip:Ljava/lang/String;

    iput p3, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->val$port:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$300(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;

    invoke-virtual {v0}, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->isRecvUdp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-virtual {v0}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->cancelTime()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$408(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)I

    .line 4
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$400(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)I

    move-result v0

    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v1, v1, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$500(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$500(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v3, v3, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v3}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$400(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0x2710

    invoke-static {v0, v1, v3}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$600(Lcom/cndatacom/zexcheck/v3/task/UDPTask;Ljava/lang/String;I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v1, v1, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$000(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->setUdpPort(I)V

    .line 7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\u6307\u4ee4\u6267\u884c:"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "udp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v4, v4, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v4}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$000(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExCheckManager do code->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$700(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->val$port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v1, v1, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    .line 14
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v1, v1, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$800(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v1, v1, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$800(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v2, v2, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v2}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-interface {v1, v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;->doFinish(Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-virtual {v0}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->cancelTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
