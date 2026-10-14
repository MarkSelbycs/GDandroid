package l;

/* JADX INFO: compiled from: ResolutionDimension.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class n extends l.o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f5106c = 0.0f;

    @Override // l.o
    public void e() {
        super.e();
        this.f5106c = 0.0f;
    }

    public void g() {
        this.f5108b = 2;
    }

    public void h(int i5) {
        int i6 = this.f5108b;
        if (i6 == 0 || this.f5106c != i5) {
            this.f5106c = i5;
            if (i6 == 1) {
                c();
            }
            b();
        }
    }
}
