package m3;

/* JADX INFO: compiled from: PropertyReference.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class p extends m3.c implements q3.g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f5193h;

    public p() {
        this.f5193h = false;
    }

    @Override // m3.c
    public q3.a b() {
        return this.f5193h ? this : super.b();
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m3.p) {
            m3.p pVar = (m3.p) obj;
            return F().equals(pVar.F()) && D().equals(pVar.D()) && H().equals(pVar.H()) && m3.k.a(y(), pVar.y());
        }
        if (obj instanceof q3.g) {
            return obj.equals(b());
        }
        return false;
    }

    public int hashCode() {
        return (((F().hashCode() * 31) + D().hashCode()) * 31) + H().hashCode();
    }

    public java.lang.String toString() {
        q3.a aVarB = b();
        if (aVarB != this) {
            return aVarB.toString();
        }
        return "property " + D() + " (Kotlin reflection is not available)";
    }

    public p(java.lang.Object obj, java.lang.Class cls, java.lang.String str, java.lang.String str2, int i5) {
        super(obj, cls, str, str2, (i5 & 1) == 1);
        this.f5193h = (i5 & 2) == 2;
    }
}
