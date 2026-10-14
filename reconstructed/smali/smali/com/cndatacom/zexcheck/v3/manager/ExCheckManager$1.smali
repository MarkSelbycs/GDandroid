.class Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;
.super Ljava/lang/Object;
.source "ExCheckManager.java"

# interfaces
.implements Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mTaskCount:I

.field public final synthetic this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;


# direct methods
.method public constructor <init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;->mTaskCount:I

    return-void
.end method


# virtual methods
.method public doFinish(Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\u6307\u4ee4\u6267\u884c\u7ed3\u679c:"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->isUdp()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "udp"

    goto :goto_0

    :cond_0
    const-string v3, "tcp"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getPort()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getErrorText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->isUdp()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getErrType()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 5
    new-instance v2, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-direct {v2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setIp(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getTicket()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setTicket(Ljava/lang/String;)V

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    .line 9
    invoke-virtual {v2, v3}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setUdp(Z)V

    .line 10
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {p1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$000(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {p1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$108(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)I

    :cond_1
    new-array p1, v0, [Ljava/lang/String;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExCheckManager code do finish->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {p1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$108(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)I

    .line 14
    iget p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;->mTaskCount:I

    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$100(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {p1, v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$200(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Z)V

    :cond_3
    return-void
.end method

.method public setTaskCount(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;->mTaskCount:I

    return-void
.end method
