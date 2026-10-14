package i3;

/* JADX INFO: compiled from: JDK8PlatformImplementations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends h3.a {

    /* JADX INFO: renamed from: i3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JDK8PlatformImplementations.kt */
    public static final class C0061a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final i3.a.C0061a f4666a = new i3.a.C0061a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final java.lang.Integer f4667b;

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
            f4667b = num2;
        }
    }

    private final boolean c(int i5) {
        java.lang.Integer num = i3.a.C0061a.f4667b;
        return num == null || num.intValue() >= i5;
    }

    @Override // g3.a
    public n3.c b() {
        return c(34) ? new o3.a() : super.b();
    }
}
