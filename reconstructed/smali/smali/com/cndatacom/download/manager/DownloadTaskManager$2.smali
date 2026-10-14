.class Lcom/cndatacom/download/manager/DownloadTaskManager$2;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/download/manager/DownloadTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;


# direct methods
.method public constructor <init>(Lcom/cndatacom/download/manager/DownloadTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAskWifi()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->getAskWifi()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasAskWifi()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->hasAskWifi()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public taskDownloading(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cndatacom/download/entity/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskDownloading(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public taskError(Lcom/cndatacom/download/entity/DownloadTask;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lcom/cndatacom/download/entity/DownloadTask;->setStatus(I)V

    .line 3
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getDownloadTaskThread()Lcom/cndatacom/download/thread/DownloadTaskThread;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/cndatacom/download/thread/DownloadTaskThread;->pauseAndCancel()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v1}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$300(Lcom/cndatacom/download/manager/DownloadTaskManager;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v1}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$300(Lcom/cndatacom/download/manager/DownloadTaskManager;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cndatacom/download/entity/DownloadTask;

    .line 7
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v1}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$300(Lcom/cndatacom/download/manager/DownloadTaskManager;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskError(Lcom/cndatacom/download/entity/DownloadTask;I)V

    :cond_3
    return-void
.end method

.method public taskFinish(Lcom/cndatacom/download/entity/DownloadTask;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskFinish(Lcom/cndatacom/download/entity/DownloadTask;J)V

    :cond_0
    return-void
.end method

.method public taskPauseOrCancel(Lcom/cndatacom/download/entity/DownloadTask;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskPauseOrCancel(Lcom/cndatacom/download/entity/DownloadTask;J)V

    :cond_0
    return-void
.end method

.method public taskWaiting(Lcom/cndatacom/download/entity/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$2;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskWaiting(Lcom/cndatacom/download/entity/DownloadTask;)V

    :cond_0
    return-void
.end method
