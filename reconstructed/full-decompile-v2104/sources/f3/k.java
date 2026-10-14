package f3;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class k extends f3.d implements m3.h<java.lang.Object> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4240d;

    public k(int i5, d3.d<java.lang.Object> dVar) {
        super(dVar);
        this.f4240d = i5;
    }

    @Override // m3.h
    public int e() {
        return this.f4240d;
    }

    @Override // f3.a
    public java.lang.String toString() {
        if (y() != null) {
            return super.toString();
        }
        java.lang.String strE = m3.r.e(this);
        m3.k.d(strE, "renderLambdaToString(this)");
        return strE;
    }
}
