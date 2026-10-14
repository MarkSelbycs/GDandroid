package t;

/* JADX INFO: compiled from: FontsContractCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g {

    /* JADX INFO: compiled from: FontsContractCompat.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f6136a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final t.g.b[] f6137b;

        @java.lang.Deprecated
        public a(int i5, t.g.b[] bVarArr) {
            this.f6136a = i5;
            this.f6137b = bVarArr;
        }

        public static t.g.a a(int i5, t.g.b[] bVarArr) {
            return new t.g.a(i5, bVarArr);
        }

        public t.g.b[] b() {
            return this.f6137b;
        }

        public int c() {
            return this.f6136a;
        }
    }

    /* JADX INFO: compiled from: FontsContractCompat.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.net.Uri f6138a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f6139b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f6140c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f6141d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f6142e;

        @java.lang.Deprecated
        public b(android.net.Uri uri, int i5, int i6, boolean z4, int i7) {
            this.f6138a = (android.net.Uri) v.h.b(uri);
            this.f6139b = i5;
            this.f6140c = i6;
            this.f6141d = z4;
            this.f6142e = i7;
        }

        public static t.g.b a(android.net.Uri uri, int i5, int i6, boolean z4, int i7) {
            return new t.g.b(uri, i5, i6, z4, i7);
        }

        public int b() {
            return this.f6142e;
        }

        public int c() {
            return this.f6139b;
        }

        public android.net.Uri d() {
            return this.f6138a;
        }

        public int e() {
            return this.f6140c;
        }

        public boolean f() {
            return this.f6141d;
        }
    }

    /* JADX INFO: compiled from: FontsContractCompat.java */
    public static class c {
        public void a(int i5) {
            throw null;
        }

        public void b(android.graphics.Typeface typeface) {
            throw null;
        }
    }

    public static android.graphics.Typeface a(android.content.Context context, t.e eVar, int i5, boolean z4, int i6, android.os.Handler handler, t.g.c cVar) {
        t.a aVar = new t.a(cVar, handler);
        return z4 ? t.f.e(context, eVar, aVar, i5, i6) : t.f.d(context, eVar, i5, null, aVar);
    }
}
