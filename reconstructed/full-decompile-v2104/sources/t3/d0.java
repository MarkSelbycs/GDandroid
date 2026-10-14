package t3;

/* JADX INFO: compiled from: CoroutineExceptionHandler.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d0 {
    public static final void a(d3.g gVar, java.lang.Throwable th) {
        try {
            t3.c0 c0Var = (t3.c0) gVar.c(t3.c0.f6175l);
            if (c0Var != null) {
                c0Var.u(gVar, th);
            } else {
                y3.h.a(gVar, th);
            }
        } catch (java.lang.Throwable th2) {
            y3.h.a(gVar, b(th, th2));
        }
    }

    public static final java.lang.Throwable b(java.lang.Throwable th, java.lang.Throwable th2) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        if (th == th2) {
            return th;
        }
        java.lang.RuntimeException runtimeException = new java.lang.RuntimeException("Exception while trying to handle coroutine exception", th2);
        a3.a.a(runtimeException, th);
        return runtimeException;
    }
}
