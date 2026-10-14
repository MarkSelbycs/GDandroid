package androidx.recyclerview.widget;

/* JADX INFO: compiled from: ViewBoundsCheck.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.recyclerview.widget.l.b f2171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.recyclerview.widget.l.a f2172b = new androidx.recyclerview.widget.l.a();

    /* JADX INFO: compiled from: ViewBoundsCheck.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2173a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2174b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2175c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2176d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2177e;

        public void a(int i5) {
            this.f2173a = i5 | this.f2173a;
        }

        public boolean b() {
            int i5 = this.f2173a;
            if ((i5 & 7) != 0 && (i5 & (c(this.f2176d, this.f2174b) << 0)) == 0) {
                return false;
            }
            int i6 = this.f2173a;
            if ((i6 & 112) != 0 && (i6 & (c(this.f2176d, this.f2175c) << 4)) == 0) {
                return false;
            }
            int i7 = this.f2173a;
            if ((i7 & 1792) != 0 && (i7 & (c(this.f2177e, this.f2174b) << 8)) == 0) {
                return false;
            }
            int i8 = this.f2173a;
            return (i8 & 28672) == 0 || (i8 & (c(this.f2177e, this.f2175c) << 12)) != 0;
        }

        public int c(int i5, int i6) {
            if (i5 > i6) {
                return 1;
            }
            return i5 == i6 ? 2 : 4;
        }

        public void d() {
            this.f2173a = 0;
        }

        public void e(int i5, int i6, int i7, int i8) {
            this.f2174b = i5;
            this.f2175c = i6;
            this.f2176d = i7;
            this.f2177e = i8;
        }
    }

    /* JADX INFO: compiled from: ViewBoundsCheck.java */
    public interface b {
        android.view.View a(int i5);

        int b();

        int c();

        int d(android.view.View view);

        int e(android.view.View view);
    }

    public l(androidx.recyclerview.widget.l.b bVar) {
        this.f2171a = bVar;
    }

    public android.view.View a(int i5, int i6, int i7, int i8) {
        int iC = this.f2171a.c();
        int iB = this.f2171a.b();
        int i9 = i6 > i5 ? 1 : -1;
        android.view.View view = null;
        while (i5 != i6) {
            android.view.View viewA = this.f2171a.a(i5);
            this.f2172b.e(iC, iB, this.f2171a.e(viewA), this.f2171a.d(viewA));
            if (i7 != 0) {
                this.f2172b.d();
                this.f2172b.a(i7);
                if (this.f2172b.b()) {
                    return viewA;
                }
            }
            if (i8 != 0) {
                this.f2172b.d();
                this.f2172b.a(i8);
                if (this.f2172b.b()) {
                    view = viewA;
                }
            }
            i5 += i9;
        }
        return view;
    }

    public boolean b(android.view.View view, int i5) {
        this.f2172b.e(this.f2171a.c(), this.f2171a.b(), this.f2171a.e(view), this.f2171a.d(view));
        if (i5 == 0) {
            return false;
        }
        this.f2172b.d();
        this.f2172b.a(i5);
        return this.f2172b.b();
    }
}
