package p3;

/* JADX INFO: compiled from: Ranges.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f5503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f5504b;

    public boolean a() {
        return this.f5503a > this.f5504b;
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof p3.d) {
            if (a() && ((p3.d) obj).a()) {
                return true;
            }
            p3.d dVar = (p3.d) obj;
            if (this.f5503a == dVar.f5503a) {
                if (this.f5504b == dVar.f5504b) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        if (a()) {
            return -1;
        }
        return (java.lang.Double.hashCode(this.f5503a) * 31) + java.lang.Double.hashCode(this.f5504b);
    }

    public java.lang.String toString() {
        return this.f5503a + ".." + this.f5504b;
    }
}
