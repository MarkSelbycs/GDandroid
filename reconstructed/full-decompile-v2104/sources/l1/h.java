package l1;

/* JADX INFO: compiled from: ListUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {
    public static <T> java.util.List<T> a(boolean z4) {
        return z4 ? new java.util.LinkedList() : new java.util.ArrayList();
    }

    public static <T> java.util.List<T> b(boolean z4, java.util.Iterator<T> it) {
        java.util.List<T> listA = a(z4);
        if (it != null) {
            while (it.hasNext()) {
                listA.add(it.next());
            }
        }
        return listA;
    }

    @java.lang.SafeVarargs
    public static <T> java.util.List<T> c(boolean z4, T... tArr) {
        if (e2.c.u(tArr)) {
            return a(z4);
        }
        java.util.List<T> linkedList = z4 ? new java.util.LinkedList<>() : new java.util.ArrayList<>(tArr.length);
        java.util.Collections.addAll(linkedList, tArr);
        return linkedList;
    }

    public static <T> java.util.ArrayList<T> d(java.util.Iterator<T> it) {
        return (java.util.ArrayList) b(false, it);
    }

    @java.lang.SafeVarargs
    public static <T> java.util.ArrayList<T> e(T... tArr) {
        return (java.util.ArrayList) c(false, tArr);
    }
}
