package p4;

/* JADX INFO: compiled from: UsmUser.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h0 implements java.io.Serializable, java.lang.Comparable, java.lang.Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r4.k f5581a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r4.k f5582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public r4.k f5583c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public r4.j f5584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public r4.j f5585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public r4.k f5586f;

    public h0(r4.k kVar, r4.j jVar, r4.k kVar2, r4.j jVar2, r4.k kVar3) {
        java.util.Objects.requireNonNull(kVar);
        if (k4.m.k()) {
            if (jVar != null && kVar2 != null && kVar2.e0() < 8) {
                throw new java.lang.IllegalArgumentException("USM passphrases must be at least 8 bytes long (RFC3414 §11.2)");
            }
            if (jVar2 != null && kVar3 != null && kVar3.e0() < 8) {
                throw new java.lang.IllegalArgumentException("USM passphrases must be at least 8 bytes long (RFC3414 §11.2)");
            }
        }
        this.f5581a = kVar;
        this.f5584d = jVar;
        this.f5582b = kVar2;
        this.f5585e = jVar2;
        this.f5583c = kVar3;
    }

    public r4.k Z() {
        return (r4.k) this.f5581a.clone();
    }

    public r4.k b() {
        r4.k kVar = this.f5582b;
        if (kVar == null) {
            return null;
        }
        return (r4.k) kVar.clone();
    }

    public java.lang.Object clone() {
        return new p4.h0(this.f5581a, this.f5584d, this.f5582b, this.f5585e, this.f5583c, this.f5586f);
    }

    @Override // java.lang.Comparable
    public int compareTo(java.lang.Object obj) {
        return this.f5581a.compareTo(((p4.h0) obj).f5581a);
    }

    public r4.j e() {
        r4.j jVar = this.f5584d;
        if (jVar == null) {
            return null;
        }
        return (r4.j) jVar.clone();
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        p4.h0 h0Var = (p4.h0) obj;
        if (!this.f5581a.equals(h0Var.f5581a)) {
            return false;
        }
        r4.k kVar = this.f5582b;
        if (kVar == null ? h0Var.f5582b != null : !kVar.equals(h0Var.f5582b)) {
            return false;
        }
        r4.k kVar2 = this.f5583c;
        if (kVar2 == null ? h0Var.f5583c != null : !kVar2.equals(h0Var.f5583c)) {
            return false;
        }
        r4.j jVar = this.f5584d;
        if (jVar == null ? h0Var.f5584d != null : !jVar.equals(h0Var.f5584d)) {
            return false;
        }
        r4.j jVar2 = this.f5585e;
        if (jVar2 == null ? h0Var.f5585e != null : !jVar2.equals(h0Var.f5585e)) {
            return false;
        }
        r4.k kVar3 = this.f5586f;
        r4.k kVar4 = h0Var.f5586f;
        return kVar3 == null ? kVar4 == null : kVar3.equals(kVar4);
    }

    public r4.k f() {
        return this.f5586f;
    }

    public r4.k h() {
        r4.k kVar = this.f5583c;
        if (kVar == null) {
            return null;
        }
        return (r4.k) kVar.clone();
    }

    public int hashCode() {
        return this.f5581a.hashCode();
    }

    public r4.j j() {
        r4.j jVar = this.f5585e;
        if (jVar == null) {
            return null;
        }
        return (r4.j) jVar.clone();
    }

    public java.lang.String toString() {
        return "UsmUser[secName=" + this.f5581a + ",authProtocol=" + this.f5584d + ",authPassphrase=" + this.f5582b + ",privProtocol=" + this.f5585e + ",privPassphrase=" + this.f5583c + ",localizationEngineID=" + f() + "]";
    }

    public boolean u() {
        return this.f5586f != null;
    }

    public h0(r4.k kVar, r4.j jVar, r4.k kVar2, r4.j jVar2, r4.k kVar3, r4.k kVar4) {
        this(kVar, jVar, kVar2, jVar2, kVar3);
        this.f5586f = kVar4;
    }
}
