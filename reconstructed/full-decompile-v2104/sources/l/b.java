package l;

/* JADX INFO: compiled from: Barrier.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends l.j {

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public int f4967x0 = 0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public java.util.ArrayList<l.m> f4968y0 = new java.util.ArrayList<>(4);

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public boolean f4969z0 = true;

    public void K0(boolean z4) {
        this.f4969z0 = z4;
    }

    public void L0(int i5) {
        this.f4967x0 = i5;
    }

    @Override // l.f
    public void S() {
        super.S();
        this.f4968y0.clear();
    }

    @Override // l.f
    public void U() {
        l.m mVarF;
        float f5;
        l.m mVar;
        int i5 = this.f4967x0;
        float f6 = Float.MAX_VALUE;
        if (i5 != 0) {
            if (i5 == 1) {
                mVarF = this.f5058w.f();
            } else if (i5 == 2) {
                mVarF = this.f5057v.f();
            } else if (i5 != 3) {
                return;
            } else {
                mVarF = this.f5059x.f();
            }
            f6 = 0.0f;
        } else {
            mVarF = this.f5056u.f();
        }
        int size = this.f4968y0.size();
        l.m mVar2 = null;
        for (int i6 = 0; i6 < size; i6++) {
            l.m mVar3 = this.f4968y0.get(i6);
            if (mVar3.f5108b != 1) {
                return;
            }
            int i7 = this.f4967x0;
            if (i7 == 0 || i7 == 2) {
                f5 = mVar3.f5098h;
                if (f5 < f6) {
                    mVar = mVar3.f5097g;
                    mVar2 = mVar;
                    f6 = f5;
                }
            } else {
                f5 = mVar3.f5098h;
                if (f5 > f6) {
                    mVar = mVar3.f5097g;
                    mVar2 = mVar;
                    f6 = f5;
                }
            }
        }
        k.e.x();
        mVarF.f5097g = mVar2;
        mVarF.f5098h = f6;
        mVarF.b();
        int i8 = this.f4967x0;
        if (i8 == 0) {
            this.f5058w.f().l(mVar2, f6);
            return;
        }
        if (i8 == 1) {
            this.f5056u.f().l(mVar2, f6);
        } else if (i8 == 2) {
            this.f5059x.f().l(mVar2, f6);
        } else {
            if (i8 != 3) {
                return;
            }
            this.f5057v.f().l(mVar2, f6);
        }
    }

    @Override // l.f
    public void b(k.e eVar) {
        l.e[] eVarArr;
        boolean z4;
        int i5;
        int i6;
        l.e[] eVarArr2 = this.C;
        eVarArr2[0] = this.f5056u;
        eVarArr2[2] = this.f5057v;
        eVarArr2[1] = this.f5058w;
        eVarArr2[3] = this.f5059x;
        int i7 = 0;
        while (true) {
            eVarArr = this.C;
            if (i7 >= eVarArr.length) {
                break;
            }
            eVarArr[i7].f4996j = eVar.r(eVarArr[i7]);
            i7++;
        }
        int i8 = this.f4967x0;
        if (i8 < 0 || i8 >= 4) {
            return;
        }
        l.e eVar2 = eVarArr[i8];
        int i9 = 0;
        while (true) {
            if (i9 >= this.f5091w0) {
                z4 = false;
                break;
            }
            l.f fVar = this.f5090v0[i9];
            if ((this.f4969z0 || fVar.c()) && ((((i5 = this.f4967x0) == 0 || i5 == 1) && fVar.s() == l.f.b.MATCH_CONSTRAINT) || (((i6 = this.f4967x0) == 2 || i6 == 3) && fVar.B() == l.f.b.MATCH_CONSTRAINT))) {
                z4 = true;
                break;
            }
            i9++;
        }
        int i10 = this.f4967x0;
        if (i10 == 0 || i10 == 1 ? u().s() == l.f.b.WRAP_CONTENT : u().B() == l.f.b.WRAP_CONTENT) {
            z4 = false;
        }
        for (int i11 = 0; i11 < this.f5091w0; i11++) {
            l.f fVar2 = this.f5090v0[i11];
            if (this.f4969z0 || fVar2.c()) {
                k.i iVarR = eVar.r(fVar2.C[this.f4967x0]);
                l.e[] eVarArr3 = fVar2.C;
                int i12 = this.f4967x0;
                eVarArr3[i12].f4996j = iVarR;
                if (i12 == 0 || i12 == 2) {
                    eVar.j(eVar2.f4996j, iVarR, z4);
                } else {
                    eVar.h(eVar2.f4996j, iVarR, z4);
                }
            }
        }
        int i13 = this.f4967x0;
        if (i13 == 0) {
            eVar.e(this.f5058w.f4996j, this.f5056u.f4996j, 0, 6);
            if (z4) {
                return;
            }
            eVar.e(this.f5056u.f4996j, this.F.f5058w.f4996j, 0, 5);
            return;
        }
        if (i13 == 1) {
            eVar.e(this.f5056u.f4996j, this.f5058w.f4996j, 0, 6);
            if (z4) {
                return;
            }
            eVar.e(this.f5056u.f4996j, this.F.f5056u.f4996j, 0, 5);
            return;
        }
        if (i13 == 2) {
            eVar.e(this.f5059x.f4996j, this.f5057v.f4996j, 0, 6);
            if (z4) {
                return;
            }
            eVar.e(this.f5057v.f4996j, this.F.f5059x.f4996j, 0, 5);
            return;
        }
        if (i13 == 3) {
            eVar.e(this.f5057v.f4996j, this.f5059x.f4996j, 0, 6);
            if (z4) {
                return;
            }
            eVar.e(this.f5057v.f4996j, this.F.f5057v.f4996j, 0, 5);
        }
    }

    @Override // l.f
    public boolean c() {
        return true;
    }

    @Override // l.f
    public void d(int i5) {
        l.m mVarF;
        l.m mVarF2;
        l.f fVar = this.F;
        if (fVar != null && ((l.g) fVar).X0(2)) {
            int i6 = this.f4967x0;
            if (i6 == 0) {
                mVarF = this.f5056u.f();
            } else if (i6 == 1) {
                mVarF = this.f5058w.f();
            } else if (i6 == 2) {
                mVarF = this.f5057v.f();
            } else if (i6 != 3) {
                return;
            } else {
                mVarF = this.f5059x.f();
            }
            mVarF.p(5);
            int i7 = this.f4967x0;
            if (i7 == 0 || i7 == 1) {
                this.f5057v.f().l(null, 0.0f);
                this.f5059x.f().l(null, 0.0f);
            } else {
                this.f5056u.f().l(null, 0.0f);
                this.f5058w.f().l(null, 0.0f);
            }
            this.f4968y0.clear();
            for (int i8 = 0; i8 < this.f5091w0; i8++) {
                l.f fVar2 = this.f5090v0[i8];
                if (this.f4969z0 || fVar2.c()) {
                    int i9 = this.f4967x0;
                    if (i9 == 0) {
                        mVarF2 = fVar2.f5056u.f();
                    } else if (i9 == 1) {
                        mVarF2 = fVar2.f5058w.f();
                    } else if (i9 != 2) {
                        mVarF2 = i9 != 3 ? null : fVar2.f5059x.f();
                    } else {
                        mVarF2 = fVar2.f5057v.f();
                    }
                    if (mVarF2 != null) {
                        this.f4968y0.add(mVarF2);
                        mVarF2.a(mVarF);
                    }
                }
            }
        }
    }
}
