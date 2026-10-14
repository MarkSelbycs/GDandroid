package o;

/* JADX INFO: compiled from: TypefaceCompatApi28Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f extends o.e {
    @Override // o.e
    public android.graphics.Typeface h(java.lang.Object obj) {
        try {
            java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(this.f5276g, 1);
            java.lang.reflect.Array.set(objNewInstance, 0, obj);
            return (android.graphics.Typeface) this.f5282m.invoke(null, objNewInstance, "sans-serif", -1, -1);
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException e5) {
            throw new java.lang.RuntimeException(e5);
        }
    }

    @Override // o.e
    public java.lang.reflect.Method s(java.lang.Class<?> cls) throws java.lang.NoSuchMethodException {
        java.lang.Class cls2 = java.lang.Integer.TYPE;
        java.lang.reflect.Method declaredMethod = android.graphics.Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", java.lang.reflect.Array.newInstance(cls, 1).getClass(), java.lang.String.class, cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
