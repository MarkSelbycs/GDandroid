package o4;

/* JADX INFO: compiled from: PduHandle.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5357a = Integer.MIN_VALUE;

    public i() {
    }

    public void b(o4.i iVar) {
        e(iVar.f5357a);
    }

    public int c() {
        return this.f5357a;
    }

    public void e(int i5) {
        this.f5357a = i5;
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof o4.i) && this.f5357a == ((o4.i) obj).f5357a;
    }

    public int hashCode() {
        return this.f5357a;
    }

    public java.lang.String toString() {
        return "PduHandle[" + this.f5357a + "]";
    }

    public i(int i5) {
        e(i5);
    }
}
