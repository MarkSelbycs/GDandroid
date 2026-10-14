package h3;

/* JADX INFO: compiled from: JDK7PlatformImplementations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends g3.a {

    /* JADX INFO: renamed from: h3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JDK7PlatformImplementations.kt */
    public static final class C0059a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final h3.a.C0059a f4570a = new h3.a.C0059a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final java.lang.Integer f4571b;

        static {
            java.lang.Integer num;
            java.lang.Integer num2 = null;
            try {
                java.lang.Object obj = java.lang.Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
                num = obj instanceof java.lang.Integer ? (java.lang.Integer) obj : null;
            } catch (java.lang.Throwable unused) {
            }
            if (num != null) {
                if (num.intValue() > 0) {
                    num2 = num;
                }
            }
            f4571b = num2;
        }
    }

    @Override // g3.a
    public void a(java.lang.Throwable th, java.lang.Throwable th2) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        m3.k.e(th, "cause");
        m3.k.e(th2, "exception");
        if (c(19)) {
            th.addSuppressed(th2);
        } else {
            super.a(th, th2);
        }
    }

    public final boolean c(int i5) {
        java.lang.Integer num = h3.a.C0059a.f4571b;
        return num == null || num.intValue() >= i5;
    }
}
