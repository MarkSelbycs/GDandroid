package com.cndatacom.download.thread;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DownloadTaskThread {
    private java.util.List<com.cndatacom.download.entity.DownloadThreadInfo> mDownloadThreadInfos = new java.util.ArrayList();
    private com.cndatacom.download.interfaces.IDownloadTaskEvent mIDownloadTaskEvent;
    private com.cndatacom.download.interfaces.IDownloadThreadEvent mIDownloadThreadEvent;

    public DownloadTaskThread(com.cndatacom.download.interfaces.IDownloadTaskEvent iDownloadTaskEvent, com.cndatacom.download.interfaces.IDownloadThreadEvent iDownloadThreadEvent) {
        this.mIDownloadThreadEvent = iDownloadThreadEvent;
        this.mIDownloadTaskEvent = iDownloadTaskEvent;
    }

    private void downloadTask(com.cndatacom.download.entity.DownloadTask downloadTask) {
        long taskFileSize = downloadTask.getTaskFileSize();
        int threadNum = downloadTask.getThreadNum();
        long j5 = taskFileSize / ((long) threadNum);
        int i5 = 0;
        while (i5 < threadNum) {
            long j6 = ((long) i5) * j5;
            long j7 = i5 == threadNum + (-1) ? taskFileSize : j6 + j5;
            com.cndatacom.download.entity.DownloadThreadInfo downloadThreadInfo = new com.cndatacom.download.entity.DownloadThreadInfo();
            downloadThreadInfo.setTaskId(downloadTask.getTaskId());
            downloadThreadInfo.setThreadNum(downloadTask.getThreadNum());
            downloadThreadInfo.setThreadId(i5);
            this.mDownloadThreadInfos.add(downloadThreadInfo);
            startTaskThread(j6, j7, downloadTask, downloadThreadInfo);
            i5++;
        }
    }

    private long getFileLength(java.lang.String str) {
        int contentLength = 0;
        try {
            java.net.HttpURLConnection httpURLConnection = (java.net.HttpURLConnection) new java.net.URL(str).openConnection();
            contentLength = httpURLConnection.getContentLength();
            httpURLConnection.disconnect();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return contentLength;
    }

    private void startTaskThread(long j5, long j6, com.cndatacom.download.entity.DownloadTask downloadTask, com.cndatacom.download.entity.DownloadThreadInfo downloadThreadInfo) {
        try {
            com.cndatacom.download.thread.DownloadTaskRunnable downloadTaskRunnable = new com.cndatacom.download.thread.DownloadTaskRunnable(this.mIDownloadTaskEvent, this.mIDownloadThreadEvent);
            downloadThreadInfo.setDownloadTaskRunnable(downloadTaskRunnable);
            downloadTaskRunnable.startTaskThread(j5, j6, downloadTask, downloadThreadInfo);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            if (this.mIDownloadTaskEvent != null) {
                downloadTask.setStatus(4);
                this.mIDownloadTaskEvent.taskError(downloadTask, 0);
            }
        }
    }

    public int getDownloadedSize() {
        int downloadedSize = 0;
        for (int i5 = 0; i5 < this.mDownloadThreadInfos.size(); i5++) {
            downloadedSize = (int) (((long) downloadedSize) + this.mDownloadThreadInfos.get(i5).getDownloadedSize());
        }
        return downloadedSize;
    }

    public void pauseAndCancel() {
        for (int i5 = 0; i5 < this.mDownloadThreadInfos.size(); i5++) {
            this.mDownloadThreadInfos.get(i5).getDownloadTaskRunnable().pauseAndCancel();
        }
    }

    public void startTask(com.cndatacom.download.entity.DownloadTask downloadTask, com.cndatacom.download.db.DownloadInfoDB downloadInfoDB) {
        com.cndatacom.download.interfaces.IDownloadTaskEvent iDownloadTaskEvent = this.mIDownloadTaskEvent;
        if (iDownloadTaskEvent != null ? iDownloadTaskEvent.getAskWifi() : false) {
            com.cndatacom.download.interfaces.IDownloadTaskEvent iDownloadTaskEvent2 = this.mIDownloadTaskEvent;
            if (!(iDownloadTaskEvent2 != null ? iDownloadTaskEvent2.hasAskWifi() : true)) {
                if (this.mIDownloadTaskEvent != null) {
                    downloadTask.setStatus(4);
                    this.mIDownloadTaskEvent.taskError(downloadTask, 3);
                    return;
                }
                return;
            }
        }
        java.lang.String taskUrl = downloadTask.getTaskUrl();
        if (android.text.TextUtils.isEmpty(taskUrl)) {
            if (this.mIDownloadTaskEvent != null) {
                downloadTask.setStatus(4);
                this.mIDownloadTaskEvent.taskError(downloadTask, 2);
                return;
            }
            return;
        }
        long taskFileSize = downloadTask.getTaskFileSize();
        if (taskFileSize == 0) {
            taskFileSize = getFileLength(taskUrl);
            if (taskFileSize > 0) {
                downloadInfoDB.update(downloadTask.getTaskId(), taskFileSize);
            }
        }
        if (taskFileSize <= 0) {
            if (this.mIDownloadTaskEvent != null) {
                downloadTask.setStatus(4);
                this.mIDownloadTaskEvent.taskError(downloadTask, 1);
                return;
            }
            return;
        }
        downloadTask.setTaskFileSize(taskFileSize);
        java.io.File file = new java.io.File(downloadTask.getTaskTempPath());
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        if (!new java.io.File(downloadTask.getTaskPath()).exists()) {
            long taskFileSize2 = downloadTask.getTaskFileSize();
            if (!file.exists()) {
                try {
                    java.io.RandomAccessFile randomAccessFile = new java.io.RandomAccessFile(downloadTask.getTaskTempPath(), "rw");
                    randomAccessFile.setLength(taskFileSize2);
                    randomAccessFile.close();
                } catch (java.lang.Exception e5) {
                    e5.printStackTrace();
                }
            }
        }
        downloadTask(downloadTask);
    }
}
