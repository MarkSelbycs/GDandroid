package k0;

/* JADX INFO: compiled from: Trace.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static long f4854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static java.lang.reflect.Method f4855b;

    public static void a(java.lang.String str) {
        k0.b.a(str);
    }

    public static void b() {
        k0.b.b();
    }

    public static void c(java.lang.String str, java.lang.Exception exc) {
        if (exc instanceof java.lang.reflect.InvocationTargetException) {
            java.lang.Throwable cause = exc.getCause();
            if (!(cause instanceof java.lang.RuntimeException)) {
                throw new java.lang.RuntimeException(cause);
            }
            throw ((java.lang.RuntimeException) cause);
        }
        android.util.Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    @android.annotation.SuppressLint({"NewApi"})
    public static boolean d() {
        try {
            if (f4855b == null) {
                return android.os.Trace.isEnabled();
            }
        } catch (java.lang.NoClassDefFoundError | java.lang.NoSuchMethodError unused) {
        }
        return e();
    }

    public static boolean e() {
        try {
            if (f4855b == null) {
                f4854a = android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f4855b = android.os.Trace.class.getMethod("isTagEnabled", java.lang.Long.TYPE);
            }
            return ((java.lang.Boolean) f4855b.invoke(null, java.lang.Long.valueOf(f4854a))).booleanValue();
        } catch (java.lang.Exception e5) {
            c("isTagEnabled", e5);
            return false;
        }
    }
}
