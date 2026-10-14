.class public Lcom/cndatacom/download/thread/DownloadTaskThread;
.super Ljava/lang/Object;
.source "DownloadTaskThread.java"


# instance fields
.field private mDownloadThreadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cndatacom/download/entity/DownloadThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

.field private mIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;


# direct methods
.method public constructor <init>(Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mDownloadThreadInfos:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;

    .line 4
    iput-object p1, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    return-void
.end method

.method private downloadTask(Lcom/cndatacom/download/entity/DownloadTask;)V
    .locals 15

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskFileSize()J

    move-result-wide v0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result v2

    int-to-long v3, v2

    .line 3
    div-long v3, v0, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    int-to-long v6, v5

    mul-long v9, v6, v3

    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_0

    move-wide v11, v0

    goto :goto_1

    :cond_0
    add-long v6, v9, v3

    move-wide v11, v6

    .line 4
    :goto_1
    new-instance v14, Lcom/cndatacom/download/entity/DownloadThreadInfo;

    invoke-direct {v14}, Lcom/cndatacom/download/entity/DownloadThreadInfo;-><init>()V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setTaskId(Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/cndatacom/download/entity/DownloadTask;->getThreadNum()I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setThreadNum(I)V

    .line 7
    invoke-virtual {v14, v5}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setThreadId(I)V

    move-object v6, p0

    .line 8
    iget-object v7, v6, Lcom/cndatacom/download/thread/DownloadTaskThread;->mDownloadThreadInfos:Ljava/util/List;

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, p0

    move-object/from16 v13, p1

    .line 9
    invoke-direct/range {v8 .. v14}, Lcom/cndatacom/download/thread/DownloadTaskThread;->startTaskThread(JJLcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/entity/DownloadThreadInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v6, p0

    return-void
.end method

.method private getFileLength(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    int-to-long v0, v0

    return-wide v0
.end method

.method private startTaskThread(JJLcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/entity/DownloadThreadInfo;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lcom/cndatacom/download/thread/DownloadTaskRunnable;

    iget-object v1, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    iget-object v2, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;

    invoke-direct {v0, v1, v2}, Lcom/cndatacom/download/thread/DownloadTaskRunnable;-><init>(Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;)V

    .line 2
    invoke-virtual {p6, v0}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setDownloadTaskRunnable(Lcom/cndatacom/download/thread/DownloadTaskRunnable;)V

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->startTaskThread(JJLcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/entity/DownloadThreadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    iget-object p1, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 6
    invoke-virtual {p5, p1}, Lcom/cndatacom/download/entity/DownloadTask;->setStatus(I)V

    .line 7
    iget-object p1, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    const/4 p2, 0x0

    invoke-interface {p1, p5, p2}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskError(Lcom/cndatacom/download/entity/DownloadTask;I)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getDownloadedSize()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mDownloadThreadInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mDownloadThreadInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cndatacom/download/entity/DownloadThreadInfo;

    int-to-long v3, v1

    .line 3
    invoke-virtual {v2}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->getDownloadedSize()J

    move-result-wide v1

    add-long/2addr v3, v1

    long-to-int v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public pauseAndCancel()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mDownloadThreadInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mDownloadThreadInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cndatacom/download/entity/DownloadThreadInfo;

    .line 3
    invoke-virtual {v1}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->getDownloadTaskRunnable()Lcom/cndatacom/download/thread/DownloadTaskRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->pauseAndCancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startTask(Lcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/db/DownloadInfoDB;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->getAskWifi()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->hasAskWifi()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 5
    iget-object p2, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p1, v2}, Lcom/cndatacom/download/entity/DownloadTask;->setStatus(I)V

    .line 7
    iget-object p2, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    const/4 v0, 0x3

    invoke-interface {p2, p1, v0}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskError(Lcom/cndatacom/download/entity/DownloadTask;I)V

    :cond_2
    return-void

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskUrl()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10
    iget-object p2, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p1, v2}, Lcom/cndatacom/download/entity/DownloadTask;->setStatus(I)V

    .line 12
    iget-object p2, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    const/4 v0, 0x2

    invoke-interface {p2, p1, v0}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskError(Lcom/cndatacom/download/entity/DownloadTask;I)V

    :cond_4
    return-void

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskFileSize()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_6

    .line 14
    invoke-direct {p0, v0}, Lcom/cndatacom/download/thread/DownloadTaskThread;->getFileLength(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v3, v4}, Lcom/cndatacom/download/db/DownloadInfoDB;->update(Ljava/lang/String;J)V

    :cond_6
    cmp-long p2, v3, v5

    if-gtz p2, :cond_8

    .line 16
    iget-object p2, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz p2, :cond_7

    .line 17
    invoke-virtual {p1, v2}, Lcom/cndatacom/download/entity/DownloadTask;->setStatus(I)V

    .line 18
    iget-object p2, p0, Lcom/cndatacom/download/thread/DownloadTaskThread;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    invoke-interface {p2, p1, v1}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskError(Lcom/cndatacom/download/entity/DownloadTask;I)V

    :cond_7
    return-void

    .line 19
    :cond_8
    invoke-virtual {p1, v3, v4}, Lcom/cndatacom/download/entity/DownloadTask;->setTaskFileSize(J)V

    .line 20
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 22
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 23
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 25
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskFileSize()J

    move-result-wide v0

    .line 26
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_a

    .line 27
    :try_start_0
    new-instance p2, Ljava/io/RandomAccessFile;

    .line 28
    invoke-virtual {p1}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskTempPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rw"

    invoke-direct {p2, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 30
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :cond_a
    :goto_2
    invoke-direct {p0, p1}, Lcom/cndatacom/download/thread/DownloadTaskThread;->downloadTask(Lcom/cndatacom/download/entity/DownloadTask;)V

    return-void
.end method
