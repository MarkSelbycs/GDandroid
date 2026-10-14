package v;

/* JADX INFO: compiled from: Preconditions.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h {
    public static int a(int i5) {
        if (i5 >= 0) {
            return i5;
        }
        throw new java.lang.IllegalArgumentException();
    }

    public static <T> T b(T t5) {
        java.util.Objects.requireNonNull(t5);
        return t5;
    }

    public static <T> T c(T t5, java.lang.Object obj) {
        if (t5 != null) {
            return t5;
        }
        throw new java.lang.NullPointerException(java.lang.String.valueOf(obj));
    }
}
