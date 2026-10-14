package o;

/* JADX INFO: compiled from: TypefaceCompatApi21Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d extends o.h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static java.lang.Class<?> f5271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static java.lang.reflect.Constructor<?> f5272c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static java.lang.reflect.Method f5273d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static java.lang.reflect.Method f5274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f5275f;

    public static boolean g(java.lang.Object obj, java.lang.String str, int i5, boolean z4) throws java.lang.NoSuchMethodException {
        i();
        try {
            return ((java.lang.Boolean) f5273d.invoke(obj, str, java.lang.Integer.valueOf(i5), java.lang.Boolean.valueOf(z4))).booleanValue();
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException e5) {
            throw new java.lang.RuntimeException(e5);
        }
    }

    public static android.graphics.Typeface h(java.lang.Object obj) throws java.lang.NoSuchMethodException {
        i();
        try {
            java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(f5271b, 1);
            java.lang.reflect.Array.set(objNewInstance, 0, obj);
            return (android.graphics.Typeface) f5274e.invoke(null, objNewInstance);
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException e5) {
            throw new java.lang.RuntimeException(e5);
        }
    }

    public static void i() throws java.lang.NoSuchMethodException {
        java.lang.reflect.Method method;
        java.lang.Class<?> cls;
        java.lang.reflect.Method method2;
        if (f5275f) {
            return;
        }
        f5275f = true;
        java.lang.reflect.Constructor<?> constructor = null;
        try {
            cls = java.lang.Class.forName("android.graphics.FontFamily");
            java.lang.reflect.Constructor<?> constructor2 = cls.getConstructor(new java.lang.Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", java.lang.String.class, java.lang.Integer.TYPE, java.lang.Boolean.TYPE);
            method = android.graphics.Typeface.class.getMethod("createFromFamiliesWithDefault", java.lang.reflect.Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (java.lang.ClassNotFoundException | java.lang.NoSuchMethodException e5) {
            android.util.Log.e("TypefaceCompatApi21Impl", e5.getClass().getName(), e5);
            method = null;
            cls = null;
            method2 = null;
        }
        f5272c = constructor;
        f5271b = cls;
        f5273d = method2;
        f5274e = method;
    }

    public static java.lang.Object j() throws java.lang.NoSuchMethodException {
        i();
        try {
            return f5272c.newInstance(new java.lang.Object[0]);
        } catch (java.lang.IllegalAccessException | java.lang.InstantiationException | java.lang.reflect.InvocationTargetException e5) {
            throw new java.lang.RuntimeException(e5);
        }
    }

    @Override // o.h
    public android.graphics.Typeface a(android.content.Context context, n.a.c cVar, android.content.res.Resources resources, int i5) throws java.lang.NoSuchMethodException {
        java.lang.Object objJ = j();
        for (n.a.d dVar : cVar.a()) {
            java.io.File fileD = o.i.d(context);
            if (fileD == null) {
                return null;
            }
            try {
                if (!o.i.b(fileD, resources, dVar.b())) {
                    return null;
                }
                if (!g(objJ, fileD.getPath(), dVar.e(), dVar.f())) {
                    return null;
                }
                fileD.delete();
            } catch (java.lang.RuntimeException unused) {
                return null;
            } finally {
                fileD.delete();
            }
        }
        return h(objJ);
    }
}
