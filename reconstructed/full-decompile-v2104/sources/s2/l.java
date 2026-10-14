package s2;

/* JADX INFO: compiled from: JsonObject.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class l extends s2.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u2.g<java.lang.String, s2.i> f6068a = new u2.g<>();

    public boolean equals(java.lang.Object obj) {
        return obj == this || ((obj instanceof s2.l) && ((s2.l) obj).f6068a.equals(this.f6068a));
    }

    public int hashCode() {
        return this.f6068a.hashCode();
    }

    public void j(java.lang.String str, s2.i iVar) {
        if (iVar == null) {
            iVar = s2.k.f6067a;
        }
        this.f6068a.put(str, iVar);
    }

    public void k(java.lang.String str, java.lang.Number number) {
        j(str, m(number));
    }

    public void l(java.lang.String str, java.lang.String str2) {
        j(str, m(str2));
    }

    public final s2.i m(java.lang.Object obj) {
        return obj == null ? s2.k.f6067a : new s2.o(obj);
    }

    public java.util.Set<java.util.Map.Entry<java.lang.String, s2.i>> n() {
        return this.f6068a.entrySet();
    }

    public s2.i o(java.lang.String str) {
        return this.f6068a.get(str);
    }

    public s2.g p(java.lang.String str) {
        return (s2.g) this.f6068a.get(str);
    }
}
