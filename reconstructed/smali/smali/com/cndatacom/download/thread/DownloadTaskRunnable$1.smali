.class Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;
.super Ljava/lang/Thread;
.source "DownloadTaskRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/download/thread/DownloadTaskRunnable;->startTaskThread(JJLcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/entity/DownloadThreadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/download/thread/DownloadTaskRunnable;

.field public final synthetic val$downloadTask:Lcom/cndatacom/download/entity/DownloadTask;

.field public final synthetic val$downloadThreadInfo:Lcom/cndatacom/download/entity/DownloadThreadInfo;

.field public final synthetic val$endPos:J

.field public final synthetic val$finalNewStartPos:J

.field public final synthetic val$finalStartPos:J


# direct methods
.method public constructor <init>(Lcom/cndatacom/download/thread/DownloadTaskRunnable;JJJLcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/entity/DownloadThreadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->this$0:Lcom/cndatacom/download/thread/DownloadTaskRunnable;

    iput-wide p2, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->val$finalStartPos:J

    iput-wide p4, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->val$finalNewStartPos:J

    iput-wide p6, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->val$endPos:J

    iput-object p8, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->val$downloadTask:Lcom/cndatacom/download/entity/DownloadTask;

    iput-object p9, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->val$downloadThreadInfo:Lcom/cndatacom/download/entity/DownloadThreadInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->this$0:Lcom/cndatacom/download/thread/DownloadTaskRunnable;

    iget-wide v1, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->val$finalStartPos:J

    iget-wide v3, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->val$finalNewStartPos:J

    iget-wide v5, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->val$endPos:J

    iget-object v7, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->val$downloadTask:Lcom/cndatacom/download/entity/DownloadTask;

    iget-object v8, p0, Lcom/cndatacom/download/thread/DownloadTaskRunnable$1;->val$downloadThreadInfo:Lcom/cndatacom/download/entity/DownloadThreadInfo;

    invoke-static/range {v0 .. v8}, Lcom/cndatacom/download/thread/DownloadTaskRunnable;->access$000(Lcom/cndatacom/download/thread/DownloadTaskRunnable;JJJLcom/cndatacom/download/entity/DownloadTask;Lcom/cndatacom/download/entity/DownloadThreadInfo;)V

    return-void
.end method
