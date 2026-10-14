package v2;

/* JADX INFO: compiled from: CollectionTypeAdapterFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b implements s2.t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u2.c f6456a;

    /* JADX INFO: compiled from: CollectionTypeAdapterFactory.java */
    public static final class a<E> extends s2.s<java.util.Collection<E>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s2.s<E> f6457a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final u2.h<? extends java.util.Collection<E>> f6458b;

        public a(s2.e eVar, java.lang.reflect.Type type, s2.s<E> sVar, u2.h<? extends java.util.Collection<E>> hVar) {
            this.f6457a = new v2.l(eVar, sVar, type);
            this.f6458b = hVar;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.util.Collection<E> b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            java.util.Collection<E> collectionA = this.f6458b.a();
            aVar.c();
            while (aVar.r()) {
                collectionA.add(this.f6457a.b(aVar));
            }
            aVar.j();
            return collectionA;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.Collection<E> collection) throws java.io.IOException {
            if (collection == null) {
                cVar.u();
                return;
            }
            cVar.f();
            java.util.Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f6457a.d(cVar, it.next());
            }
            cVar.j();
        }
    }

    public b(u2.c cVar) {
        this.f6456a = cVar;
    }

    @Override // s2.t
    public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
        java.lang.reflect.Type typeE = aVar.e();
        java.lang.Class<? super T> clsC = aVar.c();
        if (!java.util.Collection.class.isAssignableFrom(clsC)) {
            return null;
        }
        java.lang.reflect.Type typeH = u2.b.h(typeE, clsC);
        return new v2.b.a(eVar, typeH, eVar.g(x2.a.b(typeH)), this.f6456a.a(aVar));
    }
}
