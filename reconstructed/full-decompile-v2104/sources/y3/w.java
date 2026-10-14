package y3;

/* JADX INFO: compiled from: MainDispatchers.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y3.w f6948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f6949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final t3.r1 f6950c;

    static {
        y3.w wVar = new y3.w();
        f6948a = wVar;
        f6949b = y3.i0.f("kotlinx.coroutines.fast.service.loader", true);
        f6950c = wVar.a();
    }

    public final t3.r1 a() {
        java.lang.Object next;
        t3.r1 r1VarE;
        try {
            java.util.List<y3.v> listC = f6949b ? y3.l.f6909a.c() : r3.g.e(r3.e.a(java.util.ServiceLoader.load(y3.v.class, y3.v.class.getClassLoader()).iterator()));
            java.util.Iterator<T> it = listC.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int iA = ((y3.v) next).a();
                    do {
                        java.lang.Object next2 = it.next();
                        int iA2 = ((y3.v) next2).a();
                        if (iA < iA2) {
                            next = next2;
                            iA = iA2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            y3.v vVar = (y3.v) next;
            return (vVar == null || (r1VarE = y3.x.e(vVar, listC)) == null) ? y3.x.b(null, null, 3, null) : r1VarE;
        } catch (java.lang.Throwable th) {
            return y3.x.b(th, null, 2, null);
        }
    }
}
