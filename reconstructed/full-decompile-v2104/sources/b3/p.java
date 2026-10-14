package b3;

/* JADX INFO: compiled from: Iterables.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p extends b3.o {
    public static final <T> int l(java.lang.Iterable<? extends T> iterable, int i5) {
        m3.k.e(iterable, "<this>");
        return iterable instanceof java.util.Collection ? ((java.util.Collection) iterable).size() : i5;
    }
}
