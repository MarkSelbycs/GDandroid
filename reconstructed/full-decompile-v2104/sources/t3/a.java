package t3;

/* JADX INFO: compiled from: AbstractCoroutine.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a<T> extends t3.o1 implements d3.d<T>, t3.e0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d3.g f6165c;

    public a(d3.g gVar, boolean z4, boolean z5) {
        super(z5);
        if (z4) {
            d0((t3.h1) gVar.c(t3.h1.f6192m));
        }
        this.f6165c = gVar.x(this);
    }

    @Override // t3.o1
    public java.lang.String E() {
        return t3.i0.a(this) + " was cancelled";
    }

    @Override // d3.d
    public final void F(java.lang.Object obj) {
        java.lang.Object objL0 = l0(t3.y.d(obj, null, 1, null));
        if (objL0 == t3.p1.f6225b) {
            return;
        }
        J0(objL0);
    }

    public void J0(java.lang.Object obj) {
        v(obj);
    }

    public void K0(java.lang.Throwable th, boolean z4) {
    }

    public void L0(T t5) {
    }

    public final <R> void M0(t3.g0 g0Var, R r5, l3.p<? super R, ? super d3.d<? super T>, ? extends java.lang.Object> pVar) {
        g0Var.e(pVar, r5, this);
    }

    @Override // d3.d
    public final d3.g b() {
        return this.f6165c;
    }

    @Override // t3.o1
    public final void c0(java.lang.Throwable th) {
        t3.d0.a(this.f6165c, th);
    }

    @Override // t3.o1, t3.h1
    public boolean f() {
        return super.f();
    }

    @Override // t3.e0
    public d3.g k() {
        return this.f6165c;
    }

    @Override // t3.o1
    public java.lang.String o0() {
        java.lang.String strB = t3.a0.b(this.f6165c);
        if (strB == null) {
            return super.o0();
        }
        return '\"' + strB + "\":" + super.o0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // t3.o1
    public final void t0(java.lang.Object obj) {
        if (!(obj instanceof t3.u)) {
            L0(obj);
        } else {
            t3.u uVar = (t3.u) obj;
            K0(uVar.f6248a, uVar.a());
        }
    }
}
