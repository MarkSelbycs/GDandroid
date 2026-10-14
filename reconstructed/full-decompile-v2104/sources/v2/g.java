package v2;

/* JADX INFO: compiled from: MapTypeAdapterFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g implements s2.t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u2.c f6471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f6472b;

    /* JADX INFO: compiled from: MapTypeAdapterFactory.java */
    public final class a<K, V> extends s2.s<java.util.Map<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s2.s<K> f6473a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final s2.s<V> f6474b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final u2.h<? extends java.util.Map<K, V>> f6475c;

        public a(s2.e eVar, java.lang.reflect.Type type, s2.s<K> sVar, java.lang.reflect.Type type2, s2.s<V> sVar2, u2.h<? extends java.util.Map<K, V>> hVar) {
            this.f6473a = new v2.l(eVar, sVar, type);
            this.f6474b = new v2.l(eVar, sVar2, type2);
            this.f6475c = hVar;
        }

        public final java.lang.String e(s2.i iVar) {
            if (!iVar.i()) {
                if (iVar.g()) {
                    return "null";
                }
                throw new java.lang.AssertionError();
            }
            s2.o oVarD = iVar.d();
            if (oVarD.q()) {
                return java.lang.String.valueOf(oVarD.n());
            }
            if (oVarD.o()) {
                return java.lang.Boolean.toString(oVarD.j());
            }
            if (oVarD.s()) {
                return oVarD.e();
            }
            throw new java.lang.AssertionError();
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public java.util.Map<K, V> b(y2.a aVar) throws java.io.IOException {
            y2.b bVarV = aVar.V();
            if (bVarV == y2.b.NULL) {
                aVar.K();
                return null;
            }
            java.util.Map<K, V> mapA = this.f6475c.a();
            if (bVarV == y2.b.BEGIN_ARRAY) {
                aVar.c();
                while (aVar.r()) {
                    aVar.c();
                    K kB = this.f6473a.b(aVar);
                    if (mapA.put(kB, this.f6474b.b(aVar)) != null) {
                        throw new s2.q("duplicate key: " + kB);
                    }
                    aVar.j();
                }
                aVar.j();
            } else {
                aVar.e();
                while (aVar.r()) {
                    u2.e.f6338a.a(aVar);
                    K kB2 = this.f6473a.b(aVar);
                    if (mapA.put(kB2, this.f6474b.b(aVar)) != null) {
                        throw new s2.q("duplicate key: " + kB2);
                    }
                }
                aVar.l();
            }
            return mapA;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.Map<K, V> map) throws java.io.IOException {
            if (map == null) {
                cVar.u();
                return;
            }
            if (!v2.g.this.f6472b) {
                cVar.h();
                for (java.util.Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.r(java.lang.String.valueOf(entry.getKey()));
                    this.f6474b.d(cVar, entry.getValue());
                }
                cVar.l();
                return;
            }
            java.util.ArrayList arrayList = new java.util.ArrayList(map.size());
            java.util.ArrayList arrayList2 = new java.util.ArrayList(map.size());
            int i5 = 0;
            boolean z4 = false;
            for (java.util.Map.Entry<K, V> entry2 : map.entrySet()) {
                s2.i iVarC = this.f6473a.c(entry2.getKey());
                arrayList.add(iVarC);
                arrayList2.add(entry2.getValue());
                z4 |= iVarC.f() || iVarC.h();
            }
            if (!z4) {
                cVar.h();
                while (i5 < arrayList.size()) {
                    cVar.r(e((s2.i) arrayList.get(i5)));
                    this.f6474b.d(cVar, (V) arrayList2.get(i5));
                    i5++;
                }
                cVar.l();
                return;
            }
            cVar.f();
            while (i5 < arrayList.size()) {
                cVar.f();
                u2.j.b((s2.i) arrayList.get(i5), cVar);
                this.f6474b.d(cVar, (V) arrayList2.get(i5));
                cVar.j();
                i5++;
            }
            cVar.j();
        }
    }

    public g(u2.c cVar, boolean z4) {
        this.f6471a = cVar;
        this.f6472b = z4;
    }

    @Override // s2.t
    public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
        java.lang.reflect.Type typeE = aVar.e();
        if (!java.util.Map.class.isAssignableFrom(aVar.c())) {
            return null;
        }
        java.lang.reflect.Type[] typeArrJ = u2.b.j(typeE, u2.b.k(typeE));
        return new v2.g.a(eVar, typeArrJ[0], b(eVar, typeArrJ[0]), typeArrJ[1], eVar.g(x2.a.b(typeArrJ[1])), this.f6471a.a(aVar));
    }

    public final s2.s<?> b(s2.e eVar, java.lang.reflect.Type type) {
        return (type == java.lang.Boolean.TYPE || type == java.lang.Boolean.class) ? v2.m.f6506f : eVar.g(x2.a.b(type));
    }
}
