package t3;

/* JADX INFO: compiled from: CancellableContinuationImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object f6238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t3.h f6239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l3.l<java.lang.Throwable, a3.o> f6240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.Object f6241d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.Throwable f6242e;

    /* JADX WARN: Multi-variable type inference failed */
    public t(java.lang.Object obj, t3.h hVar, l3.l<? super java.lang.Throwable, a3.o> lVar, java.lang.Object obj2, java.lang.Throwable th) {
        this.f6238a = obj;
        this.f6239b = hVar;
        this.f6240c = lVar;
        this.f6241d = obj2;
        this.f6242e = th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ t3.t b(t3.t tVar, java.lang.Object obj, t3.h hVar, l3.l lVar, java.lang.Object obj2, java.lang.Throwable th, int i5, java.lang.Object obj3) {
        if ((i5 & 1) != 0) {
            obj = tVar.f6238a;
        }
        if ((i5 & 2) != 0) {
            hVar = tVar.f6239b;
        }
        t3.h hVar2 = hVar;
        if ((i5 & 4) != 0) {
            lVar = tVar.f6240c;
        }
        l3.l lVar2 = lVar;
        if ((i5 & 8) != 0) {
            obj2 = tVar.f6241d;
        }
        java.lang.Object obj4 = obj2;
        if ((i5 & 16) != 0) {
            th = tVar.f6242e;
        }
        return tVar.a(obj, hVar2, lVar2, obj4, th);
    }

    public final t3.t a(java.lang.Object obj, t3.h hVar, l3.l<? super java.lang.Throwable, a3.o> lVar, java.lang.Object obj2, java.lang.Throwable th) {
        return new t3.t(obj, hVar, lVar, obj2, th);
    }

    public final boolean c() {
        return this.f6242e != null;
    }

    public final void d(t3.k<?> kVar, java.lang.Throwable th) {
        t3.h hVar = this.f6239b;
        if (hVar != null) {
            kVar.j(hVar, th);
        }
        l3.l<java.lang.Throwable, a3.o> lVar = this.f6240c;
        if (lVar != null) {
            kVar.k(lVar, th);
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t3.t)) {
            return false;
        }
        t3.t tVar = (t3.t) obj;
        return m3.k.a(this.f6238a, tVar.f6238a) && m3.k.a(this.f6239b, tVar.f6239b) && m3.k.a(this.f6240c, tVar.f6240c) && m3.k.a(this.f6241d, tVar.f6241d) && m3.k.a(this.f6242e, tVar.f6242e);
    }

    public int hashCode() {
        java.lang.Object obj = this.f6238a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        t3.h hVar = this.f6239b;
        int iHashCode2 = (iHashCode + (hVar == null ? 0 : hVar.hashCode())) * 31;
        l3.l<java.lang.Throwable, a3.o> lVar = this.f6240c;
        int iHashCode3 = (iHashCode2 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        java.lang.Object obj2 = this.f6241d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        java.lang.Throwable th = this.f6242e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public java.lang.String toString() {
        return "CompletedContinuation(result=" + this.f6238a + ", cancelHandler=" + this.f6239b + ", onCancellation=" + this.f6240c + ", idempotentResume=" + this.f6241d + ", cancelCause=" + this.f6242e + ')';
    }

    public /* synthetic */ t(java.lang.Object obj, t3.h hVar, l3.l lVar, java.lang.Object obj2, java.lang.Throwable th, int i5, m3.g gVar) {
        this(obj, (i5 & 2) != 0 ? null : hVar, (i5 & 4) != 0 ? null : lVar, (i5 & 8) != 0 ? null : obj2, (i5 & 16) != 0 ? null : th);
    }
}
