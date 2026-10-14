package b1;

/* JADX INFO: compiled from: DirectExecutor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum b implements java.util.concurrent.Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public void execute(java.lang.Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public java.lang.String toString() {
        return "DirectExecutor";
    }
}
