package n1;

/* JADX INFO: compiled from: AbstractConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a<T> implements n1.e<T>, java.io.Serializable {
    @Override // n1.e
    public T b(java.lang.Object obj, T t5) {
        java.lang.Class clsF = f();
        if (clsF == null && t5 == null) {
            throw new java.lang.NullPointerException(b2.c.i("[type] and [defaultValue] are both null for Converter [{}], we can not know what type to convert !", getClass().getName()));
        }
        if (clsF == null) {
            clsF = t5.getClass();
        }
        if (obj == null) {
            return t5;
        }
        if (t5 != null && !clsF.isInstance(t5)) {
            throw new java.lang.IllegalArgumentException(b2.c.i("Default value [{}]({}) is not the instance of [{}]", t5, t5.getClass(), clsF));
        }
        if (clsF.isInstance(obj) && !java.util.Map.class.isAssignableFrom(clsF)) {
            return (T) clsF.cast(obj);
        }
        T tC = c(obj);
        return tC == null ? t5 : tC;
    }

    public abstract T c(java.lang.Object obj);

    public java.lang.String e(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.lang.CharSequence) {
            return obj.toString();
        }
        if (e2.c.s(obj)) {
            return e2.c.C(obj);
        }
        return e2.f.d(obj) ? e2.f.f(((java.lang.Character) obj).charValue()) : obj.toString();
    }

    public java.lang.Class<T> f() {
        return (java.lang.Class<T>) e2.k.f(getClass());
    }
}
