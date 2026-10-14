package a0;

/* JADX INFO: compiled from: LookupTableInterpolator.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b implements android.view.animation.Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f2a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f3b;

    public b(float[] fArr) {
        this.f2a = fArr;
        this.f3b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f5) {
        if (f5 >= 1.0f) {
            return 1.0f;
        }
        if (f5 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f2a;
        int iMin = java.lang.Math.min((int) ((fArr.length - 1) * f5), fArr.length - 2);
        float f6 = this.f3b;
        float f7 = (f5 - (iMin * f6)) / f6;
        float[] fArr2 = this.f2a;
        return fArr2[iMin] + (f7 * (fArr2[iMin + 1] - fArr2[iMin]));
    }
}
