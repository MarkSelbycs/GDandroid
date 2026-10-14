.class Lcom/cndatacom/download/manager/DownloadTaskManager$1;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;


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

    iput-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskThreadDownloadedSize(Lcom/cndatacom/download/entity/DownloadTask;I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$000(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/db/DownloadThreadDB;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/cndatacom/download/db/DownloadThreadDB;->isExists(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$000(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/db/DownloadThreadDB;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/cndatacom/download/db/DownloadThreadDB;->getDownloadThreadInfo(Ljava/lang/String;II)Lcom/cndatacom/download/entity/DownloadThreadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->getDownloadedSize()J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public taskThreadDownloading(Lcom/cndatacom/download/entity/DownloadTask;IJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$000(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/db/DownloadThreadDB;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/cndatacom/download/db/DownloadThreadDB;->isExists(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$000(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/db/DownloadThreadDB;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result v3

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/cndatacom/download/db/DownloadThreadDB;->update(Ljava/lang/String;IIJ)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/cndatacom/download/entity/DownloadThreadInfo;

    invoke-direct {v0}, Lcom/cndatacom/download/entity/DownloadThreadInfo;-><init>()V

    .line 4
    invoke-virtual {v0, p3, p4}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setDownloadedSize(J)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setThreadId(I)V

    .line 6
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setTaskId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setThreadNum(I)V

    .line 8
    iget-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {p1}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$000(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/db/DownloadThreadDB;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cndatacom/download/db/DownloadThreadDB;->add(Lcom/cndatacom/download/entity/DownloadThreadInfo;)V

    :goto_0
    return-void
.end method

.method public taskThreadFinish(Lcom/cndatacom/download/entity/DownloadTask;IJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$000(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/db/DownloadThreadDB;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/cndatacom/download/db/DownloadThreadDB;->isExists(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$000(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/db/DownloadThreadDB;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result v3

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/cndatacom/download/db/DownloadThreadDB;->update(Ljava/lang/String;IIJ)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getStatus()I

    move-result p2

    const/4 p3, 0x5

    if-eq p2, p3, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getDownloadTaskThread()Lcom/cndatacom/download/thread/DownloadTaskThread;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskFileSize()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/cndatacom/download/thread/DownloadTaskThread;->getDownloadedSize()I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_4

    .line 6
    invoke-virtual {p1, p3}, Lcom/cndatacom/download/entity/DownloadTask;->setStatus(I)V

    .line 7
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskTempPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskPath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$100(Lcom/cndatacom/download/manager/DownloadTaskManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {p2}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {p2}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskFileSize()J

    move-result-wide p3

    long-to-int p3, p3

    int-to-long p3, p3

    invoke-interface {p2, p1, p3, p4}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskFinish(Lcom/cndatacom/download/entity/DownloadTask;J)V

    :cond_2
    const/4 p2, 0x0

    .line 11
    :goto_0
    iget-object p3, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {p3}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$300(Lcom/cndatacom/download/manager/DownloadTaskManager;)Ljava/util/Vector;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    if-ge p2, p3, :cond_4

    .line 12
    iget-object p3, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {p3}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$300(Lcom/cndatacom/download/manager/DownloadTaskManager;)Ljava/util/Vector;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cndatacom/download/entity/DownloadTask;

    .line 13
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 14
    iget-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$1;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {p1}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$300(Lcom/cndatacom/download/manager/DownloadTaskManager;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
