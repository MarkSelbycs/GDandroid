package f3;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c implements d3.d<java.lang.Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f3.c f4231a = new f3.c();

    @Override // d3.d
    public void F(java.lang.Object obj) {
        throw new java.lang.IllegalStateException("This continuation is already complete".toString());
    }

    @Override // d3.d
    public d3.g b() {
        throw new java.lang.IllegalStateException("This continuation is already complete".toString());
    }

    public java.lang.String toString() {
        return "This continuation is already complete";
    }
}
