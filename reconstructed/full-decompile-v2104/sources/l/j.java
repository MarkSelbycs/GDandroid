package l;

/* JADX INFO: compiled from: Helper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j extends l.f {

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public l.f[] f5090v0 = new l.f[4];

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int f5091w0 = 0;

    public void I0(l.f fVar) {
        int i5 = this.f5091w0 + 1;
        l.f[] fVarArr = this.f5090v0;
        if (i5 > fVarArr.length) {
            this.f5090v0 = (l.f[]) java.util.Arrays.copyOf(fVarArr, fVarArr.length * 2);
        }
        l.f[] fVarArr2 = this.f5090v0;
        int i6 = this.f5091w0;
        fVarArr2[i6] = fVar;
        this.f5091w0 = i6 + 1;
    }

    public void J0() {
        this.f5091w0 = 0;
    }
}
