.class public Lcom/cndatacom/download/thread/DownloadTaskRunnable;
.super Ljava/lang/Object;
.source "DownloadTaskRunnable.java"


# instance fields
.field private final BUFF_LENGTH:I

.field private final CONNECTTIME:I

.field private final READTIME:I

.field private volatile isCanDownload:Z

.field private mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

.field private mIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;


# direct methods
.method public constructor <init>(Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 2
    iput v0, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->CONNECTTIME:I

    .line 3
    iput v0, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->READTIME:I

    const/16 v0, 0x400

    .line 4
    iput v0, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->BUFF_LENGTH:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->isCanDownload:Z

    .line 6
    iput-object p2, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->mIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;

    .line 7
    iput-object p1, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/download/thread/DownloadTaskRunnable;JJJLcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/entity/DownloadThreadInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->startTaskRunnable(JJJLcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/entity/DownloadThreadInfo;)V

    return-void
.end method

.method private getHttpConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private getUrlInputStream(JJLjava/lang/String;Ljava/net/URL;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p6}, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->getHttpConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p5

    move-object v0, p0

    move-object v1, p5

    move-wide v2, p1

    move-wide v4, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->seURLConnectiontHeader(Ljava/net/URLConnection;JJ)V

    .line 3
    invoke-virtual {p5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private seURLConnectiontHeader(Ljava/net/URLConnection;JJ)V
    .locals 2

    const/16 v0, 0x7530

    .line 1
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Range"

    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startTaskRunnable(JJJLcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/entity/DownloadThreadInfo;)V
    .locals 14

    move-object v8, p0

    move-wide/from16 v9, p3

    move-object/from16 v11, p7

    move-object/from16 v0, p8

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskUrl()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->getUrlInputStream(JJLjava/lang/String;Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-virtual/range {p7 .. p7}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskTempPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    move v4, v12

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget-boolean v6, v8, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->isCanDownload:Z

    if-eqz v6, :cond_1

    .line 7
    invoke-virtual {v2, v3, v12, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v4, v5

    int-to-long v5, v4

    add-long/2addr v5, v9

    cmp-long v7, v5, p5

    if-gtz v7, :cond_0

    sub-long/2addr v5, p1

    .line 8
    invoke-virtual {v0, v5, v6}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setDownloadedSize(J)V

    .line 9
    iget-object v7, v8, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->mIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;

    if-eqz v7, :cond_0

    .line 10
    invoke-virtual/range {p8 .. p8}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->getThreadId()I

    move-result v13

    invoke-interface {v7, v11, v13, v5, v6}, Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;->taskThreadDownloading(Lcom/cndatacom/download/entity/DownloadTask;IJ)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 12
    iget-boolean v1, v8, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->isCanDownload:Z

    if-eqz v1, :cond_2

    sub-long v3, p5, p1

    .line 13
    invoke-virtual {v0, v3, v4}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setDownloadedSize(J)V

    .line 14
    iget-object v1, v8, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->mIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual/range {p8 .. p8}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->getThreadId()I

    move-result v0

    invoke-interface {v1, v11, v0, v3, v4}, Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;->taskThreadFinish(Lcom/cndatacom/download/entity/DownloadTask;IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v13, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v13, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 17
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    iget-object v0, v8, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->mIDownloadTaskEvent:Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;

    if-eqz v0, :cond_3

    .line 19
    invoke-interface {v0, v11, v12}, Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;->taskError(Lcom/cndatacom/download/entity/DownloadTask;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    if-eqz v13, :cond_4

    .line 20
    :try_start_4
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 21
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_2
    return-void

    :goto_3
    if-eqz v13, :cond_5

    .line 22
    :try_start_5
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 23
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 24
    :cond_5
    :goto_4
    throw v1
.end method


# virtual methods
.method public pauseAndCancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->isCanDownload:Z

    return-void
.end method

.method public startTaskThread(JJLcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/entity/DownloadThreadInfo;)V
    .locals 12

    move-object v10, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1
    iget-object v0, v10, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->mIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p6 .. p6}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->getThreadId()I

    move-result v1

    invoke-interface {v0, v8, v1}, Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;->getTaskThreadDownloadedSize(Lcom/cndatacom/download/entity/DownloadTask;I)J

    move-result-wide v0

    add-long/2addr v0, p1

    move-wide v4, v0

    goto :goto_0

    :cond_0
    move-wide v4, p1

    :goto_0
    cmp-long v0, p3, v4

    if-lez v0, :cond_1

    sub-long v0, v4, p1

    .line 3
    invoke-virtual {v9, v0, v1}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setDownloadedSize(J)V

    .line 4
    new-instance v11, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;-><init>(Lcom/cndatacom/download/thread/DownloadTaskRunnable;JJJLcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/entity/DownloadThreadInfo;)V

    .line 5
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_1
    sub-long v0, p3, p1

    .line 6
    invoke-virtual {v9, v0, v1}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->setDownloadedSize(J)V

    .line 7
    iget-object v2, v10, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->mIDownloadThreadEvent:Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual/range {p6 .. p6}, Lcom/cndatacom/download/entity/DownloadThreadInfo;->getThreadId()I

    move-result v3

    invoke-interface {v2, v8, v3, v0, v1}, Lcom/cndatacom/download/interfaces/IDownloadThreadEvent;->taskThreadFinish(Lcom/cndatacom/download/entity/DownloadTask;IJ)V

    :cond_2
    :goto_1
    return-void
.end method
