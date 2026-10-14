package t3;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y3.h0 f6224a = new y3.h0("COMPLETING_ALREADY");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final y3.h0 f6225b = new y3.h0("COMPLETING_WAITING_CHILDREN");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final y3.h0 f6226c = new y3.h0("COMPLETING_RETRY");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final y3.h0 f6227d = new y3.h0("TOO_LATE_TO_CANCEL");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final y3.h0 f6228e = new y3.h0("SEALED");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final t3.s0 f6229f = new t3.s0(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final t3.s0 f6230g = new t3.s0(true);

    public static final java.lang.Object g(java.lang.Object obj) {
        return obj instanceof t3.d1 ? new t3.e1((t3.d1) obj) : obj;
    }

    public static final java.lang.Object h(java.lang.Object obj) {
        t3.d1 d1Var;
        t3.e1 e1Var = obj instanceof t3.e1 ? (t3.e1) obj : null;
        return (e1Var == null || (d1Var = e1Var.f6182a) == null) ? obj : d1Var;
    }
}
