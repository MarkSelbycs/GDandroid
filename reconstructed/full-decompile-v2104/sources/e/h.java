package e;

/* JADX INFO: compiled from: ViewPropertyAnimatorCompatSet.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.view.animation.Interpolator f4030c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public w.x f4031d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4032e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f4029b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final w.y f4033f = new e.h.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.ArrayList<w.w> f4028a = new java.util.ArrayList<>();

    /* JADX INFO: compiled from: ViewPropertyAnimatorCompatSet.java */
    public class a extends w.y {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f4034a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4035b = 0;

        public a() {
        }

        @Override // w.x
        public void a(android.view.View view) {
            int i5 = this.f4035b + 1;
            this.f4035b = i5;
            if (i5 == e.h.this.f4028a.size()) {
                w.x xVar = e.h.this.f4031d;
                if (xVar != null) {
                    xVar.a(null);
                }
                d();
            }
        }

        @Override // w.y, w.x
        public void b(android.view.View view) {
            if (this.f4034a) {
                return;
            }
            this.f4034a = true;
            w.x xVar = e.h.this.f4031d;
            if (xVar != null) {
                xVar.b(null);
            }
        }

        public void d() {
            this.f4035b = 0;
            this.f4034a = false;
            e.h.this.b();
        }
    }

    public void a() {
        if (this.f4032e) {
            java.util.Iterator<w.w> it = this.f4028a.iterator();
            while (it.hasNext()) {
                it.next().c();
            }
            this.f4032e = false;
        }
    }

    public void b() {
        this.f4032e = false;
    }

    public e.h c(w.w wVar) {
        if (!this.f4032e) {
            this.f4028a.add(wVar);
        }
        return this;
    }

    public e.h d(w.w wVar, w.w wVar2) {
        this.f4028a.add(wVar);
        wVar2.j(wVar.d());
        this.f4028a.add(wVar2);
        return this;
    }

    public e.h e(long j5) {
        if (!this.f4032e) {
            this.f4029b = j5;
        }
        return this;
    }

    public e.h f(android.view.animation.Interpolator interpolator) {
        if (!this.f4032e) {
            this.f4030c = interpolator;
        }
        return this;
    }

    public e.h g(w.x xVar) {
        if (!this.f4032e) {
            this.f4031d = xVar;
        }
        return this;
    }

    public void h() {
        if (this.f4032e) {
            return;
        }
        for (w.w wVar : this.f4028a) {
            long j5 = this.f4029b;
            if (j5 >= 0) {
                wVar.f(j5);
            }
            android.view.animation.Interpolator interpolator = this.f4030c;
            if (interpolator != null) {
                wVar.g(interpolator);
            }
            if (this.f4031d != null) {
                wVar.h(this.f4033f);
            }
            wVar.l();
        }
        this.f4032e = true;
    }
}
