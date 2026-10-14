package e2;

/* JADX INFO: compiled from: ClassUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k {
    public static <T> java.lang.Class<T> a(T t5) {
        if (t5 == null) {
            return null;
        }
        return (java.lang.Class<T>) t5.getClass();
    }

    public static java.lang.Class<?>[] b(java.lang.Object... objArr) {
        java.lang.Class<?>[] clsArr = new java.lang.Class[objArr.length];
        for (int i5 = 0; i5 < objArr.length; i5++) {
            java.lang.Object obj = objArr[i5];
            if (obj instanceof h1.i) {
                clsArr[i5] = ((h1.i) obj).a();
            } else if (obj == null) {
                clsArr[i5] = java.lang.Object.class;
            } else {
                clsArr[i5] = obj.getClass();
            }
        }
        return clsArr;
    }

    public static java.lang.Object c(java.lang.Class<?> cls) {
        if (cls.isPrimitive()) {
            return e(cls);
        }
        return null;
    }

    public static java.lang.Object[] d(java.lang.Class<?>... clsArr) {
        java.lang.Object[] objArr = new java.lang.Object[clsArr.length];
        for (int i5 = 0; i5 < clsArr.length; i5++) {
            objArr[i5] = c(clsArr[i5]);
        }
        return objArr;
    }

    public static java.lang.Object e(java.lang.Class<?> cls) {
        if (java.lang.Long.TYPE == cls) {
            return 0L;
        }
        if (java.lang.Integer.TYPE == cls) {
            return 0;
        }
        if (java.lang.Short.TYPE == cls) {
            return (short) 0;
        }
        if (java.lang.Character.TYPE == cls) {
            return (char) 0;
        }
        if (java.lang.Byte.TYPE == cls) {
            return (byte) 0;
        }
        if (java.lang.Double.TYPE == cls) {
            return java.lang.Double.valueOf(0.0d);
        }
        if (java.lang.Float.TYPE == cls) {
            return java.lang.Float.valueOf(0.0f);
        }
        if (java.lang.Boolean.TYPE == cls) {
            return java.lang.Boolean.FALSE;
        }
        return null;
    }

    public static java.lang.Class<?> f(java.lang.Class<?> cls) {
        return g(cls, 0);
    }

    public static java.lang.Class<?> g(java.lang.Class<?> cls, int i5) {
        return e2.d0.e(e2.d0.o(cls, i5));
    }

    public static boolean h(java.lang.Class<?> cls) {
        return java.lang.reflect.Modifier.isAbstract(cls.getModifiers());
    }

    public static boolean i(java.lang.Class<?>[] clsArr, java.lang.Class<?>[] clsArr2) {
        if (e2.c.u(clsArr) && e2.c.u(clsArr2)) {
            return true;
        }
        if (clsArr == null || clsArr2 == null || clsArr.length != clsArr2.length) {
            return false;
        }
        for (int i5 = 0; i5 < clsArr.length; i5++) {
            java.lang.Class<?> cls = clsArr[i5];
            java.lang.Class<?> cls2 = clsArr2[i5];
            if (k(cls) && k(cls2)) {
                if (n1.b.b(cls) != n1.b.b(cls2)) {
                    return false;
                }
            } else if (!cls.isAssignableFrom(cls2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean j(java.lang.Class<?> cls, java.lang.Class<?> cls2) {
        if (cls == null || cls2 == null) {
            return false;
        }
        if (cls.isAssignableFrom(cls2)) {
            return true;
        }
        if (cls.isPrimitive()) {
            return cls.equals(n1.b.f5246q.get(cls2));
        }
        java.lang.Class<?> cls3 = n1.b.f5247r.get(cls2);
        return cls3 != null && cls.isAssignableFrom(cls3);
    }

    public static boolean k(java.lang.Class<?> cls) {
        if (cls == null) {
            return false;
        }
        return cls.isPrimitive() || n(cls);
    }

    public static boolean l(java.lang.Class<?> cls) {
        java.lang.Package r5 = cls.getPackage();
        if (r5 == null) {
            return false;
        }
        java.lang.String name = r5.getName();
        return name.startsWith("java.") || name.startsWith("javax.") || cls.getClassLoader() == null;
    }

    public static boolean m(java.lang.Class<?> cls) {
        return (cls == null || cls.isInterface() || h(cls) || cls.isEnum() || cls.isArray() || cls.isAnnotation() || cls.isSynthetic() || cls.isPrimitive()) ? false : true;
    }

    public static boolean n(java.lang.Class<?> cls) {
        if (cls == null) {
            return false;
        }
        return n1.b.f5246q.containsKey(cls);
    }

    public static boolean o(java.lang.reflect.Method method) {
        v1.e.q(method, "Method to provided is null.", new java.lang.Object[0]);
        return java.lang.reflect.Modifier.isStatic(method.getModifiers());
    }

    public static java.lang.reflect.Method p(java.lang.reflect.Method method) {
        if (method != null && !method.isAccessible()) {
            method.setAccessible(true);
        }
        return method;
    }
}
