package s2;

/* JADX INFO: compiled from: JsonArray.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g extends s2.i implements java.lang.Iterable<s2.i> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.List<s2.i> f6066a = new java.util.ArrayList();

    @Override // s2.i
    public int a() {
        if (this.f6066a.size() == 1) {
            return this.f6066a.get(0).a();
        }
        throw new java.lang.IllegalStateException();
    }

    @Override // s2.i
    public java.lang.String e() {
        if (this.f6066a.size() == 1) {
            return this.f6066a.get(0).e();
        }
        throw new java.lang.IllegalStateException();
    }

    public boolean equals(java.lang.Object obj) {
        return obj == this || ((obj instanceof s2.g) && ((s2.g) obj).f6066a.equals(this.f6066a));
    }

    public int hashCode() {
        return this.f6066a.hashCode();
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<s2.i> iterator() {
        return this.f6066a.iterator();
    }

    public void j(java.lang.String str) {
        this.f6066a.add(str == null ? s2.k.f6067a : new s2.o(str));
    }

    public void k(s2.i iVar) {
        if (iVar == null) {
            iVar = s2.k.f6067a;
        }
        this.f6066a.add(iVar);
    }

    public s2.i l(int i5) {
        return this.f6066a.get(i5);
    }

    public int size() {
        return this.f6066a.size();
    }
}
