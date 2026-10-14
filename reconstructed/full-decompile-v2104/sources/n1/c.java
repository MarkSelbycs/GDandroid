package n1;

/* JADX INFO: compiled from: Convert.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c {
    public static <T> T a(java.lang.Class<T> cls, java.lang.Object obj) throws n1.d {
        return (T) c(cls, obj);
    }

    public static <T> T b(java.lang.Class<T> cls, java.lang.Object obj, T t5) throws n1.d {
        return (T) d(cls, obj, t5);
    }

    public static <T> T c(java.lang.reflect.Type type, java.lang.Object obj) throws n1.d {
        return (T) d(type, obj, null);
    }

    public static <T> T d(java.lang.reflect.Type type, java.lang.Object obj, T t5) throws n1.d {
        return (T) f(type, obj, t5, false);
    }

    public static <T> T e(java.lang.reflect.Type type, java.lang.Object obj, T t5) {
        return (T) f(type, obj, t5, true);
    }

    public static <T> T f(java.lang.reflect.Type type, java.lang.Object obj, T t5, boolean z4) {
        try {
            return (T) n1.g.y().e(type, obj, t5);
        } catch (java.lang.Exception e5) {
            if (z4) {
                return t5;
            }
            throw e5;
        }
    }

    public static java.util.Date g(java.lang.Object obj) {
        return h(obj, null);
    }

    public static java.util.Date h(java.lang.Object obj, java.util.Date date) {
        return (java.util.Date) e(java.util.Date.class, obj, date);
    }

    public static java.lang.Integer i(java.lang.Object obj) {
        return j(obj, null);
    }

    public static java.lang.Integer j(java.lang.Object obj, java.lang.Integer num) {
        return (java.lang.Integer) e(java.lang.Integer.class, obj, num);
    }

    public static java.lang.String k(java.lang.Object obj) {
        return l(obj, null);
    }

    public static java.lang.String l(java.lang.Object obj, java.lang.String str) {
        return (java.lang.String) e(java.lang.String.class, obj, str);
    }
}
