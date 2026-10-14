package t3;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class s0 implements t3.d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6237a;

    public s0(boolean z4) {
        this.f6237a = z4;
    }

    @Override // t3.d1
    public boolean f() {
        return this.f6237a;
    }

    @Override // t3.d1
    public t3.s1 i() {
        return null;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("Empty{");
        sb.append(f() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
