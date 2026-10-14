package z0;

/* JADX INFO: compiled from: WorkSpec.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f7012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7013b;

    public m(java.lang.String str, int i5) {
        m3.k.e(str, "workSpecId");
        this.f7012a = str;
        this.f7013b = i5;
    }

    public final int a() {
        return this.f7013b;
    }

    public final java.lang.String b() {
        return this.f7012a;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z0.m)) {
            return false;
        }
        z0.m mVar = (z0.m) obj;
        return m3.k.a(this.f7012a, mVar.f7012a) && this.f7013b == mVar.f7013b;
    }

    public int hashCode() {
        return (this.f7012a.hashCode() * 31) + java.lang.Integer.hashCode(this.f7013b);
    }

    public java.lang.String toString() {
        return "WorkGenerationalId(workSpecId=" + this.f7012a + ", generation=" + this.f7013b + ')';
    }
}
