.class Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;
.super Ljava/lang/Object;
.source "UDPTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/zexcheck/v3/task/UDPTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;


# direct methods
.method public constructor <init>(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$000(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$000(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->getUdpPort()I

    move-result v1

    .line 3
    new-instance v2, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-direct {v2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setPort(I)V

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setUdp(Z)V

    .line 6
    invoke-virtual {v2, v0}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setIp(Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v3}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$000(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->getTicket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setTicket(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v4}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    invoke-static {v2, v3}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$202(Lcom/cndatacom/zexcheck/v3/task/UDPTask;Ljava/util/Timer;)Ljava/util/Timer;

    .line 11
    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/UDPTask;

    invoke-static {v2}, Lcom/cndatacom/zexcheck/v3/task/UDPTask;->access$200(Lcom/cndatacom/zexcheck/v3/task/UDPTask;)Ljava/util/Timer;

    move-result-object v3

    new-instance v4, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/cndatacom/zexcheck/v3/task/UDPTask$1$1;-><init>(Lcom/cndatacom/zexcheck/v3/task/UDPTask$1;Ljava/lang/String;I)V

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x4e20

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
