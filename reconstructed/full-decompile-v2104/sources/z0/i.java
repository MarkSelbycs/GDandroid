package z0;

/* JADX INFO: compiled from: SystemIdInfo.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f7002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7004c;

    public i(java.lang.String str, int i5, int i6) {
        m3.k.e(str, "workSpecId");
        this.f7002a = str;
        this.f7003b = i5;
        this.f7004c = i6;
    }

    public final int a() {
        return this.f7003b;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z0.i)) {
            return false;
        }
        z0.i iVar = (z0.i) obj;
        return m3.k.a(this.f7002a, iVar.f7002a) && this.f7003b == iVar.f7003b && this.f7004c == iVar.f7004c;
    }

    public int hashCode() {
        return (((this.f7002a.hashCode() * 31) + java.lang.Integer.hashCode(this.f7003b)) * 31) + java.lang.Integer.hashCode(this.f7004c);
    }

    public java.lang.String toString() {
        return "SystemIdInfo(workSpecId=" + this.f7002a + ", generation=" + this.f7003b + ", systemId=" + this.f7004c + ')';
    }
}
