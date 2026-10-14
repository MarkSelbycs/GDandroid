package s;

/* JADX INFO: compiled from: TraceCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.Deprecated
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static long f6005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static java.lang.reflect.Method f6006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static java.lang.reflect.Method f6007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static java.lang.reflect.Method f6008d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static java.lang.reflect.Method f6009e;

    /* JADX INFO: compiled from: TraceCompat.java */
    public static class a {
        public static void a(java.lang.String str) {
            android.os.Trace.beginSection(str);
        }

        public static void b() {
            android.os.Trace.endSection();
        }
    }

    static {
        if (android.os.Build.VERSION.SDK_INT < 29) {
            try {
                f6005a = android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
                java.lang.Class cls = java.lang.Long.TYPE;
                f6006b = android.os.Trace.class.getMethod("isTagEnabled", cls);
                java.lang.Class cls2 = java.lang.Integer.TYPE;
                f6007c = android.os.Trace.class.getMethod("asyncTraceBegin", cls, java.lang.String.class, cls2);
                f6008d = android.os.Trace.class.getMethod("asyncTraceEnd", cls, java.lang.String.class, cls2);
                f6009e = android.os.Trace.class.getMethod("traceCounter", cls, java.lang.String.class, cls2);
            } catch (java.lang.Exception e5) {
                android.util.Log.i("TraceCompat", "Unable to initialize via reflection.", e5);
            }
        }
    }

    public static void a(java.lang.String str) {
        s.c.a.a(str);
    }

    public static void b() {
        s.c.a.b();
    }
}
