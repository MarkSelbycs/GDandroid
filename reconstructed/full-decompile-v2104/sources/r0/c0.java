package r0;

/* JADX INFO: compiled from: WorkContinuationImpl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c0 extends q0.x {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final java.lang.String f5836j = q0.n.i("WorkContinuationImpl");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r0.p0 f5837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f5838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q0.g f5839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.List<? extends q0.b0> f5840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.util.List<java.lang.String> f5841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.util.List<java.lang.String> f5842f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.util.List<r0.c0> f5843g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5844h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public q0.r f5845i;

    public c0(r0.p0 p0Var, java.util.List<? extends q0.b0> list) {
        this(p0Var, null, q0.g.KEEP, list, null);
    }

    public static boolean i(r0.c0 c0Var, java.util.Set<java.lang.String> set) {
        set.addAll(c0Var.c());
        java.util.Set<java.lang.String> setL = l(c0Var);
        java.util.Iterator<java.lang.String> it = set.iterator();
        while (it.hasNext()) {
            if (setL.contains(it.next())) {
                return true;
            }
        }
        java.util.List<r0.c0> listE = c0Var.e();
        if (listE != null && !listE.isEmpty()) {
            java.util.Iterator<r0.c0> it2 = listE.iterator();
            while (it2.hasNext()) {
                if (i(it2.next(), set)) {
                    return true;
                }
            }
        }
        set.removeAll(c0Var.c());
        return false;
    }

    public static java.util.Set<java.lang.String> l(r0.c0 c0Var) {
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.List<r0.c0> listE = c0Var.e();
        if (listE != null && !listE.isEmpty()) {
            java.util.Iterator<r0.c0> it = listE.iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().c());
            }
        }
        return hashSet;
    }

    public q0.r a() {
        if (this.f5844h) {
            q0.n.e().k(f5836j, "Already enqueued work ids (" + android.text.TextUtils.join(", ", this.f5841e) + ")");
        } else {
            a1.c cVar = new a1.c(this);
            this.f5837a.w().a(cVar);
            this.f5845i = cVar.d();
        }
        return this.f5845i;
    }

    public q0.g b() {
        return this.f5839c;
    }

    public java.util.List<java.lang.String> c() {
        return this.f5841e;
    }

    public java.lang.String d() {
        return this.f5838b;
    }

    public java.util.List<r0.c0> e() {
        return this.f5843g;
    }

    public java.util.List<? extends q0.b0> f() {
        return this.f5840d;
    }

    public r0.p0 g() {
        return this.f5837a;
    }

    public boolean h() {
        return i(this, new java.util.HashSet());
    }

    public boolean j() {
        return this.f5844h;
    }

    public void k() {
        this.f5844h = true;
    }

    public c0(r0.p0 p0Var, java.lang.String str, q0.g gVar, java.util.List<? extends q0.b0> list) {
        this(p0Var, str, gVar, list, null);
    }

    public c0(r0.p0 p0Var, java.lang.String str, q0.g gVar, java.util.List<? extends q0.b0> list, java.util.List<r0.c0> list2) {
        this.f5837a = p0Var;
        this.f5838b = str;
        this.f5839c = gVar;
        this.f5840d = list;
        this.f5843g = list2;
        this.f5841e = new java.util.ArrayList(list.size());
        this.f5842f = new java.util.ArrayList();
        if (list2 != null) {
            java.util.Iterator<r0.c0> it = list2.iterator();
            while (it.hasNext()) {
                this.f5842f.addAll(it.next().f5842f);
            }
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            if (gVar == q0.g.REPLACE && list.get(i5).d().g() != Long.MAX_VALUE) {
                throw new java.lang.IllegalArgumentException("Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP");
            }
            java.lang.String strB = list.get(i5).b();
            this.f5841e.add(strB);
            this.f5842f.add(strB);
        }
    }
}
