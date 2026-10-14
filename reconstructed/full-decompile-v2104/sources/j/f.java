package j;

/* JADX INFO: compiled from: MapCollections.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class f<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public j.f<K, V>.b f4719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public j.f<K, V>.c f4720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j.f<K, V>.e f4721c;

    /* JADX INFO: compiled from: MapCollections.java */
    public final class a<T> implements java.util.Iterator<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f4722a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4723b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f4724c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f4725d = false;

        public a(int i5) {
            this.f4722a = i5;
            this.f4723b = j.f.this.d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4724c < this.f4723b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new java.util.NoSuchElementException();
            }
            T t5 = (T) j.f.this.b(this.f4724c, this.f4722a);
            this.f4724c++;
            this.f4725d = true;
            return t5;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f4725d) {
                throw new java.lang.IllegalStateException();
            }
            int i5 = this.f4724c - 1;
            this.f4724c = i5;
            this.f4723b--;
            this.f4725d = false;
            j.f.this.h(i5);
        }
    }

    /* JADX INFO: compiled from: MapCollections.java */
    public final class b implements java.util.Set<java.util.Map.Entry<K, V>> {
        public b() {
        }

        @Override // java.util.Set, java.util.Collection
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean add(java.util.Map.Entry<K, V> entry) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(java.util.Collection<? extends java.util.Map.Entry<K, V>> collection) {
            int iD = j.f.this.d();
            for (java.util.Map.Entry<K, V> entry : collection) {
                j.f.this.g(entry.getKey(), entry.getValue());
            }
            return iD != j.f.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            j.f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(java.lang.Object obj) {
            if (!(obj instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            int iE = j.f.this.e(entry.getKey());
            if (iE < 0) {
                return false;
            }
            return j.c.c(j.f.this.b(iE, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(java.util.Collection<?> collection) {
            java.util.Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(java.lang.Object obj) {
            return j.f.k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iD = j.f.this.d() - 1; iD >= 0; iD--) {
                java.lang.Object objB = j.f.this.b(iD, 0);
                java.lang.Object objB2 = j.f.this.b(iD, 1);
                iHashCode += (objB == null ? 0 : objB.hashCode()) ^ (objB2 == null ? 0 : objB2.hashCode());
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return j.f.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
            return new j.f.d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(java.lang.Object obj) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(java.util.Collection<?> collection) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(java.util.Collection<?> collection) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return j.f.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public java.lang.Object[] toArray() {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    /* JADX INFO: compiled from: MapCollections.java */
    public final class c implements java.util.Set<K> {
        public c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k5) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(java.util.Collection<? extends K> collection) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            j.f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(java.lang.Object obj) {
            return j.f.this.e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(java.util.Collection<?> collection) {
            return j.f.j(j.f.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(java.lang.Object obj) {
            return j.f.k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iD = j.f.this.d() - 1; iD >= 0; iD--) {
                java.lang.Object objB = j.f.this.b(iD, 0);
                iHashCode += objB == null ? 0 : objB.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return j.f.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public java.util.Iterator<K> iterator() {
            return new j.f.a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(java.lang.Object obj) {
            int iE = j.f.this.e(obj);
            if (iE < 0) {
                return false;
            }
            j.f.this.h(iE);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(java.util.Collection<?> collection) {
            return j.f.o(j.f.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(java.util.Collection<?> collection) {
            return j.f.p(j.f.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return j.f.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public java.lang.Object[] toArray() {
            return j.f.this.q(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) j.f.this.r(tArr, 0);
        }
    }

    /* JADX INFO: compiled from: MapCollections.java */
    public final class d implements java.util.Iterator<java.util.Map.Entry<K, V>>, java.util.Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f4729a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f4731c = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4730b = -1;

        public d() {
            this.f4729a = j.f.this.d() - 1;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public java.util.Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new java.util.NoSuchElementException();
            }
            this.f4730b++;
            this.f4731c = true;
            return this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(java.lang.Object obj) {
            if (!this.f4731c) {
                throw new java.lang.IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            return j.c.c(entry.getKey(), j.f.this.b(this.f4730b, 0)) && j.c.c(entry.getValue(), j.f.this.b(this.f4730b, 1));
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f4731c) {
                return (K) j.f.this.b(this.f4730b, 0);
            }
            throw new java.lang.IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f4731c) {
                return (V) j.f.this.b(this.f4730b, 1);
            }
            throw new java.lang.IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4730b < this.f4729a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.f4731c) {
                throw new java.lang.IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            java.lang.Object objB = j.f.this.b(this.f4730b, 0);
            java.lang.Object objB2 = j.f.this.b(this.f4730b, 1);
            return (objB == null ? 0 : objB.hashCode()) ^ (objB2 != null ? objB2.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f4731c) {
                throw new java.lang.IllegalStateException();
            }
            j.f.this.h(this.f4730b);
            this.f4730b--;
            this.f4729a--;
            this.f4731c = false;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v4) {
            if (this.f4731c) {
                return (V) j.f.this.i(this.f4730b, v4);
            }
            throw new java.lang.IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public java.lang.String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* JADX INFO: compiled from: MapCollections.java */
    public final class e implements java.util.Collection<V> {
        public e() {
        }

        @Override // java.util.Collection
        public boolean add(V v4) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(java.util.Collection<? extends V> collection) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            j.f.this.a();
        }

        @Override // java.util.Collection
        public boolean contains(java.lang.Object obj) {
            return j.f.this.f(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(java.util.Collection<?> collection) {
            java.util.Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return j.f.this.d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public java.util.Iterator<V> iterator() {
            return new j.f.a(1);
        }

        @Override // java.util.Collection
        public boolean remove(java.lang.Object obj) {
            int iF = j.f.this.f(obj);
            if (iF < 0) {
                return false;
            }
            j.f.this.h(iF);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(java.util.Collection<?> collection) {
            int iD = j.f.this.d();
            int i5 = 0;
            boolean z4 = false;
            while (i5 < iD) {
                if (collection.contains(j.f.this.b(i5, 1))) {
                    j.f.this.h(i5);
                    i5--;
                    iD--;
                    z4 = true;
                }
                i5++;
            }
            return z4;
        }

        @Override // java.util.Collection
        public boolean retainAll(java.util.Collection<?> collection) {
            int iD = j.f.this.d();
            int i5 = 0;
            boolean z4 = false;
            while (i5 < iD) {
                if (!collection.contains(j.f.this.b(i5, 1))) {
                    j.f.this.h(i5);
                    i5--;
                    iD--;
                    z4 = true;
                }
                i5++;
            }
            return z4;
        }

        @Override // java.util.Collection
        public int size() {
            return j.f.this.d();
        }

        @Override // java.util.Collection
        public java.lang.Object[] toArray() {
            return j.f.this.q(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) j.f.this.r(tArr, 1);
        }
    }

    public static <K, V> boolean j(java.util.Map<K, V> map, java.util.Collection<?> collection) {
        java.util.Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean k(java.util.Set<T> set, java.lang.Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof java.util.Set) {
            java.util.Set set2 = (java.util.Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (java.lang.ClassCastException | java.lang.NullPointerException unused) {
            }
        }
        return false;
    }

    public static <K, V> boolean o(java.util.Map<K, V> map, java.util.Collection<?> collection) {
        int size = map.size();
        java.util.Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean p(java.util.Map<K, V> map, java.util.Collection<?> collection) {
        int size = map.size();
        java.util.Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public abstract void a();

    public abstract java.lang.Object b(int i5, int i6);

    public abstract java.util.Map<K, V> c();

    public abstract int d();

    public abstract int e(java.lang.Object obj);

    public abstract int f(java.lang.Object obj);

    public abstract void g(K k5, V v4);

    public abstract void h(int i5);

    public abstract V i(int i5, V v4);

    public java.util.Set<java.util.Map.Entry<K, V>> l() {
        if (this.f4719a == null) {
            this.f4719a = new j.f.b();
        }
        return this.f4719a;
    }

    public java.util.Set<K> m() {
        if (this.f4720b == null) {
            this.f4720b = new j.f.c();
        }
        return this.f4720b;
    }

    public java.util.Collection<V> n() {
        if (this.f4721c == null) {
            this.f4721c = new j.f.e();
        }
        return this.f4721c;
    }

    public java.lang.Object[] q(int i5) {
        int iD = d();
        java.lang.Object[] objArr = new java.lang.Object[iD];
        for (int i6 = 0; i6 < iD; i6++) {
            objArr[i6] = b(i6, i5);
        }
        return objArr;
    }

    public <T> T[] r(T[] tArr, int i5) {
        int iD = d();
        if (tArr.length < iD) {
            tArr = (T[]) ((java.lang.Object[]) java.lang.reflect.Array.newInstance(tArr.getClass().getComponentType(), iD));
        }
        for (int i6 = 0; i6 < iD; i6++) {
            tArr[i6] = b(i6, i5);
        }
        if (tArr.length > iD) {
            tArr[iD] = null;
        }
        return tArr;
    }
}
