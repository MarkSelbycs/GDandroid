package m1;

/* JADX INFO: compiled from: CompareUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {
    public static <T extends java.lang.Comparable<? super T>> int a(T t5, T t6) {
        return b(t5, t6, false);
    }

    public static <T extends java.lang.Comparable<? super T>> int b(T t5, T t6, boolean z4) {
        if (t5 == t6) {
            return 0;
        }
        if (t5 == null) {
            return z4 ? 1 : -1;
        }
        if (t6 == null) {
            return z4 ? -1 : 1;
        }
        return t5.compareTo(t6);
    }
}
