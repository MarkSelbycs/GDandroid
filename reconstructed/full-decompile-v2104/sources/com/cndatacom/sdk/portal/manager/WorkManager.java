package com.cndatacom.sdk.portal.manager;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class WorkManager {
    private static com.cndatacom.sdk.portal.manager.WorkManager _WorkManager;
    private android.os.HandlerThread mHandlerThread;
    private android.util.SparseArray<com.cndatacom.sdk.portal.work.WorkerInfo> mTasks = new android.util.SparseArray<>();
    private java.util.concurrent.ExecutorService mThreadPool = com.cndatacom.sdk.portal.manager.ThreadPoolManager.getInstance();
    public android.os.Handler mWorkerHandler;

    private WorkManager() {
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("handleWorkManagerData", 0);
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mWorkerHandler = new android.os.Handler(this.mHandlerThread.getLooper(), new android.os.Handler.Callback() { // from class: com.cndatacom.sdk.portal.manager.WorkManager.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(android.os.Message message) {
                com.cndatacom.sdk.portal.manager.WorkManager.this.handleWorkerMessage(message);
                return true;
            }
        });
    }

    public static com.cndatacom.sdk.portal.manager.WorkManager getInstance() {
        synchronized (com.cndatacom.sdk.portal.manager.WorkManager.class) {
            if (_WorkManager == null) {
                _WorkManager = new com.cndatacom.sdk.portal.manager.WorkManager();
            }
        }
        return _WorkManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWorkerMessage(android.os.Message message) {
        final int i5 = message.what;
        final com.cndatacom.sdk.portal.work.WorkerInfo workerInfo = this.mTasks.get(i5);
        if (workerInfo == null) {
            return;
        }
        this.mThreadPool.submit(new java.lang.Runnable() { // from class: com.cndatacom.sdk.portal.manager.WorkManager.2
            @Override // java.lang.Runnable
            public void run() {
                com.cndatacom.sdk.portal.work.WorkerInfo workerInfo2 = workerInfo;
                if (workerInfo2 != null) {
                    workerInfo2.run();
                }
                if (workerInfo.getPeriod() <= 0 || workerInfo.isForceStop()) {
                    com.cndatacom.sdk.portal.manager.WorkManager.this.mTasks.remove(i5);
                } else {
                    com.cndatacom.sdk.portal.manager.WorkManager.this.mWorkerHandler.sendEmptyMessageDelayed(i5, workerInfo.getPeriod());
                }
            }
        });
    }

    public void cancel(int i5) {
        if (this.mTasks.get(i5) == null) {
            return;
        }
        this.mTasks.remove(i5);
        if (this.mWorkerHandler.hasMessages(i5)) {
            this.mWorkerHandler.removeMessages(i5);
        }
    }

    public void cancelAll() {
        android.util.SparseArray<com.cndatacom.sdk.portal.work.WorkerInfo> sparseArray = this.mTasks;
        if (sparseArray == null || sparseArray.size() <= 0) {
            return;
        }
        this.mWorkerHandler.removeCallbacksAndMessages(null);
        this.mTasks.clear();
    }

    public boolean isTaskRunning(int i5) {
        return this.mTasks.get(i5) != null;
    }

    public void release() {
        android.util.SparseArray<com.cndatacom.sdk.portal.work.WorkerInfo> sparseArray = this.mTasks;
        if (sparseArray != null && sparseArray.size() > 0) {
            this.mTasks.clear();
        }
        android.os.Handler handler = this.mWorkerHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        android.os.HandlerThread handlerThread = this.mHandlerThread;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        java.util.concurrent.ExecutorService executorService = this.mThreadPool;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public void startOneTimeWork(com.cndatacom.sdk.portal.work.WorkerInfo workerInfo) {
        startOneTimeWorkDelayed(workerInfo, 0L);
    }

    public void startOneTimeWorkDelayed(com.cndatacom.sdk.portal.work.WorkerInfo workerInfo, long j5) {
        int taskId = workerInfo.getTaskId();
        this.mTasks.append(taskId, workerInfo);
        this.mWorkerHandler.sendEmptyMessageDelayed(taskId, j5);
    }

    public void startPeriodicWork(long j5, com.cndatacom.sdk.portal.work.WorkerInfo workerInfo) {
        startPeriodicWork(j5, workerInfo, 0L);
    }

    public void startPeriodicWork(long j5, com.cndatacom.sdk.portal.work.WorkerInfo workerInfo, long j6) {
        int taskId = workerInfo.getTaskId();
        workerInfo.setPeriod(j5);
        this.mTasks.append(taskId, workerInfo);
        this.mWorkerHandler.sendEmptyMessageDelayed(taskId, j6);
    }
}
