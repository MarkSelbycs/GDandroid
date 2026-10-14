package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g {
    public static float a(float f5, int i5) {
        if (i5 < 1 || i5 > 8) {
            return f5;
        }
        float fPow = (long) java.lang.Math.pow(10.0d, i5);
        return java.lang.Math.round(f5 * fPow) / fPow;
    }

    public static java.lang.Object a(java.lang.Class<?> cls, java.lang.Class<?>[] clsArr, java.lang.Object[] objArr) {
        try {
            cls.getDeclaredConstructors();
            java.lang.reflect.Constructor<?> declaredConstructor = cls.getDeclaredConstructor(clsArr);
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(objArr);
        } catch (java.lang.IllegalAccessException | java.lang.InstantiationException | java.lang.NoSuchMethodException | java.lang.reflect.InvocationTargetException unused) {
            return null;
        }
    }

    public static java.lang.Object a(java.lang.Object obj, java.lang.String str) {
        return com.msec.vvv.a(1556, new java.lang.Object[]{obj, str});
    }

    public static java.lang.Object a(java.lang.Object obj, java.lang.String str, java.lang.Class<?>[] clsArr, java.lang.Object[] objArr) {
        return com.msec.vvv.a(1555, new java.lang.Object[]{obj, str, clsArr, objArr});
    }

    public static java.lang.reflect.Field a(java.lang.Class<?> cls, java.lang.String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static java.lang.reflect.Method a(java.lang.Class cls, java.lang.String str, java.lang.Class[] clsArr) {
        return (java.lang.reflect.Method) com.msec.vvv.a(1554, new java.lang.Object[]{cls, str, clsArr});
    }

    public static boolean a(java.lang.Class cls) {
        return ((java.lang.Boolean) com.msec.vvv.a(1553, new java.lang.Object[]{cls})).booleanValue();
    }

    public static boolean a(java.lang.String str) {
        return ((java.lang.Boolean) com.msec.vvv.a(1552, new java.lang.Object[]{str})).booleanValue();
    }

    public static java.lang.Object b(java.lang.Object obj, java.lang.String str) {
        return com.msec.vvv.a(1567, new java.lang.Object[]{obj, str});
    }

    public static java.lang.reflect.Field b(java.lang.Class cls, java.lang.String str) {
        return (java.lang.reflect.Field) com.msec.vvv.a(1566, new java.lang.Object[]{cls, str});
    }

    public static java.lang.reflect.Method b(java.lang.Class<?> cls, java.lang.String str, java.lang.Class<?>... clsArr) {
        return (java.lang.reflect.Method) com.msec.vvv.a(1565, new java.lang.Object[]{cls, str, clsArr});
    }

    public static java.lang.reflect.Field c(java.lang.Class cls, java.lang.String str) {
        return (java.lang.reflect.Field) com.msec.vvv.a(1564, new java.lang.Object[]{cls, str});
    }
}
