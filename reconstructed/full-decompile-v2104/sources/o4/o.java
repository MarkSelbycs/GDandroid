package o4;

/* JADX INFO: compiled from: StatusInformation.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r4.v f5435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f5436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f5437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public r4.g f5438d;

    public r4.v b() {
        return this.f5435a;
    }

    public r4.g c() {
        return this.f5438d;
    }

    public void e(byte[] bArr) {
        this.f5437c = bArr;
    }

    public void f(byte[] bArr) {
        this.f5436b = bArr;
    }

    public void h(r4.v vVar) {
        this.f5435a = vVar;
    }

    public void j(r4.g gVar) {
        this.f5438d = gVar;
    }

    public java.lang.String toString() {
        r4.v vVar = this.f5435a;
        return vVar == null ? "noError" : vVar.toString();
    }
}
