package b4;

/* JADX INFO: compiled from: Select.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l3.q<java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object> f2963a = b4.c.a.f2969b;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final y3.h0 f2964b = new y3.h0("STATE_REG");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final y3.h0 f2965c = new y3.h0("STATE_COMPLETED");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final y3.h0 f2966d = new y3.h0("STATE_CANCELLED");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final y3.h0 f2967e = new y3.h0("NO_RESULT");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final y3.h0 f2968f = new y3.h0("PARAM_CLAUSE_0");

    /* JADX INFO: compiled from: Select.kt */
    public static final class a extends m3.l implements l3.q {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b4.c.a f2969b = new b4.c.a();

        public a() {
            super(3);
        }

        @Override // l3.q
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final java.lang.Void q(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            return null;
        }
    }

    public static final b4.d a(int i5) {
        if (i5 == 0) {
            return b4.d.SUCCESSFUL;
        }
        if (i5 == 1) {
            return b4.d.REREGISTER;
        }
        if (i5 == 2) {
            return b4.d.CANCELLED;
        }
        if (i5 == 3) {
            return b4.d.ALREADY_SELECTED;
        }
        throw new java.lang.IllegalStateException(("Unexpected internal result: " + i5).toString());
    }

    public static final boolean h(t3.j<? super a3.o> jVar, l3.l<? super java.lang.Throwable, a3.o> lVar) {
        java.lang.Object objU = jVar.U(a3.o.f122a, null, lVar);
        if (objU == null) {
            return false;
        }
        jVar.T(objU);
        return true;
    }
}
