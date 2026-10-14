package y1;

/* JADX INFO: compiled from: MutableInt.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends java.lang.Number implements java.lang.Comparable<y1.b>, y1.a<java.lang.Number> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6844a;

    public b() {
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(y1.b bVar) {
        return e2.o.a(this.f6844a, bVar.f6844a);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.f6844a;
    }

    @Override // y1.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public java.lang.Integer get() {
        return java.lang.Integer.valueOf(this.f6844a);
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof y1.b) && this.f6844a == ((y1.b) obj).intValue();
    }

    public y1.b f() {
        this.f6844a++;
        return this;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.f6844a;
    }

    public int hashCode() {
        return this.f6844a;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.f6844a;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.f6844a;
    }

    public java.lang.String toString() {
        return java.lang.String.valueOf(this.f6844a);
    }

    public b(int i5) {
        this.f6844a = i5;
    }
}
