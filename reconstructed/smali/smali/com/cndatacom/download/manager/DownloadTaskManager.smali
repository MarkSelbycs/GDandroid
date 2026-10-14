.class public Lcom/cndatacom/download/manager/DownloadTaskManager;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"


# instance fields
.field private final BUFF_LENGTH:I

.field private final MESSAGE_WHAT_UPDATE_TASK:I

.field private final UPDATE_TASK_TIME:I

.field private mDownloadInfoDB:Lcom/cndatacom/download/db/DownloadInfoDB;

.field private mDownloadTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/cndatacom/download/entity/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadThreadDB:Lcom/cndatacom/download/db/DownloadThreadDB;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

.field private mInnerIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

.field private mInnerIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;

.field private mTaskNum:I

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->MESSAGE_WHAT_UPDATE_TASK:I

    const/16 v1, 0x3e8

    .line 4
    iput v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->UPDATE_TASK_TIME:I

    const/16 v1, 0x400

    .line 5
    iput v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->BUFF_LENGTH:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mTaskNum:I

    .line 7
    new-instance v1, Lcom/cndatacom/download/manager/DownloadTaskManager$1;

    invoke-direct {v1, p0}, Lcom/cndatacom/download/manager/DownloadTaskManager$1;-><init>(Lcom/cndatacom/download/manager/DownloadTaskManager;)V

    iput-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mInnerIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;

    .line 8
    new-instance v1, Lcom/cndatacom/download/manager/DownloadTaskManager$2;

    invoke-direct {v1, p0}, Lcom/cndatacom/download/manager/DownloadTaskManager$2;-><init>(Lcom/cndatacom/download/manager/DownloadTaskManager;)V

    iput-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mInnerIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    .line 9
    new-instance v1, Lcom/cndatacom/download/db/DownloadInfoDB;

    invoke-direct {v1, p1, p2}, Lcom/cndatacom/download/db/DownloadInfoDB;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadInfoDB:Lcom/cndatacom/download/db/DownloadInfoDB;

    .line 10
    new-instance v1, Lcom/cndatacom/download/db/DownloadThreadDB;

    invoke-direct {v1, p1, p2}, Lcom/cndatacom/download/db/DownloadThreadDB;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadThreadDB:Lcom/cndatacom/download/db/DownloadThreadDB;

    .line 11
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "loadDownloadTaskData"

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 12
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 13
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/cndatacom/download/manager/DownloadTaskManager$3;

    invoke-direct {v0, p0}, Lcom/cndatacom/download/manager/DownloadTaskManager$3;-><init>(Lcom/cndatacom/download/manager/DownloadTaskManager;)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/db/DownloadThreadDB;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadThreadDB:Lcom/cndatacom/download/db/DownloadThreadDB;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/cndatacom/download/manager/DownloadTaskManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cndatacom/download/manager/DownloadTaskManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/cndatacom/download/manager/DownloadTaskManager;)Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/cndatacom/download/manager/DownloadTaskManager;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/cndatacom/download/manager/DownloadTaskManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/download/manager/DownloadTaskManager;->handleWorkerMessage(Landroid/os/Message;)V

    return-void
.end method

