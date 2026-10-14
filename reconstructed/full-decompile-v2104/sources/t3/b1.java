package t3;

/* JADX INFO: compiled from: Executors.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b1 {
    public static final t3.b0 a(java.util.concurrent.Executor executor) {
        t3.b0 b0Var;
        t3.p0 p0Var = executor instanceof t3.p0 ? (t3.p0) executor : null;
        return (p0Var == null || (b0Var = p0Var.f6223a) == null) ? new t3.a1(executor) : b0Var;
    }
}
