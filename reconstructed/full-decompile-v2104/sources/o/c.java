package o;

/* JADX INFO: compiled from: TypefaceCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o.h f5268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final j.e<java.lang.String, android.graphics.Typeface> f5269b;

    /* JADX INFO: compiled from: TypefaceCompat.java */
    public static class a extends t.g.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public n.d.a f5270a;

        public a(n.d.a aVar) {
            this.f5270a = aVar;
        }

        @Override // t.g.c
        public void a(int i5) {
            n.d.a aVar = this.f5270a;
            if (aVar != null) {
                aVar.f(i5);
            }
        }

        @Override // t.g.c
        public void b(android.graphics.Typeface typeface) {
            n.d.a aVar = this.f5270a;
            if (aVar != null) {
                aVar.g(typeface);
            }
        }
    }

    static {
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            f5268a = new o.g();
        } else {
            f5268a = new o.f();
        }
        f5269b = new j.e<>(16);
    }

    public static android.graphics.Typeface a(android.content.Context context, android.os.CancellationSignal cancellationSignal, t.g.b[] bVarArr, int i5) {
        return f5268a.b(context, cancellationSignal, bVarArr, i5);
    }

    public static android.graphics.Typeface b(android.content.Context context, n.a.b bVar, android.content.res.Resources resources, int i5, java.lang.String str, int i6, int i7, n.d.a aVar, android.os.Handler handler, boolean z4) {
        android.graphics.Typeface typefaceA;
        if (bVar instanceof n.a.e) {
            n.a.e eVar = (n.a.e) bVar;
            android.graphics.Typeface typefaceF = f(eVar.c());
            if (typefaceF != null) {
                if (aVar != null) {
                    aVar.d(typefaceF, handler);
                }
                return typefaceF;
            }
            boolean z5 = !z4 ? aVar != null : eVar.a() != 0;
            int iD = z4 ? eVar.d() : -1;
            typefaceA = t.g.a(context, eVar.b(), i7, z5, iD, n.d.a.e(handler), new o.c.a(aVar));
        } else {
            typefaceA = f5268a.a(context, (n.a.c) bVar, resources, i7);
            if (aVar != null) {
                if (typefaceA != null) {
                    aVar.d(typefaceA, handler);
                } else {
                    aVar.c(-3, handler);
                }
            }
        }
        if (typefaceA != null) {
            f5269b.d(d(resources, i5, str, i6, i7), typefaceA);
        }
        return typefaceA;
    }

    public static android.graphics.Typeface c(android.content.Context context, android.content.res.Resources resources, int i5, java.lang.String str, int i6, int i7) {
        android.graphics.Typeface typefaceC = f5268a.c(context, resources, i5, str, i7);
        if (typefaceC != null) {
            f5269b.d(d(resources, i5, str, i6, i7), typefaceC);
        }
        return typefaceC;
    }

    public static java.lang.String d(android.content.res.Resources resources, int i5, java.lang.String str, int i6, int i7) {
        return resources.getResourcePackageName(i5) + '-' + str + '-' + i6 + '-' + i5 + '-' + i7;
    }

    public static android.graphics.Typeface e(android.content.res.Resources resources, int i5, java.lang.String str, int i6, int i7) {
        return f5269b.c(d(resources, i5, str, i6, i7));
    }

    public static android.graphics.Typeface f(java.lang.String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        android.graphics.Typeface typefaceCreate = android.graphics.Typeface.create(str, 0);
        android.graphics.Typeface typefaceCreate2 = android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 0);
        if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
            return null;
        }
        return typefaceCreate;
    }
}
