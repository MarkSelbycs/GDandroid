package v1;

/* JADX INFO: compiled from: Pair.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l<K, V> extends j1.b<v1.l<K, V>> implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public K f6414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public V f6415b;

    public l(K k5, V v4) {
        this.f6414a = k5;
        this.f6415b = v4;
    }

    public K b() {
        return this.f6414a;
    }

    public V e() {
        return this.f6415b;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v1.l)) {
            return false;
        }
        v1.l lVar = (v1.l) obj;
        return java.util.Objects.equals(b(), lVar.b()) && java.util.Objects.equals(e(), lVar.e());
    }

    public int hashCode() {
        return java.util.Objects.hashCode(this.f6414a) ^ java.util.Objects.hashCode(this.f6415b);
    }

    public java.lang.String toString() {
        return "Pair [key=" + this.f6414a + ", value=" + this.f6415b + "]";
    }
}
