package l1;

/* JADX INFO: compiled from: UniqueKeySet.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class q<K, V> extends java.util.AbstractSet<V> implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Map<K, V> f5142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.function.Function<V, K> f5143b;

    public q(boolean z4, java.util.function.Function<V, K> function) {
        this(a2.g.e(z4), function);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(V v4) {
        return this.f5142a.put(this.f5143b.apply(v4), v4) == null;
    }

    public boolean b(java.util.Collection<? extends V> collection) {
        java.util.Iterator<? extends V> it = collection.iterator();
        boolean z4 = false;
        while (it.hasNext()) {
            if (c(it.next())) {
                z4 = true;
            }
        }
        return z4;
    }

    public boolean c(V v4) {
        return this.f5142a.putIfAbsent(this.f5143b.apply(v4), v4) == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f5142a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(java.lang.Object obj) {
        return this.f5142a.containsKey(this.f5143b.apply(obj));
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public l1.q<K, V> clone() {
        try {
            l1.q<K, V> qVar = (l1.q) super.clone();
            qVar.f5142a = (java.util.Map) e2.p.a(this.f5142a);
            return qVar;
        } catch (java.lang.CloneNotSupportedException e5) {
            throw new java.lang.InternalError(e5);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f5142a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public java.util.Iterator<V> iterator() {
        return this.f5142a.values().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(java.lang.Object obj) {
        return this.f5142a.remove(this.f5143b.apply(obj)) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f5142a.size();
    }

    public q(a2.g<K, V> gVar, java.util.function.Function<V, K> function) {
        this.f5142a = gVar.b();
        this.f5143b = function;
    }
}