.method private addDownloadTask(Lcom/cndatacom/download/entity/DownloadTask;Z)V
    .locals 6

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadInfoDB:Lcom/cndatacom/download/db/DownloadInfoDB;

    invoke-virtual {v1, v0}, Lcom/cndatacom/download/db/DownloadInfoDB;->delete(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadThreadDB:Lcom/cndatacom/download/db/DownloadThreadDB;

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/cndatacom/download/db/DownloadThreadDB;->delete(Ljava/lang/String;I)V

    .line 8
    :cond_0
    new-instance v0, Lcom/cndatacom/download/thread/DownloadTaskThread;

    iget-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mInnerIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    iget-object v2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mInnerIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;

    invoke-direct {v0, v1, v2}, Lcom/cndatacom/download/thread/DownloadTaskThread;-><init>(Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/cndatacom/download/entity/DownloadTask;->setDownloadTaskThread(Lcom/cndatacom/download/thread/DownloadTaskThread;)V

    .line 10
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadInfoDB:Lcom/cndatacom/download/db/DownloadInfoDB;

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/download/db/DownloadInfoDB;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadInfoDB:Lcom/cndatacom/download/db/DownloadInfoDB;

    invoke-virtual {v0, p1}, Lcom/cndatacom/download/db/DownloadInfoDB;->add(Lcom/cndatacom/download/entity/DownloadTask;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadThreadDB:Lcom/cndatacom/download/db/DownloadThreadDB;

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cndatacom/download/db/DownloadThreadDB;->getDownloadedSize(Ljava/lang/String;I)J

    move-result-wide v0

    .line 13
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskFileSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskFileSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 14
    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskFileSize()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-interface {p2, p1, v0, v1}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskFinish(Lcom/cndatacom/download/entity/DownloadTask;J)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 16
    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 17
    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cndatacom/download/entity/DownloadTask;

    .line 18
    invoke-virtual {p2}, Lcom/cndatacom/download/entity/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x3

    .line 19
    invoke-virtual {p2, v1}, Lcom/cndatacom/download/entity/DownloadTask;->setStatus(I)V

    .line 20
    invoke-virtual {p2}, Lcom/cndatacom/download/entity/DownloadTask;->getDownloadTaskThread()Lcom/cndatacom/download/thread/DownloadTaskThread;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/cndatacom/download/thread/DownloadTaskThread;->pauseAndCancel()V

    .line 22
    invoke-virtual {v1}, Lcom/cndatacom/download/thread/DownloadTaskThread;->getDownloadedSize()I

    move-result v1

    .line 23
    iget-object v2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mInnerIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz v2, :cond_4

    int-to-long v3, v1

    .line 24
    invoke-interface {v2, p2, v3, v4}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskPauseOrCancel(Lcom/cndatacom/download/entity/DownloadTask;J)V

    .line 25
    :cond_4
    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 26
    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 27
    :cond_5
    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    const/4 v1, 0x1

    if-lez p2, :cond_6

    .line 29
    iget-object p2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cndatacom/download/entity/DownloadTask;

    .line 30
    invoke-virtual {p2}, Lcom/cndatacom/download/entity/DownloadTask;->getStatus()I

    move-result p2

    if-nez p2, :cond_6

    move p2, v1

    goto :goto_1

    :cond_6
    move p2, v0

    .line 31
    :goto_1
    invoke-virtual {p1, v1}, Lcom/cndatacom/download/entity/DownloadTask;->setStatus(I)V

    .line 32
    iget-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mInnerIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz v1, :cond_7

    .line 33
    invoke-interface {v1, p1}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskWaiting(Lcom/cndatacom/download/entity/DownloadTask;)V

    :cond_7
    if-eqz p2, :cond_8

    .line 34
    iget-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mWorkerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 5
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1, p2, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 9
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 11
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 13
    :cond_3
    throw p1
.end method

.method private handleWorkerMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    .line 4
    :goto_0
    iget-object v5, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v3, v5, :cond_3

    .line 5
    iget-object v5, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cndatacom/download/entity/DownloadTask;

    .line 6
    invoke-virtual {v5}, Lcom/cndatacom/download/entity/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v2, :cond_1

    .line 7
    iget v7, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mTaskNum:I

    if-le v4, v7, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v5, v6}, Lcom/cndatacom/download/entity/DownloadTask;->setStatus(I)V

    .line 9
    iget-object v6, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadThreadDB:Lcom/cndatacom/download/db/DownloadThreadDB;

    invoke-virtual {v5}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/cndatacom/download/db/DownloadThreadDB;->getDownloadedSize(Ljava/lang/String;I)J

    move-result-wide v6

    .line 10
    invoke-virtual {v5, v6, v7}, Lcom/cndatacom/download/entity/DownloadTask;->setDownloadedSize(J)V

    .line 11
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-direct {p0, v5}, Lcom/cndatacom/download/manager/DownloadTaskManager;->startTask(Lcom/cndatacom/download/entity/DownloadTask;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v5}, Lcom/cndatacom/download/entity/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 14
    iget v6, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mTaskNum:I

    if-le v4, v6, :cond_2

    .line 15
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 16
    invoke-virtual {v5}, Lcom/cndatacom/download/entity/DownloadTask;->getDownloadTaskThread()Lcom/cndatacom/download/thread/DownloadTaskThread;

    move-result-object v6

    .line 17
    invoke-virtual {v6}, Lcom/cndatacom/download/thread/DownloadTaskThread;->getDownloadedSize()I

    move-result v6

    int-to-long v6, v6

    .line 18
    invoke-virtual {v5, v6, v7}, Lcom/cndatacom/download/entity/DownloadTask;->setDownloadedSize(J)V

    .line 19
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 20
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cndatacom/download/entity/DownloadTask;

    .line 22
    invoke-virtual {v3}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cndatacom/download/manager/DownloadTaskManager;->pauseDownloadTask(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mInnerIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz v0, :cond_6

    move v0, v1

    .line 24
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cndatacom/download/entity/DownloadTask;

    .line 26
    invoke-virtual {v2}, Lcom/cndatacom/download/entity/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 27
    iget-object v2, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mInnerIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    invoke-interface {v2, p1}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskDownloading(Ljava/util/List;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mWorkerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    return-void
.end method

.method private startTask(Lcom/cndatacom/download/entity/DownloadTask;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getDownloadTaskThread()Lcom/cndatacom/download/thread/DownloadTaskThread;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadInfoDB:Lcom/cndatacom/download/db/DownloadInfoDB;

    invoke-virtual {v0, p1, v1}, Lcom/cndatacom/download/thread/DownloadTaskThread;->startTask(Lcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/db/DownloadInfoDB;)V

    return-void
.end method


# virtual methods
.method public addDownloadTask(Lcom/cndatacom/download/entity/DownloadTask;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->addDownloadTask(Lcom/cndatacom/download/entity/DownloadTask;Z)V

    return-void
.end method

.method public addSingleDownloadTask(Lcom/cndatacom/download/entity/DownloadTask;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->addDownloadTask(Lcom/cndatacom/download/entity/DownloadTask;Z)V

    return-void
.end method

.method public getDownloadInfoDB()Lcom/cndatacom/download/db/DownloadInfoDB;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadInfoDB:Lcom/cndatacom/download/db/DownloadInfoDB;

    return-object v0
.end method

.method public getDownloadTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cndatacom/download/entity/DownloadTask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    return-object v0
.end method

.method public getDownloadThreadDB()Lcom/cndatacom/download/db/DownloadThreadDB;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadThreadDB:Lcom/cndatacom/download/db/DownloadThreadDB;

    return-object v0
.end method

.method public pauseDownloadTask(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    iget-object v1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cndatacom/download/entity/DownloadTask;

    .line 3
    invoke-virtual {v1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/cndatacom/download/entity/DownloadTask;->getDownloadTaskThread()Lcom/cndatacom/download/thread/DownloadTaskThread;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/cndatacom/download/thread/DownloadTaskThread;->pauseAndCancel()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadTasks:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mDownloadThreadDB:Lcom/cndatacom/download/db/DownloadThreadDB;

    invoke-virtual {v1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/cndatacom/download/db/DownloadThreadDB;->getDownloadedSize(Ljava/lang/String;I)J

    move-result-wide v2

    .line 10
    iget-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    invoke-interface {p1, v1, v2, v3}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskPauseOrCancel(Lcom/cndatacom/download/entity/DownloadTask;J)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method

.method public setIDownloadTaskEvent(Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    return-void
.end method

.method public setTaskNum(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager;->mTaskNum:I

    return-void
.end method
