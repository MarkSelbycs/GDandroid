package o;

/* JADX INFO: compiled from: TypefaceCompatBaseImpl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @android.annotation.SuppressLint({"BanConcurrentHashMap"})
    public java.util.concurrent.ConcurrentHashMap<java.lang.Long, n.a.c> f5283a = new java.util.concurrent.ConcurrentHashMap<>();

    /* JADX INFO: compiled from: TypefaceCompatBaseImpl.java */
    public class a implements o.h.b<t.g.b> {
        public a() {
        }

        @Override // o.h.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int a(t.g.b bVar) {
            return bVar.e();
        }

        @Override // o.h.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean b(t.g.b bVar) {
            return bVar.f();
        }
    }

    /* JADX INFO: compiled from: TypefaceCompatBaseImpl.java */
    public interface b<T> {
        int a(T t5);

        boolean b(T t5);
    }

    public static <T> T d(T[] tArr, int i5, o.h.b<T> bVar) {
        return (T) e(tArr, (i5 & 1) == 0 ? 400 : 700, (i5 & 2) != 0, bVar);
    }

    public static <T> T e(T[] tArr, int i5, boolean z4, o.h.b<T> bVar) {
        T t5 = null;
        int i6 = Integer.MAX_VALUE;
        for (T t6 : tArr) {
            int iAbs = (java.lang.Math.abs(bVar.a(t6) - i5) * 2) + (bVar.b(t6) == z4 ? 0 : 1);
            if (t5 == null || i6 > iAbs) {
                t5 = t6;
                i6 = iAbs;
            }
        }
        return t5;
    }

    public android.graphics.Typeface a(android.content.Context context, n.a.c cVar, android.content.res.Resources resources, int i5) {
        throw null;
    }

    public android.graphics.Typeface b(android.content.Context context, android.os.CancellationSignal cancellationSignal, t.g.b[] bVarArr, int i5) {
        throw null;
    }

    public android.graphics.Typeface c(android.content.Context context, android.content.res.Resources resources, int i5, java.lang.String str, int i6) {
        java.io.File fileD = o.i.d(context);
        if (fileD == null) {
            return null;
        }
        try {
            if (o.i.b(fileD, resources, i5)) {
                return android.graphics.Typeface.createFromFile(fileD.getPath());
            }
            return null;
        } catch (java.lang.RuntimeException unused) {
            return null;
        } finally {
            fileD.delete();
        }
    }

    public t.g.b f(t.g.b[] bVarArr, int i5) {
        return (t.g.b) d(bVarArr, i5, new o.h.a());
    }
}
