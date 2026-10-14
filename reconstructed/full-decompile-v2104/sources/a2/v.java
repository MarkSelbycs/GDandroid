package a2;

/* JADX INFO: compiled from: TableMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class v<K, V> implements java.util.Map<K, V>, java.lang.Iterable<java.util.Map.Entry<K, V>>, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.List<K> f102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.List<V> f103b;

    /* JADX INFO: compiled from: TableMap.java */
    public class a implements java.util.Iterator<java.util.Map.Entry<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.Iterator<K> f104a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.util.Iterator<V> f105b;

        public a() {
            this.f104a = a2.v.this.f102a.iterator();
            this.f105b = a2.v.this.f103b.iterator();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public java.util.Map.Entry<K, V> next() {
            return a2.i.c(this.f104a.next(), this.f105b.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f104a.hasNext() && this.f105b.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f104a.remove();
            this.f105b.remove();
        }
    }

    public v() {
        this(10);
    }

    @Override // java.util.Map
    public void clear() {
        this.f102a.clear();
        this.f103b.clear();
    }

    @Override // java.util.Map
    public V computeIfPresent(K k5, java.util.function.BiFunction<? super K, ? super V, ? extends V> biFunction) {
        V v4 = null;
        if (biFunction == null) {
            return null;
        }
        int i5 = 0;
        while (i5 < size()) {
            if (e2.p.g(k5, this.f102a.get(i5))) {
                V vApply = biFunction.apply(k5, this.f103b.get(i5));
                if (vApply != null) {
                    v4 = this.f103b.set(i5, vApply);
                } else {
                    e(i5);
                    i5--;
                }
            }
            i5++;
        }
        return v4;
    }

    @Override // java.util.Map
    public boolean containsKey(java.lang.Object obj) {
        return this.f102a.contains(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(java.lang.Object obj) {
        return this.f103b.contains(obj);
    }

    public V e(int i5) {
        this.f102a.remove(i5);
        return this.f103b.remove(i5);
    }

    @Override // java.util.Map
    public java.util.Set<java.util.Map.Entry<K, V>> entrySet() {
        java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
        for (int i5 = 0; i5 < size(); i5++) {
            linkedHashSet.add(a2.i.c(this.f102a.get(i5), this.f103b.get(i5)));
        }
        return linkedHashSet;
    }

    @Override // java.util.Map
    public void forEach(java.util.function.BiConsumer<? super K, ? super V> biConsumer) {
        for (int i5 = 0; i5 < size(); i5++) {
            biConsumer.accept(this.f102a.get(i5), this.f103b.get(i5));
        }
    }

    @Override // java.util.Map
    public V get(java.lang.Object obj) {
        int iIndexOf = this.f102a.indexOf(obj);
        if (iIndexOf > -1) {
            return this.f103b.get(iIndexOf);
        }
        return null;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return l1.c.g(this.f102a);
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
        return new a2.v.a();
    }

    @Override // java.util.Map
    public java.util.Set<K> keySet() {
        return new java.util.HashSet(this.f102a);
    }

    @Override // java.util.Map
    public V put(K k5, V v4) {
        this.f102a.add(k5);
        this.f103b.add(v4);
        return null;
    }

    @Override // java.util.Map
    public void putAll(java.util.Map<? extends K, ? extends V> map) {
        for (java.util.Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public V remove(java.lang.Object obj) {
        V vE = null;
        while (true) {
            int iIndexOf = this.f102a.indexOf(obj);
            if (iIndexOf <= -1) {
                return vE;
            }
            vE = e(iIndexOf);
        }
    }

    @Override // java.util.Map
    public boolean replace(K k5, V v4, V v5) {
        for (int i5 = 0; i5 < size(); i5++) {
            if (e2.p.g(k5, this.f102a.get(i5)) && e2.p.g(v4, this.f103b.get(i5))) {
                this.f103b.set(i5, v5);
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public void replaceAll(java.util.function.BiFunction<? super K, ? super V, ? extends V> biFunction) {
        for (int i5 = 0; i5 < size(); i5++) {
            this.f103b.set(i5, biFunction.apply(this.f102a.get(i5), this.f103b.get(i5)));
        }
    }

    @Override // java.util.Map
    public int size() {
        return this.f102a.size();
    }

    public java.lang.String toString() {
        return "TableMap{keys=" + this.f102a + ", values=" + this.f103b + '}';
    }

    @Override // java.util.Map
    public java.util.Collection<V> values() {
        return java.util.Collections.unmodifiableList(this.f103b);
    }

    public v(int i5) {
        this.f102a = new java.util.ArrayList(i5);
        this.f103b = new java.util.ArrayList(i5);
    }

    @Override // java.util.Map
    public boolean remove(java.lang.Object obj, java.lang.Object obj2) {
        int i5 = 0;
        boolean z4 = false;
        while (i5 < size()) {
            if (e2.p.g(obj, this.f102a.get(i5)) && e2.p.g(obj2, this.f103b.get(i5))) {
                e(i5);
                i5--;
                z4 = true;
            }
            i5++;
        }
        return z4;
    }

    @Override // java.util.Map
    public V replace(K k5, V v4) {
        V v5 = null;
        for (int i5 = 0; i5 < size(); i5++) {
            if (e2.p.g(k5, this.f102a.get(i5))) {
                v5 = this.f103b.set(i5, v4);
            }
        }
        return v5;
    }
}
