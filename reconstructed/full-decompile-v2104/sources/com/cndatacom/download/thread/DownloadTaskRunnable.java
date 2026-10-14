package com.cndatacom.download.thread;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DownloadTaskRunnable {
    private com.cndatacom.download.interfaces.IDownloadTaskEvent mIDownloadTaskEvent;
    private com.cndatacom.download.interfaces.IDownloadThreadEvent mIDownloadThreadEvent;
    private final int CONNECTTIME = 30000;
    private final int READTIME = 30000;
    private final int BUFF_LENGTH = 1024;
    private volatile boolean isCanDownload = true;

    public DownloadTaskRunnable(com.cndatacom.download.interfaces.IDownloadTaskEvent iDownloadTaskEvent, com.cndatacom.download.interfaces.IDownloadThreadEvent iDownloadThreadEvent) {
        this.mIDownloadThreadEvent = iDownloadThreadEvent;
        this.mIDownloadTaskEvent = iDownloadTaskEvent;
    }

    private java.net.HttpURLConnection getHttpConnection(java.net.URL url) throws java.lang.Exception {
        return (java.net.HttpURLConnection) url.openConnection();
    }

    private java.io.InputStream getUrlInputStream(long j5, long j6, java.lang.String str, java.net.URL url) throws java.lang.Exception {
        java.net.HttpURLConnection httpConnection = getHttpConnection(url);
        seURLConnectiontHeader(httpConnection, j5, j6);
        return httpConnection.getInputStream();
    }

    private void seURLConnectiontHeader(java.net.URLConnection uRLConnection, long j5, long j6) {
        uRLConnection.setConnectTimeout(30000);
        uRLConnection.setReadTimeout(30000);
        uRLConnection.setRequestProperty("Range", "bytes=" + j5 + "-" + j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startTaskRunnable(long j5, long j6, long j7, com.cndatacom.download.entity.DownloadTask downloadTask, com.cndatacom.download.entity.DownloadThreadInfo downloadThreadInfo) throws java.lang.Throwable {
        java.lang.Throwable th;
        java.io.RandomAccessFile randomAccessFile = null;
        try {
            try {
                try {
                    java.lang.String taskUrl = downloadTask.getTaskUrl();
                    java.io.InputStream urlInputStream = getUrlInputStream(j6, j7, taskUrl, new java.net.URL(taskUrl));
                    java.io.RandomAccessFile randomAccessFile2 = new java.io.RandomAccessFile(downloadTask.getTaskTempPath(), "rw");
                    try {
                        randomAccessFile2.seek(j6);
                        byte[] bArr = new byte[1024];
                        int i5 = 0;
                        while (true) {
                            int i6 = urlInputStream.read(bArr);
                            if (i6 == -1 || !this.isCanDownload) {
                                break;
                            }
                            randomAccessFile2.write(bArr, 0, i6);
                            i5 += i6;
                            long j8 = ((long) i5) + j6;
                            if (j8 <= j7) {
                                long j9 = j8 - j5;
                                downloadThreadInfo.setDownloadedSize(j9);
                                com.cndatacom.download.interfaces.IDownloadThreadEvent iDownloadThreadEvent = this.mIDownloadThreadEvent;
                                if (iDownloadThreadEvent != null) {
                                    iDownloadThreadEvent.taskThreadDownloading(downloadTask, downloadThreadInfo.getThreadId(), j9);
                                }
                            }
                        }
                        urlInputStream.close();
                        if (this.isCanDownload) {
                            long j10 = j7 - j5;
                            downloadThreadInfo.setDownloadedSize(j10);
                            com.cndatacom.download.interfaces.IDownloadThreadEvent iDownloadThreadEvent2 = this.mIDownloadThreadEvent;
                            if (iDownloadThreadEvent2 != null) {
                                iDownloadThreadEvent2.taskThreadFinish(downloadTask, downloadThreadInfo.getThreadId(), j10);
                            }
                        }
                        randomAccessFile2.close();
                    } catch (java.lang.Exception e5) {
                        e = e5;
                        randomAccessFile = randomAccessFile2;
                        e.printStackTrace();
                        com.cndatacom.download.interfaces.IDownloadTaskEvent iDownloadTaskEvent = this.mIDownloadTaskEvent;
                        if (iDownloadTaskEvent != null) {
                            iDownloadTaskEvent.taskError(downloadTask, 0);
                        }
                        if (randomAccessFile == null) {
                        } else {
                            randomAccessFile.close();
                        }
                    } catch (java.lang.Throwable th2) {
                        th = th2;
                        randomAccessFile = randomAccessFile2;
                        if (randomAccessFile == null) {
                            throw th;
                        }
                        try {
                            randomAccessFile.close();
                            throw th;
                        } catch (java.io.IOException e6) {
                            e6.printStackTrace();
                            throw th;
                        }
                    }
                } catch (java.io.IOException e7) {
                    e7.printStackTrace();
                }
            } catch (java.lang.Exception e8) {
                e = e8;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
        }
    }

    public void pauseAndCancel() {
        this.isCanDownload = false;
    }

    public void startTaskThread(final long j5, final long j6, final com.cndatacom.download.entity.DownloadTask downloadTask, final com.cndatacom.download.entity.DownloadThreadInfo downloadThreadInfo) {
        com.cndatacom.download.interfaces.IDownloadThreadEvent iDownloadThreadEvent = this.mIDownloadThreadEvent;
        final long taskThreadDownloadedSize = iDownloadThreadEvent != null ? iDownloadThreadEvent.getTaskThreadDownloadedSize(downloadTask, downloadThreadInfo.getThreadId()) + j5 : j5;
        if (j6 > taskThreadDownloadedSize) {
            downloadThreadInfo.setDownloadedSize(taskThreadDownloadedSize - j5);
            new java.lang.Thread() { // from class: com.cndatacom.download.thread.DownloadTaskRunnable.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws java.lang.Throwable {
                    com.cndatacom.download.thread.DownloadTaskRunnable.this.startTaskRunnable(j5, taskThreadDownloadedSize, j6, downloadTask, downloadThreadInfo);
                }
            }.start();
            return;
        }
        long j7 = j6 - j5;
        downloadThreadInfo.setDownloadedSize(j7);
        com.cndatacom.download.interfaces.IDownloadThreadEvent iDownloadThreadEvent2 = this.mIDownloadThreadEvent;
        if (iDownloadThreadEvent2 != null) {
            iDownloadThreadEvent2.taskThreadFinish(downloadTask, downloadThreadInfo.getThreadId(), j7);
        }
    }
}
