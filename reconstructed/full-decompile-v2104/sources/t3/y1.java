package t3;

/* JADX INFO: compiled from: EventLoop.common.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class y1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t3.y1 f6259a = new t3.y1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.ThreadLocal<t3.t0> f6260b = y3.m0.a(new y3.h0("ThreadLocalEventLoop"));

    public final t3.t0 a() {
        java.lang.ThreadLocal<t3.t0> threadLocal = f6260b;
        t3.t0 t0Var = threadLocal.get();
        if (t0Var != null) {
            return t0Var;
        }
        t3.t0 t0VarA = t3.w0.a();
        threadLocal.set(t0VarA);
        return t0VarA;
    }

    public final void b() {
        f6260b.set(null);
    }

    public final void c(t3.t0 t0Var) {
        f6260b.set(t0Var);
    }
}
