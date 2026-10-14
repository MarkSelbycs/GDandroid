package y3;

/* JADX INFO: compiled from: MainDispatchers.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f6951a = true;

    public static final y3.y a(java.lang.Throwable th, java.lang.String str) throws java.lang.Throwable {
        if (f6951a) {
            return new y3.y(th, str);
        }
        if (th != null) {
            throw th;
        }
        d();
        throw new a3.c();
    }

    public static /* synthetic */ y3.y b(java.lang.Throwable th, java.lang.String str, int i5, java.lang.Object obj) {
        if ((i5 & 1) != 0) {
            th = null;
        }
        if ((i5 & 2) != 0) {
            str = null;
        }
        return a(th, str);
    }

    public static final boolean c(t3.r1 r1Var) {
        return r1Var.r() instanceof y3.y;
    }

    public static final java.lang.Void d() {
        throw new java.lang.IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    public static final t3.r1 e(y3.v vVar, java.util.List<? extends y3.v> list) {
        try {
            return vVar.c(list);
        } catch (java.lang.Throwable th) {
            return a(th, vVar.b());
        }
    }
}
