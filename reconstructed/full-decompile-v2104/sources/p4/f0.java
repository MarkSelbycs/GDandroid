package p4;

/* JADX INFO: compiled from: UsmTimeEntry.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f0 implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r4.k f5571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5573c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5574d;

    public f0(r4.k kVar, int i5, int i6) {
        this.f5571a = kVar;
        this.f5572b = i5;
        j(i6);
    }

    public int b() {
        return this.f5572b;
    }

    public r4.k c() {
        return this.f5571a;
    }

    public int e() {
        return this.f5574d;
    }

    public int f() {
        return this.f5573c;
    }

    public void h(int i5) {
        this.f5572b = i5;
    }

    public void j(int i5) {
        this.f5574d = i5;
        this.f5573c = i5 - ((int) (java.lang.System.nanoTime() / 1000000000));
    }

    public void q(int i5) {
        this.f5574d = i5;
    }

    public void u(int i5) {
        this.f5573c = i5;
    }
}
