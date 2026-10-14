package l1;

/* JADX INFO: compiled from: SpliteratorUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i {
    public static <F, T> java.util.Spliterator<T> a(java.util.Spliterator<F> spliterator, java.util.function.Function<? super F, ? extends T> function) {
        return new l1.p(spliterator, function);
    }
}
