package v2;

/* JADX INFO: compiled from: ArrayTypeAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a<E> extends s2.s<java.lang.Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final s2.t f6453c = new v2.a.C0092a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<E> f6454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s2.s<E> f6455b;

    /* JADX INFO: renamed from: v2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ArrayTypeAdapter.java */
    public static class C0092a implements s2.t {
        @Override // s2.t
        public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
            java.lang.reflect.Type typeE = aVar.e();
            if (!(typeE instanceof java.lang.reflect.GenericArrayType) && (!(typeE instanceof java.lang.Class) || !((java.lang.Class) typeE).isArray())) {
                return null;
            }
            java.lang.reflect.Type typeG = u2.b.g(typeE);
            return new v2.a(eVar, eVar.g(x2.a.b(typeG)), u2.b.k(typeG));
        }
    }

    public a(s2.e eVar, s2.s<E> sVar, java.lang.Class<E> cls) {
        this.f6455b = new v2.l(eVar, sVar, cls);
        this.f6454a = cls;
    }

    @Override // s2.s
    public java.lang.Object b(y2.a aVar) throws java.io.IOException {
        if (aVar.V() == y2.b.NULL) {
            aVar.K();
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        aVar.c();
        while (aVar.r()) {
            arrayList.add(this.f6455b.b(aVar));
        }
        aVar.j();
        java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance((java.lang.Class<?>) this.f6454a, arrayList.size());
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            java.lang.reflect.Array.set(objNewInstance, i5, arrayList.get(i5));
        }
        return objNewInstance;
    }

    @Override // s2.s
    public void d(y2.c cVar, java.lang.Object obj) throws java.io.IOException {
        if (obj == null) {
            cVar.u();
            return;
        }
        cVar.f();
        int length = java.lang.reflect.Array.getLength(obj);
        for (int i5 = 0; i5 < length; i5++) {
            this.f6455b.d(cVar, (E) java.lang.reflect.Array.get(obj, i5));
        }
        cVar.j();
    }
}
