package z2;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {
    static {
        java.lang.System.loadLibrary("msec");
    }

    public static java.lang.Object a() {
        try {
            return com.msec.cb.class.newInstance();
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static void b(int i5) {
        com.msec.i.a(i5);
    }

    public static void c() {
        com.msec.i.c();
    }

    public static synchronized void d() {
        com.msec.i.b();
    }
}
