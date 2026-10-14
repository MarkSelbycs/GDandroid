package p4;

/* JADX INFO: compiled from: SecurityModels.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static p4.x f5632b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Map<r4.g, p4.w> f5633a = new java.util.Hashtable(3);

    public static synchronized p4.x a() {
        if (f5632b == null) {
            f5632b = new p4.x();
        }
        return f5632b;
    }

    public p4.w b(r4.g gVar) {
        return this.f5633a.get(gVar);
    }
}
