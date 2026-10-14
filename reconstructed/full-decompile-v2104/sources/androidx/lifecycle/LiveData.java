package androidx.lifecycle;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class LiveData<T> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final java.lang.Object f1750k = new java.lang.Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object f1751a = new java.lang.Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public h.b<androidx.lifecycle.l<? super T>, androidx.lifecycle.LiveData<T>.b> f1752b = new h.b<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1753c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile java.lang.Object f1755e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile java.lang.Object f1756f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1757g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1758h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1759i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final java.lang.Runnable f1760j;

    public class LifecycleBoundObserver extends androidx.lifecycle.LiveData<T>.b implements androidx.lifecycle.e {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final androidx.lifecycle.g f1761e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ androidx.lifecycle.LiveData f1762f;

        @Override // androidx.lifecycle.e
        public void d(androidx.lifecycle.g gVar, androidx.lifecycle.d.b bVar) {
            androidx.lifecycle.d.c cVarA = this.f1761e.getLifecycle().a();
            if (cVarA == androidx.lifecycle.d.c.DESTROYED) {
                this.f1762f.h(this.f1764a);
                return;
            }
            androidx.lifecycle.d.c cVar = null;
            while (cVar != cVarA) {
                h(j());
                cVar = cVarA;
                cVarA = this.f1761e.getLifecycle().a();
            }
        }

        @Override // androidx.lifecycle.LiveData.b
        public void i() {
            this.f1761e.getLifecycle().b(this);
        }

        @Override // androidx.lifecycle.LiveData.b
        public boolean j() {
            return this.f1761e.getLifecycle().a().b(androidx.lifecycle.d.c.STARTED);
        }
    }

    public class a implements java.lang.Runnable {
        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            java.lang.Object obj;
            synchronized (androidx.lifecycle.LiveData.this.f1751a) {
                obj = androidx.lifecycle.LiveData.this.f1756f;
                androidx.lifecycle.LiveData.this.f1756f = androidx.lifecycle.LiveData.f1750k;
            }
            androidx.lifecycle.LiveData.this.i(obj);
        }
    }

    public abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.lifecycle.l<? super T> f1764a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1765b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1766c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ androidx.lifecycle.LiveData f1767d;

        public void h(boolean z4) {
            if (z4 == this.f1765b) {
                return;
            }
            this.f1765b = z4;
            this.f1767d.b(z4 ? 1 : -1);
            if (this.f1765b) {
                this.f1767d.d(this);
            }
        }

        public void i() {
        }

        public abstract boolean j();
    }

    public LiveData() {
        java.lang.Object obj = f1750k;
        this.f1756f = obj;
        this.f1760j = new androidx.lifecycle.LiveData.a();
        this.f1755e = obj;
        this.f1757g = -1;
    }

    public static void a(java.lang.String str) {
        if (g.a.e().b()) {
            return;
        }
        throw new java.lang.IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    public void b(int i5) {
        int i6 = this.f1753c;
        this.f1753c = i5 + i6;
        if (this.f1754d) {
            return;
        }
        this.f1754d = true;
        while (true) {
            try {
                int i7 = this.f1753c;
                if (i6 == i7) {
                    this.f1754d = false;
                    return;
                }
                boolean z4 = i6 == 0 && i7 > 0;
                boolean z5 = i6 > 0 && i7 == 0;
                if (z4) {
                    e();
                } else if (z5) {
                    f();
                }
                i6 = i7;
            } catch (java.lang.Throwable th) {
                this.f1754d = false;
                throw th;
            }
        }
    }

    public final void c(androidx.lifecycle.LiveData<T>.b bVar) {
        if (bVar.f1765b) {
            if (!bVar.j()) {
                bVar.h(false);
                return;
            }
            int i5 = bVar.f1766c;
            int i6 = this.f1757g;
            if (i5 >= i6) {
                return;
            }
            bVar.f1766c = i6;
            bVar.f1764a.a((java.lang.Object) this.f1755e);
        }
    }

    public void d(androidx.lifecycle.LiveData<T>.b bVar) {
        if (this.f1758h) {
            this.f1759i = true;
            return;
        }
        this.f1758h = true;
        do {
            this.f1759i = false;
            if (bVar != null) {
                c(bVar);
                bVar = null;
            } else {
                h.b<androidx.lifecycle.l<? super T>, androidx.lifecycle.LiveData<T>.b>.d dVarD = this.f1752b.d();
                while (dVarD.hasNext()) {
                    c((androidx.lifecycle.LiveData.b) dVarD.next().getValue());
                    if (this.f1759i) {
                        break;
                    }
                }
            }
        } while (this.f1759i);
        this.f1758h = false;
    }

    public void e() {
    }

    public void f() {
    }

    public void g(T t5) {
        boolean z4;
        synchronized (this.f1751a) {
            z4 = this.f1756f == f1750k;
            this.f1756f = t5;
        }
        if (z4) {
            g.a.e().c(this.f1760j);
        }
    }

    public void h(androidx.lifecycle.l<? super T> lVar) {
        a("removeObserver");
        androidx.lifecycle.LiveData<T>.b bVarH = this.f1752b.h(lVar);
        if (bVarH == null) {
            return;
        }
        bVarH.i();
        bVarH.h(false);
    }

    public void i(T t5) {
        a("setValue");
        this.f1757g++;
        this.f1755e = t5;
        d(null);
    }
}
