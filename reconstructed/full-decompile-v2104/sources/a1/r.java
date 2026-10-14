package a1;

/* JADX INFO: compiled from: StatusRunnable.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class r<T> implements java.lang.Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b1.c<T> f41a = b1.c.t();

    /* JADX INFO: compiled from: StatusRunnable.java */
    public class a extends a1.r<java.util.List<q0.y>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ r0.p0 f42b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ q0.a0 f43c;

        public a(r0.p0 p0Var, q0.a0 a0Var) {
            this.f42b = p0Var;
            this.f43c = a0Var;
        }

        @Override // a1.r
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public java.util.List<q0.y> c() {
            return z0.u.f7031z.apply(this.f42b.u().F().a(a1.o.b(this.f43c)));
        }
    }

    public static a1.r<java.util.List<q0.y>> a(r0.p0 p0Var, q0.a0 a0Var) {
        return new a1.r.a(p0Var, a0Var);
    }

    public r2.a<T> b() {
        return this.f41a;
    }

    public abstract T c();

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f41a.p(c());
        } catch (java.lang.Throwable th) {
            this.f41a.q(th);
        }
    }
}
