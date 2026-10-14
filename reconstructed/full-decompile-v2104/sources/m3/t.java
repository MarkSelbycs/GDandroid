package m3;

/* JADX INFO: compiled from: TypeIntrinsics.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class t {
    public static java.lang.Object a(java.lang.Object obj, int i5) {
        if (obj != null && !c(obj, i5)) {
            f(obj, "kotlin.jvm.functions.Function" + i5);
        }
        return obj;
    }

    public static int b(java.lang.Object obj) {
        if (obj instanceof m3.h) {
            return ((m3.h) obj).e();
        }
        if (obj instanceof l3.a) {
            return 0;
        }
        if (obj instanceof l3.l) {
            return 1;
        }
        if (obj instanceof l3.p) {
            return 2;
        }
        if (obj instanceof l3.q) {
            return 3;
        }
        if (obj instanceof l3.r) {
            return 4;
        }
        if (obj instanceof l3.s) {
            return 5;
        }
        if (obj instanceof l3.t) {
            return 6;
        }
        if (obj instanceof l3.u) {
            return 7;
        }
        if (obj instanceof l3.v) {
            return 8;
        }
        if (obj instanceof l3.w) {
            return 9;
        }
        if (obj instanceof l3.b) {
            return 10;
        }
        if (obj instanceof l3.c) {
            return 11;
        }
        if (obj instanceof l3.d) {
            return 12;
        }
        if (obj instanceof l3.e) {
            return 13;
        }
        if (obj instanceof l3.f) {
            return 14;
        }
        if (obj instanceof l3.g) {
            return 15;
        }
        if (obj instanceof l3.h) {
            return 16;
        }
        if (obj instanceof l3.i) {
            return 17;
        }
        if (obj instanceof l3.j) {
            return 18;
        }
        if (obj instanceof l3.k) {
            return 19;
        }
        if (obj instanceof l3.m) {
            return 20;
        }
        if (obj instanceof l3.n) {
            return 21;
        }
        return obj instanceof l3.o ? 22 : -1;
    }

    public static boolean c(java.lang.Object obj, int i5) {
        return (obj instanceof a3.b) && b(obj) == i5;
    }

    public static <T extends java.lang.Throwable> T d(T t5) {
        return (T) m3.k.i(t5, m3.t.class.getName());
    }

    public static java.lang.ClassCastException e(java.lang.ClassCastException classCastException) {
        throw ((java.lang.ClassCastException) d(classCastException));
    }

    public static void f(java.lang.Object obj, java.lang.String str) {
        g((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
    }

    public static void g(java.lang.String str) {
        throw e(new java.lang.ClassCastException(str));
    }
}
