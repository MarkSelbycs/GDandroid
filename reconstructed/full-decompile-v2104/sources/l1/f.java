package l1;

/* JADX INFO: compiled from: IterUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f {
    public static <E> java.util.List<E> a(java.lang.Iterable<E> iterable) {
        if (iterable == null) {
            return null;
        }
        return b(iterable.iterator());
    }

    public static <E> java.util.List<E> b(java.util.Iterator<E> it) {
        return l1.h.d(it);
    }

    public static <F, T> java.util.Iterator<T> c(java.util.Iterator<F> it, java.util.function.Function<? super F, ? extends T> function) {
        return new l1.m(it, function);
    }
}
