package c3;

/* JADX INFO: compiled from: ListBuilder.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {
    public static final <E> E[] d(int i5) {
        if (i5 >= 0) {
            return (E[]) new java.lang.Object[i5];
        }
        throw new java.lang.IllegalArgumentException("capacity must be non-negative.".toString());
    }

    public static final <T> T[] e(T[] tArr, int i5) {
        m3.k.e(tArr, "<this>");
        T[] tArr2 = (T[]) java.util.Arrays.copyOf(tArr, i5);
        m3.k.d(tArr2, "copyOf(this, newSize)");
        return tArr2;
    }

    public static final <E> void f(E[] eArr, int i5) {
        m3.k.e(eArr, "<this>");
        eArr[i5] = null;
    }

    public static final <E> void g(E[] eArr, int i5, int i6) {
        m3.k.e(eArr, "<this>");
        while (i5 < i6) {
            f(eArr, i5);
            i5++;
        }
    }

    public static final <T> boolean h(T[] tArr, int i5, int i6, java.util.List<?> list) {
        if (i6 != list.size()) {
            return false;
        }
        for (int i7 = 0; i7 < i6; i7++) {
            if (!m3.k.a(tArr[i5 + i7], list.get(i7))) {
                return false;
            }
        }
        return true;
    }

    public static final <T> int i(T[] tArr, int i5, int i6) {
        int iHashCode = 1;
        for (int i7 = 0; i7 < i6; i7++) {
            T t5 = tArr[i5 + i7];
            iHashCode = (iHashCode * 31) + (t5 != null ? t5.hashCode() : 0);
        }
        return iHashCode;
    }

    public static final <T> java.lang.String j(T[] tArr, int i5, int i6) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder((i6 * 3) + 2);
        sb.append("[");
        for (int i7 = 0; i7 < i6; i7++) {
            if (i7 > 0) {
                sb.append(", ");
            }
            sb.append(tArr[i5 + i7]);
        }
        sb.append("]");
        java.lang.String string = sb.toString();
        m3.k.d(string, "sb.toString()");
        return string;
    }
}
