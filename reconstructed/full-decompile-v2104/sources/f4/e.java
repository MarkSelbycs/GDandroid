package f4;

/* JADX INFO: compiled from: RouteException.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e extends java.lang.RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.reflect.Method f4260b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.io.IOException f4261a;

    static {
        java.lang.reflect.Method declaredMethod;
        try {
            declaredMethod = java.lang.Throwable.class.getDeclaredMethod("addSuppressed", java.lang.Throwable.class);
        } catch (java.lang.Exception unused) {
            declaredMethod = null;
        }
        f4260b = declaredMethod;
    }

    public e(java.io.IOException iOException) {
        super(iOException);
        this.f4261a = iOException;
    }

    public void b(java.io.IOException iOException) {
        c(iOException, this.f4261a);
        this.f4261a = iOException;
    }

    public final void c(java.io.IOException iOException, java.io.IOException iOException2) {
        java.lang.reflect.Method method = f4260b;
        if (method != null) {
            try {
                method.invoke(iOException, iOException2);
            } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            }
        }
    }

    public java.io.IOException e() {
        return this.f4261a;
    }
}
