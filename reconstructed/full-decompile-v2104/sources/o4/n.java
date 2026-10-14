package o4;

/* JADX INFO: compiled from: StateReference.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class n<A extends r4.b> implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public A f5418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient k4.s<? super A> f5419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f5420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f5421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p4.w f5422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f5423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5424g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p4.a0 f5425h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o4.f f5426i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5427o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5428p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public o4.i f5429q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public byte[] f5430r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5431s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public java.util.List<o4.f> f5432t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f5433u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f5434v;

    public n() {
        this.f5431s = 0;
    }

    public static o4.f c(int i5) {
        return k4.m.e() == k4.m.b.extended ? new o4.p(i5) : new o4.l(i5);
    }

    public byte[] D() {
        return this.f5423f;
    }

    public p4.a0 F() {
        return this.f5425h;
    }

    public k4.s<? super A> H() {
        return this.f5419b;
    }

    public boolean I(int i5) {
        if (this.f5426i.a() == i5) {
            this.f5433u = i5;
            if (this.f5426i instanceof o4.p) {
                this.f5434v = java.lang.System.nanoTime() - ((o4.p) this.f5426i).b();
            }
        } else {
            java.util.List<o4.f> list = this.f5432t;
            if (list != null) {
                java.util.Iterator<o4.f> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next().a() == i5) {
                        this.f5433u = i5;
                        if (!(this.f5426i instanceof o4.p)) {
                            break;
                        }
                        this.f5434v = java.lang.System.nanoTime() - ((o4.p) this.f5426i).b();
                        break;
                    }
                }
            }
        }
        i0(this.f5429q);
        return this.f5433u == i5;
    }

    public boolean M(o4.f fVar) {
        return I(fVar.a());
    }

    public void P(byte[] bArr) {
        this.f5420c = bArr;
    }

    public void T(byte[] bArr) {
        this.f5421d = bArr;
    }

    public void U(int i5) {
        this.f5427o = i5;
    }

    public void V(int i5) {
        this.f5428p = i5;
    }

    public void W(int i5) {
        this.f5426i = c(i5);
    }

    public void X(o4.i iVar) {
        this.f5429q = iVar;
        i0(iVar);
    }

    public void a0(byte[] bArr) {
        this.f5430r = bArr;
    }

    public synchronized void b(java.util.List<o4.f> list) {
        if (this.f5432t == null) {
            this.f5432t = new java.util.ArrayList(list.size());
        }
        this.f5432t.addAll(list);
    }

    public A c0() {
        return this.f5418a;
    }

    public void d0(int i5) {
        this.f5424g = i5;
    }

    public boolean e(o4.n<?> nVar) {
        o4.i iVar = this.f5429q;
        return (iVar == null && nVar.f5429q == null) || (iVar != null && iVar.equals(nVar.u()) && java.util.Arrays.equals(this.f5430r, nVar.f5430r) && this.f5422e.equals(nVar.f5422e) && java.util.Arrays.equals(this.f5423f, nVar.f5423f) && this.f5424g == nVar.f5424g && java.util.Arrays.equals(this.f5420c, nVar.f5420c) && java.util.Arrays.equals(this.f5421d, nVar.f5421d));
    }

    public void e0(p4.w wVar) {
        this.f5422e = wVar;
    }

    public boolean equals(java.lang.Object obj) {
        java.util.List<o4.f> list;
        if (!(obj instanceof o4.n)) {
            return false;
        }
        o4.n<?> nVar = (o4.n) obj;
        return (M(nVar.f5426i) || ((list = nVar.f5432t) != null && list.contains(this.f5426i))) && e(nVar);
    }

    public byte[] f() {
        return this.f5420c;
    }

    public void f0(byte[] bArr) {
        this.f5423f = bArr;
    }

    public void g0(p4.a0 a0Var) {
        this.f5425h = a0Var;
    }

    public byte[] h() {
        return this.f5421d;
    }

    public void h0(k4.s<? super A> sVar) {
        this.f5419b = sVar;
    }

    public int hashCode() {
        return this.f5426i.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void i0(o4.i iVar) {
        if (iVar instanceof o4.k) {
            o4.k kVar = (o4.k) iVar;
            java.util.List<o4.f> list = this.f5432t;
            int i5 = 1;
            kVar.c((list != null ? list.size() : 0) + 1);
            kVar.b(this.f5434v);
            if (this.f5426i.a() == this.f5433u) {
                kVar.a(0);
                return;
            }
            java.util.List<o4.f> list2 = this.f5432t;
            if (list2 != null) {
                java.util.Iterator<o4.f> it = list2.iterator();
                while (it.hasNext()) {
                    if (it.next().a() == this.f5433u) {
                        kVar.a(i5);
                        return;
                    }
                    i5++;
                }
            }
        }
    }

    public synchronized java.util.List<o4.f> j() {
        java.util.ArrayList arrayList;
        java.util.List<o4.f> list = this.f5432t;
        arrayList = new java.util.ArrayList(1 + (list != null ? list.size() : 0));
        arrayList.add(this.f5426i);
        java.util.List<o4.f> list2 = this.f5432t;
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        return arrayList;
    }

    public int o() {
        return this.f5424g;
    }

    public o4.f q() {
        return this.f5426i;
    }

    public java.lang.String toString() {
        return "StateReference[msgID=" + this.f5426i + ",pduHandle=" + this.f5429q + ",securityEngineID=" + r4.k.P(this.f5430r) + ",securityModel=" + this.f5422e + ",securityName=" + r4.k.P(this.f5423f) + ",securityLevel=" + this.f5424g + ",contextEngineID=" + r4.k.P(this.f5420c) + ",contextName=" + r4.k.P(this.f5421d) + ",retryMsgIDs=" + this.f5432t + "]";
    }

    public o4.i u() {
        return this.f5429q;
    }

    public byte[] x() {
        return this.f5430r;
    }

    public p4.w y() {
        return this.f5422e;
    }

    public void z(A a5) {
        this.f5418a = a5;
    }

    public n(o4.i iVar, A a5, k4.s<? super A> sVar, p4.w wVar, byte[] bArr, int i5) {
        this(0, 0, 65535, iVar, a5, sVar, null, wVar, bArr, 1, null, null, null, i5);
    }

    public n(int i5, int i6, int i7, o4.i iVar, A a5, k4.s<? super A> sVar, byte[] bArr, p4.w wVar, byte[] bArr2, int i8, byte[] bArr3, byte[] bArr4, p4.a0 a0Var, int i9) {
        this.f5431s = 0;
        this.f5426i = c(i5);
        this.f5428p = i6;
        this.f5427o = i7;
        this.f5429q = iVar;
        this.f5418a = a5;
        this.f5419b = sVar;
        this.f5430r = bArr;
        this.f5422e = wVar;
        this.f5423f = bArr2;
        this.f5424g = i8;
        this.f5420c = bArr3;
        this.f5421d = bArr4;
        this.f5425h = a0Var;
        this.f5431s = i9;
    }
}
