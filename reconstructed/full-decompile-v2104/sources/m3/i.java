package m3;

/* JADX INFO: compiled from: FunctionReference.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i extends m3.c implements m3.h, q3.d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f5188h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5189i;

    public i(int i5, java.lang.Object obj, java.lang.Class cls, java.lang.String str, java.lang.String str2, int i6) {
        super(obj, cls, str, str2, (i6 & 1) == 1);
        this.f5188h = i5;
        this.f5189i = i6 >> 1;
    }

    @Override // m3.h
    public int e() {
        return this.f5188h;
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m3.i) {
            m3.i iVar = (m3.i) obj;
            return D().equals(iVar.D()) && H().equals(iVar.H()) && this.f5189i == iVar.f5189i && this.f5188h == iVar.f5188h && m3.k.a(y(), iVar.y()) && m3.k.a(F(), iVar.F());
        }
        if (obj instanceof q3.d) {
            return obj.equals(b());
        }
        return false;
    }

    @Override // m3.c
    public q3.a f() {
        return m3.r.a(this);
    }

    public int hashCode() {
        return (((F() == null ? 0 : F().hashCode() * 31) + D().hashCode()) * 31) + H().hashCode();
    }

    public java.lang.String toString() {
        q3.a aVarB = b();
        if (aVarB != this) {
            return aVarB.toString();
        }
        if ("<init>".equals(D())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + D() + " (Kotlin reflection is not available)";
    }
}
