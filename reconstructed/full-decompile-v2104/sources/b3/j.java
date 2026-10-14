package b3;

/* JADX INFO: compiled from: _ArraysJvm.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j extends b3.i {
    public static final <T> java.util.List<T> c(T[] tArr) {
        m3.k.e(tArr, "<this>");
        java.util.List<T> listA = b3.l.a(tArr);
        m3.k.d(listA, "asList(this)");
        return listA;
    }

    public static final <T> T[] d(T[] tArr, T[] tArr2, int i5, int i6, int i7) {
        m3.k.e(tArr, "<this>");
        m3.k.e(tArr2, "destination");
        java.lang.System.arraycopy(tArr, i6, tArr2, i5, i7 - i6);
        return tArr2;
    }

    public static /* synthetic */ java.lang.Object[] e(java.lang.Object[] objArr, java.lang.Object[] objArr2, int i5, int i6, int i7, int i8, java.lang.Object obj) {
        if ((i8 & 2) != 0) {
            i5 = 0;
        }
        if ((i8 & 4) != 0) {
            i6 = 0;
        }
        if ((i8 & 8) != 0) {
            i7 = objArr.length;
        }
        return d(objArr, objArr2, i5, i6, i7);
    }

    public static final <T> T[] f(T[] tArr, int i5, int i6) {
        m3.k.e(tArr, "<this>");
        b3.h.b(i6, tArr.length);
        T[] tArr2 = (T[]) java.util.Arrays.copyOfRange(tArr, i5, i6);
        m3.k.d(tArr2, "copyOfRange(this, fromIndex, toIndex)");
        return tArr2;
    }

    public static final void g(int[] iArr, int i5, int i6, int i7) {
        m3.k.e(iArr, "<this>");
        java.util.Arrays.fill(iArr, i6, i7, i5);
    }

    public static final <T> void h(T[] tArr, T t5, int i5, int i6) {
        m3.k.e(tArr, "<this>");
        java.util.Arrays.fill(tArr, i5, i6, t5);
    }

    public static /* synthetic */ void i(java.lang.Object[] objArr, java.lang.Object obj, int i5, int i6, int i7, java.lang.Object obj2) {
        if ((i7 & 2) != 0) {
            i5 = 0;
        }
        if ((i7 & 4) != 0) {
            i6 = objArr.length;
        }
        h(objArr, obj, i5, i6);
    }

    public static final <T> void j(T[] tArr) {
        m3.k.e(tArr, "<this>");
        if (tArr.length > 1) {
            java.util.Arrays.sort(tArr);
        }
    }
}
