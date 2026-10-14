package com.cndatacom.download.manager;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DownloadTaskManager {
    private com.cndatacom.download.db.DownloadInfoDB mDownloadInfoDB;
    private com.cndatacom.download.db.DownloadThreadDB mDownloadThreadDB;
    private android.os.HandlerThread mHandlerThread;
    private com.cndatacom.download.interfaces.IDownloadTaskEvent mIDownloadTaskEvent;
    private android.os.Handler mWorkerHandler;
    private java.util.Vector<com.cndatacom.download.entity.DownloadTask> mDownloadTasks = new java.util.Vector<>();
    private final int MESSAGE_WHAT_UPDATE_TASK = 0;
    private final int UPDATE_TASK_TIME = com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO;
    private final int BUFF_LENGTH = 1024;
    private int mTaskNum = 1;
    private com.cndatacom.download.interfaces.IDownloadThreadEvent mInnerIDownloadThreadEvent = new com.cndatacom.download.interfaces.IDownloadThreadEvent() { // from class: com.cndatacom.download.manager.DownloadTaskManager.1
        @Override // com.cndatacom.download.interfaces.IDownloadThreadEvent
        public long getTaskThreadDownloadedSize(com.cndatacom.download.entity.DownloadTask downloadTask, int i5) {
            com.cndatacom.download.entity.DownloadThreadInfo downloadThreadInfo;
            if (!com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadThreadDB.isExists(downloadTask.getTaskId(), downloadTask.getThreadNum(), i5) || (downloadThreadInfo = com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadThreadDB.getDownloadThreadInfo(downloadTask.getTaskId(), downloadTask.getThreadNum(), i5)) == null) {
                return 0L;
            }
            return downloadThreadInfo.getDownloadedSize();
        }

        @Override // com.cndatacom.download.interfaces.IDownloadThreadEvent
        public void taskThreadDownloading(com.cndatacom.download.entity.DownloadTask downloadTask, int i5, long j5) {
            if (com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadThreadDB.isExists(downloadTask.getTaskId(), downloadTask.getThreadNum(), i5)) {
                com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadThreadDB.update(downloadTask.getTaskId(), downloadTask.getThreadNum(), i5, j5);
                return;
            }
            com.cndatacom.download.entity.DownloadThreadInfo downloadThreadInfo = new com.cndatacom.download.entity.DownloadThreadInfo();
            downloadThreadInfo.setDownloadedSize(j5);
            downloadThreadInfo.setThreadId(i5);
            downloadThreadInfo.setTaskId(downloadTask.getTaskId());
            downloadThreadInfo.setThreadNum(downloadTask.getThreadNum());
            com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadThreadDB.add(downloadThreadInfo);
        }

        @Override // com.cndatacom.download.interfaces.IDownloadThreadEvent
        public void taskThreadFinish(com.cndatacom.download.entity.DownloadTask downloadTask, int i5, long j5) throws java.lang.Throwable {
            if (com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadThreadDB.isExists(downloadTask.getTaskId(), downloadTask.getThreadNum(), i5)) {
                com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadThreadDB.update(downloadTask.getTaskId(), downloadTask.getThreadNum(), i5, j5);
            }
            if (downloadTask.getStatus() != 5) {
                if (downloadTask.getTaskFileSize() <= downloadTask.getDownloadTaskThread().getDownloadedSize()) {
                    downloadTask.setStatus(5);
                    if (downloadTask.getTaskPath() != null) {
                        com.cndatacom.download.manager.DownloadTaskManager.this.copyFile(downloadTask.getTaskTempPath(), downloadTask.getTaskPath());
                    }
                    if (com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent != null) {
                        com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent.taskFinish(downloadTask, (int) downloadTask.getTaskFileSize());
                    }
                    for (int i6 = 0; i6 < com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadTasks.size(); i6++) {
                        if (downloadTask.getTaskId().equals(((com.cndatacom.download.entity.DownloadTask) com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadTasks.get(i6)).getTaskId())) {
                            com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadTasks.remove(i6);
                            return;
                        }
                    }
                }
            }
        }
    };
    private com.cndatacom.download.interfaces.IDownloadTaskEvent mInnerIDownloadTaskEvent = new com.cndatacom.download.interfaces.IDownloadTaskEvent() { // from class: com.cndatacom.download.manager.DownloadTaskManager.2
        @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
        public boolean getAskWifi() {
            if (com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent != null) {
                return com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent.getAskWifi();
            }
            return true;
        }

        @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
        public boolean hasAskWifi() {
            if (com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent != null) {
                return com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent.hasAskWifi();
            }
            return true;
        }

        @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
        public void taskDownloading(java.util.List<com.cndatacom.download.entity.DownloadTask> list) {
            if (com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent != null) {
                com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent.taskDownloading(list);
            }
        }

        @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
        public void taskError(com.cndatacom.download.entity.DownloadTask downloadTask, int i5) {
            if (downloadTask.getStatus() != 4) {
                downloadTask.setStatus(4);
                downloadTask.getDownloadTaskThread().pauseAndCancel();
            }
            for (int i6 = 0; i6 < com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadTasks.size(); i6++) {
                if (downloadTask.getTaskId().equals(((com.cndatacom.download.entity.DownloadTask) com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadTasks.get(i6)).getTaskId())) {
                    com.cndatacom.download.manager.DownloadTaskManager.this.mDownloadTasks.remove(i6);
                    break;
                }
            }
            if (com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent != null) {
                com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent.taskError(downloadTask, i5);
            }
        }

        @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
        public void taskFinish(com.cndatacom.download.entity.DownloadTask downloadTask, long j5) {
            if (com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent != null) {
                com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent.taskFinish(downloadTask, j5);
            }
        }

        @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
        public void taskPauseOrCancel(com.cndatacom.download.entity.DownloadTask downloadTask, long j5) {
            if (com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent != null) {
                com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent.taskPauseOrCancel(downloadTask, j5);
            }
        }

        @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
        public void taskWaiting(com.cndatacom.download.entity.DownloadTask downloadTask) {
            if (com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent != null) {
                com.cndatacom.download.manager.DownloadTaskManager.this.mIDownloadTaskEvent.taskWaiting(downloadTask);
            }
        }
    };

    public DownloadTaskManager(android.content.Context context, java.lang.String str) {
        this.mDownloadInfoDB = new com.cndatacom.download.db.DownloadInfoDB(context, str);
        this.mDownloadThreadDB = new com.cndatacom.download.db.DownloadThreadDB(context, str);
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("loadDownloadTaskData", 0);
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mWorkerHandler = new android.os.Handler(this.mHandlerThread.getLooper(), new android.os.Handler.Callback() { // from class: com.cndatacom.download.manager.DownloadTaskManager.3
            @Override // android.os.Handler.Callback
            public boolean handleMessage(android.os.Message message) {
                com.cndatacom.download.manager.DownloadTaskManager.this.handleWorkerMessage(message);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyFile(java.lang.String str, java.lang.String str2) throws java.lang.Throwable {
        java.io.File absoluteFile;
        java.io.File file = null;
        try {
            try {
                java.io.File file2 = new java.io.File(str);
                try {
                    if (file2.exists()) {
                        java.io.FileInputStream fileInputStream = new java.io.FileInputStream(str);
                        java.io.FileOutputStream fileOutputStream = new java.io.FileOutputStream(str2);
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i5 = fileInputStream.read(bArr);
                            if (i5 == -1) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, i5);
                            }
                        }
                        fileInputStream.close();
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    }
                    absoluteFile = file2.getAbsoluteFile();
                } catch (java.lang.Exception e5) {
                    e = e5;
                    file = file2;
                    e.printStackTrace();
                    if (file == null) {
                        return;
                    } else {
                        absoluteFile = file.getAbsoluteFile();
                    }
                } catch (java.lang.Throwable th) {
                    th = th;
                    file = file2;
                    if (file != null) {
                        file.getAbsoluteFile().delete();
                    }
                    throw th;
                }
            } catch (java.lang.Exception e6) {
                e = e6;
            }
            absoluteFile.delete();
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWorkerMessage(android.os.Message message) {
        if (this.mDownloadTasks.size() > 0) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            int i5 = 1;
            for (int i6 = 0; i6 < this.mDownloadTasks.size(); i6++) {
                com.cndatacom.download.entity.DownloadTask downloadTask = this.mDownloadTasks.get(i6);
                if (downloadTask.getStatus() != 1) {
                    if (downloadTask.getStatus() != 2) {
                        break;
                    }
                    if (i5 > this.mTaskNum) {
                        arrayList2.add(downloadTask);
                    } else {
                        i5++;
                        downloadTask.setDownloadedSize(downloadTask.getDownloadTaskThread().getDownloadedSize());
                        arrayList.add(downloadTask);
                    }
                } else if (i5 <= this.mTaskNum) {
                    downloadTask.setStatus(2);
                    downloadTask.setDownloadedSize(this.mDownloadThreadDB.getDownloadedSize(downloadTask.getTaskId(), downloadTask.getThreadNum()));
                    arrayList.add(downloadTask);
                    startTask(downloadTask);
                    i5++;
                }
            }
            for (int i7 = 0; i7 < arrayList2.size(); i7++) {
                pauseDownloadTask(((com.cndatacom.download.entity.DownloadTask) arrayList2.get(i7)).getTaskId());
            }
            if (this.mInnerIDownloadTaskEvent != null) {
                for (int i8 = 0; i8 < arrayList.size(); i8++) {
                    if (((com.cndatacom.download.entity.DownloadTask) arrayList.get(i8)).getStatus() == 2) {
                        this.mInnerIDownloadTaskEvent.taskDownloading(arrayList);
                    }
                }
            }
            this.mWorkerHandler.sendEmptyMessageDelayed(0, 1000L);
        }
    }

    private void startTask(com.cndatacom.download.entity.DownloadTask downloadTask) {
        downloadTask.getDownloadTaskThread().startTask(downloadTask, this.mDownloadInfoDB);
    }

    public void addDownloadTask(com.cndatacom.download.entity.DownloadTask downloadTask) {
        addDownloadTask(downloadTask, false);
    }

    public void addSingleDownloadTask(com.cndatacom.download.entity.DownloadTask downloadTask) {
        addDownloadTask(downloadTask, true);
    }

    public com.cndatacom.download.db.DownloadInfoDB getDownloadInfoDB() {
        return this.mDownloadInfoDB;
    }

    public java.util.List<com.cndatacom.download.entity.DownloadTask> getDownloadTasks() {
        return this.mDownloadTasks;
    }

    public com.cndatacom.download.db.DownloadThreadDB getDownloadThreadDB() {
        return this.mDownloadThreadDB;
    }

    public void pauseDownloadTask(java.lang.String str) {
        for (int i5 = 0; i5 < this.mDownloadTasks.size(); i5++) {
            com.cndatacom.download.entity.DownloadTask downloadTask = this.mDownloadTasks.get(i5);
            if (downloadTask.getTaskId().equals(str)) {
                if (i5 == 0) {
                    downloadTask.getDownloadTaskThread().pauseAndCancel();
                }
                if (this.mDownloadTasks.size() > 0) {
                    this.mDownloadTasks.remove(i5);
                }
                if (this.mIDownloadTaskEvent != null) {
                    this.mIDownloadTaskEvent.taskPauseOrCancel(downloadTask, this.mDownloadThreadDB.getDownloadedSize(downloadTask.getTaskId(), downloadTask.getThreadNum()));
                    return;
                }
                return;
            }
        }
    }

    public void release() {
        android.os.Handler handler = this.mWorkerHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        android.os.HandlerThread handlerThread = this.mHandlerThread;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    public void setIDownloadTaskEvent(com.cndatacom.download.interfaces.IDownloadTaskEvent iDownloadTaskEvent) {
        this.mIDownloadTaskEvent = iDownloadTaskEvent;
    }

    public void setTaskNum(int i5) {
        this.mTaskNum = i5;
    }

    private void addDownloadTask(com.cndatacom.download.entity.DownloadTask downloadTask, boolean z4) {
        java.io.File file = new java.io.File(downloadTask.getTaskTempPath());
        java.io.File file2 = new java.io.File(downloadTask.getTaskPath());
        if (!file.exists() && !file2.exists()) {
            java.lang.String taskId = downloadTask.getTaskId();
            this.mDownloadInfoDB.delete(taskId);
            this.mDownloadThreadDB.delete(taskId, downloadTask.getThreadNum());
        }
        downloadTask.setDownloadTaskThread(new com.cndatacom.download.thread.DownloadTaskThread(this.mInnerIDownloadTaskEvent, this.mInnerIDownloadThreadEvent));
        if (this.mDownloadInfoDB.isExists(downloadTask.getTaskId())) {
            long downloadedSize = this.mDownloadThreadDB.getDownloadedSize(downloadTask.getTaskId(), downloadTask.getThreadNum());
            if (downloadTask.getTaskFileSize() != 0 && downloadedSize >= downloadTask.getTaskFileSize()) {
                com.cndatacom.download.interfaces.IDownloadTaskEvent iDownloadTaskEvent = this.mIDownloadTaskEvent;
                if (iDownloadTaskEvent != null) {
                    iDownloadTaskEvent.taskFinish(downloadTask, (int) downloadTask.getTaskFileSize());
                    return;
                }
                return;
            }
        } else {
            this.mDownloadInfoDB.add(downloadTask);
        }
        if (z4 && this.mDownloadTasks.size() > 0) {
            com.cndatacom.download.entity.DownloadTask downloadTask2 = this.mDownloadTasks.get(0);
            if (downloadTask2.getStatus() == 2) {
                downloadTask2.setStatus(3);
                com.cndatacom.download.thread.DownloadTaskThread downloadTaskThread = downloadTask2.getDownloadTaskThread();
                downloadTaskThread.pauseAndCancel();
                int downloadedSize2 = downloadTaskThread.getDownloadedSize();
                com.cndatacom.download.interfaces.IDownloadTaskEvent iDownloadTaskEvent2 = this.mInnerIDownloadTaskEvent;
                if (iDownloadTaskEvent2 != null) {
                    iDownloadTaskEvent2.taskPauseOrCancel(downloadTask2, downloadedSize2);
                }
                if (this.mDownloadTasks.size() > 0) {
                    this.mDownloadTasks.remove(0);
                }
            }
        }
        this.mDownloadTasks.add(downloadTask);
        boolean z5 = this.mDownloadTasks.size() > 0 && this.mDownloadTasks.get(0).getStatus() == 0;
        downloadTask.setStatus(1);
        com.cndatacom.download.interfaces.IDownloadTaskEvent iDownloadTaskEvent3 = this.mInnerIDownloadTaskEvent;
        if (iDownloadTaskEvent3 != null) {
            iDownloadTaskEvent3.taskWaiting(downloadTask);
        }
        if (z5) {
            this.mWorkerHandler.sendEmptyMessageDelayed(0, 1000L);
        }
    }
}
