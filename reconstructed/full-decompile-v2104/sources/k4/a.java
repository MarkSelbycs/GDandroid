package k4;

/* JADX INFO: compiled from: AbstractTarget.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a implements k4.q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r4.b f4863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4865c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f4866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.util.List<k4.s<? extends r4.b>> f4868f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4869g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4870h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public r4.k f4871i;

    public a() {
        this.f4864b = 3;
        this.f4865c = 0;
        this.f4866d = 1000L;
        this.f4867e = 65535;
        this.f4869g = 1;
        this.f4870h = 3;
        this.f4871i = new r4.k();
    }

    @Override // k4.q
    public void C(int i5) {
        this.f4864b = i5;
    }

    @Override // k4.q
    public void R(long j5) {
        this.f4866d = j5;
    }

    @Override // k4.q
    public final r4.k Z() {
        return this.f4871i;
    }

    public int b() {
        return this.f4867e;
    }

    @Override // k4.q
    public int b0() {
        return this.f4864b;
    }

    @Override // k4.q
    public r4.b c0() {
        return this.f4863a;
    }

    public java.lang.Object clone() {
        try {
            return super.clone();
        } catch (java.lang.CloneNotSupportedException unused) {
            return null;
        }
    }

    public void e(int i5) {
        if (i5 < 484) {
            throw new java.lang.IllegalArgumentException("The minimum PDU length is: 484");
        }
        this.f4867e = i5;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        k4.a aVar = (k4.a) obj;
        if (this.f4864b != aVar.f4864b || this.f4865c != aVar.f4865c || this.f4866d != aVar.f4866d || this.f4867e != aVar.f4867e || this.f4869g != aVar.f4869g || this.f4870h != aVar.f4870h || !this.f4863a.equals(aVar.f4863a)) {
            return false;
        }
        java.util.List<k4.s<? extends r4.b>> list = this.f4868f;
        if (list == null ? aVar.f4868f == null : list.equals(aVar.f4868f)) {
            return this.f4871i.equals(aVar.f4871i);
        }
        return false;
    }

    public void f(java.util.List<k4.s<? extends r4.b>> list) {
        this.f4868f = list;
    }

    public void h(int i5) {
        this.f4869g = i5;
    }

    public int hashCode() {
        return (((this.f4863a.hashCode() * 31) + this.f4864b) * 31) + this.f4871i.hashCode();
    }

    @Override // k4.q
    public java.util.List<k4.s<? extends r4.b>> i() {
        return this.f4868f;
    }

    public void j(int i5) {
        this.f4870h = i5;
    }

    @Override // k4.q
    public void l(int i5) {
        if (i5 < 0) {
            throw new java.lang.IllegalArgumentException("Number of retries < 0");
        }
        this.f4865c = i5;
    }

    @Override // k4.q
    public long n() {
        return this.f4866d;
    }

    @Override // k4.q
    public int o() {
        return this.f4869g;
    }

    @Override // k4.q
    public int r0() {
        return this.f4870h;
    }

    @Override // k4.q
    public int s() {
        return this.f4865c;
    }

    public java.lang.String toString() {
        return getClass().getName() + "[" + x() + "]";
    }

    public final void u(r4.k kVar) {
        this.f4871i = kVar;
    }

    public java.lang.String x() {
        return "address=" + c0() + ",version=" + this.f4864b + ",timeout=" + this.f4866d + ",retries=" + this.f4865c + ",securityLevel=" + this.f4869g + ",securityModel=" + this.f4870h + ",securityName=" + this.f4871i + ",preferredTransports=" + this.f4868f;
    }

    @Override // k4.q
    public void z(r4.b bVar) {
        this.f4863a = bVar;
    }

    public a(r4.b bVar) {
        this.f4864b = 3;
        this.f4865c = 0;
        this.f4866d = 1000L;
        this.f4867e = 65535;
        this.f4869g = 1;
        this.f4870h = 3;
        this.f4871i = new r4.k();
        this.f4863a = bVar;
    }

    public a(r4.b bVar, r4.k kVar) {
        this(bVar);
        this.f4871i = kVar;
    }
}
