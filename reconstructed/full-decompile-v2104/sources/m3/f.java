package m3;

/* JADX INFO: compiled from: CollectionToArray.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.Object[] f5187a = new java.lang.Object[0];

    public static final java.lang.Object[] a(java.util.Collection<?> collection) {
        m3.k.e(collection, "collection");
        int size = collection.size();
        if (size != 0) {
            java.util.Iterator<?> it = collection.iterator();
            if (it.hasNext()) {
                java.lang.Object[] objArrCopyOf = new java.lang.Object[size];
                int i5 = 0;
                while (true) {
                    int i6 = i5 + 1;
                    objArrCopyOf[i5] = it.next();
                    if (i6 >= objArrCopyOf.length) {
                        if (!it.hasNext()) {
                            return objArrCopyOf;
                        }
                        int i7 = ((i6 * 3) + 1) >>> 1;
                        if (i7 <= i6) {
                            if (i6 >= 2147483645) {
                                throw new java.lang.OutOfMemoryError();
                            }
                            i7 = 2147483645;
                        }
                        objArrCopyOf = java.util.Arrays.copyOf(objArrCopyOf, i7);
                        m3.k.d(objArrCopyOf, "copyOf(result, newSize)");
                    } else if (!it.hasNext()) {
                        java.lang.Object[] objArrCopyOf2 = java.util.Arrays.copyOf(objArrCopyOf, i6);
                        m3.k.d(objArrCopyOf2, "copyOf(result, size)");
                        return objArrCopyOf2;
                    }
                    i5 = i6;
                }
            }
        }
        return f5187a;
    }

    public static final java.lang.Object[] b(java.util.Collection<?> collection, java.lang.Object[] objArr) {
        java.lang.Object[] objArrCopyOf;
        m3.k.e(collection, "collection");
        java.util.Objects.requireNonNull(objArr);
        int size = collection.size();
        int i5 = 0;
        if (size == 0) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        java.util.Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        if (size <= objArr.length) {
            objArrCopyOf = objArr;
        } else {
            java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(objArr.getClass().getComponentType(), size);
            m3.k.c(objNewInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrCopyOf = (java.lang.Object[]) objNewInstance;
        }
        while (true) {
            int i6 = i5 + 1;
            objArrCopyOf[i5] = it.next();
            if (i6 >= objArrCopyOf.length) {
                if (!it.hasNext()) {
                    return objArrCopyOf;
                }
                int i7 = ((i6 * 3) + 1) >>> 1;
                if (i7 <= i6) {
                    if (i6 >= 2147483645) {
                        throw new java.lang.OutOfMemoryError();
                    }
                    i7 = 2147483645;
                }
                objArrCopyOf = java.util.Arrays.copyOf(objArrCopyOf, i7);
                m3.k.d(objArrCopyOf, "copyOf(result, newSize)");
            } else if (!it.hasNext()) {
                if (objArrCopyOf == objArr) {
                    objArr[i6] = null;
                    return objArr;
                }
                java.lang.Object[] objArrCopyOf2 = java.util.Arrays.copyOf(objArrCopyOf, i6);
                m3.k.d(objArrCopyOf2, "copyOf(result, size)");
                return objArrCopyOf2;
            }
            i5 = i6;
        }
    }
}
