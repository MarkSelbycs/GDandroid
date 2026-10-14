package j;

/* JADX INFO: compiled from: LruCache.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.LinkedHashMap<K, V> f4711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4716f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4717g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4718h;

    public e(int i5) {
        if (i5 <= 0) {
            throw new java.lang.IllegalArgumentException("maxSize <= 0");
        }
        this.f4713c = i5;
        this.f4711a = new java.util.LinkedHashMap<>(0, 0.75f, true);
    }

    public V a(K k5) {
        return null;
    }

    public void b(boolean z4, K k5, V v4, V v5) {
    }

    public final V c(K k5) {
        V vPut;
        java.util.Objects.requireNonNull(k5, "key == null");
        synchronized (this) {
            V v4 = this.f4711a.get(k5);
            if (v4 != null) {
                this.f4717g++;
                return v4;
            }
            this.f4718h++;
            V vA = a(k5);
            if (vA == null) {
                return null;
            }
            synchronized (this) {
                this.f4715e++;
                vPut = this.f4711a.put(k5, vA);
                if (vPut != null) {
                    this.f4711a.put(k5, vPut);
                } else {
                    this.f4712b += e(k5, vA);
                }
            }
            if (vPut != null) {
                b(false, k5, vA, vPut);
                return vPut;
            }
            g(this.f4713c);
            return vA;
        }
    }

    public final V d(K k5, V v4) {
        V vPut;
        if (k5 == null || v4 == null) {
            throw new java.lang.NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f4714d++;
            this.f4712b += e(k5, v4);
            vPut = this.f4711a.put(k5, v4);
            if (vPut != null) {
                this.f4712b -= e(k5, vPut);
            }
        }
        if (vPut != null) {
            b(false, k5, vPut, v4);
        }
        g(this.f4713c);
        return vPut;
    }

    public final int e(K k5, V v4) {
        int iF = f(k5, v4);
        if (iF >= 0) {
            return iF;
        }
        throw new java.lang.IllegalStateException("Negative size: " + k5 + "=" + v4);
    }

    public int f(K k5, V v4) {
        return 1;
    }

    public void g(int i5) {
        K key;
        V value;
        while (true) {
            synchronized (this) {
                if (this.f4712b < 0 || (this.f4711a.isEmpty() && this.f4712b != 0)) {
                    break;
                }
                if (this.f4712b > i5 && !this.f4711a.isEmpty()) {
                    java.util.Map.Entry<K, V> next = this.f4711a.entrySet().iterator().next();
                    key = next.getKey();
                    value = next.getValue();
                    this.f4711a.remove(key);
                    this.f4712b -= e(key, value);
                    this.f4716f++;
                }
                return;
            }
            b(true, key, value, null);
        }
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
    }

    public final synchronized java.lang.String toString() {
        int i5;
        int i6;
        i5 = this.f4717g;
        i6 = this.f4718h + i5;
        return java.lang.String.format(java.util.Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", java.lang.Integer.valueOf(this.f4713c), java.lang.Integer.valueOf(this.f4717g), java.lang.Integer.valueOf(this.f4718h), java.lang.Integer.valueOf(i6 != 0 ? (i5 * 100) / i6 : 0));
    }
}
