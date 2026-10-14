package a4;

/* JADX INFO: compiled from: Dispatcher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f extends t3.z0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f155d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f156e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f157f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.lang.String f158g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a4.a f159h = r();

    public f(int i5, int i6, long j5, java.lang.String str) {
        this.f155d = i5;
        this.f156e = i6;
        this.f157f = j5;
        this.f158g = str;
    }

    @Override // t3.b0
    public void i(d3.g gVar, java.lang.Runnable runnable) {
        a4.a.l(this.f159h, runnable, null, false, 6, null);
    }

    @Override // t3.b0
    public void l(d3.g gVar, java.lang.Runnable runnable) {
        a4.a.l(this.f159h, runnable, null, true, 2, null);
    }

    public final a4.a r() {
        return new a4.a(this.f155d, this.f156e, this.f157f, this.f158g);
    }

    public final void s(java.lang.Runnable runnable, a4.i iVar, boolean z4) {
        this.f159h.j(runnable, iVar, z4);
    }
}
