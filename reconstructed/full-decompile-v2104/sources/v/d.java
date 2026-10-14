package v;

/* JADX INFO: compiled from: ObjectsCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d {

    /* JADX INFO: compiled from: ObjectsCompat.java */
    public static class a {
        public static boolean a(java.lang.Object obj, java.lang.Object obj2) {
            return java.util.Objects.equals(obj, obj2);
        }

        public static int b(java.lang.Object... objArr) {
            return java.util.Objects.hash(objArr);
        }
    }

    public static boolean a(java.lang.Object obj, java.lang.Object obj2) {
        return v.d.a.a(obj, obj2);
    }

    public static int b(java.lang.Object... objArr) {
        return v.d.a.b(objArr);
    }

    public static <T> T c(T t5) {
        java.util.Objects.requireNonNull(t5);
        return t5;
    }
}
