package b3;

/* JADX INFO: compiled from: MutableCollectionsJVM.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class s extends b3.r {
    public static final <T extends java.lang.Comparable<? super T>> void m(java.util.List<T> list) {
        m3.k.e(list, "<this>");
        if (list.size() > 1) {
            java.util.Collections.sort(list);
        }
    }
}
