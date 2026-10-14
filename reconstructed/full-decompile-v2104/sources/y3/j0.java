package y3;

/* JADX INFO: compiled from: SystemProps.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final /* synthetic */ class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f6906a = java.lang.Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f6906a;
    }

    public static final java.lang.String b(java.lang.String str) {
        try {
            return java.lang.System.getProperty(str);
        } catch (java.lang.SecurityException unused) {
            return null;
        }
    }
}
