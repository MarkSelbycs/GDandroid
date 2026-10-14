package b3;

/* JADX INFO: compiled from: Sets.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j0 extends b3.i0 {
    public static final <T> java.util.Set<T> d() {
        return b3.a0.f2937a;
    }

    public static final <T> java.util.Set<T> e(T... tArr) {
        m3.k.e(tArr, "elements");
        return (java.util.Set) b3.k.s(tArr, new java.util.LinkedHashSet(b3.g0.d(tArr.length)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> java.util.Set<T> f(java.util.Set<? extends T> set) {
        m3.k.e(set, "<this>");
        int size = set.size();
        if (size != 0) {
            return size != 1 ? set : b3.i0.c(set.iterator().next());
        }
        return d();
    }
}
