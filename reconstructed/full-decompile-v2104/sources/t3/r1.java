package t3;

/* JADX INFO: compiled from: MainCoroutineDispatcher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class r1 extends t3.b0 {
    public abstract t3.r1 r();

    public final java.lang.String s() {
        t3.r1 r1VarR;
        t3.r1 r1VarC = t3.q0.c();
        if (this == r1VarC) {
            return "Dispatchers.Main";
        }
        try {
            r1VarR = r1VarC.r();
        } catch (java.lang.UnsupportedOperationException unused) {
            r1VarR = null;
        }
        if (this == r1VarR) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override // t3.b0
    public java.lang.String toString() {
        java.lang.String strS = s();
        if (strS != null) {
            return strS;
        }
        return t3.i0.a(this) + '@' + t3.i0.b(this);
    }
}
