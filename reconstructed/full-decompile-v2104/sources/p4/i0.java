package p4;

/* JADX INFO: compiled from: UsmUserEntry.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i0 implements java.io.Serializable, java.lang.Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r4.k f5587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r4.k f5588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p4.h0 f5589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f5590d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f5591e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o4.m.a f5592f;

    public i0() {
        this.f5592f = o4.m.a.nonVolatile;
        this.f5587a = new r4.k();
        this.f5588b = new r4.k();
        this.f5589c = new p4.h0(new r4.k(), null, null, null, null);
    }

    public byte[] b() {
        return this.f5590d;
    }

    @Override // java.lang.Comparable
    public int compareTo(java.lang.Object obj) {
        int iU;
        r4.k kVar;
        p4.i0 i0Var = (p4.i0) obj;
        r4.k kVar2 = this.f5587a;
        if (kVar2 != null && (kVar = i0Var.f5587a) != null) {
            iU = kVar2.compareTo(kVar);
        } else if (kVar2 == null || i0Var.f5587a != null) {
            iU = (kVar2 != null || i0Var.f5587a == null) ? 0 : -1;
        } else {
            iU = 1;
        }
        if (iU != 0) {
            return iU;
        }
        int iU2 = this.f5588b.compareTo(i0Var.f5588b);
        return iU2 == 0 ? this.f5589c.compareTo(i0Var.f5589c) : iU2;
    }

    public r4.k e() {
        return this.f5587a;
    }

    public byte[] f() {
        return this.f5591e;
    }

    public r4.k h() {
        return this.f5588b;
    }

    public p4.h0 j() {
        return this.f5589c;
    }

    public java.lang.String toString() {
        return "UsmUserEntry[userName=" + this.f5588b + ",usmUser=" + this.f5589c + ",storageType=" + this.f5592f + "]";
    }

    public void u(r4.k kVar) {
        this.f5588b = kVar;
    }

    public void x(p4.h0 h0Var) {
        this.f5589c = h0Var;
    }

    public i0(byte[] bArr, r4.k kVar, r4.j jVar, byte[] bArr2, r4.j jVar2, byte[] bArr3) {
        this.f5592f = o4.m.a.nonVolatile;
        this.f5587a = bArr == null ? null : new r4.k(bArr);
        this.f5588b = kVar;
        this.f5590d = bArr2;
        this.f5591e = bArr3;
        this.f5589c = new p4.h0(kVar, jVar, bArr2 != null ? new r4.k(this.f5590d) : null, jVar2, this.f5591e != null ? new r4.k(this.f5591e) : null, this.f5587a);
    }
}
