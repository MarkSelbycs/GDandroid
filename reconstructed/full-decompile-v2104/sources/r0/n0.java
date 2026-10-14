package r0;

/* JADX INFO: compiled from: WorkLauncher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface n0 {
    default void a(r0.a0 a0Var, int i5) {
        m3.k.e(a0Var, "workSpecId");
        c(a0Var, i5);
    }

    default void b(r0.a0 a0Var) {
        m3.k.e(a0Var, "workSpecId");
        c(a0Var, -512);
    }

    void c(r0.a0 a0Var, int i5);

    void d(r0.a0 a0Var, androidx.work.WorkerParameters.a aVar);

    default void e(r0.a0 a0Var) {
        m3.k.e(a0Var, "workSpecId");
        d(a0Var, null);
    }
}
