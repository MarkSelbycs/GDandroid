package m3;

/* JADX INFO: compiled from: Lambda.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class l<R> implements m3.h<R>, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5190a;

    public l(int i5) {
        this.f5190a = i5;
    }

    @Override // m3.h
    public int e() {
        return this.f5190a;
    }

    public java.lang.String toString() {
        java.lang.String strF = m3.r.f(this);
        m3.k.d(strF, "renderLambdaToString(this)");
        return strF;
    }
}
