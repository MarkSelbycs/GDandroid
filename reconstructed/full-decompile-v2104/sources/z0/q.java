package z0;

/* JADX INFO: compiled from: WorkProgress.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f7019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.work.b f7020b;

    public q(java.lang.String str, androidx.work.b bVar) {
        m3.k.e(str, "workSpecId");
        m3.k.e(bVar, "progress");
        this.f7019a = str;
        this.f7020b = bVar;
    }

    public final androidx.work.b a() {
        return this.f7020b;
    }

    public final java.lang.String b() {
        return this.f7019a;
    }
}
