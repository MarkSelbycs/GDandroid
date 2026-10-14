package com.cndatacom.download.interfaces;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface IDownloadTaskEvent {
    boolean getAskWifi();

    boolean hasAskWifi();

    void taskDownloading(java.util.List<com.cndatacom.download.entity.DownloadTask> list);

    void taskError(com.cndatacom.download.entity.DownloadTask downloadTask, int i5);

    void taskFinish(com.cndatacom.download.entity.DownloadTask downloadTask, long j5);

    void taskPauseOrCancel(com.cndatacom.download.entity.DownloadTask downloadTask, long j5);

    void taskWaiting(com.cndatacom.download.entity.DownloadTask downloadTask);
}
