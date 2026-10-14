package b3;

/* JADX INFO: compiled from: Collections.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o extends b3.n {
    public static final <T> java.util.List<T> e() {
        return b3.y.f2949a;
    }

    public static final <T> int f(java.util.List<? extends T> list) {
        m3.k.e(list, "<this>");
        return list.size() - 1;
    }

    public static final <T> java.util.List<T> g(T... tArr) {
        m3.k.e(tArr, "elements");
        return tArr.length > 0 ? b3.j.c(tArr) : e();
    }

    public static final <T> java.util.List<T> h(T... tArr) {
        m3.k.e(tArr, "elements");
        return tArr.length == 0 ? new java.util.ArrayList() : new java.util.ArrayList(new b3.f(tArr, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> java.util.List<T> i(java.util.List<? extends T> list) {
        m3.k.e(list, "<this>");
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : b3.n.d(list.get(0));
        }
        return e();
    }

    public static final void j() {
        throw new java.lang.ArithmeticException("Count overflow has happened.");
    }

    public static final void k() {
        throw new java.lang.ArithmeticException("Index overflow has happened.");
    }
}
