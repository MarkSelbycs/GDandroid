package l;

/* JADX INFO: compiled from: Guideline.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i extends l.f {

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public float f5084v0 = -1.0f;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int f5085w0 = -1;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public int f5086x0 = -1;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public l.e f5087y0 = this.f5057v;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f5088z0 = 0;
    public boolean A0 = false;
    public int B0 = 0;
    public l.l C0 = new l.l();
    public int D0 = 8;

    /* JADX INFO: compiled from: Guideline.java */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5089a;

        static {
            int[] iArr = new int[l.e.d.values().length];
            f5089a = iArr;
            try {
                iArr[l.e.d.LEFT.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                f5089a[l.e.d.RIGHT.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                f5089a[l.e.d.TOP.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                f5089a[l.e.d.BOTTOM.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                f5089a[l.e.d.BASELINE.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                f5089a[l.e.d.CENTER.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            try {
                f5089a[l.e.d.CENTER_X.ordinal()] = 7;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
            try {
                f5089a[l.e.d.CENTER_Y.ordinal()] = 8;
            } catch (java.lang.NoSuchFieldError unused8) {
            }
            try {
                f5089a[l.e.d.NONE.ordinal()] = 9;
            } catch (java.lang.NoSuchFieldError unused9) {
            }
        }
    }

    public i() {
        this.D.clear();
        this.D.add(this.f5087y0);
        int length = this.C.length;
        for (int i5 = 0; i5 < length; i5++) {
            this.C[i5] = this.f5087y0;
        }
    }

    @Override // l.f
    public void G0(k.e eVar) {
        if (u() == null) {
            return;
        }
        int iY = eVar.y(this.f5087y0);
        if (this.f5088z0 == 1) {
            C0(iY);
            D0(0);
            b0(u().r());
            y0(0);
            return;
        }
        C0(0);
        D0(iY);
        y0(u().D());
        b0(0);
    }

    public int I0() {
        return this.f5088z0;
    }

    public void J0(int i5) {
        if (i5 > -1) {
            this.f5084v0 = -1.0f;
            this.f5085w0 = i5;
            this.f5086x0 = -1;
        }
    }

    public void K0(int i5) {
        if (i5 > -1) {
            this.f5084v0 = -1.0f;
            this.f5085w0 = -1;
            this.f5086x0 = i5;
        }
    }

    public void L0(float f5) {
        if (f5 > -1.0f) {
            this.f5084v0 = f5;
            this.f5085w0 = -1;
            this.f5086x0 = -1;
        }
    }

    public void M0(int i5) {
        if (this.f5088z0 == i5) {
            return;
        }
        this.f5088z0 = i5;
        this.D.clear();
        if (this.f5088z0 == 1) {
            this.f5087y0 = this.f5056u;
        } else {
            this.f5087y0 = this.f5057v;
        }
        this.D.add(this.f5087y0);
        int length = this.C.length;
        for (int i6 = 0; i6 < length; i6++) {
            this.C[i6] = this.f5087y0;
        }
    }

    @Override // l.f
    public void b(k.e eVar) {
        l.g gVar = (l.g) u();
        if (gVar == null) {
            return;
        }
        l.e eVarH = gVar.h(l.e.d.LEFT);
        l.e eVarH2 = gVar.h(l.e.d.RIGHT);
        l.f fVar = this.F;
        boolean z4 = fVar != null && fVar.E[0] == l.f.b.WRAP_CONTENT;
        if (this.f5088z0 == 0) {
            eVarH = gVar.h(l.e.d.TOP);
            eVarH2 = gVar.h(l.e.d.BOTTOM);
            l.f fVar2 = this.F;
            z4 = fVar2 != null && fVar2.E[1] == l.f.b.WRAP_CONTENT;
        }
        if (this.f5085w0 != -1) {
            k.i iVarR = eVar.r(this.f5087y0);
            eVar.e(iVarR, eVar.r(eVarH), this.f5085w0, 6);
            if (z4) {
                eVar.i(eVar.r(eVarH2), iVarR, 0, 5);
                return;
            }
            return;
        }
        if (this.f5086x0 == -1) {
            if (this.f5084v0 != -1.0f) {
                eVar.d(k.e.t(eVar, eVar.r(this.f5087y0), eVar.r(eVarH), eVar.r(eVarH2), this.f5084v0, this.A0));
                return;
            }
            return;
        }
        k.i iVarR2 = eVar.r(this.f5087y0);
        k.i iVarR3 = eVar.r(eVarH2);
        eVar.e(iVarR2, iVarR3, -this.f5086x0, 6);
        if (z4) {
            eVar.i(iVarR2, eVar.r(eVarH), 0, 5);
            eVar.i(iVarR3, iVarR2, 0, 5);
        }
    }

    @Override // l.f
    public boolean c() {
        return true;
    }

    @Override // l.f
    public void d(int i5) {
        l.f fVarU = u();
        if (fVarU == null) {
            return;
        }
        if (I0() == 1) {
            this.f5057v.f().h(1, fVarU.f5057v.f(), 0);
            this.f5059x.f().h(1, fVarU.f5057v.f(), 0);
            if (this.f5085w0 != -1) {
                this.f5056u.f().h(1, fVarU.f5056u.f(), this.f5085w0);
                this.f5058w.f().h(1, fVarU.f5056u.f(), this.f5085w0);
                return;
            } else if (this.f5086x0 != -1) {
                this.f5056u.f().h(1, fVarU.f5058w.f(), -this.f5086x0);
                this.f5058w.f().h(1, fVarU.f5058w.f(), -this.f5086x0);
                return;
            } else {
                if (this.f5084v0 == -1.0f || fVarU.s() != l.f.b.FIXED) {
                    return;
                }
                int i6 = (int) (fVarU.G * this.f5084v0);
                this.f5056u.f().h(1, fVarU.f5056u.f(), i6);
                this.f5058w.f().h(1, fVarU.f5056u.f(), i6);
                return;
            }
        }
        this.f5056u.f().h(1, fVarU.f5056u.f(), 0);
        this.f5058w.f().h(1, fVarU.f5056u.f(), 0);
        if (this.f5085w0 != -1) {
            this.f5057v.f().h(1, fVarU.f5057v.f(), this.f5085w0);
            this.f5059x.f().h(1, fVarU.f5057v.f(), this.f5085w0);
        } else if (this.f5086x0 != -1) {
            this.f5057v.f().h(1, fVarU.f5059x.f(), -this.f5086x0);
            this.f5059x.f().h(1, fVarU.f5059x.f(), -this.f5086x0);
        } else {
            if (this.f5084v0 == -1.0f || fVarU.B() != l.f.b.FIXED) {
                return;
            }
            int i7 = (int) (fVarU.H * this.f5084v0);
            this.f5057v.f().h(1, fVarU.f5057v.f(), i7);
            this.f5059x.f().h(1, fVarU.f5057v.f(), i7);
        }
    }

    @Override // l.f
    public l.e h(l.e.d dVar) {
        switch (l.i.a.f5089a[dVar.ordinal()]) {
            case 1:
            case 2:
                if (this.f5088z0 == 1) {
                    return this.f5087y0;
                }
                break;
            case 3:
            case 4:
                if (this.f5088z0 == 0) {
                    return this.f5087y0;
                }
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
        }
        throw new java.lang.AssertionError(dVar.name());
    }

    @Override // l.f
    public java.util.ArrayList<l.e> i() {
        return this.D;
    }
}
