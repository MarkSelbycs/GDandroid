package l;

/* JADX INFO: compiled from: ChainHead.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l.f f4970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public l.f f4971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l.f f4972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public l.f f4973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public l.f f4974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public l.f f4975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public l.f f4976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public java.util.ArrayList<l.f> f4977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4979j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f4980k = 0.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4981l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4982m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4983n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4984o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f4985p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f4986q;

    public d(l.f fVar, int i5, boolean z4) {
        this.f4970a = fVar;
        this.f4981l = i5;
        this.f4982m = z4;
    }

    public static boolean c(l.f fVar, int i5) {
        if (fVar.C() != 8 && fVar.E[i5] == l.f.b.MATCH_CONSTRAINT) {
            int[] iArr = fVar.f5028g;
            if (iArr[i5] == 0 || iArr[i5] == 3) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        if (!this.f4986q) {
            b();
        }
        this.f4986q = true;
    }

    public final void b() {
        int i5 = this.f4981l * 2;
        l.f fVar = this.f4970a;
        boolean z4 = false;
        l.f fVar2 = fVar;
        boolean z5 = false;
        while (!z5) {
            this.f4978i++;
            l.f[] fVarArr = fVar.f5051r0;
            int i6 = this.f4981l;
            l.f fVar3 = null;
            fVarArr[i6] = null;
            fVar.f5049q0[i6] = null;
            if (fVar.C() != 8) {
                if (this.f4971b == null) {
                    this.f4971b = fVar;
                }
                this.f4973d = fVar;
                l.f.b[] bVarArr = fVar.E;
                int i7 = this.f4981l;
                if (bVarArr[i7] == l.f.b.MATCH_CONSTRAINT) {
                    int[] iArr = fVar.f5028g;
                    if (iArr[i7] == 0 || iArr[i7] == 3 || iArr[i7] == 2) {
                        this.f4979j++;
                        float[] fArr = fVar.f5047p0;
                        float f5 = fArr[i7];
                        if (f5 > 0.0f) {
                            this.f4980k += fArr[i7];
                        }
                        if (c(fVar, i7)) {
                            if (f5 < 0.0f) {
                                this.f4983n = true;
                            } else {
                                this.f4984o = true;
                            }
                            if (this.f4977h == null) {
                                this.f4977h = new java.util.ArrayList<>();
                            }
                            this.f4977h.add(fVar);
                        }
                        if (this.f4975f == null) {
                            this.f4975f = fVar;
                        }
                        l.f fVar4 = this.f4976g;
                        if (fVar4 != null) {
                            fVar4.f5049q0[this.f4981l] = fVar;
                        }
                        this.f4976g = fVar;
                    }
                }
            }
            if (fVar2 != fVar) {
                fVar2.f5051r0[this.f4981l] = fVar;
            }
            l.e eVar = fVar.C[i5 + 1].f4990d;
            if (eVar != null) {
                l.f fVar5 = eVar.f4988b;
                l.e[] eVarArr = fVar5.C;
                if (eVarArr[i5].f4990d != null && eVarArr[i5].f4990d.f4988b == fVar) {
                    fVar3 = fVar5;
                }
            }
            if (fVar3 == null) {
                fVar3 = fVar;
                z5 = true;
            }
            fVar2 = fVar;
            fVar = fVar3;
        }
        this.f4972c = fVar;
        if (this.f4981l == 0 && this.f4982m) {
            this.f4974e = fVar;
        } else {
            this.f4974e = this.f4970a;
        }
        if (this.f4984o && this.f4983n) {
            z4 = true;
        }
        this.f4985p = z4;
    }
}
