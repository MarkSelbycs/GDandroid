package t3;

/* JADX INFO: compiled from: DebugStrings.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i0 {
    public static final java.lang.String a(java.lang.Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final java.lang.String b(java.lang.Object obj) {
        return java.lang.Integer.toHexString(java.lang.System.identityHashCode(obj));
    }

    public static final java.lang.String c(d3.d<?> dVar) {
        java.lang.Object objB;
        if (dVar instanceof y3.j) {
            return dVar.toString();
        }
        try {
            a3.i.a aVar = a3.i.f116a;
            objB = a3.i.b(dVar + '@' + b(dVar));
        } catch (java.lang.Throwable th) {
            a3.i.a aVar2 = a3.i.f116a;
            objB = a3.i.b(a3.j.a(th));
        }
        if (a3.i.c(objB) != null) {
            objB = dVar.getClass().getName() + '@' + b(dVar);
        }
        return (java.lang.String) objB;
    }
}
