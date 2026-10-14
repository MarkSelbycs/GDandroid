package androidx.lifecycle;

/* JADX INFO: compiled from: LifecycleRegistry.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h extends androidx.lifecycle.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public h.a<androidx.lifecycle.f, androidx.lifecycle.h.a> f1780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.lifecycle.d.c f1781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.ref.WeakReference<androidx.lifecycle.g> f1782d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1784f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1785g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public java.util.ArrayList<androidx.lifecycle.d.c> f1786h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f1787i;

    /* JADX INFO: compiled from: LifecycleRegistry.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.lifecycle.d.c f1788a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.lifecycle.e f1789b;

        public void a(androidx.lifecycle.g gVar, androidx.lifecycle.d.b bVar) {
            androidx.lifecycle.d.c cVarE = bVar.e();
            this.f1788a = androidx.lifecycle.h.i(this.f1788a, cVarE);
            this.f1789b.d(gVar, bVar);
            this.f1788a = cVarE;
        }
    }

    public h(androidx.lifecycle.g gVar) {
        this(gVar, true);
    }

    public static androidx.lifecycle.d.c i(androidx.lifecycle.d.c cVar, androidx.lifecycle.d.c cVar2) {
        return (cVar2 == null || cVar2.compareTo(cVar) >= 0) ? cVar : cVar2;
    }

    @Override // androidx.lifecycle.d
    public androidx.lifecycle.d.c a() {
        return this.f1781c;
    }

    @Override // androidx.lifecycle.d
    public void b(androidx.lifecycle.f fVar) {
        d("removeObserver");
        this.f1780b.h(fVar);
    }

    public final void c(androidx.lifecycle.g gVar) {
        java.util.Iterator<java.util.Map.Entry<androidx.lifecycle.f, androidx.lifecycle.h.a>> itA = this.f1780b.a();
        while (itA.hasNext() && !this.f1785g) {
            java.util.Map.Entry<androidx.lifecycle.f, androidx.lifecycle.h.a> next = itA.next();
            androidx.lifecycle.h.a value = next.getValue();
            while (value.f1788a.compareTo(this.f1781c) > 0 && !this.f1785g && this.f1780b.contains(next.getKey())) {
                androidx.lifecycle.d.b bVarB = androidx.lifecycle.d.b.b(value.f1788a);
                if (bVarB == null) {
                    throw new java.lang.IllegalStateException("no event down from " + value.f1788a);
                }
                l(bVarB.e());
                value.a(gVar, bVarB);
                k();
            }
        }
    }

    @android.annotation.SuppressLint({"RestrictedApi"})
    public final void d(java.lang.String str) {
        if (!this.f1787i || g.a.e().b()) {
            return;
        }
        throw new java.lang.IllegalStateException("Method " + str + " must be called on the main thread");
    }

    public final void e(androidx.lifecycle.g gVar) {
        h.b<androidx.lifecycle.f, androidx.lifecycle.h.a>.d dVarD = this.f1780b.d();
        while (dVarD.hasNext() && !this.f1785g) {
            java.util.Map.Entry next = dVarD.next();
            androidx.lifecycle.h.a aVar = (androidx.lifecycle.h.a) next.getValue();
            while (aVar.f1788a.compareTo(this.f1781c) < 0 && !this.f1785g && this.f1780b.contains((androidx.lifecycle.f) next.getKey())) {
                l(aVar.f1788a);
                androidx.lifecycle.d.b bVarF = androidx.lifecycle.d.b.f(aVar.f1788a);
                if (bVarF == null) {
                    throw new java.lang.IllegalStateException("no event up from " + aVar.f1788a);
                }
                aVar.a(gVar, bVarF);
                k();
            }
        }
    }

    public void f(androidx.lifecycle.d.b bVar) {
        d("handleLifecycleEvent");
        j(bVar.e());
    }

    public final boolean g() {
        if (this.f1780b.size() == 0) {
            return true;
        }
        androidx.lifecycle.d.c cVar = this.f1780b.b().getValue().f1788a;
        androidx.lifecycle.d.c cVar2 = this.f1780b.e().getValue().f1788a;
        return cVar == cVar2 && this.f1781c == cVar2;
    }

    @java.lang.Deprecated
    public void h(androidx.lifecycle.d.c cVar) {
        d("markState");
        m(cVar);
    }

    public final void j(androidx.lifecycle.d.c cVar) {
        androidx.lifecycle.d.c cVar2 = this.f1781c;
        if (cVar2 == cVar) {
            return;
        }
        if (cVar2 == androidx.lifecycle.d.c.INITIALIZED && cVar == androidx.lifecycle.d.c.DESTROYED) {
            throw new java.lang.IllegalStateException("no event down from " + this.f1781c);
        }
        this.f1781c = cVar;
        if (this.f1784f || this.f1783e != 0) {
            this.f1785g = true;
            return;
        }
        this.f1784f = true;
        n();
        this.f1784f = false;
        if (this.f1781c == androidx.lifecycle.d.c.DESTROYED) {
            this.f1780b = new h.a<>();
        }
    }

    public final void k() {
        java.util.ArrayList<androidx.lifecycle.d.c> arrayList = this.f1786h;
        arrayList.remove(arrayList.size() - 1);
    }

    public final void l(androidx.lifecycle.d.c cVar) {
        this.f1786h.add(cVar);
    }

    public void m(androidx.lifecycle.d.c cVar) {
        d("setCurrentState");
        j(cVar);
    }

    public final void n() {
        androidx.lifecycle.g gVar = this.f1782d.get();
        if (gVar == null) {
            throw new java.lang.IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (!g()) {
            this.f1785g = false;
            if (this.f1781c.compareTo(this.f1780b.b().getValue().f1788a) < 0) {
                c(gVar);
            }
            java.util.Map.Entry<androidx.lifecycle.f, androidx.lifecycle.h.a> entryE = this.f1780b.e();
            if (!this.f1785g && entryE != null && this.f1781c.compareTo(entryE.getValue().f1788a) > 0) {
                e(gVar);
            }
        }
        this.f1785g = false;
    }

    public h(androidx.lifecycle.g gVar, boolean z4) {
        this.f1780b = new h.a<>();
        this.f1783e = 0;
        this.f1784f = false;
        this.f1785g = false;
        this.f1786h = new java.util.ArrayList<>();
        this.f1782d = new java.lang.ref.WeakReference<>(gVar);
        this.f1781c = androidx.lifecycle.d.c.INITIALIZED;
        this.f1787i = z4;
    }
}
