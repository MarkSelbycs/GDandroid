package p4;

/* JADX INFO: compiled from: UsmTimeTable.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g0 implements java.io.Serializable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final n4.a f5576d = n4.b.d(p4.g0.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Hashtable<r4.u, p4.f0> f5577a = new java.util.Hashtable<>(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f5578b = java.lang.System.nanoTime();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p4.f0 f5579c;

    public g0(r4.k kVar, int i5) {
        u(new p4.f0(kVar, i5, 0));
    }

    public void b(p4.f0 f0Var) {
        this.f5577a.put(f0Var.c(), f0Var);
    }

    public synchronized int c(r4.k kVar, boolean z4, int i5, int i6) {
        if (this.f5577a.get(kVar) != null) {
            return 0;
        }
        if (!z4) {
            return 1410;
        }
        b(new p4.f0(kVar, i5, i6));
        return 0;
    }

    public synchronized int e(p4.f0 f0Var) {
        java.lang.String str;
        int iNanoTime = (int) (java.lang.System.nanoTime() / 1000000000);
        if (!this.f5579c.c().equals(f0Var.c())) {
            p4.f0 f0Var2 = this.f5577a.get(f0Var.c());
            if (f0Var2 == null) {
                return 1410;
            }
            if (f0Var.b() > f0Var2.b() || (f0Var.b() == f0Var2.b() && f0Var.e() > f0Var2.e())) {
                f0Var2.h(f0Var.b());
                f0Var2.q(f0Var.e());
                f0Var2.u(f0Var.e() - iNanoTime);
            }
            if (f0Var.b() >= f0Var2.b() && ((f0Var.b() != f0Var2.b() || f0Var2.e() <= f0Var.e() + 150) && f0Var2.b() != Integer.MAX_VALUE)) {
                n4.a aVar = f5576d;
                if (aVar.e()) {
                    aVar.f("CheckTime: time ok (non authoritative)");
                }
                return 0;
            }
            n4.a aVar2 = f5576d;
            if (aVar2.e()) {
                aVar2.f("CheckTime: received message outside time window (non authoritative)");
            }
            return 1411;
        }
        if (this.f5579c.b() != Integer.MAX_VALUE && this.f5579c.b() == f0Var.b() && java.lang.Math.abs((this.f5579c.f() + iNanoTime) - f0Var.e()) <= 150) {
            n4.a aVar3 = f5576d;
            if (aVar3.e()) {
                aVar3.f("CheckTime: time ok (authoritative)");
            }
            return 0;
        }
        n4.a aVar4 = f5576d;
        if (aVar4.e()) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("CheckTime: received message outside time window (authoritative):");
            if (this.f5579c.b() != f0Var.b()) {
                str = "engineBoots differ " + this.f5579c.b() + "!=" + f0Var.b();
            } else {
                str = "" + java.lang.Math.abs((iNanoTime + this.f5579c.f()) - f0Var.e()) + " > 150";
            }
            sb.append(str);
            aVar4.f(sb.toString());
        }
        return 1411;
    }

    public int f() {
        return this.f5579c.b();
    }

    public int h() {
        return (int) ((((java.lang.System.nanoTime() - this.f5578b) / 1000000000) + ((long) this.f5579c.e())) % 2147483648L);
    }

    public p4.f0 j() {
        p4.f0 f0Var = new p4.f0(this.f5579c.c(), this.f5579c.b(), h());
        f0Var.u((f0Var.f() * (-1)) + this.f5579c.f());
        return f0Var;
    }

    public synchronized p4.f0 q(r4.k kVar) {
        if (this.f5579c.c().equals(kVar)) {
            return j();
        }
        p4.f0 f0Var = this.f5577a.get(kVar);
        if (f0Var == null) {
            return null;
        }
        return new p4.f0(kVar, f0Var.b(), f0Var.f() + ((int) (java.lang.System.nanoTime() / 1000000000)));
    }

    public void u(p4.f0 f0Var) {
        this.f5579c = f0Var;
        this.f5578b = java.lang.System.nanoTime();
    }
}
