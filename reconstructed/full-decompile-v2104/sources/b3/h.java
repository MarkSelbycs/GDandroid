package b3;

/* JADX INFO: compiled from: ArraysJVM.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {
    public static final <T> T[] a(T[] tArr, int i5) {
        m3.k.e(tArr, "reference");
        java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(tArr.getClass().getComponentType(), i5);
        m3.k.c(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
        return (T[]) ((java.lang.Object[]) objNewInstance);
    }

    public static final void b(int i5, int i6) {
        if (i5 <= i6) {
            return;
        }
        throw new java.lang.IndexOutOfBoundsException("toIndex (" + i5 + ") is greater than size (" + i6 + ").");
    }
}
