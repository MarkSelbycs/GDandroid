package com.cndatacom.sdk.portal.work;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class WorkerInfo implements java.lang.Runnable {
    private long period;
    private int taskId = java.util.UUID.randomUUID().toString().hashCode();
    private boolean forceStop = false;

    public long getPeriod() {
        return this.period;
    }

    public int getTaskId() {
        return this.taskId;
    }

    public boolean isForceStop() {
        return this.forceStop;
    }

    @Override // java.lang.Runnable
    public void run() {
        runTask();
    }

    public abstract void runTask();

    public void setForceStop(boolean z4) {
        this.forceStop = z4;
    }

    public void setPeriod(long j5) {
        this.period = j5;
    }
}
