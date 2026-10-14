package k;

/* JADX INFO: compiled from: SolverVariable.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f4837k = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.String f4838a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f4842e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public k.i.a f4844g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4839b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4840c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4841d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float[] f4843f = new float[7];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public k.b[] f4845h = new k.b[8];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4846i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4847j = 0;

    /* JADX INFO: compiled from: SolverVariable.java */
    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public i(k.i.a aVar, java.lang.String str) {
        this.f4844g = aVar;
    }

    public static void b() {
        f4837k++;
    }

    public final void a(k.b bVar) {
        int i5 = 0;
        while (true) {
            int i6 = this.f4846i;
            if (i5 >= i6) {
                k.b[] bVarArr = this.f4845h;
                if (i6 >= bVarArr.length) {
                    this.f4845h = (k.b[]) java.util.Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                k.b[] bVarArr2 = this.f4845h;
                int i7 = this.f4846i;
                bVarArr2[i7] = bVar;
                this.f4846i = i7 + 1;
                return;
            }
            if (this.f4845h[i5] == bVar) {
                return;
            } else {
                i5++;
            }
        }
    }

    public final void c(k.b bVar) {
        int i5 = this.f4846i;
        for (int i6 = 0; i6 < i5; i6++) {
            if (this.f4845h[i6] == bVar) {
                for (int i7 = 0; i7 < (i5 - i6) - 1; i7++) {
                    k.b[] bVarArr = this.f4845h;
                    int i8 = i6 + i7;
                    bVarArr[i8] = bVarArr[i8 + 1];
                }
                this.f4846i--;
                return;
            }
        }
    }

    public void d() {
        this.f4838a = null;
        this.f4844g = k.i.a.UNKNOWN;
        this.f4841d = 0;
        this.f4839b = -1;
        this.f4840c = -1;
        this.f4842e = 0.0f;
        this.f4846i = 0;
        this.f4847j = 0;
    }

    public void e(k.i.a aVar, java.lang.String str) {
        this.f4844g = aVar;
    }

    public final void f(k.b bVar) {
        int i5 = this.f4846i;
        for (int i6 = 0; i6 < i5; i6++) {
            k.b[] bVarArr = this.f4845h;
            bVarArr[i6].f4813d.n(bVarArr[i6], bVar, false);
        }
        this.f4846i = 0;
    }

    public java.lang.String toString() {
        return "" + this.f4838a;
    }
}
