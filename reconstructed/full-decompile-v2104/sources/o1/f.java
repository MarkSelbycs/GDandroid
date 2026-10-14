package o1;

/* JADX INFO: compiled from: BeanConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f<T> extends n1.a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.reflect.Type f5293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.Class<T> f5294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i1.i f5295c;

    public f(java.lang.reflect.Type type) {
        this(type, i1.i.e().x(true));
    }

    @Override // n1.a
    public T c(java.lang.Object obj) {
        boolean z4 = obj instanceof java.util.Map;
        if (z4 || (obj instanceof i1.n) || h1.h.j(obj.getClass())) {
            return (z4 && this.f5294b.isInterface()) ? (T) a2.h.c((java.util.Map) obj).q(this.f5294b) : (T) i1.c.e(obj, e2.x.E(this.f5294b), this.f5293a, this.f5295c).b();
        }
        if (obj instanceof byte[]) {
            return (T) e2.p.e((byte[]) obj);
        }
        throw new n1.d("Unsupported source type: {}", obj.getClass());
    }

    @Override // n1.a
    public java.lang.Class<T> f() {
        return this.f5294b;
    }

    public f(java.lang.reflect.Type type, i1.i iVar) {
        this.f5293a = type;
        this.f5294b = (java.lang.Class<T>) e2.d0.e(type);
        this.f5295c = iVar;
    }
}
