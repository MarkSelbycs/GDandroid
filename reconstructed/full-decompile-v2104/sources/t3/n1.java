package t3;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class n1 extends t3.w implements t3.r0, t3.d1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public t3.o1 f6209d;

    public final t3.o1 A() {
        t3.o1 o1Var = this.f6209d;
        if (o1Var != null) {
            return o1Var;
        }
        m3.k.n("job");
        return null;
    }

    public final void B(t3.o1 o1Var) {
        this.f6209d = o1Var;
    }

    @Override // t3.r0
    public void d() {
        A().x0(this);
    }

    @Override // t3.d1
    public boolean f() {
        return true;
    }

    @Override // t3.d1
    public t3.s1 i() {
        return null;
    }

    @Override // y3.s
    public java.lang.String toString() {
        return t3.i0.a(this) + '@' + t3.i0.b(this) + "[job@" + t3.i0.b(A()) + ']';
    }
}
