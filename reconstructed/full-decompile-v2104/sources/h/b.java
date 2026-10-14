package h;

/* JADX INFO: compiled from: SafeIterableMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b<K, V> implements java.lang.Iterable<java.util.Map.Entry<K, V>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public h.b.c<K, V> f4538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public h.b.c<K, V> f4539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.util.WeakHashMap<h.b.f<K, V>, java.lang.Boolean> f4540c = new java.util.WeakHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4541d = 0;

    /* JADX INFO: compiled from: SafeIterableMap.java */
    public static class a<K, V> extends h.b.e<K, V> {
        public a(h.b.c<K, V> cVar, h.b.c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // h.b.e
        public h.b.c<K, V> b(h.b.c<K, V> cVar) {
            return cVar.f4545d;
        }

        @Override // h.b.e
        public h.b.c<K, V> c(h.b.c<K, V> cVar) {
            return cVar.f4544c;
        }
    }

    /* JADX INFO: renamed from: h.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SafeIterableMap.java */
    public static class C0057b<K, V> extends h.b.e<K, V> {
        public C0057b(h.b.c<K, V> cVar, h.b.c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // h.b.e
        public h.b.c<K, V> b(h.b.c<K, V> cVar) {
            return cVar.f4544c;
        }

        @Override // h.b.e
        public h.b.c<K, V> c(h.b.c<K, V> cVar) {
            return cVar.f4545d;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    public static class c<K, V> implements java.util.Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final K f4542a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final V f4543b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public h.b.c<K, V> f4544c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public h.b.c<K, V> f4545d;

        public c(K k5, V v4) {
            this.f4542a = k5;
            this.f4543b = v4;
        }

        @Override // java.util.Map.Entry
        public boolean equals(java.lang.Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof h.b.c)) {
                return false;
            }
            h.b.c cVar = (h.b.c) obj;
            return this.f4542a.equals(cVar.f4542a) && this.f4543b.equals(cVar.f4543b);
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f4542a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f4543b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f4542a.hashCode() ^ this.f4543b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v4) {
            throw new java.lang.UnsupportedOperationException("An entry modification is not supported");
        }

        public java.lang.String toString() {
            return this.f4542a + "=" + this.f4543b;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    public class d implements java.util.Iterator<java.util.Map.Entry<K, V>>, h.b.f<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public h.b.c<K, V> f4546a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f4547b = true;

        public d() {
        }

        @Override // h.b.f
        public void a(h.b.c<K, V> cVar) {
            h.b.c<K, V> cVar2 = this.f4546a;
            if (cVar == cVar2) {
                h.b.c<K, V> cVar3 = cVar2.f4545d;
                this.f4546a = cVar3;
                this.f4547b = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public java.util.Map.Entry<K, V> next() {
            if (this.f4547b) {
                this.f4547b = false;
                this.f4546a = h.b.this.f4538a;
            } else {
                h.b.c<K, V> cVar = this.f4546a;
                this.f4546a = cVar != null ? cVar.f4544c : null;
            }
            return this.f4546a;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f4547b) {
                return h.b.this.f4538a != null;
            }
            h.b.c<K, V> cVar = this.f4546a;
            return (cVar == null || cVar.f4544c == null) ? false : true;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    public static abstract class e<K, V> implements java.util.Iterator<java.util.Map.Entry<K, V>>, h.b.f<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public h.b.c<K, V> f4549a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public h.b.c<K, V> f4550b;

        public e(h.b.c<K, V> cVar, h.b.c<K, V> cVar2) {
            this.f4549a = cVar2;
            this.f4550b = cVar;
        }

        @Override // h.b.f
        public void a(h.b.c<K, V> cVar) {
            if (this.f4549a == cVar && cVar == this.f4550b) {
                this.f4550b = null;
                this.f4549a = null;
            }
            h.b.c<K, V> cVar2 = this.f4549a;
            if (cVar2 == cVar) {
                this.f4549a = b(cVar2);
            }
            if (this.f4550b == cVar) {
                this.f4550b = e();
            }
        }

        public abstract h.b.c<K, V> b(h.b.c<K, V> cVar);

        public abstract h.b.c<K, V> c(h.b.c<K, V> cVar);

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public java.util.Map.Entry<K, V> next() {
            h.b.c<K, V> cVar = this.f4550b;
            this.f4550b = e();
            return cVar;
        }

        public final h.b.c<K, V> e() {
            h.b.c<K, V> cVar = this.f4550b;
            h.b.c<K, V> cVar2 = this.f4549a;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return c(cVar);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4550b != null;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    public interface f<K, V> {
        void a(h.b.c<K, V> cVar);
    }

    public java.util.Iterator<java.util.Map.Entry<K, V>> a() {
        h.b.C0057b c0057b = new h.b.C0057b(this.f4539b, this.f4538a);
        this.f4540c.put(c0057b, java.lang.Boolean.FALSE);
        return c0057b;
    }

    public java.util.Map.Entry<K, V> b() {
        return this.f4538a;
    }

    public h.b.c<K, V> c(K k5) {
        h.b.c<K, V> cVar = this.f4538a;
        while (cVar != null && !cVar.f4542a.equals(k5)) {
            cVar = cVar.f4544c;
        }
        return cVar;
    }

    public h.b<K, V>.d d() {
        h.b<K, V>.d dVar = new h.b.d();
        this.f4540c.put(dVar, java.lang.Boolean.FALSE);
        return dVar;
    }

    public java.util.Map.Entry<K, V> e() {
        return this.f4539b;
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h.b)) {
            return false;
        }
        h.b bVar = (h.b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        java.util.Iterator<java.util.Map.Entry<K, V>> it = iterator();
        java.util.Iterator<java.util.Map.Entry<K, V>> it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            java.util.Map.Entry<K, V> next = it.next();
            java.util.Map.Entry<K, V> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public h.b.c<K, V> f(K k5, V v4) {
        h.b.c<K, V> cVar = new h.b.c<>(k5, v4);
        this.f4541d++;
        h.b.c<K, V> cVar2 = this.f4539b;
        if (cVar2 == null) {
            this.f4538a = cVar;
            this.f4539b = cVar;
            return cVar;
        }
        cVar2.f4544c = cVar;
        cVar.f4545d = cVar2;
        this.f4539b = cVar;
        return cVar;
    }

    public V g(K k5, V v4) {
        h.b.c<K, V> cVarC = c(k5);
        if (cVarC != null) {
            return cVarC.f4543b;
        }
        f(k5, v4);
        return null;
    }

    public V h(K k5) {
        h.b.c<K, V> cVarC = c(k5);
        if (cVarC == null) {
            return null;
        }
        this.f4541d--;
        if (!this.f4540c.isEmpty()) {
            java.util.Iterator<h.b.f<K, V>> it = this.f4540c.keySet().iterator();
            while (it.hasNext()) {
                it.next().a(cVarC);
            }
        }
        h.b.c<K, V> cVar = cVarC.f4545d;
        if (cVar != null) {
            cVar.f4544c = cVarC.f4544c;
        } else {
            this.f4538a = cVarC.f4544c;
        }
        h.b.c<K, V> cVar2 = cVarC.f4544c;
        if (cVar2 != null) {
            cVar2.f4545d = cVar;
        } else {
            this.f4539b = cVar;
        }
        cVarC.f4544c = null;
        cVarC.f4545d = null;
        return cVarC.f4543b;
    }

    public int hashCode() {
        java.util.Iterator<java.util.Map.Entry<K, V>> it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += it.next().hashCode();
        }
        return iHashCode;
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
        h.b.a aVar = new h.b.a(this.f4538a, this.f4539b);
        this.f4540c.put(aVar, java.lang.Boolean.FALSE);
        return aVar;
    }

    public int size() {
        return this.f4541d;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("[");
        java.util.Iterator<java.util.Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
