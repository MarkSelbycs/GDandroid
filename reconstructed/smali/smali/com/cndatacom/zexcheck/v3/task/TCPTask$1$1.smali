.class Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;
.super Ljava/util/TimerTask;
.source "TCPTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;

.field public final synthetic val$tempKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;

    iput-object p2, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;->val$tempKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;->val$tempKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;->val$tempKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->setErrType(Ljava/lang/Integer;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$400(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;

    iget-object v0, v0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$400(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;->this$1:Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;

    iget-object v1, v1, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1;->this$0:Lcom/cndatacom/zexcheck/v3/task/TCPTask;

    invoke-static {v1}, Lcom/cndatacom/zexcheck/v3/task/TCPTask;->access$100(Lcom/cndatacom/zexcheck/v3/task/TCPTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/cndatacom/zexcheck/v3/task/TCPTask$1$1;->val$tempKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;

    invoke-interface {v0, v1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$TaskEvent;->doFinish(Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;)V

    :cond_1
    return-void
.end method
