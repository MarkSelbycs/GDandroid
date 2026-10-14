package v1;

/* JADX INFO: compiled from: Tuple.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p extends j1.b<v1.p> implements java.lang.Iterable<java.lang.Object>, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object[] f6449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6451c;

    public p(java.lang.Object... objArr) {
        this.f6449a = objArr;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return java.util.Arrays.deepEquals(this.f6449a, ((v1.p) obj).f6449a);
        }
        return false;
    }

    public int hashCode() {
        int i5;
        if (this.f6451c && (i5 = this.f6450b) != 0) {
            return i5;
        }
        int iDeepHashCode = 31 + java.util.Arrays.deepHashCode(this.f6449a);
        if (this.f6451c) {
            this.f6450b = iDeepHashCode;
        }
        return iDeepHashCode;
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<java.lang.Object> iterator() {
        return new l1.a(this.f6449a);
    }

    @Override // java.lang.Iterable
    public final java.util.Spliterator<java.lang.Object> spliterator() {
        return java.util.Spliterators.spliterator(this.f6449a, 16);
    }

    public java.lang.String toString() {
        return java.util.Arrays.toString(this.f6449a);
    }
}
