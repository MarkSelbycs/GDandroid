package q0;

/* JADX INFO: compiled from: InputMerger.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f5698a;

    static {
        java.lang.String strI = q0.n.i("InputMerger");
        m3.k.d(strI, "tagWithPrefix(\"InputMerger\")");
        f5698a = strI;
    }

    public static final q0.j a(java.lang.String str) {
        m3.k.e(str, "className");
        try {
            java.lang.Object objNewInstance = java.lang.Class.forName(str).getDeclaredConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
            m3.k.c(objNewInstance, "null cannot be cast to non-null type androidx.work.InputMerger");
            return (q0.j) objNewInstance;
        } catch (java.lang.Exception e5) {
            q0.n.e().d(f5698a, "Trouble instantiating " + str, e5);
            return null;
        }
    }
}
