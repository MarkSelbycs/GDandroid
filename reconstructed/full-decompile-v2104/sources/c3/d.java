package c3;

/* JADX INFO: compiled from: MapBuilder.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d<K, V> implements java.util.Map<K, V>, java.io.Serializable {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final c3.d.a f2997r = new c3.d.a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public K[] f2998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public V[] f2999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f3000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f3001d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3003f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3004g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3005h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c3.f<K> f3006i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public c3.g<V> f3007o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public c3.e<K, V> f3008p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3009q;

    /* JADX INFO: compiled from: MapBuilder.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public final int c(int i5) {
            return java.lang.Integer.highestOneBit(p3.m.a(i5, 1) * 3);
        }

        public final int d(int i5) {
            return java.lang.Integer.numberOfLeadingZeros(i5) + 1;
        }
    }

    /* JADX INFO: compiled from: MapBuilder.kt */
    public static final class b<K, V> extends c3.d.C0032d<K, V> implements java.util.Iterator<java.util.Map.Entry<K, V>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c3.d<K, V> dVar) {
            super(dVar);
            m3.k.e(dVar, "map");
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public c3.d.c<K, V> next() {
            if (a() >= c().f3003f) {
                throw new java.util.NoSuchElementException();
            }
            int iA = a();
            e(iA + 1);
            f(iA);
            c3.d.c<K, V> cVar = new c3.d.c<>(c(), b());
            d();
            return cVar;
        }

        public final void h(java.lang.StringBuilder sb) {
            m3.k.e(sb, "sb");
            if (a() >= c().f3003f) {
                throw new java.util.NoSuchElementException();
            }
            int iA = a();
            e(iA + 1);
            f(iA);
            java.lang.Object obj = c().f2998a[b()];
            if (m3.k.a(obj, c())) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            java.lang.Object[] objArr = c().f2999b;
            m3.k.b(objArr);
            java.lang.Object obj2 = objArr[b()];
            if (m3.k.a(obj2, c())) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            d();
        }

        public final int i() {
            if (a() >= c().f3003f) {
                throw new java.util.NoSuchElementException();
            }
            int iA = a();
            e(iA + 1);
            f(iA);
            java.lang.Object obj = c().f2998a[b()];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            java.lang.Object[] objArr = c().f2999b;
            m3.k.b(objArr);
            java.lang.Object obj2 = objArr[b()];
            int iHashCode2 = iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
            d();
            return iHashCode2;
        }
    }

    /* JADX INFO: compiled from: MapBuilder.kt */
    public static final class c<K, V> implements java.util.Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c3.d<K, V> f3010a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3011b;

        public c(c3.d<K, V> dVar, int i5) {
            m3.k.e(dVar, "map");
            this.f3010a = dVar;
            this.f3011b = i5;
        }

        @Override // java.util.Map.Entry
        public boolean equals(java.lang.Object obj) {
            if (obj instanceof java.util.Map.Entry) {
                java.util.Map.Entry entry = (java.util.Map.Entry) obj;
                if (m3.k.a(entry.getKey(), getKey()) && m3.k.a(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) this.f3010a.f2998a[this.f3011b];
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            java.lang.Object[] objArr = this.f3010a.f2999b;
            m3.k.b(objArr);
            return (V) objArr[this.f3011b];
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K key = getKey();
            int iHashCode = key != null ? key.hashCode() : 0;
            V value = getValue();
            return iHashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v4) {
            this.f3010a.D();
            java.lang.Object[] objArrX = this.f3010a.x();
            int i5 = this.f3011b;
            V v5 = (V) objArrX[i5];
            objArrX[i5] = v4;
            return v5;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    /* JADX INFO: renamed from: c3.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MapBuilder.kt */
    public static class C0032d<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c3.d<K, V> f3012a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3013b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3014c;

        public C0032d(c3.d<K, V> dVar) {
            m3.k.e(dVar, "map");
            this.f3012a = dVar;
            this.f3014c = -1;
            d();
        }

        public final int a() {
            return this.f3013b;
        }

        public final int b() {
            return this.f3014c;
        }

        public final c3.d<K, V> c() {
            return this.f3012a;
        }

        public final void d() {
            while (this.f3013b < this.f3012a.f3003f) {
                int[] iArr = this.f3012a.f3000c;
                int i5 = this.f3013b;
                if (iArr[i5] >= 0) {
                    return;
                } else {
                    this.f3013b = i5 + 1;
                }
            }
        }

        public final void e(int i5) {
            this.f3013b = i5;
        }

        public final void f(int i5) {
            this.f3014c = i5;
        }

        public final boolean hasNext() {
            return this.f3013b < this.f3012a.f3003f;
        }

        public final void remove() {
            if (!(this.f3014c != -1)) {
                throw new java.lang.IllegalStateException("Call next() before removing element from the iterator.".toString());
            }
            this.f3012a.D();
            this.f3012a.q0(this.f3014c);
            this.f3014c = -1;
        }
    }

    /* JADX INFO: compiled from: MapBuilder.kt */
    public static final class e<K, V> extends c3.d.C0032d<K, V> implements java.util.Iterator<K> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(c3.d<K, V> dVar) {
            super(dVar);
            m3.k.e(dVar, "map");
        }

        @Override // java.util.Iterator
        public K next() {
            if (a() >= c().f3003f) {
                throw new java.util.NoSuchElementException();
            }
            int iA = a();
            e(iA + 1);
            f(iA);
            K k5 = (K) c().f2998a[b()];
            d();
            return k5;
        }
    }

    /* JADX INFO: compiled from: MapBuilder.kt */
    public static final class f<K, V> extends c3.d.C0032d<K, V> implements java.util.Iterator<V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(c3.d<K, V> dVar) {
            super(dVar);
            m3.k.e(dVar, "map");
        }

        @Override // java.util.Iterator
        public V next() {
            if (a() >= c().f3003f) {
                throw new java.util.NoSuchElementException();
            }
            int iA = a();
            e(iA + 1);
            f(iA);
            java.lang.Object[] objArr = c().f2999b;
            m3.k.b(objArr);
            V v4 = (V) objArr[b()];
            d();
            return v4;
        }
    }

    public d(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i5, int i6) {
        this.f2998a = kArr;
        this.f2999b = vArr;
        this.f3000c = iArr;
        this.f3001d = iArr2;
        this.f3002e = i5;
        this.f3003f = i6;
        this.f3004g = f2997r.d(d0());
    }

    public final void D() {
        if (this.f3009q) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public final void F() {
        int i5;
        V[] vArr = this.f2999b;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i5 = this.f3003f;
            if (i6 >= i5) {
                break;
            }
            if (this.f3000c[i6] >= 0) {
                K[] kArr = this.f2998a;
                kArr[i7] = kArr[i6];
                if (vArr != null) {
                    vArr[i7] = vArr[i6];
                }
                i7++;
            }
            i6++;
        }
        c3.c.g(this.f2998a, i7, i5);
        if (vArr != null) {
            c3.c.g(vArr, i7, this.f3003f);
        }
        this.f3003f = i7;
    }

    public final boolean H(java.util.Collection<?> collection) {
        m3.k.e(collection, "m");
        for (java.lang.Object obj : collection) {
            if (obj != null) {
                try {
                    if (!I((java.util.Map.Entry) obj)) {
                    }
                } catch (java.lang.ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean I(java.util.Map.Entry<? extends K, ? extends V> entry) {
        m3.k.e(entry, "entry");
        int iV = V(entry.getKey());
        if (iV < 0) {
            return false;
        }
        V[] vArr = this.f2999b;
        m3.k.b(vArr);
        return m3.k.a(vArr[iV], entry.getValue());
    }

    public final boolean M(java.util.Map<?, ?> map) {
        return size() == map.size() && H(map.entrySet());
    }

    public final void P(int i5) {
        if (i5 < 0) {
            throw new java.lang.OutOfMemoryError();
        }
        if (i5 > X()) {
            int iX = (X() * 3) / 2;
            if (i5 <= iX) {
                i5 = iX;
            }
            this.f2998a = (K[]) c3.c.e(this.f2998a, i5);
            V[] vArr = this.f2999b;
            this.f2999b = vArr != null ? (V[]) c3.c.e(vArr, i5) : null;
            int[] iArrCopyOf = java.util.Arrays.copyOf(this.f3000c, i5);
            m3.k.d(iArrCopyOf, "copyOf(this, newSize)");
            this.f3000c = iArrCopyOf;
            int iC = f2997r.c(i5);
            if (iC > d0()) {
                m0(iC);
            }
        }
    }

    public final void T(int i5) {
        if (t0(i5)) {
            m0(d0());
        } else {
            P(this.f3003f + i5);
        }
    }

    public final c3.d.b<K, V> U() {
        return new c3.d.b<>(this);
    }

    public final int V(K k5) {
        int iH0 = h0(k5);
        int i5 = this.f3002e;
        while (true) {
            int i6 = this.f3001d[iH0];
            if (i6 == 0) {
                return -1;
            }
            if (i6 > 0) {
                int i7 = i6 - 1;
                if (m3.k.a(this.f2998a[i7], k5)) {
                    return i7;
                }
            }
            i5--;
            if (i5 < 0) {
                return -1;
            }
            iH0 = iH0 == 0 ? d0() - 1 : iH0 - 1;
        }
    }

    public final int W(V v4) {
        int i5 = this.f3003f;
        while (true) {
            i5--;
            if (i5 < 0) {
                return -1;
            }
            if (this.f3000c[i5] >= 0) {
                V[] vArr = this.f2999b;
                m3.k.b(vArr);
                if (m3.k.a(vArr[i5], v4)) {
                    return i5;
                }
            }
        }
    }

    public final int X() {
        return this.f2998a.length;
    }

    public java.util.Set<java.util.Map.Entry<K, V>> a0() {
        c3.e<K, V> eVar = this.f3008p;
        if (eVar != null) {
            return eVar;
        }
        c3.e<K, V> eVar2 = new c3.e<>(this);
        this.f3008p = eVar2;
        return eVar2;
    }

    @Override // java.util.Map
    public void clear() {
        D();
        b3.c0 it = new p3.h(0, this.f3003f - 1).iterator();
        while (it.hasNext()) {
            int iA = it.a();
            int[] iArr = this.f3000c;
            int i5 = iArr[iA];
            if (i5 >= 0) {
                this.f3001d[i5] = 0;
                iArr[iA] = -1;
            }
        }
        c3.c.g(this.f2998a, 0, this.f3003f);
        V[] vArr = this.f2999b;
        if (vArr != null) {
            c3.c.g(vArr, 0, this.f3003f);
        }
        this.f3005h = 0;
        this.f3003f = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(java.lang.Object obj) {
        return V(obj) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsValue(java.lang.Object obj) {
        return W(obj) >= 0;
    }

    public final int d0() {
        return this.f3001d.length;
    }

    public java.util.Set<K> e0() {
        c3.f<K> fVar = this.f3006i;
        if (fVar != null) {
            return fVar;
        }
        c3.f<K> fVar2 = new c3.f<>(this);
        this.f3006i = fVar2;
        return fVar2;
    }

    @Override // java.util.Map
    public final /* bridge */ java.util.Set<java.util.Map.Entry<K, V>> entrySet() {
        return a0();
    }

    @Override // java.util.Map
    public boolean equals(java.lang.Object obj) {
        return obj == this || ((obj instanceof java.util.Map) && M((java.util.Map) obj));
    }

    public int f0() {
        return this.f3005h;
    }

    public java.util.Collection<V> g0() {
        c3.g<V> gVar = this.f3007o;
        if (gVar != null) {
            return gVar;
        }
        c3.g<V> gVar2 = new c3.g<>(this);
        this.f3007o = gVar2;
        return gVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V get(java.lang.Object obj) {
        int iV = V(obj);
        if (iV < 0) {
            return null;
        }
        V[] vArr = this.f2999b;
        m3.k.b(vArr);
        return vArr[iV];
    }

    public final int h0(K k5) {
        return ((k5 != null ? k5.hashCode() : 0) * (-1640531527)) >>> this.f3004g;
    }

    @Override // java.util.Map
    public int hashCode() {
        c3.d.b<K, V> bVarU = U();
        int i5 = 0;
        while (bVarU.hasNext()) {
            i5 += bVarU.i();
        }
        return i5;
    }

    public final c3.d.e<K, V> i0() {
        return new c3.d.e<>(this);
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    public final boolean j0(java.util.Collection<? extends java.util.Map.Entry<? extends K, ? extends V>> collection) {
        boolean z4 = false;
        if (collection.isEmpty()) {
            return false;
        }
        T(collection.size());
        java.util.Iterator<? extends java.util.Map.Entry<? extends K, ? extends V>> it = collection.iterator();
        while (it.hasNext()) {
            if (k0(it.next())) {
                z4 = true;
            }
        }
        return z4;
    }

    public final boolean k0(java.util.Map.Entry<? extends K, ? extends V> entry) {
        int iU = u(entry.getKey());
        V[] vArrX = x();
        if (iU >= 0) {
            vArrX[iU] = entry.getValue();
            return true;
        }
        int i5 = (-iU) - 1;
        if (m3.k.a(entry.getValue(), vArrX[i5])) {
            return false;
        }
        vArrX[i5] = entry.getValue();
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ java.util.Set<K> keySet() {
        return e0();
    }

    public final boolean l0(int i5) {
        int iH0 = h0(this.f2998a[i5]);
        int i6 = this.f3002e;
        while (true) {
            int[] iArr = this.f3001d;
            if (iArr[iH0] == 0) {
                iArr[iH0] = i5 + 1;
                this.f3000c[i5] = iH0;
                return true;
            }
            i6--;
            if (i6 < 0) {
                return false;
            }
            iH0 = iH0 == 0 ? d0() - 1 : iH0 - 1;
        }
    }

    public final void m0(int i5) {
        if (this.f3003f > size()) {
            F();
        }
        int i6 = 0;
        if (i5 != d0()) {
            this.f3001d = new int[i5];
            this.f3004g = f2997r.d(i5);
        } else {
            b3.j.g(this.f3001d, 0, 0, d0());
        }
        while (i6 < this.f3003f) {
            int i7 = i6 + 1;
            if (!l0(i6)) {
                throw new java.lang.IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i6 = i7;
        }
    }

    public final boolean n0(java.util.Map.Entry<? extends K, ? extends V> entry) {
        m3.k.e(entry, "entry");
        D();
        int iV = V(entry.getKey());
        if (iV < 0) {
            return false;
        }
        V[] vArr = this.f2999b;
        m3.k.b(vArr);
        if (!m3.k.a(vArr[iV], entry.getValue())) {
            return false;
        }
        q0(iV);
        return true;
    }

    public final void o0(int i5) {
        int iC = p3.m.c(this.f3002e * 2, d0() / 2);
        int i6 = 0;
        int i7 = i5;
        do {
            i5 = i5 == 0 ? d0() - 1 : i5 - 1;
            i6++;
            if (i6 > this.f3002e) {
                this.f3001d[i7] = 0;
                return;
            }
            int[] iArr = this.f3001d;
            int i8 = iArr[i5];
            if (i8 == 0) {
                iArr[i7] = 0;
                return;
            }
            if (i8 < 0) {
                iArr[i7] = -1;
            } else {
                int i9 = i8 - 1;
                if (((h0(this.f2998a[i9]) - i5) & (d0() - 1)) >= i6) {
                    this.f3001d[i7] = i8;
                    this.f3000c[i9] = i7;
                }
                iC--;
            }
            i7 = i5;
            i6 = 0;
            iC--;
        } while (iC >= 0);
        this.f3001d[i7] = -1;
    }

    public final int p0(K k5) {
        D();
        int iV = V(k5);
        if (iV < 0) {
            return -1;
        }
        q0(iV);
        return iV;
    }

    @Override // java.util.Map
    public V put(K k5, V v4) {
        D();
        int iU = u(k5);
        V[] vArrX = x();
        if (iU >= 0) {
            vArrX[iU] = v4;
            return null;
        }
        int i5 = (-iU) - 1;
        V v5 = vArrX[i5];
        vArrX[i5] = v4;
        return v5;
    }

    @Override // java.util.Map
    public void putAll(java.util.Map<? extends K, ? extends V> map) {
        m3.k.e(map, "from");
        D();
        j0(map.entrySet());
    }

    public final void q0(int i5) {
        c3.c.f(this.f2998a, i5);
        o0(this.f3000c[i5]);
        this.f3000c[i5] = -1;
        this.f3005h = size() - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V remove(java.lang.Object obj) {
        int iP0 = p0(obj);
        if (iP0 < 0) {
            return null;
        }
        V[] vArr = this.f2999b;
        m3.k.b(vArr);
        V v4 = vArr[iP0];
        c3.c.f(vArr, iP0);
        return v4;
    }

    public final boolean s0(V v4) {
        D();
        int iW = W(v4);
        if (iW < 0) {
            return false;
        }
        q0(iW);
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return f0();
    }

    public final boolean t0(int i5) {
        int iX = X();
        int i6 = this.f3003f;
        int i7 = iX - i6;
        int size = i6 - size();
        return i7 < i5 && i7 + size >= i5 && size >= X() / 4;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder((size() * 3) + 2);
        sb.append("{");
        c3.d.b<K, V> bVarU = U();
        int i5 = 0;
        while (bVarU.hasNext()) {
            if (i5 > 0) {
                sb.append(", ");
            }
            bVarU.h(sb);
            i5++;
        }
        sb.append("}");
        java.lang.String string = sb.toString();
        m3.k.d(string, "sb.toString()");
        return string;
    }

    public final int u(K k5) {
        D();
        while (true) {
            int iH0 = h0(k5);
            int iC = p3.m.c(this.f3002e * 2, d0() / 2);
            int i5 = 0;
            while (true) {
                int i6 = this.f3001d[iH0];
                if (i6 <= 0) {
                    if (this.f3003f >= X()) {
                        T(1);
                        break;
                    }
                    int i7 = this.f3003f;
                    int i8 = i7 + 1;
                    this.f3003f = i8;
                    this.f2998a[i7] = k5;
                    this.f3000c[i7] = iH0;
                    this.f3001d[iH0] = i8;
                    this.f3005h = size() + 1;
                    if (i5 > this.f3002e) {
                        this.f3002e = i5;
                    }
                    return i7;
                }
                if (m3.k.a(this.f2998a[i6 - 1], k5)) {
                    return -i6;
                }
                i5++;
                if (i5 > iC) {
                    m0(d0() * 2);
                    break;
                }
                iH0 = iH0 == 0 ? d0() - 1 : iH0 - 1;
            }
        }
    }

    public final c3.d.f<K, V> u0() {
        return new c3.d.f<>(this);
    }

    @Override // java.util.Map
    public final /* bridge */ java.util.Collection<V> values() {
        return g0();
    }

    public final V[] x() {
        V[] vArr = this.f2999b;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) c3.c.d(X());
        this.f2999b = vArr2;
        return vArr2;
    }

    public final java.util.Map<K, V> y() {
        D();
        this.f3009q = true;
        return this;
    }

    public d() {
        this(8);
    }

    public d(int i5) {
        this(c3.c.d(i5), null, new int[i5], new int[f2997r.c(i5)], 2, 0);
    }
}
