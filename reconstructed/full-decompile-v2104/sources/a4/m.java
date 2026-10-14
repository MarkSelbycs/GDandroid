package a4;

/* JADX INFO: compiled from: Dispatcher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class m extends t3.b0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a4.m f172c = new a4.m();

    @Override // t3.b0
    public void i(d3.g gVar, java.lang.Runnable runnable) {
        a4.c.f153i.s(runnable, a4.l.f171h, false);
    }

    @Override // t3.b0
    public void l(d3.g gVar, java.lang.Runnable runnable) {
        a4.c.f153i.s(runnable, a4.l.f171h, true);
    }

    @Override // t3.b0
    public t3.b0 o(int i5) {
        y3.p.a(i5);
        return i5 >= a4.l.f167d ? this : super.o(i5);
    }
}
