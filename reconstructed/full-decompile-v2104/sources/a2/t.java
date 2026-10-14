package a2;

/* JADX INFO: compiled from: ReferenceConcurrentMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class t<K, V> implements java.util.concurrent.ConcurrentMap<K, V>, java.lang.Iterable<java.util.Map.Entry<K, V>>, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.concurrent.ConcurrentMap<java.lang.ref.Reference<K>, V> f95a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.ref.ReferenceQueue<K> f96b = new java.lang.ref.ReferenceQueue<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e2.s f97c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.util.function.BiConsumer<java.lang.ref.Reference<? extends K>, V> f98d;

    /* JADX INFO: compiled from: ReferenceConcurrentMap.java */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f99a;

        static {
            int[] iArr = new int[e2.s.values().length];
            f99a = iArr;
            try {
                iArr[e2.s.WEAK.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                f99a[e2.s.SOFT.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: compiled from: ReferenceConcurrentMap.java */
    public static class b<K> extends java.lang.ref.SoftReference<K> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f100a;

        public b(K k5, java.lang.ref.ReferenceQueue<? super K> referenceQueue) {
            super(k5, referenceQueue);
            this.f100a = k5.hashCode();
        }

        public boolean equals(java.lang.Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a2.t.b) {
                return e2.p.g(((a2.t.b) obj).get(), get());
            }
            return false;
        }

        public int hashCode() {
            return this.f100a;
        }
    }

    /* JADX INFO: compiled from: ReferenceConcurrentMap.java */
    public static class c<K> extends java.lang.ref.WeakReference<K> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f101a;

        public c(K k5, java.lang.ref.ReferenceQueue<? super K> referenceQueue) {
            super(k5, referenceQueue);
            this.f101a = k5.hashCode();
        }

        public boolean equals(java.lang.Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a2.t.c) {
                return e2.p.g(((a2.t.c) obj).get(), get());
            }
            return false;
        }

        public int hashCode() {
            return this.f101a;
        }
    }

    public t(java.util.concurrent.ConcurrentMap<java.lang.ref.Reference<K>, V> concurrentMap, e2.s sVar) {
        this.f95a = concurrentMap;
        this.f97c = sVar;
    }

    public static /* synthetic */ java.lang.Object D(java.util.function.BiFunction biFunction, java.lang.Object obj, java.lang.ref.Reference reference, java.lang.Object obj2) {
        return biFunction.apply(obj, obj2);
    }

    public static /* synthetic */ java.lang.Object F(java.util.function.Function function, java.lang.Object obj, java.lang.ref.Reference reference) {
        return function.apply(obj);
    }

    public static /* synthetic */ java.lang.Object H(x1.a aVar, java.lang.Object obj) {
        return aVar.t();
    }

    public static /* synthetic */ java.lang.Object I(java.util.function.BiFunction biFunction, java.lang.Object obj, java.lang.ref.Reference reference, java.lang.Object obj2) {
        return biFunction.apply(obj, obj2);
    }

    public static /* synthetic */ java.util.AbstractMap.SimpleImmutableEntry M(java.util.Map.Entry entry) {
        return new java.util.AbstractMap.SimpleImmutableEntry(((java.lang.ref.Reference) entry.getKey()).get(), entry.getValue());
    }

    public static /* synthetic */ void P(java.util.function.BiConsumer biConsumer, java.lang.ref.Reference reference, java.lang.Object obj) {
        biConsumer.accept(reference.get(), obj);
    }

    public static /* synthetic */ java.lang.Object T(java.lang.ref.Reference reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    public static /* synthetic */ java.lang.Object U(java.util.function.BiFunction biFunction, java.lang.ref.Reference reference, java.lang.Object obj) {
        return biFunction.apply(reference.get(), obj);
    }

    public final java.lang.ref.Reference<K> V(K k5, java.lang.ref.ReferenceQueue<? super K> referenceQueue) {
        int i5 = a2.t.a.f99a[this.f97c.ordinal()];
        if (i5 == 1) {
            return new a2.t.c(k5, referenceQueue);
        }
        if (i5 == 2) {
            return new a2.t.b(k5, referenceQueue);
        }
        throw new java.lang.IllegalArgumentException("Unsupported key type: " + this.f97c);
    }

    public final void W() {
        while (true) {
            java.lang.ref.Reference<? extends K> referencePoll = this.f96b.poll();
            if (referencePoll == null) {
                return;
            }
            V vRemove = this.f95a.remove(referencePoll);
            java.util.function.BiConsumer<java.lang.ref.Reference<? extends K>, V> biConsumer = this.f98d;
            if (biConsumer != null) {
                biConsumer.accept(referencePoll, vRemove);
            }
        }
    }

    @Override // java.util.Map
    public void clear() {
        this.f95a.clear();
        while (this.f96b.poll() != null) {
        }
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public V compute(final K k5, final java.util.function.BiFunction<? super K, ? super V, ? extends V> biFunction) {
        W();
        return this.f95a.compute(V(k5, this.f96b), new java.util.function.BiFunction() { // from class: a2.n
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object obj, java.lang.Object obj2) {
                return a2.t.D(biFunction, k5, (java.lang.ref.Reference) obj, obj2);
            }
        });
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public V computeIfAbsent(final K k5, final java.util.function.Function<? super K, ? extends V> function) {
        W();
        return this.f95a.computeIfAbsent(V(k5, this.f96b), new java.util.function.Function() { // from class: a2.p
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return a2.t.F(function, k5, (java.lang.ref.Reference) obj);
            }
        });
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public V computeIfPresent(final K k5, final java.util.function.BiFunction<? super K, ? super V, ? extends V> biFunction) {
        W();
        return this.f95a.computeIfPresent(V(k5, this.f96b), new java.util.function.BiFunction() { // from class: a2.o
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object obj, java.lang.Object obj2) {
                return a2.t.I(biFunction, k5, (java.lang.ref.Reference) obj, obj2);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(java.lang.Object obj) {
        W();
        return this.f95a.containsKey(V(obj, null));
    }

    @Override // java.util.Map
    public boolean containsValue(java.lang.Object obj) {
        W();
        return this.f95a.containsValue(obj);
    }

    @Override // java.util.Map
    public java.util.Set<java.util.Map.Entry<K, V>> entrySet() {
        W();
        return (java.util.Set) this.f95a.entrySet().stream().map(new java.util.function.Function() { // from class: a2.s
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return a2.t.M((java.util.Map.Entry) obj);
            }
        }).collect(java.util.stream.Collectors.toSet());
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public void forEach(final java.util.function.BiConsumer<? super K, ? super V> biConsumer) {
        W();
        this.f95a.forEach(new java.util.function.BiConsumer() { // from class: a2.l
            @Override // java.util.function.BiConsumer
            public final void accept(java.lang.Object obj, java.lang.Object obj2) {
                a2.t.P(biConsumer, (java.lang.ref.Reference) obj, obj2);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V get(java.lang.Object obj) {
        W();
        return this.f95a.get(V(obj, null));
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
        return entrySet().iterator();
    }

    @Override // java.util.Map
    public java.util.Set<K> keySet() {
        return new java.util.HashSet(l1.c.m(this.f95a.keySet(), new java.util.function.Function() { // from class: a2.r
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return a2.t.T((java.lang.ref.Reference) obj);
            }
        }));
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public V merge(K k5, V v4, java.util.function.BiFunction<? super V, ? super V, ? extends V> biFunction) {
        W();
        return this.f95a.merge(V(k5, this.f96b), v4, biFunction);
    }

    @Override // java.util.Map
    public V put(K k5, V v4) {
        W();
        return this.f95a.put(V(k5, this.f96b), v4);
    }

    @Override // java.util.Map
    public void putAll(java.util.Map<? extends K, ? extends V> map) {
        map.forEach(new java.util.function.BiConsumer() { // from class: a2.k
            @Override // java.util.function.BiConsumer
            public final void accept(java.lang.Object obj, java.lang.Object obj2) {
                this.f83a.put(obj, obj2);
            }
        });
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public V putIfAbsent(K k5, V v4) {
        W();
        return this.f95a.putIfAbsent(V(k5, this.f96b), v4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V remove(java.lang.Object obj) {
        W();
        return this.f95a.remove(V(obj, null));
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public V replace(K k5, V v4) {
        W();
        return this.f95a.replace(V(k5, this.f96b), v4);
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public void replaceAll(final java.util.function.BiFunction<? super K, ? super V, ? extends V> biFunction) {
        W();
        this.f95a.replaceAll(new java.util.function.BiFunction() { // from class: a2.m
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object obj, java.lang.Object obj2) {
                return a2.t.U(biFunction, (java.lang.ref.Reference) obj, obj2);
            }
        });
    }

    @Override // java.util.Map
    public int size() {
        W();
        return this.f95a.size();
    }

    @Override // java.util.Map
    public java.util.Collection<V> values() {
        W();
        return this.f95a.values();
    }

    public V y(K k5, final x1.a<? extends V> aVar) {
        return computeIfAbsent(k5, new java.util.function.Function() { // from class: a2.q
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return a2.t.H(aVar, obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public boolean remove(java.lang.Object obj, java.lang.Object obj2) {
        W();
        return this.f95a.remove(V(obj, null), obj2);
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public boolean replace(K k5, V v4, V v5) {
        W();
        return this.f95a.replace(V(k5, this.f96b), v4, v5);
    }
}
