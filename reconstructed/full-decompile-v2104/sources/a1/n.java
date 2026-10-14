package a1;

/* JADX INFO: compiled from: ProcessUtils.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f31a;

    static {
        java.lang.String strI = q0.n.i("ProcessUtils");
        m3.k.d(strI, "tagWithPrefix(\"ProcessUtils\")");
        f31a = strI;
    }

    @android.annotation.SuppressLint({"PrivateApi", "DiscouragedPrivateApi"})
    public static final java.lang.String a(android.content.Context context) {
        return a1.a.f4a.a();
    }

    public static final boolean b(android.content.Context context, androidx.work.a aVar) {
        m3.k.e(context, "context");
        m3.k.e(aVar, "configuration");
        java.lang.String strA = a(context);
        java.lang.String strC = aVar.c();
        return !(strC == null || strC.length() == 0) ? m3.k.a(strA, aVar.c()) : m3.k.a(strA, context.getApplicationInfo().processName);
    }
}
