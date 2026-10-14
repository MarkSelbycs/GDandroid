.class public interface abstract Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;
.super Ljava/lang/Object;
.source "IDownloadTaskEvent.java"


# virtual methods
.method public abstract getAskWifi()Z
.end method

.method public abstract hasAskWifi()Z
.end method

.method public abstract taskDownloading(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cndatacom/download/entity/DownloadTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract taskError(Lcom/cndatacom/download/entity/DownloadTask;I)V
.end method

.method public abstract taskFinish(Lcom/cndatacom/download/entity/DownloadTask;J)V
.end method

.method public abstract taskPauseOrCancel(Lcom/cndatacom/download/entity/DownloadTask;J)V
.end method

.method public abstract taskWaiting(Lcom/cndatacom/download/entity/DownloadTask;)V
.end method
