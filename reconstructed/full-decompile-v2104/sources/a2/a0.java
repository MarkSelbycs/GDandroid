package a2;

/* JADX INFO: compiled from: TransMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a0<K, V> extends a2.j<K, V> {
    public a0(java.util.Map<K, V> map) {
        super(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object M(java.util.function.BiFunction biFunction, java.lang.Object obj, java.lang.Object obj2) {
        return biFunction.apply(H(obj), I(obj2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object P(java.util.function.BiFunction biFunction, java.lang.Object obj, java.lang.Object obj2) {
        return biFunction.apply(H(obj), I(obj2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object T(java.util.function.BiFunction biFunction, java.lang.Object obj, java.lang.Object obj2) {
        return biFunction.apply(I(obj), I(obj2));
    }

    public abstract K H(java.lang.Object obj);

    public abstract V I(java.lang.Object obj);

    @Override // a2.j, java.util.Map
    public V compute(K k5, final java.util.function.BiFunction<? super K, ? super V, ? extends V> biFunction) {
        return (V) super.compute(H(k5), new java.util.function.BiFunction() { // from class: a2.z
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object obj, java.lang.Object obj2) {
                return this.f112a.M(biFunction, obj, obj2);
            }
        });
    }

    @Override // a2.j, java.util.Map
    public V computeIfAbsent(K k5, java.util.function.Function<? super K, ? extends V> function) {
        return (V) super.computeIfAbsent(H(k5), function);
    }

    @Override // a2.j, java.util.Map
    public V computeIfPresent(K k5, final java.util.function.BiFunction<? super K, ? super V, ? extends V> biFunction) {
        return (V) super.computeIfPresent(H(k5), new java.util.function.BiFunction() { // from class: a2.x
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object obj, java.lang.Object obj2) {
                return this.f108a.P(biFunction, obj, obj2);
            }
        });
    }

    @Override // a2.j, java.util.Map
    public boolean containsKey(java.lang.Object obj) {
        return super.containsKey(H(obj));
    }

    @Override // a2.j, java.util.Map
    public V get(java.lang.Object obj) {
        return (V) super.get(H(obj));
    }

    @Override // a2.j, java.util.Map
    public V getOrDefault(java.lang.Object obj, V v4) {
        return (V) super.getOrDefault(H(obj), I(v4));
    }

    @Override // a2.j, java.util.Map
    public V merge(K k5, V v4, final java.util.function.BiFunction<? super V, ? super V, ? extends V> biFunction) {
        return (V) super.merge(H(k5), I(v4), new java.util.function.BiFunction() { // from class: a2.y
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object obj, java.lang.Object obj2) {
                return this.f110a.T(biFunction, obj, obj2);
            }
        });
    }

    @Override // a2.j, java.util.Map
    public V put(K k5, V v4) {
        return (V) super.put(H(k5), I(v4));
    }

    @Override // a2.j, java.util.Map
    public void putAll(java.util.Map<? extends K, ? extends V> map) {
        map.forEach(new java.util.function.BiConsumer() { // from class: a2.w
            @Override // java.util.function.BiConsumer
            public final void accept(java.lang.Object obj, java.lang.Object obj2) {
                this.f107a.put(obj, obj2);
            }
        });
    }

    @Override // a2.j, java.util.Map
    public V putIfAbsent(K k5, V v4) {
        return (V) super.putIfAbsent(H(k5), I(v4));
    }

    @Override // a2.j, java.util.Map
    public V remove(java.lang.Object obj) {
        return (V) super.remove(H(obj));
    }

    @Override // a2.j, java.util.Map
    public boolean replace(K k5, V v4, V v5) {
        return super.replace(H(k5), I(v4), I(v5));
    }

    @Override // a2.j, java.util.Map
    public boolean remove(java.lang.Object obj, java.lang.Object obj2) {
        return super.remove(H(obj), I(obj2));
    }

    @Override // a2.j, java.util.Map
    public V replace(K k5, V v4) {
        return (V) super.replace(H(k5), I(v4));
    }
}
