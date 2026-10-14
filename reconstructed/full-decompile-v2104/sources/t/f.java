package t;

/* JADX INFO: compiled from: FontRequestWorker.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j.e<java.lang.String, android.graphics.Typeface> f6120a = new j.e<>(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.concurrent.ExecutorService f6121b = t.h.a("fonts-androidx", 10, 10000);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.lang.Object f6122c = new java.lang.Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final j.g<java.lang.String, java.util.ArrayList<v.a<t.f.e>>> f6123d = new j.g<>();

    /* JADX INFO: compiled from: FontRequestWorker.java */
    public class a implements java.util.concurrent.Callable<t.f.e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f6124a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.content.Context f6125b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ t.e f6126c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f6127d;

        public a(java.lang.String str, android.content.Context context, t.e eVar, int i5) {
            this.f6124a = str;
            this.f6125b = context;
            this.f6126c = eVar;
            this.f6127d = i5;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public t.f.e call() {
            return t.f.c(this.f6124a, this.f6125b, this.f6126c, this.f6127d);
        }
    }

    /* JADX INFO: compiled from: FontRequestWorker.java */
    public class b implements v.a<t.f.e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ t.a f6128a;

        public b(t.a aVar) {
            this.f6128a = aVar;
        }

        @Override // v.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(t.f.e eVar) {
            if (eVar == null) {
                eVar = new t.f.e(-3);
            }
            this.f6128a.b(eVar);
        }
    }

    /* JADX INFO: compiled from: FontRequestWorker.java */
    public class c implements java.util.concurrent.Callable<t.f.e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f6129a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.content.Context f6130b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ t.e f6131c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f6132d;

        public c(java.lang.String str, android.content.Context context, t.e eVar, int i5) {
            this.f6129a = str;
            this.f6130b = context;
            this.f6131c = eVar;
            this.f6132d = i5;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public t.f.e call() {
            try {
                return t.f.c(this.f6129a, this.f6130b, this.f6131c, this.f6132d);
            } catch (java.lang.Throwable unused) {
                return new t.f.e(-3);
            }
        }
    }

    /* JADX INFO: compiled from: FontRequestWorker.java */
    public class d implements v.a<t.f.e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f6133a;

        public d(java.lang.String str) {
            this.f6133a = str;
        }

        @Override // v.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(t.f.e eVar) {
            synchronized (t.f.f6122c) {
                j.g<java.lang.String, java.util.ArrayList<v.a<t.f.e>>> gVar = t.f.f6123d;
                java.util.ArrayList<v.a<t.f.e>> arrayList = gVar.get(this.f6133a);
                if (arrayList == null) {
                    return;
                }
                gVar.remove(this.f6133a);
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    arrayList.get(i5).accept(eVar);
                }
            }
        }
    }

    public static java.lang.String a(t.e eVar, int i5) {
        return eVar.d() + "-" + i5;
    }

    @android.annotation.SuppressLint({"WrongConstant"})
    public static int b(t.g.a aVar) {
        int i5 = 1;
        if (aVar.c() != 0) {
            return aVar.c() != 1 ? -3 : -2;
        }
        t.g.b[] bVarArrB = aVar.b();
        if (bVarArrB != null && bVarArrB.length != 0) {
            i5 = 0;
            for (t.g.b bVar : bVarArrB) {
                int iB = bVar.b();
                if (iB != 0) {
                    if (iB < 0) {
                        return -3;
                    }
                    return iB;
                }
            }
        }
        return i5;
    }

    public static t.f.e c(java.lang.String str, android.content.Context context, t.e eVar, int i5) {
        j.e<java.lang.String, android.graphics.Typeface> eVar2 = f6120a;
        android.graphics.Typeface typefaceC = eVar2.c(str);
        if (typefaceC != null) {
            return new t.f.e(typefaceC);
        }
        try {
            t.g.a aVarE = t.d.e(context, eVar, null);
            int iB = b(aVarE);
            if (iB != 0) {
                return new t.f.e(iB);
            }
            android.graphics.Typeface typefaceA = o.c.a(context, null, aVarE.b(), i5);
            if (typefaceA == null) {
                return new t.f.e(-3);
            }
            eVar2.d(str, typefaceA);
            return new t.f.e(typefaceA);
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            return new t.f.e(-1);
        }
    }

    public static android.graphics.Typeface d(android.content.Context context, t.e eVar, int i5, java.util.concurrent.Executor executor, t.a aVar) {
        java.lang.String strA = a(eVar, i5);
        android.graphics.Typeface typefaceC = f6120a.c(strA);
        if (typefaceC != null) {
            aVar.b(new t.f.e(typefaceC));
            return typefaceC;
        }
        t.f.b bVar = new t.f.b(aVar);
        synchronized (f6122c) {
            j.g<java.lang.String, java.util.ArrayList<v.a<t.f.e>>> gVar = f6123d;
            java.util.ArrayList<v.a<t.f.e>> arrayList = gVar.get(strA);
            if (arrayList != null) {
                arrayList.add(bVar);
                return null;
            }
            java.util.ArrayList<v.a<t.f.e>> arrayList2 = new java.util.ArrayList<>();
            arrayList2.add(bVar);
            gVar.put(strA, arrayList2);
            t.f.c cVar = new t.f.c(strA, context, eVar, i5);
            if (executor == null) {
                executor = f6121b;
            }
            t.h.b(executor, cVar, new t.f.d(strA));
            return null;
        }
    }

    public static android.graphics.Typeface e(android.content.Context context, t.e eVar, t.a aVar, int i5, int i6) {
        java.lang.String strA = a(eVar, i5);
        android.graphics.Typeface typefaceC = f6120a.c(strA);
        if (typefaceC != null) {
            aVar.b(new t.f.e(typefaceC));
            return typefaceC;
        }
        if (i6 == -1) {
            t.f.e eVarC = c(strA, context, eVar, i5);
            aVar.b(eVarC);
            return eVarC.f6134a;
        }
        try {
            t.f.e eVar2 = (t.f.e) t.h.c(f6121b, new t.f.a(strA, context, eVar, i5), i6);
            aVar.b(eVar2);
            return eVar2.f6134a;
        } catch (java.lang.InterruptedException unused) {
            aVar.b(new t.f.e(-3));
            return null;
        }
    }

    /* JADX INFO: compiled from: FontRequestWorker.java */
    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.graphics.Typeface f6134a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f6135b;

        public e(int i5) {
            this.f6134a = null;
            this.f6135b = i5;
        }

        @android.annotation.SuppressLint({"WrongConstant"})
        public boolean a() {
            return this.f6135b == 0;
        }

        @android.annotation.SuppressLint({"WrongConstant"})
        public e(android.graphics.Typeface typeface) {
            this.f6134a = typeface;
            this.f6135b = 0;
        }
    }
}
