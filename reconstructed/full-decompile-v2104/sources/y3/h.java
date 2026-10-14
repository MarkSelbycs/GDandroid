package y3;

/* JADX INFO: compiled from: CoroutineExceptionHandlerImpl.common.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h {
    public static final void a(d3.g gVar, java.lang.Throwable th) {
        java.util.Iterator<t3.c0> it = y3.g.a().iterator();
        while (it.hasNext()) {
            try {
                it.next().u(gVar, th);
            } catch (java.lang.Throwable th2) {
                y3.g.b(t3.d0.b(th, th2));
            }
        }
        try {
            a3.a.a(th, new y3.i(gVar));
        } catch (java.lang.Throwable unused) {
        }
        y3.g.b(th);
    }
}
