package a1;

/* JADX INFO: compiled from: SynchronousExecutor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class t implements java.util.concurrent.Executor {
    @Override // java.util.concurrent.Executor
    public void execute(java.lang.Runnable runnable) {
        runnable.run();
    }
}
