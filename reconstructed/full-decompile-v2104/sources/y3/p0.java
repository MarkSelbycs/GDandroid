package y3;

/* JADX INFO: compiled from: ThreadContext.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d3.g f6928a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.Object[] f6929b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final t3.x1<java.lang.Object>[] f6930c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6931d;

    public p0(d3.g gVar, int i5) {
        this.f6928a = gVar;
        this.f6929b = new java.lang.Object[i5];
        this.f6930c = new t3.x1[i5];
    }

    public final void a(t3.x1<?> x1Var, java.lang.Object obj) {
        java.lang.Object[] objArr = this.f6929b;
        int i5 = this.f6931d;
        objArr[i5] = obj;
        t3.x1<java.lang.Object>[] x1VarArr = this.f6930c;
        this.f6931d = i5 + 1;
        m3.k.c(x1Var, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        x1VarArr[i5] = x1Var;
    }

    public final void b(d3.g gVar) {
        int length = this.f6930c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i5 = length - 1;
            t3.x1<java.lang.Object> x1Var = this.f6930c[length];
            m3.k.b(x1Var);
            x1Var.j0(gVar, this.f6929b[length]);
            if (i5 < 0) {
                return;
            } else {
                length = i5;
            }
        }
    }
}
