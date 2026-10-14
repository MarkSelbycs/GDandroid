package e2;

/* JADX INFO: compiled from: ArrayUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c extends e2.q {
    public static <T> int A(v1.j<T> jVar, T... tArr) {
        return z(jVar, 0, tArr);
    }

    public static <T> T[] B(java.lang.Class<?> cls, int i5) {
        return (T[]) ((java.lang.Object[]) java.lang.reflect.Array.newInstance(cls, i5));
    }

    public static java.lang.String C(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof long[]) {
            return java.util.Arrays.toString((long[]) obj);
        }
        if (obj instanceof int[]) {
            return java.util.Arrays.toString((int[]) obj);
        }
        if (obj instanceof short[]) {
            return java.util.Arrays.toString((short[]) obj);
        }
        if (obj instanceof char[]) {
            return java.util.Arrays.toString((char[]) obj);
        }
        if (obj instanceof byte[]) {
            return java.util.Arrays.toString((byte[]) obj);
        }
        if (obj instanceof boolean[]) {
            return java.util.Arrays.toString((boolean[]) obj);
        }
        if (obj instanceof float[]) {
            return java.util.Arrays.toString((float[]) obj);
        }
        if (obj instanceof double[]) {
            return java.util.Arrays.toString((double[]) obj);
        }
        if (s(obj)) {
            try {
                return java.util.Arrays.deepToString((java.lang.Object[]) obj);
            } catch (java.lang.Exception unused) {
            }
        }
        return obj.toString();
    }

    @java.lang.SafeVarargs
    public static <T> T[] h(T[] tArr, T... tArr2) {
        return u(tArr) ? tArr2 : (T[]) r(tArr, tArr.length, tArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T i(T t5) {
        if (t5 == 0 || !s(t5)) {
            return null;
        }
        java.lang.Class<?> componentType = t5.getClass().getComponentType();
        if (!componentType.isPrimitive()) {
            return (T) ((java.lang.Object[]) t5).clone();
        }
        int length = java.lang.reflect.Array.getLength(t5);
        T t6 = (T) java.lang.reflect.Array.newInstance(componentType, length);
        while (true) {
            int i5 = length - 1;
            if (length <= 0) {
                return t6;
            }
            java.lang.reflect.Array.set(t6, i5, java.lang.reflect.Array.get(t5, i5));
            length = i5;
        }
    }

    public static <T> boolean j(T[] tArr, T t5) {
        return p(tArr, t5) > -1;
    }

    public static java.lang.Object k(java.lang.Object obj, java.lang.Object obj2, int i5) {
        java.lang.System.arraycopy(obj, 0, obj2, 0, i5);
        return obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] l(T[] tArr, v1.g<T> gVar) {
        if (gVar == null) {
            return tArr;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(tArr.length);
        for (T t5 : tArr) {
            T tA = gVar.a(t5);
            if (tA != null) {
                arrayList.add(tA);
            }
        }
        return (T[]) arrayList.toArray(B(tArr.getClass().getComponentType(), arrayList.size()));
    }

    public static <T> T[] m(T[] tArr, final v1.i<T> iVar) {
        return (tArr == null || iVar == null) ? tArr : (T[]) l(tArr, new v1.g() { // from class: e2.a
            @Override // v1.g
            public final java.lang.Object a(java.lang.Object obj) {
                return e2.c.w(iVar, obj);
            }
        });
    }

    public static java.lang.Class<?> n(java.lang.Class<?> cls) {
        return java.lang.reflect.Array.newInstance(cls, 0).getClass();
    }

    public static java.lang.Class<?> o(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.getClass().getComponentType();
    }

    public static <T> int p(T[] tArr, final java.lang.Object obj) {
        return A(new v1.j() { // from class: e2.b
            @Override // v1.j
            public final boolean a(java.lang.Object obj2) {
                return e2.p.f(obj, obj2);
            }
        }, tArr);
    }

    public static <T> java.lang.Object q(java.lang.Object obj, int i5, T... tArr) {
        if (u(tArr)) {
            return obj;
        }
        if (t(obj)) {
            return tArr;
        }
        int iY = y(obj);
        if (i5 < 0) {
            i5 = (i5 % iY) + iY;
        }
        java.lang.Class<?> componentType = obj.getClass().getComponentType();
        java.lang.Object objA = componentType.isPrimitive() ? n1.c.a(obj.getClass(), tArr) : tArr;
        java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(componentType, java.lang.Math.max(iY, i5) + tArr.length);
        java.lang.System.arraycopy(obj, 0, objNewInstance, 0, java.lang.Math.min(iY, i5));
        java.lang.System.arraycopy(objA, 0, objNewInstance, i5, tArr.length);
        if (i5 < iY) {
            java.lang.System.arraycopy(obj, i5, objNewInstance, tArr.length + i5, iY - i5);
        }
        return objNewInstance;
    }

    public static <T> T[] r(T[] tArr, int i5, T... tArr2) {
        return (T[]) ((java.lang.Object[]) q(tArr, i5, tArr2));
    }

    public static boolean s(java.lang.Object obj) {
        return obj != null && obj.getClass().isArray();
    }

    public static boolean t(java.lang.Object obj) {
        if (obj != null) {
            return s(obj) && java.lang.reflect.Array.getLength(obj) == 0;
        }
        return true;
    }

    public static <T> boolean u(T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    public static <T> boolean v(T[] tArr) {
        return (tArr == null || tArr.length == 0) ? false : true;
    }

    public static /* synthetic */ java.lang.Object w(v1.i iVar, java.lang.Object obj) {
        if (iVar.accept(obj)) {
            return obj;
        }
        return null;
    }

    public static int y(java.lang.Object obj) throws java.lang.IllegalArgumentException {
        if (obj == null) {
            return 0;
        }
        return java.lang.reflect.Array.getLength(obj);
    }

    public static <T> int z(v1.j<T> jVar, int i5, T... tArr) {
        v1.e.q(jVar, "Matcher must be not null !", new java.lang.Object[0]);
        if (!v(tArr)) {
            return -1;
        }
        while (i5 < tArr.length) {
            if (jVar.a(tArr[i5])) {
                return i5;
            }
            i5++;
        }
        return -1;
    }
}
