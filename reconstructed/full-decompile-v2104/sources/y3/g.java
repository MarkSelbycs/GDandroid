package y3;

/* JADX INFO: compiled from: CoroutineExceptionHandlerImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.Collection<t3.c0> f6895a = r3.g.e(r3.e.a(java.util.ServiceLoader.load(t3.c0.class, t3.c0.class.getClassLoader()).iterator()));

    public static final java.util.Collection<t3.c0> a() {
        return f6895a;
    }

    public static final void b(java.lang.Throwable th) {
        java.lang.Thread threadCurrentThread = java.lang.Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }
}
