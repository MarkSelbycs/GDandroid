package a3;

/* JADX INFO: compiled from: Tuples.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h<A, B> implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final A f114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final B f115b;

    public h(A a5, B b5) {
        this.f114a = a5;
        this.f115b = b5;
    }

    public final A b() {
        return this.f114a;
    }

    public final B c() {
        return this.f115b;
    }

    public final A e() {
        return this.f114a;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a3.h)) {
            return false;
        }
        a3.h hVar = (a3.h) obj;
        return m3.k.a(this.f114a, hVar.f114a) && m3.k.a(this.f115b, hVar.f115b);
    }

    public final B f() {
        return this.f115b;
    }

    public int hashCode() {
        A a5 = this.f114a;
        int iHashCode = (a5 == null ? 0 : a5.hashCode()) * 31;
        B b5 = this.f115b;
        return iHashCode + (b5 != null ? b5.hashCode() : 0);
    }

    public java.lang.String toString() {
        return '(' + this.f114a + ", " + this.f115b + ')';
    }
}
