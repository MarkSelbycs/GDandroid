package r0;

/* JADX INFO: compiled from: OperationImpl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class q implements q0.r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.lifecycle.k<q0.r.b> f5882c = new androidx.lifecycle.k<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b1.c<q0.r.b.c> f5883d = b1.c.t();

    public q() {
        b(q0.r.f5716b);
    }

    @Override // q0.r
    public r2.a<q0.r.b.c> a() {
        return this.f5883d;
    }

    public void b(q0.r.b bVar) {
        this.f5882c.g(bVar);
        if (bVar instanceof q0.r.b.c) {
            this.f5883d.p((q0.r.b.c) bVar);
        } else if (bVar instanceof q0.r.b.a) {
            this.f5883d.q(((q0.r.b.a) bVar).a());
        }
    }
}
