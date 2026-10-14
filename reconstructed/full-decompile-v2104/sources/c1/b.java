package c1;

/* JADX INFO: compiled from: TaskExecutor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface b {
    default void a(java.lang.Runnable runnable) {
        c().execute(runnable);
    }

    java.util.concurrent.Executor b();

    c1.a c();

    default t3.b0 d() {
        return t3.b1.a(c());
    }
}
