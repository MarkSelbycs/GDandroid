package z1;

/* JADX INFO: compiled from: LookupFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static java.lang.reflect.Constructor<java.lang.invoke.MethodHandles.Lookup> f7113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static java.lang.reflect.Method f7114b;

    static {
        try {
            f7114b = java.lang.invoke.MethodHandles.class.getMethod("privateLookupIn", java.lang.Class.class, java.lang.invoke.MethodHandles.Lookup.class);
        } catch (java.lang.NoSuchMethodException unused) {
        }
        if (f7114b == null) {
            try {
                java.lang.reflect.Constructor<java.lang.invoke.MethodHandles.Lookup> declaredConstructor = java.lang.invoke.MethodHandles.Lookup.class.getDeclaredConstructor(java.lang.Class.class, java.lang.Integer.TYPE);
                f7113a = declaredConstructor;
                declaredConstructor.setAccessible(true);
            } catch (java.lang.NoSuchMethodException e5) {
                throw new java.lang.IllegalStateException("There is neither 'privateLookupIn(Class, Lookup)' nor 'Lookup(Class, int)' method in java.lang.invoke.MethodHandles.", e5);
            }
        }
    }

    public static java.lang.invoke.MethodHandles.Lookup a(java.lang.Class<?> cls) {
        java.lang.reflect.Method method = f7114b;
        if (method != null) {
            try {
                return (java.lang.invoke.MethodHandles.Lookup) method.invoke(java.lang.invoke.MethodHandles.class, cls, java.lang.invoke.MethodHandles.lookup());
            } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException e5) {
                throw new r1.c(e5);
            }
        }
        try {
            return f7113a.newInstance(cls, 15);
        } catch (java.lang.Exception e6) {
            throw new java.lang.IllegalStateException("no 'Lookup(Class, int)' method in java.lang.invoke.MethodHandles.", e6);
        }
    }
}
