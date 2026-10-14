package t4;

/* JADX INFO: compiled from: WorkerTask.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface k extends java.lang.Runnable {
    void interrupt();

    void join() throws java.lang.InterruptedException;

    void terminate();
}
