package u2;

/* JADX INFO: compiled from: LinkedTreeMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g<K, V> extends java.util.AbstractMap<K, V> implements java.io.Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final java.util.Comparator<java.lang.Comparable> f6340h = new u2.g.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Comparator<? super K> f6341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public u2.g.e<K, V> f6342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6343c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6344d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final u2.g.e<K, V> f6345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public u2.g<K, V>.b f6346f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public u2.g<K, V>.c f6347g;

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    public static class a implements java.util.Comparator<java.lang.Comparable> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(java.lang.Comparable comparable, java.lang.Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    public class b extends java.util.AbstractSet<java.util.Map.Entry<K, V>> {

        /* JADX INFO: compiled from: LinkedTreeMap.java */
        public class a extends u2.g<K, V>.d<java.util.Map.Entry<K, V>> {
            public a() {
                super();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public java.util.Map.Entry<K, V> next() {
                return a();
            }
        }

        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            u2.g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(java.lang.Object obj) {
            return (obj instanceof java.util.Map.Entry) && u2.g.this.e((java.util.Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
            return new u2.g.b.a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(java.lang.Object obj) {
            u2.g.e<K, V> eVarE;
            if (!(obj instanceof java.util.Map.Entry) || (eVarE = u2.g.this.e((java.util.Map.Entry) obj)) == null) {
                return false;
            }
            u2.g.this.q(eVarE, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return u2.g.this.f6343c;
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    public final class c extends java.util.AbstractSet<K> {

        /* JADX INFO: compiled from: LinkedTreeMap.java */
        public class a extends u2.g<K, V>.d<K> {
            public a() {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().f6361f;
            }
        }

        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            u2.g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(java.lang.Object obj) {
            return u2.g.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public java.util.Iterator<K> iterator() {
            return new u2.g.c.a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(java.lang.Object obj) {
            return u2.g.this.u(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return u2.g.this.f6343c;
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    public abstract class d<T> implements java.util.Iterator<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public u2.g.e<K, V> f6352a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public u2.g.e<K, V> f6353b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f6354c;

        public d() {
            this.f6352a = u2.g.this.f6345e.f6359d;
            this.f6354c = u2.g.this.f6344d;
        }

        public final u2.g.e<K, V> a() {
            u2.g.e<K, V> eVar = this.f6352a;
            u2.g gVar = u2.g.this;
            if (eVar == gVar.f6345e) {
                throw new java.util.NoSuchElementException();
            }
            if (gVar.f6344d != this.f6354c) {
                throw new java.util.ConcurrentModificationException();
            }
            this.f6352a = eVar.f6359d;
            this.f6353b = eVar;
            return eVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f6352a != u2.g.this.f6345e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            u2.g.e<K, V> eVar = this.f6353b;
            if (eVar == null) {
                throw new java.lang.IllegalStateException();
            }
            u2.g.this.q(eVar, true);
            this.f6353b = null;
            this.f6354c = u2.g.this.f6344d;
        }
    }

    public g() {
        this(f6340h);
    }

    public final void D(u2.g.e<K, V> eVar) {
        u2.g.e<K, V> eVar2 = eVar.f6357b;
        u2.g.e<K, V> eVar3 = eVar.f6358c;
        u2.g.e<K, V> eVar4 = eVar2.f6357b;
        u2.g.e<K, V> eVar5 = eVar2.f6358c;
        eVar.f6357b = eVar5;
        if (eVar5 != null) {
            eVar5.f6356a = eVar;
        }
        x(eVar, eVar2);
        eVar2.f6358c = eVar;
        eVar.f6356a = eVar2;
        int iMax = java.lang.Math.max(eVar3 != null ? eVar3.f6363h : 0, eVar5 != null ? eVar5.f6363h : 0) + 1;
        eVar.f6363h = iMax;
        eVar2.f6363h = java.lang.Math.max(iMax, eVar4 != null ? eVar4.f6363h : 0) + 1;
    }

    public final boolean b(java.lang.Object obj, java.lang.Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public u2.g.e<K, V> c(K k5, boolean z4) {
        int iCompareTo;
        u2.g.e<K, V> eVar;
        java.util.Comparator<? super K> comparator = this.f6341a;
        u2.g.e<K, V> eVar2 = this.f6342b;
        if (eVar2 != null) {
            java.lang.Comparable comparable = comparator == f6340h ? (java.lang.Comparable) k5 : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(eVar2.f6361f) : comparator.compare(k5, eVar2.f6361f);
                if (iCompareTo == 0) {
                    return eVar2;
                }
                u2.g.e<K, V> eVar3 = iCompareTo < 0 ? eVar2.f6357b : eVar2.f6358c;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z4) {
            return null;
        }
        u2.g.e<K, V> eVar4 = this.f6345e;
        if (eVar2 != null) {
            eVar = new u2.g.e<>(eVar2, k5, eVar4, eVar4.f6360e);
            if (iCompareTo < 0) {
                eVar2.f6357b = eVar;
            } else {
                eVar2.f6358c = eVar;
            }
            h(eVar2, true);
        } else {
            if (comparator == f6340h && !(k5 instanceof java.lang.Comparable)) {
                throw new java.lang.ClassCastException(k5.getClass().getName() + " is not Comparable");
            }
            eVar = new u2.g.e<>(eVar2, k5, eVar4, eVar4.f6360e);
            this.f6342b = eVar;
        }
        this.f6343c++;
        this.f6344d++;
        return eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f6342b = null;
        this.f6343c = 0;
        this.f6344d++;
        u2.g.e<K, V> eVar = this.f6345e;
        eVar.f6360e = eVar;
        eVar.f6359d = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(java.lang.Object obj) {
        return f(obj) != null;
    }

    public u2.g.e<K, V> e(java.util.Map.Entry<?, ?> entry) {
        u2.g.e<K, V> eVarF = f(entry.getKey());
        if (eVarF != null && b(eVarF.f6362g, entry.getValue())) {
            return eVarF;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Set<java.util.Map.Entry<K, V>> entrySet() {
        u2.g<K, V>.b bVar = this.f6346f;
        if (bVar != null) {
            return bVar;
        }
        u2.g<K, V>.b bVar2 = new u2.g.b();
        this.f6346f = bVar2;
        return bVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public u2.g.e<K, V> f(java.lang.Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return c(obj, false);
        } catch (java.lang.ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(java.lang.Object obj) {
        u2.g.e<K, V> eVarF = f(obj);
        if (eVarF != null) {
            return eVarF.f6362g;
        }
        return null;
    }

    public final void h(u2.g.e<K, V> eVar, boolean z4) {
        while (eVar != null) {
            u2.g.e<K, V> eVar2 = eVar.f6357b;
            u2.g.e<K, V> eVar3 = eVar.f6358c;
            int i5 = eVar2 != null ? eVar2.f6363h : 0;
            int i6 = eVar3 != null ? eVar3.f6363h : 0;
            int i7 = i5 - i6;
            if (i7 == -2) {
                u2.g.e<K, V> eVar4 = eVar3.f6357b;
                u2.g.e<K, V> eVar5 = eVar3.f6358c;
                int i8 = (eVar4 != null ? eVar4.f6363h : 0) - (eVar5 != null ? eVar5.f6363h : 0);
                if (i8 == -1 || (i8 == 0 && !z4)) {
                    y(eVar);
                } else {
                    D(eVar3);
                    y(eVar);
                }
                if (z4) {
                    return;
                }
            } else if (i7 == 2) {
                u2.g.e<K, V> eVar6 = eVar2.f6357b;
                u2.g.e<K, V> eVar7 = eVar2.f6358c;
                int i9 = (eVar6 != null ? eVar6.f6363h : 0) - (eVar7 != null ? eVar7.f6363h : 0);
                if (i9 == 1 || (i9 == 0 && !z4)) {
                    D(eVar);
                } else {
                    y(eVar2);
                    D(eVar);
                }
                if (z4) {
                    return;
                }
            } else if (i7 == 0) {
                eVar.f6363h = i5 + 1;
                if (z4) {
                    return;
                }
            } else {
                eVar.f6363h = java.lang.Math.max(i5, i6) + 1;
                if (!z4) {
                    return;
                }
            }
            eVar = eVar.f6356a;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Set<K> keySet() {
        u2.g<K, V>.c cVar = this.f6347g;
        if (cVar != null) {
            return cVar;
        }
        u2.g<K, V>.c cVar2 = new u2.g.c();
        this.f6347g = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k5, V v4) {
        java.util.Objects.requireNonNull(k5, "key == null");
        u2.g.e<K, V> eVarC = c(k5, true);
        V v5 = eVarC.f6362g;
        eVarC.f6362g = v4;
        return v5;
    }

    public void q(u2.g.e<K, V> eVar, boolean z4) {
        int i5;
        if (z4) {
            u2.g.e<K, V> eVar2 = eVar.f6360e;
            eVar2.f6359d = eVar.f6359d;
            eVar.f6359d.f6360e = eVar2;
        }
        u2.g.e<K, V> eVar3 = eVar.f6357b;
        u2.g.e<K, V> eVar4 = eVar.f6358c;
        u2.g.e<K, V> eVar5 = eVar.f6356a;
        int i6 = 0;
        if (eVar3 == null || eVar4 == null) {
            if (eVar3 != null) {
                x(eVar, eVar3);
                eVar.f6357b = null;
            } else if (eVar4 != null) {
                x(eVar, eVar4);
                eVar.f6358c = null;
            } else {
                x(eVar, null);
            }
            h(eVar5, false);
            this.f6343c--;
            this.f6344d++;
            return;
        }
        u2.g.e<K, V> eVarB = eVar3.f6363h > eVar4.f6363h ? eVar3.b() : eVar4.a();
        q(eVarB, false);
        u2.g.e<K, V> eVar6 = eVar.f6357b;
        if (eVar6 != null) {
            i5 = eVar6.f6363h;
            eVarB.f6357b = eVar6;
            eVar6.f6356a = eVarB;
            eVar.f6357b = null;
        } else {
            i5 = 0;
        }
        u2.g.e<K, V> eVar7 = eVar.f6358c;
        if (eVar7 != null) {
            i6 = eVar7.f6363h;
            eVarB.f6358c = eVar7;
            eVar7.f6356a = eVarB;
            eVar.f6358c = null;
        }
        eVarB.f6363h = java.lang.Math.max(i5, i6) + 1;
        x(eVar, eVarB);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(java.lang.Object obj) {
        u2.g.e<K, V> eVarU = u(obj);
        if (eVarU != null) {
            return eVarU.f6362g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f6343c;
    }

    public u2.g.e<K, V> u(java.lang.Object obj) {
        u2.g.e<K, V> eVarF = f(obj);
        if (eVarF != null) {
            q(eVarF, true);
        }
        return eVarF;
    }

    public final void x(u2.g.e<K, V> eVar, u2.g.e<K, V> eVar2) {
        u2.g.e<K, V> eVar3 = eVar.f6356a;
        eVar.f6356a = null;
        if (eVar2 != null) {
            eVar2.f6356a = eVar3;
        }
        if (eVar3 == null) {
            this.f6342b = eVar2;
        } else if (eVar3.f6357b == eVar) {
            eVar3.f6357b = eVar2;
        } else {
            eVar3.f6358c = eVar2;
        }
    }

    public final void y(u2.g.e<K, V> eVar) {
        u2.g.e<K, V> eVar2 = eVar.f6357b;
        u2.g.e<K, V> eVar3 = eVar.f6358c;
        u2.g.e<K, V> eVar4 = eVar3.f6357b;
        u2.g.e<K, V> eVar5 = eVar3.f6358c;
        eVar.f6358c = eVar4;
        if (eVar4 != null) {
            eVar4.f6356a = eVar;
        }
        x(eVar, eVar3);
        eVar3.f6357b = eVar;
        eVar.f6356a = eVar3;
        int iMax = java.lang.Math.max(eVar2 != null ? eVar2.f6363h : 0, eVar4 != null ? eVar4.f6363h : 0) + 1;
        eVar.f6363h = iMax;
        eVar3.f6363h = java.lang.Math.max(iMax, eVar5 != null ? eVar5.f6363h : 0) + 1;
    }

    public g(java.util.Comparator<? super K> comparator) {
        this.f6343c = 0;
        this.f6344d = 0;
        this.f6345e = new u2.g.e<>();
        this.f6341a = comparator == null ? f6340h : comparator;
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    public static final class e<K, V> implements java.util.Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public u2.g.e<K, V> f6356a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public u2.g.e<K, V> f6357b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public u2.g.e<K, V> f6358c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public u2.g.e<K, V> f6359d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public u2.g.e<K, V> f6360e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final K f6361f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public V f6362g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f6363h;

        public e() {
            this.f6361f = null;
            this.f6360e = this;
            this.f6359d = this;
        }

        public u2.g.e<K, V> a() {
            u2.g.e<K, V> eVar = this;
            for (u2.g.e<K, V> eVar2 = this.f6357b; eVar2 != null; eVar2 = eVar2.f6357b) {
                eVar = eVar2;
            }
            return eVar;
        }

        public u2.g.e<K, V> b() {
            u2.g.e<K, V> eVar = this;
            for (u2.g.e<K, V> eVar2 = this.f6358c; eVar2 != null; eVar2 = eVar2.f6358c) {
                eVar = eVar2;
            }
            return eVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(java.lang.Object obj) {
            if (!(obj instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            K k5 = this.f6361f;
            if (k5 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k5.equals(entry.getKey())) {
                return false;
            }
            V v4 = this.f6362g;
            if (v4 == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v4.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f6361f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f6362g;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k5 = this.f6361f;
            int iHashCode = k5 == null ? 0 : k5.hashCode();
            V v4 = this.f6362g;
            return iHashCode ^ (v4 != null ? v4.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v4) {
            V v5 = this.f6362g;
            this.f6362g = v4;
            return v5;
        }

        public java.lang.String toString() {
            return this.f6361f + "=" + this.f6362g;
        }

        public e(u2.g.e<K, V> eVar, K k5, u2.g.e<K, V> eVar2, u2.g.e<K, V> eVar3) {
            this.f6356a = eVar;
            this.f6361f = k5;
            this.f6363h = 1;
            this.f6359d = eVar2;
            this.f6360e = eVar3;
            eVar3.f6359d = this;
            eVar2.f6360e = this;
        }
    }
}
