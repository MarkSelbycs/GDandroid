package h1;

/* JADX INFO: compiled from: PropDesc.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.reflect.Field f4567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.lang.reflect.Method f4568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.reflect.Method f4569c;

    public j(java.lang.reflect.Field field, java.lang.reflect.Method method, java.lang.reflect.Method method2) {
        this.f4567a = field;
        this.f4568b = e2.k.p(method);
        this.f4569c = e2.k.p(method2);
    }

    public final java.lang.Class<?> a(java.lang.reflect.Method method, java.lang.reflect.Method method2) {
        java.lang.Class<?> clsK = method != null ? e2.d0.k(method) : null;
        return (clsK != null || method2 == null) ? clsK : e2.d0.f(method2);
    }

    public final java.lang.reflect.Type b(java.lang.reflect.Method method, java.lang.reflect.Method method2) {
        java.lang.reflect.Type typeL = method != null ? e2.d0.l(method) : null;
        return (typeL != null || method2 == null) ? typeL : e2.d0.i(method2, 0);
    }

    public java.lang.reflect.Field c() {
        return this.f4567a;
    }

    public java.lang.Class<?> d() {
        java.lang.reflect.Field field = this.f4567a;
        return field != null ? e2.d0.d(field) : a(this.f4568b, this.f4569c);
    }

    public java.lang.String e() {
        return e2.x.i(this.f4567a);
    }

    public java.lang.reflect.Type f() {
        java.lang.reflect.Field field = this.f4567a;
        return field != null ? e2.d0.m(field) : b(this.f4568b, this.f4569c);
    }

    public java.lang.Object g(java.lang.Object obj) {
        java.lang.reflect.Method method = this.f4568b;
        if (method != null) {
            return e2.x.u(obj, method, new java.lang.Object[0]);
        }
        if (e2.n.d(this.f4567a)) {
            return e2.x.j(obj, this.f4567a);
        }
        return null;
    }

    public final boolean h() {
        return g1.b.b(this.f4567a, g1.d.class) || g1.b.b(this.f4568b, g1.d.class);
    }

    public final boolean i() {
        return g1.b.b(this.f4567a, g1.d.class) || g1.b.b(this.f4569c, g1.d.class);
    }

    public boolean j(boolean z4) {
        if (this.f4568b == null && !e2.n.d(this.f4567a)) {
            return false;
        }
        if (z4 && k()) {
            return false;
        }
        return !h();
    }

    public final boolean k() {
        java.lang.reflect.Method method;
        java.lang.reflect.Field field = this.f4567a;
        e2.n.a aVar = e2.n.a.TRANSIENT;
        boolean zA = e2.n.a(field, aVar);
        if (zA || (method = this.f4568b) == null) {
            return zA;
        }
        boolean zB = e2.n.b(method, aVar);
        return !zB ? g1.b.b(this.f4568b, java.beans.Transient.class) : zB;
    }

    public final boolean l() {
        java.lang.reflect.Method method;
        java.lang.reflect.Field field = this.f4567a;
        e2.n.a aVar = e2.n.a.TRANSIENT;
        boolean zA = e2.n.a(field, aVar);
        if (zA || (method = this.f4569c) == null) {
            return zA;
        }
        boolean zB = e2.n.b(method, aVar);
        return !zB ? g1.b.b(this.f4569c, java.beans.Transient.class) : zB;
    }

    public boolean m(boolean z4) {
        if (this.f4569c == null && !e2.n.d(this.f4567a)) {
            return false;
        }
        if (z4 && l()) {
            return false;
        }
        return !i();
    }

    public h1.j n(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.reflect.Method method = this.f4569c;
        if (method != null) {
            e2.x.u(obj, method, obj2);
        } else if (e2.n.d(this.f4567a)) {
            e2.x.G(obj, this.f4567a, obj2);
        }
        return this;
    }

    public h1.j o(java.lang.Object obj, java.lang.Object obj2, boolean z4, boolean z5, boolean z6) {
        if (obj2 == null && z4) {
            return this;
        }
        if (!z6 && g(obj) != null) {
            return this;
        }
        if (obj2 != null) {
            java.lang.Class<?> clsD = d();
            if (!clsD.isInstance(obj2)) {
                obj2 = n1.c.f(clsD, obj2, null, z5);
            }
        }
        if (obj2 != null || !z4) {
            try {
                n(obj, obj2);
            } catch (java.lang.Exception e5) {
                if (!z5) {
                    throw new h1.e(e5, "Set value of [{}] error!", e());
                }
            }
        }
        return this;
    }
}
