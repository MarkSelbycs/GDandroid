package e2;

/* JADX INFO: compiled from: ObjectUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p {
    public static <T> T a(T t5) {
        T t6 = (T) e2.c.i(t5);
        if (t6 == null) {
            return t5 instanceof java.lang.Cloneable ? (T) e2.x.t(t5, "clone", new java.lang.Object[0]) : (T) b(t5);
        }
        return t6;
    }

    public static <T> T b(T t5) {
        return (T) e2.y.a(t5);
    }

    public static <T> T c(T t5, T t6) {
        return i(t5) ? t6 : t5;
    }

    public static <T> T d(T t5, java.util.function.Supplier<? extends T> supplier) {
        return i(t5) ? supplier.get() : t5;
    }

    public static <T> T e(byte[] bArr) {
        return (T) e2.y.b(bArr);
    }

    public static boolean f(java.lang.Object obj, java.lang.Object obj2) {
        return ((obj instanceof java.math.BigDecimal) && (obj2 instanceof java.math.BigDecimal)) ? e2.o.c((java.math.BigDecimal) obj, (java.math.BigDecimal) obj2) : java.util.Objects.equals(obj, obj2);
    }

    public static boolean g(java.lang.Object obj, java.lang.Object obj2) {
        return f(obj, obj2);
    }

    public static boolean h(java.lang.Object obj) {
        if (obj == null) {
            return false;
        }
        return e2.k.k(obj.getClass());
    }

    public static boolean i(java.lang.Object obj) {
        return obj == null || obj.equals(null);
    }

    public static boolean j(java.lang.Object obj) {
        if (obj instanceof java.lang.Number) {
            return e2.o.e((java.lang.Number) obj);
        }
        return true;
    }

    public static <T> byte[] k(T t5) {
        return e2.y.c(t5);
    }
}
