package l;

/* JADX INFO: compiled from: ConstraintAnchor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l.f f4988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l.e.d f4989c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public l.e f4990d;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public k.i f4996j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l.m f4987a = new l.m(this);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4991e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4992f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public l.e.c f4993g = l.e.c.NONE;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public l.e.b f4994h = l.e.b.RELAXED;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4995i = 0;

    /* JADX INFO: compiled from: ConstraintAnchor.java */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4997a;

        static {
            int[] iArr = new int[l.e.d.values().length];
            f4997a = iArr;
            try {
                iArr[l.e.d.CENTER.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                f4997a[l.e.d.LEFT.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                f4997a[l.e.d.RIGHT.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                f4997a[l.e.d.TOP.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                f4997a[l.e.d.BOTTOM.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                f4997a[l.e.d.BASELINE.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            try {
                f4997a[l.e.d.CENTER_X.ordinal()] = 7;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
            try {
                f4997a[l.e.d.CENTER_Y.ordinal()] = 8;
            } catch (java.lang.NoSuchFieldError unused8) {
            }
            try {
                f4997a[l.e.d.NONE.ordinal()] = 9;
            } catch (java.lang.NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX INFO: compiled from: ConstraintAnchor.java */
    public enum b {
        RELAXED,
        STRICT
    }

    /* JADX INFO: compiled from: ConstraintAnchor.java */
    public enum c {
        NONE,
        STRONG,
        WEAK
    }

    /* JADX INFO: compiled from: ConstraintAnchor.java */
    public enum d {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public e(l.f fVar, l.e.d dVar) {
        this.f4988b = fVar;
        this.f4989c = dVar;
    }

    public boolean a(l.e eVar, int i5, int i6, l.e.c cVar, int i7, boolean z4) {
        if (eVar == null) {
            this.f4990d = null;
            this.f4991e = 0;
            this.f4992f = -1;
            this.f4993g = l.e.c.NONE;
            this.f4995i = 2;
            return true;
        }
        if (!z4 && !l(eVar)) {
            return false;
        }
        this.f4990d = eVar;
        if (i5 > 0) {
            this.f4991e = i5;
        } else {
            this.f4991e = 0;
        }
        this.f4992f = i6;
        this.f4993g = cVar;
        this.f4995i = i7;
        return true;
    }

    public boolean b(l.e eVar, int i5, l.e.c cVar, int i6) {
        return a(eVar, i5, -1, cVar, i6, false);
    }

    public int c() {
        return this.f4995i;
    }

    public int d() {
        l.e eVar;
        if (this.f4988b.C() == 8) {
            return 0;
        }
        return (this.f4992f <= -1 || (eVar = this.f4990d) == null || eVar.f4988b.C() != 8) ? this.f4991e : this.f4992f;
    }

    public l.f e() {
        return this.f4988b;
    }

    public l.m f() {
        return this.f4987a;
    }

    public k.i g() {
        return this.f4996j;
    }

    public l.e.c h() {
        return this.f4993g;
    }

    public l.e i() {
        return this.f4990d;
    }

    public l.e.d j() {
        return this.f4989c;
    }

    public boolean k() {
        return this.f4990d != null;
    }

    public boolean l(l.e eVar) {
        if (eVar == null) {
            return false;
        }
        l.e.d dVarJ = eVar.j();
        l.e.d dVar = this.f4989c;
        if (dVarJ == dVar) {
            return dVar != l.e.d.BASELINE || (eVar.e().I() && e().I());
        }
        switch (l.e.a.f4997a[dVar.ordinal()]) {
            case 1:
                return (dVarJ == l.e.d.BASELINE || dVarJ == l.e.d.CENTER_X || dVarJ == l.e.d.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z4 = dVarJ == l.e.d.LEFT || dVarJ == l.e.d.RIGHT;
                if (eVar.e() instanceof l.i) {
                    return z4 || dVarJ == l.e.d.CENTER_X;
                }
                return z4;
            case 4:
            case 5:
                boolean z5 = dVarJ == l.e.d.TOP || dVarJ == l.e.d.BOTTOM;
                if (eVar.e() instanceof l.i) {
                    return z5 || dVarJ == l.e.d.CENTER_Y;
                }
                return z5;
            case 6:
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new java.lang.AssertionError(this.f4989c.name());
        }
    }

    public void m() {
        this.f4990d = null;
        this.f4991e = 0;
        this.f4992f = -1;
        this.f4993g = l.e.c.STRONG;
        this.f4995i = 0;
        this.f4994h = l.e.b.RELAXED;
        this.f4987a.e();
    }

    public void n(k.c cVar) {
        k.i iVar = this.f4996j;
        if (iVar == null) {
            this.f4996j = new k.i(k.i.a.UNRESTRICTED, null);
        } else {
            iVar.d();
        }
    }

    public java.lang.String toString() {
        return this.f4988b.n() + ":" + this.f4989c.toString();
    }
}
