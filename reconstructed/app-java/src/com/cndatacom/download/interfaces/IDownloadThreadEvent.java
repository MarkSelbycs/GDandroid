package com.cndatacom.download.interfaces;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface IDownloadThreadEvent {
    long getTaskThreadDownloadedSize(com.cndatacom.download.entity.DownloadTask downloadTask, int i5);

    void taskThreadDownloading(com.cndatacom.download.entity.DownloadTask downloadTask, int i5, long j5);

    void taskThreadFinish(com.cndatacom.download.entity.DownloadTask downloadTask, int i5, long j5);
}
