package l;

/* JADX INFO: compiled from: ConstraintWidget.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f {

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static float f5015u0 = 0.5f;
    public l.e B;
    public l.e[] C;
    public java.util.ArrayList<l.e> D;
    public l.f.b[] E;
    public l.f F;
    public int G;
    public int H;
    public float I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int X;
    public int Y;
    public float Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public float f5017a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public java.lang.Object f5019b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l.n f5020c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f5021c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public l.n f5022d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f5023d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public java.lang.String f5025e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public java.lang.String f5027f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f5029g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f5031h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f5033i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f5035j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f5037k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f5039l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f5041m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f5042n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f5043n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f5044o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f5045o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public float[] f5047p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public l.f[] f5049q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public l.f[] f5051r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public l.f f5053s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public l.f f5055t0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5016a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5018b = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5024e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5026f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f5028g = new int[2];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5030h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5032i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f5034j = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5036k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5038l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f5040m = 1.0f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5046p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f5048q = 1.0f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public l.h f5050r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int[] f5052s = {Integer.MAX_VALUE, Integer.MAX_VALUE};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f5054t = 0.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public l.e f5056u = new l.e(this, l.e.d.LEFT);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public l.e f5057v = new l.e(this, l.e.d.TOP);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public l.e f5058w = new l.e(this, l.e.d.RIGHT);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public l.e f5059x = new l.e(this, l.e.d.BOTTOM);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public l.e f5060y = new l.e(this, l.e.d.BASELINE);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public l.e f5061z = new l.e(this, l.e.d.CENTER_X);
    public l.e A = new l.e(this, l.e.d.CENTER_Y);

    /* JADX INFO: compiled from: ConstraintWidget.java */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5062a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f5063b;

        static {
            int[] iArr = new int[l.f.b.values().length];
            f5063b = iArr;
            try {
                iArr[l.f.b.FIXED.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                f5063b[l.f.b.WRAP_CONTENT.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                f5063b[l.f.b.MATCH_PARENT.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                f5063b[l.f.b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[l.e.d.values().length];
            f5062a = iArr2;
            try {
                iArr2[l.e.d.LEFT.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                f5062a[l.e.d.TOP.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            try {
                f5062a[l.e.d.RIGHT.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
            try {
                f5062a[l.e.d.BOTTOM.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused8) {
            }
            try {
                f5062a[l.e.d.BASELINE.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused9) {
            }
            try {
                f5062a[l.e.d.CENTER.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError unused10) {
            }
            try {
                f5062a[l.e.d.CENTER_X.ordinal()] = 7;
            } catch (java.lang.NoSuchFieldError unused11) {
            }
            try {
                f5062a[l.e.d.CENTER_Y.ordinal()] = 8;
            } catch (java.lang.NoSuchFieldError unused12) {
            }
            try {
                f5062a[l.e.d.NONE.ordinal()] = 9;
            } catch (java.lang.NoSuchFieldError unused13) {
            }
        }
    }

    /* JADX INFO: compiled from: ConstraintWidget.java */
    public enum b {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public f() {
        l.e eVar = new l.e(this, l.e.d.CENTER);
        this.B = eVar;
        this.C = new l.e[]{this.f5056u, this.f5058w, this.f5057v, this.f5059x, this.f5060y, eVar};
        this.D = new java.util.ArrayList<>();
        l.f.b bVar = l.f.b.FIXED;
        this.E = new l.f.b[]{bVar, bVar};
        this.F = null;
        this.G = 0;
        this.H = 0;
        this.I = 0.0f;
        this.J = -1;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.U = 0;
        float f5 = f5015u0;
        this.Z = f5;
        this.f5017a0 = f5;
        this.f5021c0 = 0;
        this.f5023d0 = 0;
        this.f5025e0 = null;
        this.f5027f0 = null;
        this.f5033i0 = false;
        this.f5035j0 = false;
        this.f5037k0 = false;
        this.f5039l0 = 0;
        this.f5041m0 = 0;
        this.f5047p0 = new float[]{-1.0f, -1.0f};
        this.f5049q0 = new l.f[]{null, null};
        this.f5051r0 = new l.f[]{null, null};
        this.f5053s0 = null;
        this.f5055t0 = null;
        a();
    }

    public int A() {
        return this.L + this.T;
    }

    public void A0(int i5) {
        this.Y = i5;
    }

    public l.f.b B() {
        return this.E[1];
    }

    public void B0(int i5) {
        this.X = i5;
    }

    public int C() {
        return this.f5023d0;
    }

    public void C0(int i5) {
        this.K = i5;
    }

    public int D() {
        if (this.f5023d0 == 8) {
            return 0;
        }
        return this.G;
    }

    public void D0(int i5) {
        this.L = i5;
    }

    public int E() {
        return this.Y;
    }

    public void E0(boolean z4, boolean z5, boolean z6, boolean z7) {
        if (this.f5046p == -1) {
            if (z6 && !z7) {
                this.f5046p = 0;
            } else if (!z6 && z7) {
                this.f5046p = 1;
                if (this.J == -1) {
                    this.f5048q = 1.0f / this.f5048q;
                }
            }
        }
        if (this.f5046p == 0 && (!this.f5057v.k() || !this.f5059x.k())) {
            this.f5046p = 1;
        } else if (this.f5046p == 1 && (!this.f5056u.k() || !this.f5058w.k())) {
            this.f5046p = 0;
        }
        if (this.f5046p == -1 && (!this.f5057v.k() || !this.f5059x.k() || !this.f5056u.k() || !this.f5058w.k())) {
            if (this.f5057v.k() && this.f5059x.k()) {
                this.f5046p = 0;
            } else if (this.f5056u.k() && this.f5058w.k()) {
                this.f5048q = 1.0f / this.f5048q;
                this.f5046p = 1;
            }
        }
        if (this.f5046p == -1) {
            if (z4 && !z5) {
                this.f5046p = 0;
            } else if (!z4 && z5) {
                this.f5048q = 1.0f / this.f5048q;
                this.f5046p = 1;
            }
        }
        if (this.f5046p == -1) {
            int i5 = this.f5030h;
            if (i5 > 0 && this.f5036k == 0) {
                this.f5046p = 0;
            } else if (i5 == 0 && this.f5036k > 0) {
                this.f5048q = 1.0f / this.f5048q;
                this.f5046p = 1;
            }
        }
        if (this.f5046p == -1 && z4 && z5) {
            this.f5048q = 1.0f / this.f5048q;
            this.f5046p = 1;
        }
    }

    public int F() {
        return this.X;
    }

    public void F0() {
        int i5 = this.K;
        int i6 = this.L;
        int i7 = this.G + i5;
        int i8 = this.H + i6;
        this.O = i5;
        this.P = i6;
        this.Q = i7 - i5;
        this.R = i8 - i6;
    }

    public int G() {
        return this.K;
    }

    public void G0(k.e eVar) {
        int iY = eVar.y(this.f5056u);
        int iY2 = eVar.y(this.f5057v);
        int iY3 = eVar.y(this.f5058w);
        int iY4 = eVar.y(this.f5059x);
        int i5 = iY4 - iY2;
        if (iY3 - iY < 0 || i5 < 0 || iY == Integer.MIN_VALUE || iY == Integer.MAX_VALUE || iY2 == Integer.MIN_VALUE || iY2 == Integer.MAX_VALUE || iY3 == Integer.MIN_VALUE || iY3 == Integer.MAX_VALUE || iY4 == Integer.MIN_VALUE || iY4 == Integer.MAX_VALUE) {
            iY4 = 0;
            iY = 0;
            iY2 = 0;
            iY3 = 0;
        }
        a0(iY, iY2, iY3, iY4);
    }

    public int H() {
        return this.L;
    }

    public void H0() {
        for (int i5 = 0; i5 < 6; i5++) {
            this.C[i5].f().q();
        }
    }

    public boolean I() {
        return this.U > 0;
    }

    public void J(l.e.d dVar, l.f fVar, l.e.d dVar2, int i5, int i6) {
        h(dVar).a(fVar.h(dVar2), i5, i6, l.e.c.STRONG, 0, true);
    }

    public final boolean K(int i5) {
        int i6 = i5 * 2;
        l.e[] eVarArr = this.C;
        if (eVarArr[i6].f4990d != null && eVarArr[i6].f4990d.f4990d != eVarArr[i6]) {
            int i7 = i6 + 1;
            if (eVarArr[i7].f4990d != null && eVarArr[i7].f4990d.f4990d == eVarArr[i7]) {
                return true;
            }
        }
        return false;
    }

    public boolean L() {
        return this.f5056u.f().f5108b == 1 && this.f5058w.f().f5108b == 1 && this.f5057v.f().f5108b == 1 && this.f5059x.f().f5108b == 1;
    }

    public boolean M() {
        l.e eVar = this.f5056u;
        l.e eVar2 = eVar.f4990d;
        if (eVar2 != null && eVar2.f4990d == eVar) {
            return true;
        }
        l.e eVar3 = this.f5058w;
        l.e eVar4 = eVar3.f4990d;
        return eVar4 != null && eVar4.f4990d == eVar3;
    }

    public boolean N() {
        l.e eVar = this.f5057v;
        l.e eVar2 = eVar.f4990d;
        if (eVar2 != null && eVar2.f4990d == eVar) {
            return true;
        }
        l.e eVar3 = this.f5059x;
        l.e eVar4 = eVar3.f4990d;
        return eVar4 != null && eVar4.f4990d == eVar3;
    }

    public boolean O() {
        return this.f5026f == 0 && this.I == 0.0f && this.f5036k == 0 && this.f5038l == 0 && this.E[1] == l.f.b.MATCH_CONSTRAINT;
    }

    public boolean P() {
        return this.f5024e == 0 && this.I == 0.0f && this.f5030h == 0 && this.f5032i == 0 && this.E[0] == l.f.b.MATCH_CONSTRAINT;
    }

    public void Q() {
        this.f5056u.m();
        this.f5057v.m();
        this.f5058w.m();
        this.f5059x.m();
        this.f5060y.m();
        this.f5061z.m();
        this.A.m();
        this.B.m();
        this.F = null;
        this.f5054t = 0.0f;
        this.G = 0;
        this.H = 0;
        this.I = 0.0f;
        this.J = -1;
        this.K = 0;
        this.L = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = 0;
        this.W = 0;
        this.X = 0;
        this.Y = 0;
        float f5 = f5015u0;
        this.Z = f5;
        this.f5017a0 = f5;
        l.f.b[] bVarArr = this.E;
        l.f.b bVar = l.f.b.FIXED;
        bVarArr[0] = bVar;
        bVarArr[1] = bVar;
        this.f5019b0 = null;
        this.f5021c0 = 0;
        this.f5023d0 = 0;
        this.f5027f0 = null;
        this.f5029g0 = false;
        this.f5031h0 = false;
        this.f5039l0 = 0;
        this.f5041m0 = 0;
        this.f5043n0 = false;
        this.f5045o0 = false;
        float[] fArr = this.f5047p0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f5016a = -1;
        this.f5018b = -1;
        int[] iArr = this.f5052s;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f5024e = 0;
        this.f5026f = 0;
        this.f5034j = 1.0f;
        this.f5040m = 1.0f;
        this.f5032i = Integer.MAX_VALUE;
        this.f5038l = Integer.MAX_VALUE;
        this.f5030h = 0;
        this.f5036k = 0;
        this.f5046p = -1;
        this.f5048q = 1.0f;
        l.n nVar = this.f5020c;
        if (nVar != null) {
            nVar.e();
        }
        l.n nVar2 = this.f5022d;
        if (nVar2 != null) {
            nVar2.e();
        }
        this.f5050r = null;
        this.f5033i0 = false;
        this.f5035j0 = false;
        this.f5037k0 = false;
    }

    public void R() {
        l.f fVarU = u();
        if (fVarU != null && (fVarU instanceof l.g) && ((l.g) u()).S0()) {
            return;
        }
        int size = this.D.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.D.get(i5).m();
        }
    }

    public void S() {
        for (int i5 = 0; i5 < 6; i5++) {
            this.C[i5].f().e();
        }
    }

    public void T(k.c cVar) {
        this.f5056u.n(cVar);
        this.f5057v.n(cVar);
        this.f5058w.n(cVar);
        this.f5059x.n(cVar);
        this.f5060y.n(cVar);
        this.B.n(cVar);
        this.f5061z.n(cVar);
        this.A.n(cVar);
    }

    public void U() {
    }

    public void V(int i5) {
        this.U = i5;
    }

    public void W(java.lang.Object obj) {
        this.f5019b0 = obj;
    }

    public void X(java.lang.String str) {
        this.f5025e0 = str;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0084 A[PHI: r0
  0x0084: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:45:0x0084, B:35:0x007d, B:23:0x004f, B:25:0x0055, B:27:0x0061, B:29:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please report as a decompilation issue!!! */
    public void Y(java.lang.String str) {
        float fAbs;
        int i5 = 0;
        if (str == null || str.length() == 0) {
            this.I = 0.0f;
            return;
        }
        int i6 = -1;
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i7 = 0;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            java.lang.String strSubstring = str.substring(0, iIndexOf);
            if (strSubstring.equalsIgnoreCase("W")) {
                i6 = 0;
            } else if (strSubstring.equalsIgnoreCase("H")) {
                i6 = 1;
            }
            i7 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        try {
            if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                java.lang.String strSubstring2 = str.substring(i7);
                if (strSubstring2.length() > 0) {
                    fAbs = java.lang.Float.parseFloat(strSubstring2);
                } else {
                    fAbs = i5;
                }
            } else {
                java.lang.String strSubstring3 = str.substring(i7, iIndexOf2);
                java.lang.String strSubstring4 = str.substring(iIndexOf2 + 1);
                if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                    fAbs = i5;
                } else {
                    float f5 = java.lang.Float.parseFloat(strSubstring3);
                    float f6 = java.lang.Float.parseFloat(strSubstring4);
                    if (f5 <= 0.0f || f6 <= 0.0f) {
                        fAbs = i5;
                    } else {
                        fAbs = i6 == 1 ? java.lang.Math.abs(f6 / f5) : java.lang.Math.abs(f5 / f6);
                    }
                }
            }
        } catch (java.lang.NumberFormatException unused) {
        }
        i5 = (fAbs > i5 ? 1 : (fAbs == i5 ? 0 : -1));
        if (i5 > 0) {
            this.I = fAbs;
            this.J = i6;
        }
    }

    public void Z(int i5, int i6, int i7) {
        if (i7 == 0) {
            f0(i5, i6);
        } else if (i7 == 1) {
            t0(i5, i6);
        }
        this.f5035j0 = true;
    }

    public final void a() {
        this.D.add(this.f5056u);
        this.D.add(this.f5057v);
        this.D.add(this.f5058w);
        this.D.add(this.f5059x);
        this.D.add(this.f5061z);
        this.D.add(this.A);
        this.D.add(this.B);
        this.D.add(this.f5060y);
    }

    public void a0(int i5, int i6, int i7, int i8) {
        int i9;
        int i10;
        int i11 = i7 - i5;
        int i12 = i8 - i6;
        this.K = i5;
        this.L = i6;
        if (this.f5023d0 == 8) {
            this.G = 0;
            this.H = 0;
            return;
        }
        l.f.b[] bVarArr = this.E;
        l.f.b bVar = bVarArr[0];
        l.f.b bVar2 = l.f.b.FIXED;
        if (bVar == bVar2 && i11 < (i10 = this.G)) {
            i11 = i10;
        }
        if (bVarArr[1] == bVar2 && i12 < (i9 = this.H)) {
            i12 = i9;
        }
        this.G = i11;
        this.H = i12;
        int i13 = this.W;
        if (i12 < i13) {
            this.H = i13;
        }
        int i14 = this.V;
        if (i11 < i14) {
            this.G = i14;
        }
        this.f5035j0 = true;
    }

    /* JADX WARN: Code duplicated, block: B:113:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:116:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:118:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:119:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:122:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:123:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:125:0x0224  */
    /* JADX WARN: Code duplicated, block: B:128:0x0235 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:129:0x0236  */
    /* JADX WARN: Code duplicated, block: B:134:0x0245  */
    /* JADX WARN: Code duplicated, block: B:141:0x0252  */
    /* JADX WARN: Code duplicated, block: B:144:0x0258  */
    /* JADX WARN: Code duplicated, block: B:146:0x0262  */
    /* JADX WARN: Code duplicated, block: B:147:0x026e  */
    /* JADX WARN: Code duplicated, block: B:149:0x0282  */
    /* JADX WARN: Code duplicated, block: B:150:0x028d  */
    /* JADX WARN: Code duplicated, block: B:152:0x0291 A[PHI: r4 r10
  0x0291: PHI (r4v7 k.i) = (r4v8 k.i), (r4v9 k.i) binds: [B:151:0x028f, B:148:0x0280] A[DONT_GENERATE, DONT_INLINE]
  0x0291: PHI (r10v6 k.e) = (r10v7 k.e), (r10v8 k.e) binds: [B:151:0x028f, B:148:0x0280] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:155:0x0297  */
    /* JADX WARN: Code duplicated, block: B:156:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:159:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:160:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:163:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:165:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:166:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:167:0x030e  */
    /* JADX WARN: Code duplicated, block: B:170:0x0318  */
    /* JADX WARN: Code duplicated, block: B:172:? A[RETURN, SYNTHETIC] */
    public void b(k.e eVar) {
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        int i5;
        char c5;
        int i6;
        int i7;
        boolean z8;
        int i8;
        boolean z9;
        l.f.b bVar;
        l.f.b bVar2;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        k.e eVar2;
        boolean z14;
        k.i iVar;
        l.f fVar;
        k.i iVarR;
        l.f fVar2;
        k.i iVarR2;
        k.i iVar2;
        l.f fVar3;
        l.e eVar3;
        int i9;
        l.f fVar4;
        k.e eVar4;
        k.i iVarR3;
        l.f fVar5;
        k.i iVarR4;
        int i10;
        int i11;
        boolean zM;
        boolean zN;
        k.i iVarR5 = eVar.r(this.f5056u);
        k.i iVarR6 = eVar.r(this.f5058w);
        k.i iVarR7 = eVar.r(this.f5057v);
        k.i iVarR8 = eVar.r(this.f5059x);
        k.i iVarR9 = eVar.r(this.f5060y);
        l.f fVar6 = this.F;
        if (fVar6 != null) {
            boolean z15 = fVar6 != null && fVar6.E[0] == l.f.b.WRAP_CONTENT;
            boolean z16 = fVar6 != null && fVar6.E[1] == l.f.b.WRAP_CONTENT;
            if (K(0)) {
                ((l.g) this.F).N0(this, 0);
                zM = true;
            } else {
                zM = M();
            }
            if (K(1)) {
                ((l.g) this.F).N0(this, 1);
                zN = true;
            } else {
                zN = N();
            }
            if (z15 && this.f5023d0 != 8 && this.f5056u.f4990d == null && this.f5058w.f4990d == null) {
                eVar.i(eVar.r(this.F.f5058w), iVarR6, 0, 1);
            }
            if (z16 && this.f5023d0 != 8 && this.f5057v.f4990d == null && this.f5059x.f4990d == null && this.f5060y == null) {
                eVar.i(eVar.r(this.F.f5059x), iVarR8, 0, 1);
            }
            z5 = z16;
            z4 = z15;
            z6 = zM;
            z7 = zN;
        } else {
            z4 = false;
            z5 = false;
            z6 = false;
            z7 = false;
        }
        int i12 = this.G;
        int i13 = this.V;
        if (i12 >= i13) {
            i13 = i12;
        }
        int i14 = this.H;
        int i15 = this.W;
        if (i14 >= i15) {
            i15 = i14;
        }
        l.f.b[] bVarArr = this.E;
        l.f.b bVar3 = bVarArr[0];
        l.f.b bVar4 = l.f.b.MATCH_CONSTRAINT;
        boolean z17 = bVar3 != bVar4;
        boolean z18 = bVarArr[1] != bVar4;
        int i16 = this.J;
        this.f5046p = i16;
        float f5 = this.I;
        this.f5048q = f5;
        int i17 = this.f5024e;
        int i18 = i13;
        int i19 = this.f5026f;
        if (f5 > 0.0f) {
            i5 = i15;
            if (this.f5023d0 != 8) {
                if (bVarArr[0] == bVar4 && i17 == 0) {
                    i17 = 3;
                }
                if (bVarArr[1] == bVar4 && i19 == 0) {
                    i19 = 3;
                }
                if (bVarArr[0] == bVar4 && bVarArr[1] == bVar4) {
                    i11 = 3;
                    if (i17 == 3 && i19 == 3) {
                        E0(z4, z5, z17, z18);
                    }
                    c5 = 0;
                    i6 = i17;
                    i7 = i19;
                    i8 = i18;
                    z8 = true;
                } else {
                    i11 = 3;
                }
                if (bVarArr[0] == bVar4 && i17 == i11) {
                    this.f5046p = 0;
                    i8 = (int) (f5 * i14);
                    if (bVarArr[1] != bVar4) {
                        i7 = i19;
                        i6 = 4;
                        c5 = 0;
                        z8 = false;
                    } else {
                        z8 = true;
                        i6 = i17;
                        i7 = i19;
                        c5 = 0;
                    }
                } else {
                    if (bVarArr[1] == bVar4 && i19 == 3) {
                        this.f5046p = 1;
                        if (i16 == -1) {
                            this.f5048q = 1.0f / f5;
                        }
                        c5 = 0;
                        i5 = (int) (this.f5048q * i12);
                        i6 = i17;
                        if (bVarArr[0] != bVar4) {
                            i8 = i18;
                            i7 = 4;
                            z8 = false;
                        }
                    } else {
                        c5 = 0;
                        i6 = i17;
                    }
                    i7 = i19;
                    i8 = i18;
                    z8 = true;
                }
            }
            int[] iArr = this.f5028g;
            iArr[c5] = i6;
            iArr[1] = i7;
            z9 = !z8 && ((i10 = this.f5046p) == 0 || i10 == -1);
            bVar = this.E[0];
            bVar2 = l.f.b.WRAP_CONTENT;
            if (bVar == bVar2 || !(this instanceof l.g)) {
                z10 = false;
            } else {
                z10 = true;
            }
            z11 = !this.B.k();
            if (this.f5016a == 2) {
                fVar4 = this.F;
                if (fVar4 != null) {
                    eVar4 = eVar;
                    iVarR3 = eVar4.r(fVar4.f5058w);
                } else {
                    eVar4 = eVar;
                    iVarR3 = null;
                }
                fVar5 = this.F;
                if (fVar5 != null) {
                    iVarR4 = eVar4.r(fVar5.f5056u);
                } else {
                    iVarR4 = null;
                }
                e(eVar, z4, iVarR4, iVarR3, this.E[0], z10, this.f5056u, this.f5058w, this.K, i8, this.V, this.f5052s[0], this.Z, z9, z6, i6, this.f5030h, this.f5032i, this.f5034j, z11);
            }
            if (this.f5018b == 2) {
                return;
            }
            if (this.E[1] == bVar2 || !(this instanceof l.g)) {
                z12 = false;
            } else {
                z12 = true;
            }
            if (z8 || !((i9 = this.f5046p) == 1 || i9 == -1)) {
                z13 = false;
            } else {
                z13 = true;
            }
            if (this.U > 0) {
                if (this.f5060y.f().f5108b == 1) {
                    eVar2 = eVar;
                    this.f5060y.f().g(eVar2);
                } else {
                    eVar2 = eVar;
                    iVar = iVarR7;
                    eVar2.e(iVarR9, iVar, j(), 6);
                    eVar3 = this.f5060y.f4990d;
                    if (eVar3 != null) {
                        eVar2.e(iVarR9, eVar2.r(eVar3), 0, 6);
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                }
                fVar = this.F;
                if (fVar != null) {
                    iVarR = eVar2.r(fVar.f5059x);
                } else {
                    iVarR = null;
                }
                fVar2 = this.F;
                if (fVar2 != null) {
                    iVarR2 = eVar2.r(fVar2.f5057v);
                } else {
                    iVarR2 = null;
                }
                iVar2 = iVar;
                e(eVar, z5, iVarR2, iVarR, this.E[1], z12, this.f5057v, this.f5059x, this.L, i5, this.W, this.f5052s[1], this.f5017a0, z13, z7, i7, this.f5036k, this.f5038l, this.f5040m, z14);
                if (z8) {
                    fVar3 = this;
                    if (fVar3.f5046p == 1) {
                        eVar.l(iVarR8, iVar2, iVarR6, iVarR5, fVar3.f5048q, 6);
                    } else {
                        eVar.l(r28, iVarR5, iVarR8, iVar2, fVar3.f5048q, 6);
                    }
                } else {
                    fVar3 = this;
                }
                if (fVar3.B.k()) {
                    eVar.b(fVar3, fVar3.B.i().e(), (float) java.lang.Math.toRadians(fVar3.f5054t + 90.0f), fVar3.B.d());
                }
            }
            eVar2 = eVar;
            iVar = r25;
            z14 = z11;
            fVar = this.F;
            if (fVar != null) {
                iVarR = eVar2.r(fVar.f5059x);
            } else {
                iVarR = null;
            }
            fVar2 = this.F;
            if (fVar2 != null) {
                iVarR2 = eVar2.r(fVar2.f5057v);
            } else {
                iVarR2 = null;
            }
            iVar2 = iVar;
            e(eVar, z5, iVarR2, iVarR, this.E[1], z12, this.f5057v, this.f5059x, this.L, i5, this.W, this.f5052s[1], this.f5017a0, z13, z7, i7, this.f5036k, this.f5038l, this.f5040m, z14);
            if (z8) {
                fVar3 = this;
                if (fVar3.f5046p == 1) {
                    eVar.l(iVarR8, iVar2, iVarR6, iVarR5, fVar3.f5048q, 6);
                } else {
                    eVar.l(r28, iVarR5, iVarR8, iVar2, fVar3.f5048q, 6);
                }
            } else {
                fVar3 = this;
            }
            if (fVar3.B.k()) {
                eVar.b(fVar3, fVar3.B.i().e(), (float) java.lang.Math.toRadians(fVar3.f5054t + 90.0f), fVar3.B.d());
            }
        }
        i5 = i15;
        c5 = 0;
        i6 = i17;
        i7 = i19;
        z8 = false;
        i8 = i18;
        int[] iArr2 = this.f5028g;
        iArr2[c5] = i6;
        iArr2[1] = i7;
        if (z8) {
        }
        bVar = this.E[0];
        bVar2 = l.f.b.WRAP_CONTENT;
        if (bVar == bVar2) {
            z10 = false;
        } else {
            z10 = false;
        }
        z11 = !this.B.k();
        if (this.f5016a == 2) {
            fVar4 = this.F;
            if (fVar4 != null) {
                eVar4 = eVar;
                iVarR3 = eVar4.r(fVar4.f5058w);
            } else {
                eVar4 = eVar;
                iVarR3 = null;
            }
            fVar5 = this.F;
            if (fVar5 != null) {
                iVarR4 = eVar4.r(fVar5.f5056u);
            } else {
                iVarR4 = null;
            }
            e(eVar, z4, iVarR4, iVarR3, this.E[0], z10, this.f5056u, this.f5058w, this.K, i8, this.V, this.f5052s[0], this.Z, z9, z6, i6, this.f5030h, this.f5032i, this.f5034j, z11);
        }
        if (this.f5018b == 2) {
            return;
        }
        if (this.E[1] == bVar2) {
            z12 = false;
        } else {
            z12 = false;
        }
        if (z8) {
            z13 = false;
        } else {
            z13 = false;
        }
        if (this.U > 0) {
            if (this.f5060y.f().f5108b == 1) {
                eVar2 = eVar;
                this.f5060y.f().g(eVar2);
            } else {
                eVar2 = eVar;
                iVar = iVarR7;
                eVar2.e(iVarR9, iVar, j(), 6);
                eVar3 = this.f5060y.f4990d;
                if (eVar3 != null) {
                    eVar2.e(iVarR9, eVar2.r(eVar3), 0, 6);
                    z14 = false;
                } else {
                    z14 = z11;
                }
            }
            fVar = this.F;
            if (fVar != null) {
                iVarR = eVar2.r(fVar.f5059x);
            } else {
                iVarR = null;
            }
            fVar2 = this.F;
            if (fVar2 != null) {
                iVarR2 = eVar2.r(fVar2.f5057v);
            } else {
                iVarR2 = null;
            }
            iVar2 = iVar;
            e(eVar, z5, iVarR2, iVarR, this.E[1], z12, this.f5057v, this.f5059x, this.L, i5, this.W, this.f5052s[1], this.f5017a0, z13, z7, i7, this.f5036k, this.f5038l, this.f5040m, z14);
            if (z8) {
                fVar3 = this;
                if (fVar3.f5046p == 1) {
                    eVar.l(iVarR8, iVar2, iVarR6, iVarR5, fVar3.f5048q, 6);
                } else {
                    eVar.l(r28, iVarR5, iVarR8, iVar2, fVar3.f5048q, 6);
                }
            } else {
                fVar3 = this;
            }
            if (fVar3.B.k()) {
                eVar.b(fVar3, fVar3.B.i().e(), (float) java.lang.Math.toRadians(fVar3.f5054t + 90.0f), fVar3.B.d());
            }
        }
        eVar2 = eVar;
        iVar = r25;
        z14 = z11;
        fVar = this.F;
        if (fVar != null) {
            iVarR = eVar2.r(fVar.f5059x);
        } else {
            iVarR = null;
        }
        fVar2 = this.F;
        if (fVar2 != null) {
            iVarR2 = eVar2.r(fVar2.f5057v);
        } else {
            iVarR2 = null;
        }
        iVar2 = iVar;
        e(eVar, z5, iVarR2, iVarR, this.E[1], z12, this.f5057v, this.f5059x, this.L, i5, this.W, this.f5052s[1], this.f5017a0, z13, z7, i7, this.f5036k, this.f5038l, this.f5040m, z14);
        if (z8) {
            fVar3 = this;
            if (fVar3.f5046p == 1) {
                eVar.l(iVarR8, iVar2, iVarR6, iVarR5, fVar3.f5048q, 6);
            } else {
                eVar.l(r28, iVarR5, iVarR8, iVar2, fVar3.f5048q, 6);
            }
        } else {
            fVar3 = this;
        }
        if (fVar3.B.k()) {
            eVar.b(fVar3, fVar3.B.i().e(), (float) java.lang.Math.toRadians(fVar3.f5054t + 90.0f), fVar3.B.d());
        }
    }

    public void b0(int i5) {
        this.H = i5;
        int i6 = this.W;
        if (i5 < i6) {
            this.H = i6;
        }
    }

    public boolean c() {
        return this.f5023d0 != 8;
    }

    public void c0(boolean z4) {
        this.f5044o = z4;
    }

    public void d(int i5) {
        l.k.a(i5, this);
    }

    public void d0(float f5) {
        this.Z = f5;
    }

    /* JADX WARN: Code duplicated, block: B:165:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:176:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:180:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:189:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x01ac A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:95:0x01c1  */
    public final void e(k.e eVar, boolean z4, k.i iVar, k.i iVar2, l.f.b bVar, boolean z5, l.e eVar2, l.e eVar3, int i5, int i6, int i7, int i8, float f5, boolean z6, boolean z7, int i9, int i10, int i11, float f6, boolean z8) {
        boolean z9;
        int iMin;
        int i12;
        int i13;
        int i14;
        int i15;
        k.i iVarR;
        k.i iVarR2;
        boolean z10;
        char c5;
        boolean z11;
        int i16;
        k.i iVar3;
        k.i iVar4;
        char c6;
        int i17;
        boolean z12;
        boolean z13;
        k.i iVar5;
        k.i iVar6;
        boolean z14;
        boolean z15;
        int i18;
        int i19;
        int i20;
        int i21;
        boolean z16;
        int i22;
        k.i iVarR3 = eVar.r(eVar2);
        k.i iVarR4 = eVar.r(eVar3);
        k.i iVarR5 = eVar.r(eVar2.i());
        k.i iVarR6 = eVar.r(eVar3.i());
        if (eVar.f4825g && eVar2.f().f5108b == 1 && eVar3.f().f5108b == 1) {
            k.e.x();
            eVar2.f().g(eVar);
            eVar3.f().g(eVar);
            if (z7 || !z4) {
                return;
            }
            eVar.i(iVar2, iVarR4, 0, 6);
            return;
        }
        k.e.x();
        boolean zK = eVar2.k();
        boolean zK2 = eVar3.k();
        boolean zK3 = this.B.k();
        int i23 = zK2 ? (zK ? 1 : 0) + 1 : zK ? 1 : 0;
        if (zK3) {
            i23++;
        }
        int i24 = z6 ? 3 : i9;
        int i25 = l.f.a.f5063b[bVar.ordinal()];
        boolean z17 = (i25 == 1 || i25 == 2 || i25 == 3 || i25 != 4 || i24 == 4) ? false : true;
        if (this.f5023d0 == 8) {
            iMin = 0;
            z9 = false;
        } else {
            z9 = z17;
            iMin = i6;
        }
        if (z8) {
            if (!zK && !zK2 && !zK3) {
                eVar.f(iVarR3, i5);
            } else if (zK && !zK2) {
                i12 = 6;
                eVar.e(iVarR3, iVarR5, eVar2.d(), 6);
            }
            i12 = 6;
        } else {
            i12 = 6;
        }
        if (z9) {
            i13 = i10;
            i14 = i11;
            if (i13 == -2) {
                i13 = iMin;
            }
            if (i14 == -2) {
                i14 = iMin;
            }
            if (i13 > 0) {
                eVar.i(iVarR4, iVarR3, i13, 6);
                iMin = java.lang.Math.max(iMin, i13);
            }
            if (i14 > 0) {
                eVar.k(iVarR4, iVarR3, i14, 6);
                iMin = java.lang.Math.min(iMin, i14);
            }
            if (i24 == 1) {
                if (z4) {
                    eVar.e(iVarR4, iVarR3, iMin, 6);
                    z9 = z9;
                } else if (z7) {
                    eVar.e(iVarR4, iVarR3, iMin, 4);
                } else {
                    eVar.e(iVarR4, iVarR3, iMin, 1);
                }
                z10 = z9;
                c5 = 2;
                if (z10 || i23 == 2 || z6) {
                    z11 = z10;
                } else {
                    int iMax = java.lang.Math.max(i13, iMin);
                    if (i14 > 0) {
                        iMax = java.lang.Math.min(i14, iMax);
                    }
                    eVar.e(iVarR4, iVarR3, iMax, 6);
                    z11 = false;
                }
            } else {
                if (i24 == 2) {
                    l.e.d dVarJ = eVar2.j();
                    l.e.d dVar = l.e.d.TOP;
                    if (dVarJ != dVar) {
                        l.e.d dVarJ2 = eVar2.j();
                        i15 = i23 == true ? 1 : 0;
                        if (dVarJ2 != l.e.d.BOTTOM) {
                            iVarR = eVar.r(this.F.h(l.e.d.LEFT));
                            iVarR2 = eVar.r(this.F.h(l.e.d.RIGHT));
                        }
                        i23 = i15;
                        i24 = i24;
                        iVarR5 = iVarR5;
                        iMin = iMin;
                        i14 = i14;
                        iVarR6 = iVarR6;
                        eVar.d(eVar.s().j(iVarR4, iVarR3, iVarR2, iVarR, f6));
                        z10 = false;
                    } else {
                        i15 = i23 == true ? 1 : 0;
                    }
                    iVarR = eVar.r(this.F.h(dVar));
                    iVarR2 = eVar.r(this.F.h(l.e.d.BOTTOM));
                    i23 = i15;
                    i24 = i24;
                    iVarR5 = iVarR5;
                    iMin = iMin;
                    i14 = i14;
                    iVarR6 = iVarR6;
                    eVar.d(eVar.s().j(iVarR4, iVarR3, iVarR2, iVarR, f6));
                    z10 = false;
                }
                c5 = 2;
                if (z10) {
                    z11 = z10;
                } else {
                    z11 = z10;
                }
            }
            z10 = z9;
            c5 = 2;
            if (z10) {
                z11 = z10;
            } else {
                z11 = z10;
            }
        } else {
            if (z5) {
                eVar.e(iVarR4, iVarR3, 0, 3);
                if (i7 > 0) {
                    eVar.i(iVarR4, iVarR3, i7, 6);
                }
                if (i8 < Integer.MAX_VALUE) {
                    eVar.k(iVarR4, iVarR3, i8, 6);
                }
            } else {
                eVar.e(iVarR4, iVarR3, iMin, i12);
            }
            i13 = i10;
            i23 = i23 == true ? 1 : 0;
            i24 = i24;
            iVarR6 = iVarR6;
            iVarR5 = iVarR5;
            z11 = z9;
            c5 = 2;
            i14 = i11;
        }
        if (!z8 || z7) {
            if (i23 >= c5 || !z4) {
                return;
            }
            eVar.i(iVarR3, iVar, 0, 6);
            eVar.i(iVar2, iVarR4, 0, 6);
            return;
        }
        if (!zK && !zK2 && !zK3) {
            if (z4) {
                i16 = 0;
                eVar.i(iVar2, iVarR4, 0, 5);
            } else {
                i20 = 0;
            }
            i21 = 6;
            if (z4) {
                eVar.i(iVar2, iVarR4, i20, i21);
            }
        }
        i16 = 0;
        if (!zK || zK2) {
            if (zK || !zK2) {
                if (zK && zK2) {
                    if (z11) {
                        iVar3 = iVarR6;
                        c6 = 6;
                        if (z4 && i7 == 0) {
                            eVar.i(iVarR4, iVarR3, 0, 6);
                        }
                        int i26 = i24;
                        if (i26 == 0) {
                            if (i14 > 0 || i13 > 0) {
                                z16 = true;
                                i22 = 4;
                            } else {
                                i22 = 6;
                                z16 = false;
                            }
                            iVar4 = iVarR5;
                            eVar.e(iVarR3, iVar4, eVar2.d(), i22);
                            eVar.e(iVarR4, iVar3, -eVar3.d(), i22);
                            z13 = i14 > 0 || i13 > 0;
                            i17 = 5;
                            z12 = z16;
                        } else {
                            iVar4 = iVarR5;
                            if (i26 == 1) {
                                i17 = 6;
                            } else {
                                if (i26 == 3) {
                                    int i27 = (z6 || this.f5046p == -1 || i14 > 0) ? 4 : 6;
                                    eVar.e(iVarR3, iVar4, eVar2.d(), i27);
                                    eVar.e(iVarR4, iVar3, -eVar3.d(), i27);
                                    i17 = 5;
                                } else {
                                    i17 = 5;
                                    z13 = false;
                                }
                                z12 = z13;
                            }
                            z13 = true;
                            z12 = z13;
                        }
                    } else {
                        iVar3 = iVarR6;
                        iVar4 = iVarR5;
                        c6 = 6;
                        i17 = 5;
                        z12 = false;
                        z13 = true;
                    }
                    if (z13) {
                        iVar6 = iVar3;
                        iVar5 = iVar4;
                        iVarR4 = iVarR4;
                        eVar.c(iVarR3, iVar4, eVar2.d(), f5, iVar3, iVarR4, eVar3.d(), i17);
                        boolean z18 = eVar2.f4990d.f4988b instanceof l.b;
                        boolean z19 = eVar3.f4990d.f4988b instanceof l.b;
                        if (z18 && !z19) {
                            z14 = z4;
                            i18 = 6;
                            i19 = 5;
                            z15 = true;
                        } else if (!z18 && z19) {
                            z15 = z4;
                            i18 = 5;
                            i19 = 6;
                            z14 = true;
                        }
                        if (z12) {
                            i18 = 6;
                            i19 = 6;
                        }
                        if ((z11 && z14) || z12) {
                            eVar.i(iVarR3, iVar5, eVar2.d(), i19);
                        }
                        if ((z11 && z15) || z12) {
                            eVar.k(iVarR4, iVar6, -eVar3.d(), i18);
                        }
                        i20 = 0;
                        i21 = 6;
                        if (z4) {
                            eVar.i(iVarR3, iVar, 0, 6);
                        }
                    } else {
                        iVar5 = iVar4;
                        iVar6 = iVar3;
                        iVarR4 = iVarR4;
                    }
                    z14 = z4;
                    z15 = z14;
                    i18 = 5;
                    i19 = 5;
                    if (z12) {
                        i18 = 6;
                        i19 = 6;
                    }
                    if (z11) {
                        eVar.i(iVarR3, iVar5, eVar2.d(), i19);
                    } else {
                        eVar.i(iVarR3, iVar5, eVar2.d(), i19);
                    }
                    if (z11) {
                        eVar.k(iVarR4, iVar6, -eVar3.d(), i18);
                    } else {
                        eVar.k(iVarR4, iVar6, -eVar3.d(), i18);
                    }
                    i20 = 0;
                    i21 = 6;
                    if (z4) {
                        eVar.i(iVarR3, iVar, 0, 6);
                    }
                }
                if (z4) {
                    eVar.i(iVar2, iVarR4, i20, i21);
                }
            }
            eVar.e(iVarR4, iVarR6, -eVar3.d(), 6);
            if (z4) {
                eVar.i(iVarR3, iVar, 0, 5);
            }
        } else if (z4) {
            eVar.i(iVar2, iVarR4, 0, 5);
        }
        i20 = i16;
        i21 = 6;
        if (z4) {
            eVar.i(iVar2, iVarR4, i20, i21);
        }
    }

    public void e0(int i5) {
        this.f5039l0 = i5;
    }

    public void f(l.f fVar, float f5, int i5) {
        l.e.d dVar = l.e.d.CENTER;
        J(dVar, fVar, dVar, i5, 0);
        this.f5054t = f5;
    }

    public void f0(int i5, int i6) {
        this.K = i5;
        int i7 = i6 - i5;
        this.G = i7;
        int i8 = this.V;
        if (i7 < i8) {
            this.G = i8;
        }
    }

    public void g(k.e eVar) {
        eVar.r(this.f5056u);
        eVar.r(this.f5057v);
        eVar.r(this.f5058w);
        eVar.r(this.f5059x);
        if (this.U > 0) {
            eVar.r(this.f5060y);
        }
    }

    public void g0(l.f.b bVar) {
        this.E[0] = bVar;
        if (bVar == l.f.b.WRAP_CONTENT) {
            y0(this.X);
        }
    }

    public l.e h(l.e.d dVar) {
        switch (l.f.a.f5062a[dVar.ordinal()]) {
            case 1:
                return this.f5056u;
            case 2:
                return this.f5057v;
            case 3:
                return this.f5058w;
            case 4:
                return this.f5059x;
            case 5:
                return this.f5060y;
            case 6:
                return this.B;
            case 7:
                return this.f5061z;
            case 8:
                return this.A;
            case 9:
                return null;
            default:
                throw new java.lang.AssertionError(dVar.name());
        }
    }

    public void h0(int i5, int i6, int i7, float f5) {
        this.f5024e = i5;
        this.f5030h = i6;
        this.f5032i = i7;
        this.f5034j = f5;
        if (f5 >= 1.0f || i5 != 0) {
            return;
        }
        this.f5024e = 2;
    }

    public java.util.ArrayList<l.e> i() {
        return this.D;
    }

    public void i0(float f5) {
        this.f5047p0[0] = f5;
    }

    public int j() {
        return this.U;
    }

    public void j0(int i5) {
        this.f5052s[1] = i5;
    }

    public float k(int i5) {
        if (i5 == 0) {
            return this.Z;
        }
        if (i5 == 1) {
            return this.f5017a0;
        }
        return -1.0f;
    }

    public void k0(int i5) {
        this.f5052s[0] = i5;
    }

    public int l() {
        return H() + this.H;
    }

    public void l0(int i5) {
        if (i5 < 0) {
            this.W = 0;
        } else {
            this.W = i5;
        }
    }

    public java.lang.Object m() {
        return this.f5019b0;
    }

    public void m0(int i5) {
        if (i5 < 0) {
            this.V = 0;
        } else {
            this.V = i5;
        }
    }

    public java.lang.String n() {
        return this.f5025e0;
    }

    public void n0(int i5, int i6) {
        this.S = i5;
        this.T = i6;
    }

    public l.f.b o(int i5) {
        if (i5 == 0) {
            return s();
        }
        if (i5 == 1) {
            return B();
        }
        return null;
    }

    public void o0(int i5, int i6) {
        this.K = i5;
        this.L = i6;
    }

    public int p() {
        return this.O + this.S;
    }

    public void p0(l.f fVar) {
        this.F = fVar;
    }

    public int q() {
        return this.P + this.T;
    }

    public void q0(int i5, int i6) {
        if (i6 == 0) {
            this.M = i5;
        } else if (i6 == 1) {
            this.N = i5;
        }
    }

    public int r() {
        if (this.f5023d0 == 8) {
            return 0;
        }
        return this.H;
    }

    public void r0(float f5) {
        this.f5017a0 = f5;
    }

    public l.f.b s() {
        return this.E[0];
    }

    public void s0(int i5) {
        this.f5041m0 = i5;
    }

    public int t(int i5) {
        if (i5 == 0) {
            return D();
        }
        if (i5 == 1) {
            return r();
        }
        return 0;
    }

    public void t0(int i5, int i6) {
        this.L = i5;
        int i7 = i6 - i5;
        this.H = i7;
        int i8 = this.W;
        if (i7 < i8) {
            this.H = i8;
        }
    }

    public java.lang.String toString() {
        java.lang.String str;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.String str2 = "";
        if (this.f5027f0 != null) {
            str = "type: " + this.f5027f0 + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f5025e0 != null) {
            str2 = "id: " + this.f5025e0 + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.K);
        sb.append(", ");
        sb.append(this.L);
        sb.append(") - (");
        sb.append(this.G);
        sb.append(" x ");
        sb.append(this.H);
        sb.append(") wrap: (");
        sb.append(this.X);
        sb.append(" x ");
        sb.append(this.Y);
        sb.append(")");
        return sb.toString();
    }

    public l.f u() {
        return this.F;
    }

    public void u0(l.f.b bVar) {
        this.E[1] = bVar;
        if (bVar == l.f.b.WRAP_CONTENT) {
            b0(this.Y);
        }
    }

    public int v(int i5) {
        if (i5 == 0) {
            return this.M;
        }
        if (i5 == 1) {
            return this.N;
        }
        return 0;
    }

    public void v0(int i5, int i6, int i7, float f5) {
        this.f5026f = i5;
        this.f5036k = i6;
        this.f5038l = i7;
        this.f5040m = f5;
        if (f5 >= 1.0f || i5 != 0) {
            return;
        }
        this.f5026f = 2;
    }

    public l.n w() {
        if (this.f5022d == null) {
            this.f5022d = new l.n();
        }
        return this.f5022d;
    }

    public void w0(float f5) {
        this.f5047p0[1] = f5;
    }

    public l.n x() {
        if (this.f5020c == null) {
            this.f5020c = new l.n();
        }
        return this.f5020c;
    }

    public void x0(int i5) {
        this.f5023d0 = i5;
    }

    public int y() {
        return G() + this.G;
    }

    public void y0(int i5) {
        this.G = i5;
        int i6 = this.V;
        if (i5 < i6) {
            this.G = i6;
        }
    }

    public int z() {
        return this.K + this.S;
    }

    public void z0(boolean z4) {
        this.f5042n = z4;
    }
}
