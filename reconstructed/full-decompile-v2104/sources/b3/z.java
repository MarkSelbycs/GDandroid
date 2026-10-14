package b3;

/* JADX INFO: compiled from: Maps.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class z implements java.util.Map, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b3.z f2950a = new b3.z();

    public boolean b(java.lang.Void r5) {
        m3.k.e(r5, "value");
        return false;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public java.lang.Void get(java.lang.Object obj) {
        return null;
    }

    @Override // java.util.Map
    public void clear() {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(java.lang.Object obj) {
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(java.lang.Object obj) {
        if (obj instanceof java.lang.Void) {
            return b((java.lang.Void) obj);
        }
        return false;
    }

    public java.util.Set<java.util.Map.Entry> e() {
        return b3.a0.f2937a;
    }

    @Override // java.util.Map
    public final /* bridge */ java.util.Set<java.util.Map.Entry> entrySet() {
        return e();
    }

    @Override // java.util.Map
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof java.util.Map) && ((java.util.Map) obj).isEmpty();
    }

    public java.util.Set<java.lang.Object> f() {
        return b3.a0.f2937a;
    }

    public int h() {
        return 0;
    }

    @Override // java.util.Map
    public int hashCode() {
        return 0;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ java.util.Set<java.lang.Object> keySet() {
        return f();
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ java.lang.Object put(java.lang.Object obj, java.lang.Object obj2) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(java.util.Map map) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public java.util.Collection q() {
        return b3.y.f2949a;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return h();
    }

    public java.lang.String toString() {
        return "{}";
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public java.lang.Void remove(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ java.util.Collection values() {
        return q();
    }
}
