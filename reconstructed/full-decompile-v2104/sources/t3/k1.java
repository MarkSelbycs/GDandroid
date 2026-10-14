package t3;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k1 extends t3.o1 implements t3.s {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6204c;

    public k1(t3.h1 h1Var) {
        super(true);
        d0(h1Var);
        this.f6204c = J0();
    }

    public final boolean J0() {
        t3.o1 o1VarA;
        t3.p pVarZ = Z();
        t3.q qVar = pVarZ instanceof t3.q ? (t3.q) pVarZ : null;
        if (qVar != null && (o1VarA = qVar.A()) != null) {
            while (!o1VarA.S()) {
                t3.p pVarZ2 = o1VarA.Z();
                t3.q qVar2 = pVarZ2 instanceof t3.q ? (t3.q) pVarZ2 : null;
                if (qVar2 == null || (o1VarA = qVar2.A()) == null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // t3.o1
    public boolean S() {
        return this.f6204c;
    }

    @Override // t3.o1
    public boolean W() {
        return true;
    }
}
