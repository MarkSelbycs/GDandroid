package y3;

/* JADX INFO: compiled from: ThreadContext.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y3.h0 f6910a = new y3.h0("NO_THREAD_ELEMENTS");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final l3.p<java.lang.Object, d3.g.b, java.lang.Object> f6911b = y3.l0.a.f6914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l3.p<t3.x1<?>, d3.g.b, t3.x1<?>> f6912c = y3.l0.b.f6915b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final l3.p<y3.p0, d3.g.b, y3.p0> f6913d = y3.l0.c.f6916b;

    /* JADX INFO: compiled from: ThreadContext.kt */
    public static final class a extends m3.l implements l3.p<java.lang.Object, d3.g.b, java.lang.Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final y3.l0.a f6914b = new y3.l0.a();

        public a() {
            super(2);
        }

        @Override // l3.p
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final java.lang.Object u(java.lang.Object obj, d3.g.b bVar) {
            if (!(bVar instanceof t3.x1)) {
                return obj;
            }
            java.lang.Integer num = obj instanceof java.lang.Integer ? (java.lang.Integer) obj : null;
            int iIntValue = num != null ? num.intValue() : 1;
            return iIntValue == 0 ? bVar : java.lang.Integer.valueOf(iIntValue + 1);
        }
    }

    /* JADX INFO: compiled from: ThreadContext.kt */
    public static final class b extends m3.l implements l3.p<t3.x1<?>, d3.g.b, t3.x1<?>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final y3.l0.b f6915b = new y3.l0.b();

        public b() {
            super(2);
        }

        @Override // l3.p
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final t3.x1<?> u(t3.x1<?> x1Var, d3.g.b bVar) {
            if (x1Var != null) {
                return x1Var;
            }
            if (bVar instanceof t3.x1) {
                return (t3.x1) bVar;
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: ThreadContext.kt */
    public static final class c extends m3.l implements l3.p<y3.p0, d3.g.b, y3.p0> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final y3.l0.c f6916b = new y3.l0.c();

        public c() {
            super(2);
        }

        @Override // l3.p
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final y3.p0 u(y3.p0 p0Var, d3.g.b bVar) {
            if (bVar instanceof t3.x1) {
                t3.x1<?> x1Var = (t3.x1) bVar;
                p0Var.a(x1Var, x1Var.I(p0Var.f6928a));
            }
            return p0Var;
        }
    }

    public static final void a(d3.g gVar, java.lang.Object obj) {
        if (obj == f6910a) {
            return;
        }
        if (obj instanceof y3.p0) {
            ((y3.p0) obj).b(gVar);
            return;
        }
        java.lang.Object objM0 = gVar.m0(null, f6912c);
        m3.k.c(objM0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((t3.x1) objM0).j0(gVar, obj);
    }

    public static final java.lang.Object b(d3.g gVar) {
        java.lang.Object objM0 = gVar.m0(0, f6911b);
        m3.k.b(objM0);
        return objM0;
    }

    public static final java.lang.Object c(d3.g gVar, java.lang.Object obj) {
        if (obj == null) {
            obj = b(gVar);
        }
        if (obj == 0) {
            return f6910a;
        }
        if (obj instanceof java.lang.Integer) {
            return gVar.m0(new y3.p0(gVar, ((java.lang.Number) obj).intValue()), f6913d);
        }
        m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((t3.x1) obj).I(gVar);
    }
}
