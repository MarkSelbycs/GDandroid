package b4;

/* JADX INFO: compiled from: Select.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a<R> extends t3.h implements b4.b, t3.c2 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f2951f = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(b4.a.class, java.lang.Object.class, "state");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d3.g f2952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.util.List<b4.a<R>.C0031a> f2953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.Object f2954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2955d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.lang.Object f2956e;
    private volatile java.lang.Object state;

    /* JADX INFO: renamed from: b4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Select.kt */
    public final class C0031a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.Object f2957a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.Object f2958b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final l3.q<b4.b<?>, java.lang.Object, java.lang.Object, l3.l<java.lang.Throwable, a3.o>> f2959c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.lang.Object f2960d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2961e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ b4.a<R> f2962f;

        public final l3.l<java.lang.Throwable, a3.o> a(b4.b<?> bVar, java.lang.Object obj) {
            l3.q<b4.b<?>, java.lang.Object, java.lang.Object, l3.l<java.lang.Throwable, a3.o>> qVar = this.f2959c;
            if (qVar != null) {
                return qVar.q(bVar, this.f2958b, obj);
            }
            return null;
        }

        public final void b() {
            java.lang.Object obj = this.f2960d;
            b4.a<R> aVar = this.f2962f;
            if (obj instanceof y3.e0) {
                ((y3.e0) obj).o(this.f2961e, null, aVar.b());
                return;
            }
            t3.r0 r0Var = obj instanceof t3.r0 ? (t3.r0) obj : null;
            if (r0Var != null) {
                r0Var.d();
            }
        }
    }

    @Override // b4.b
    public boolean a(java.lang.Object obj, java.lang.Object obj2) {
        return k(obj, obj2) == 0;
    }

    @Override // b4.b
    public d3.g b() {
        return this.f2952a;
    }

    @Override // t3.c2
    public void d(y3.e0<?> e0Var, int i5) {
        this.f2954c = e0Var;
        this.f2955d = i5;
    }

    @Override // t3.i
    public void f(java.lang.Throwable th) {
        java.lang.Object obj;
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2951f;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (obj == b4.c.f2965c) {
                return;
            }
        } while (!a4.n.a(atomicReferenceFieldUpdater, this, obj, b4.c.f2966d));
        java.util.List<b4.a<R>.C0031a> list = this.f2953b;
        if (list == null) {
            return;
        }
        java.util.Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ((b4.a.C0031a) it.next()).b();
        }
        this.f2956e = b4.c.f2967e;
        this.f2953b = null;
    }

    public final b4.a<R>.C0031a g(java.lang.Object obj) {
        java.util.List<b4.a<R>.C0031a> list = this.f2953b;
        java.lang.Object obj2 = null;
        if (list == null) {
            return null;
        }
        for (java.lang.Object obj3 : list) {
            if (((b4.a.C0031a) obj3).f2957a == obj) {
                obj2 = obj3;
                break;
            }
        }
        b4.a<R>.C0031a c0031a = (b4.a.C0031a) obj2;
        if (c0031a != null) {
            return c0031a;
        }
        throw new java.lang.IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    public final b4.d i(java.lang.Object obj, java.lang.Object obj2) {
        return b4.c.a(k(obj, obj2));
    }

    public final int k(java.lang.Object obj, java.lang.Object obj2) {
        while (true) {
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2951f;
            java.lang.Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj3 instanceof t3.j) {
                b4.a<R>.C0031a c0031aG = g(obj);
                if (c0031aG == null) {
                    continue;
                } else {
                    l3.l<java.lang.Throwable, a3.o> lVarA = c0031aG.a(this, obj2);
                    if (a4.n.a(atomicReferenceFieldUpdater, this, obj3, c0031aG)) {
                        this.f2956e = obj2;
                        if (b4.c.h((t3.j) obj3, lVarA)) {
                            return 0;
                        }
                        this.f2956e = null;
                        return 2;
                    }
                }
            } else {
                if (m3.k.a(obj3, b4.c.f2965c) ? true : obj3 instanceof b4.a.C0031a) {
                    return 3;
                }
                if (m3.k.a(obj3, b4.c.f2966d)) {
                    return 2;
                }
                if (m3.k.a(obj3, b4.c.f2964b)) {
                    if (a4.n.a(atomicReferenceFieldUpdater, this, obj3, b3.n.d(obj))) {
                        return 1;
                    }
                } else {
                    if (!(obj3 instanceof java.util.List)) {
                        throw new java.lang.IllegalStateException(("Unexpected state: " + obj3).toString());
                    }
                    if (a4.n.a(atomicReferenceFieldUpdater, this, obj3, b3.w.v((java.util.Collection) obj3, obj))) {
                        return 1;
                    }
                }
            }
        }
    }

    @Override // l3.l
    public /* bridge */ /* synthetic */ a3.o x(java.lang.Throwable th) {
        f(th);
        return a3.o.f122a;
    }
}
