package o1;

/* JADX INFO: compiled from: CollectionConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l implements n1.e<java.util.Collection<?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.reflect.Type f5301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.reflect.Type f5302b;

    public l(java.lang.reflect.Type type) {
        this(type, e2.d0.n(type));
    }

    @Override // n1.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public java.util.Collection<?> b(java.lang.Object obj, java.util.Collection<?> collection) throws java.lang.IllegalArgumentException {
        return (java.util.Collection) e2.p.c(c(obj), collection);
    }

    public java.util.Collection<?> c(java.lang.Object obj) {
        return l1.c.b(l1.c.d(e2.d0.e(this.f5301a), e2.d0.e(this.f5302b)), obj, this.f5302b);
    }

    public l(java.lang.reflect.Type type, java.lang.reflect.Type type2) {
        this.f5301a = type;
        this.f5302b = type2;
    }
}
