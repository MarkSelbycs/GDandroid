package i4;

/* JADX INFO: compiled from: OptionalMethod.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<?> f4685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f4686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Class[] f4687c;

    public d(java.lang.Class<?> cls, java.lang.String str, java.lang.Class... clsArr) {
        this.f4685a = cls;
        this.f4686b = str;
        this.f4687c = clsArr;
    }

    public static java.lang.reflect.Method b(java.lang.Class<?> cls, java.lang.String str, java.lang.Class[] clsArr) {
        try {
            java.lang.reflect.Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
            } catch (java.lang.NoSuchMethodException unused) {
            }
            return method;
        } catch (java.lang.NoSuchMethodException unused2) {
            return null;
        }
    }

    public final java.lang.reflect.Method a(java.lang.Class<?> cls) {
        java.lang.Class<?> cls2;
        java.lang.String str = this.f4686b;
        if (str == null) {
            return null;
        }
        java.lang.reflect.Method methodB = b(cls, str, this.f4687c);
        if (methodB == null || (cls2 = this.f4685a) == null || cls2.isAssignableFrom(methodB.getReturnType())) {
            return methodB;
        }
        return null;
    }

    public java.lang.Object c(T t5, java.lang.Object... objArr) throws java.lang.reflect.InvocationTargetException {
        java.lang.reflect.Method methodA = a(t5.getClass());
        if (methodA == null) {
            throw new java.lang.AssertionError("Method " + this.f4686b + " not supported for object " + t5);
        }
        try {
            return methodA.invoke(t5, objArr);
        } catch (java.lang.IllegalAccessException e5) {
            java.lang.AssertionError assertionError = new java.lang.AssertionError("Unexpectedly could not call: " + methodA);
            assertionError.initCause(e5);
            throw assertionError;
        }
    }

    public java.lang.Object d(T t5, java.lang.Object... objArr) throws java.lang.reflect.InvocationTargetException {
        java.lang.reflect.Method methodA = a(t5.getClass());
        if (methodA == null) {
            return null;
        }
        try {
            return methodA.invoke(t5, objArr);
        } catch (java.lang.IllegalAccessException unused) {
            return null;
        }
    }

    public java.lang.Object e(T t5, java.lang.Object... objArr) {
        try {
            return d(t5, objArr);
        } catch (java.lang.reflect.InvocationTargetException e5) {
            java.lang.Throwable targetException = e5.getTargetException();
            if (targetException instanceof java.lang.RuntimeException) {
                throw ((java.lang.RuntimeException) targetException);
            }
            java.lang.AssertionError assertionError = new java.lang.AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public java.lang.Object f(T t5, java.lang.Object... objArr) {
        try {
            return c(t5, objArr);
        } catch (java.lang.reflect.InvocationTargetException e5) {
            java.lang.Throwable targetException = e5.getTargetException();
            if (targetException instanceof java.lang.RuntimeException) {
                throw ((java.lang.RuntimeException) targetException);
            }
            java.lang.AssertionError assertionError = new java.lang.AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public boolean g(T t5) {
        return a(t5.getClass()) != null;
    }
}
