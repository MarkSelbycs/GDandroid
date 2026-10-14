package x2;

/* JADX INFO: compiled from: TypeToken.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<? super T> f6794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.reflect.Type f6795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6796c;

    public a() {
        java.lang.reflect.Type typeD = d(getClass());
        this.f6795b = typeD;
        this.f6794a = (java.lang.Class<? super T>) u2.b.k(typeD);
        this.f6796c = typeD.hashCode();
    }

    public static <T> x2.a<T> a(java.lang.Class<T> cls) {
        return new x2.a<>(cls);
    }

    public static x2.a<?> b(java.lang.reflect.Type type) {
        return new x2.a<>(type);
    }

    public static java.lang.reflect.Type d(java.lang.Class<?> cls) {
        java.lang.reflect.Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass instanceof java.lang.Class) {
            throw new java.lang.RuntimeException("Missing type parameter.");
        }
        return u2.b.b(((java.lang.reflect.ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
    }

    public final java.lang.Class<? super T> c() {
        return this.f6794a;
    }

    public final java.lang.reflect.Type e() {
        return this.f6795b;
    }

    public final boolean equals(java.lang.Object obj) {
        return (obj instanceof x2.a) && u2.b.f(this.f6795b, ((x2.a) obj).f6795b);
    }

    public final int hashCode() {
        return this.f6796c;
    }

    public final java.lang.String toString() {
        return u2.b.t(this.f6795b);
    }

    public a(java.lang.reflect.Type type) {
        java.lang.reflect.Type typeB = u2.b.b((java.lang.reflect.Type) u2.a.b(type));
        this.f6795b = typeB;
        this.f6794a = (java.lang.Class<? super T>) u2.b.k(typeB);
        this.f6796c = typeB.hashCode();
    }
}
