package b3;

/* JADX INFO: compiled from: IndexedValue.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b0<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final T f2940b;

    public b0(int i5, T t5) {
        this.f2939a = i5;
        this.f2940b = t5;
    }

    public final int a() {
        return this.f2939a;
    }

    public final T b() {
        return this.f2940b;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b3.b0)) {
            return false;
        }
        b3.b0 b0Var = (b3.b0) obj;
        return this.f2939a == b0Var.f2939a && m3.k.a(this.f2940b, b0Var.f2940b);
    }

    public int hashCode() {
        int iHashCode = java.lang.Integer.hashCode(this.f2939a) * 31;
        T t5 = this.f2940b;
        return iHashCode + (t5 == null ? 0 : t5.hashCode());
    }

    public java.lang.String toString() {
        return "IndexedValue(index=" + this.f2939a + ", value=" + this.f2940b + ')';
    }
}
