package m3;

/* JADX INFO: compiled from: Intrinsics.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k {
    public static boolean a(java.lang.Object obj, java.lang.Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void b(java.lang.Object obj) {
        if (obj == null) {
            j();
        }
    }

    public static void c(java.lang.Object obj, java.lang.String str) {
        if (obj == null) {
            k(str);
        }
    }

    public static void d(java.lang.Object obj, java.lang.String str) {
        if (obj != null) {
            return;
        }
        throw ((java.lang.NullPointerException) h(new java.lang.NullPointerException(str + " must not be null")));
    }

    public static void e(java.lang.Object obj, java.lang.String str) {
        if (obj == null) {
            l(str);
        }
    }

    public static int f(int i5, int i6) {
        if (i5 < i6) {
            return -1;
        }
        return i5 == i6 ? 0 : 1;
    }

    public static java.lang.String g(java.lang.String str) {
        java.lang.StackTraceElement[] stackTrace = java.lang.Thread.currentThread().getStackTrace();
        java.lang.String name = m3.k.class.getName();
        int i5 = 0;
        while (!stackTrace[i5].getClassName().equals(name)) {
            i5++;
        }
        while (stackTrace[i5].getClassName().equals(name)) {
            i5++;
        }
        java.lang.StackTraceElement stackTraceElement = stackTrace[i5];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    public static <T extends java.lang.Throwable> T h(T t5) {
        return (T) i(t5, m3.k.class.getName());
    }

    public static <T extends java.lang.Throwable> T i(T t5, java.lang.String str) {
        java.lang.StackTraceElement[] stackTrace = t5.getStackTrace();
        int length = stackTrace.length;
        int i5 = -1;
        for (int i6 = 0; i6 < length; i6++) {
            if (str.equals(stackTrace[i6].getClassName())) {
                i5 = i6;
            }
        }
        t5.setStackTrace((java.lang.StackTraceElement[]) java.util.Arrays.copyOfRange(stackTrace, i5 + 1, length));
        return t5;
    }

    public static void j() {
        throw ((java.lang.NullPointerException) h(new java.lang.NullPointerException()));
    }

    public static void k(java.lang.String str) {
        throw ((java.lang.NullPointerException) h(new java.lang.NullPointerException(str)));
    }

    public static void l(java.lang.String str) {
        throw ((java.lang.NullPointerException) h(new java.lang.NullPointerException(g(str))));
    }

    public static void m(java.lang.String str) {
        throw ((a3.n) h(new a3.n(str)));
    }

    public static void n(java.lang.String str) {
        m("lateinit property " + str + " has not been initialized");
    }
}
