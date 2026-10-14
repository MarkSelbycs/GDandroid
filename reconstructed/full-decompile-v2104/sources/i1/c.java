package i1;

/* JADX INFO: compiled from: BeanCopier.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c<T> implements w1.a<T>, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w1.a<T> f4637a;

    public c(java.lang.Object obj, T t5, java.lang.reflect.Type type, i1.i iVar) {
        v1.e.q(obj, "Source bean must be not null!", new java.lang.Object[0]);
        v1.e.q(t5, "Target bean must be not null!", new java.lang.Object[0]);
        this.f4637a = obj instanceof java.util.Map ? t5 instanceof java.util.Map ? new i1.m((java.util.Map) obj, (java.util.Map) t5, type, iVar) : new i1.k<>((java.util.Map) obj, t5, type, iVar) : obj instanceof i1.n ? new i1.p<>((i1.n) obj, t5, type, iVar) : t5 instanceof java.util.Map ? new i1.g(obj, (java.util.Map) t5, type, iVar) : new i1.e<>(obj, t5, type, iVar);
    }

    public static <T> i1.c<T> c(java.lang.Object obj, T t5, i1.i iVar) {
        return e(obj, t5, t5.getClass(), iVar);
    }

    public static <T> i1.c<T> e(java.lang.Object obj, T t5, java.lang.reflect.Type type, i1.i iVar) {
        return new i1.c<>(obj, t5, type, iVar);
    }

    @Override // w1.a
    public T b() {
        return this.f4637a.b();
    }
}
