package l;

/* JADX INFO: compiled from: Optimizer.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean[] f5092a = new boolean[3];

    public static void a(int i5, l.f fVar) {
        fVar.H0();
        l.m mVarF = fVar.f5056u.f();
        l.m mVarF2 = fVar.f5057v.f();
        l.m mVarF3 = fVar.f5058w.f();
        l.m mVarF4 = fVar.f5059x.f();
        boolean z4 = (i5 & 8) == 8;
        l.f.b bVar = fVar.E[0];
        l.f.b bVar2 = l.f.b.MATCH_CONSTRAINT;
        boolean z5 = bVar == bVar2 && d(fVar, 0);
        if (mVarF.f5099i != 4 && mVarF3.f5099i != 4) {
            if (fVar.E[0] == l.f.b.FIXED || (z5 && fVar.C() == 8)) {
                l.e eVar = fVar.f5056u.f4990d;
                if (eVar == null && fVar.f5058w.f4990d == null) {
                    mVarF.p(1);
                    mVarF3.p(1);
                    if (z4) {
                        mVarF3.j(mVarF, 1, fVar.x());
                    } else {
                        mVarF3.i(mVarF, fVar.D());
                    }
                } else if (eVar != null && fVar.f5058w.f4990d == null) {
                    mVarF.p(1);
                    mVarF3.p(1);
                    if (z4) {
                        mVarF3.j(mVarF, 1, fVar.x());
                    } else {
                        mVarF3.i(mVarF, fVar.D());
                    }
                } else if (eVar == null && fVar.f5058w.f4990d != null) {
                    mVarF.p(1);
                    mVarF3.p(1);
                    mVarF.i(mVarF3, -fVar.D());
                    if (z4) {
                        mVarF.j(mVarF3, -1, fVar.x());
                    } else {
                        mVarF.i(mVarF3, -fVar.D());
                    }
                } else if (eVar != null && fVar.f5058w.f4990d != null) {
                    mVarF.p(2);
                    mVarF3.p(2);
                    if (z4) {
                        fVar.x().a(mVarF);
                        fVar.x().a(mVarF3);
                        mVarF.o(mVarF3, -1, fVar.x());
                        mVarF3.o(mVarF, 1, fVar.x());
                    } else {
                        mVarF.n(mVarF3, -fVar.D());
                        mVarF3.n(mVarF, fVar.D());
                    }
                }
            } else if (z5) {
                int iD = fVar.D();
                mVarF.p(1);
                mVarF3.p(1);
                l.e eVar2 = fVar.f5056u.f4990d;
                if (eVar2 == null && fVar.f5058w.f4990d == null) {
                    if (z4) {
                        mVarF3.j(mVarF, 1, fVar.x());
                    } else {
                        mVarF3.i(mVarF, iD);
                    }
                } else if (eVar2 == null || fVar.f5058w.f4990d != null) {
                    if (eVar2 != null || fVar.f5058w.f4990d == null) {
                        if (eVar2 != null && fVar.f5058w.f4990d != null) {
                            if (z4) {
                                fVar.x().a(mVarF);
                                fVar.x().a(mVarF3);
                            }
                            if (fVar.I == 0.0f) {
                                mVarF.p(3);
                                mVarF3.p(3);
                                mVarF.n(mVarF3, 0.0f);
                                mVarF3.n(mVarF, 0.0f);
                            } else {
                                mVarF.p(2);
                                mVarF3.p(2);
                                mVarF.n(mVarF3, -iD);
                                mVarF3.n(mVarF, iD);
                                fVar.y0(iD);
                            }
                        }
                    } else if (z4) {
                        mVarF.j(mVarF3, -1, fVar.x());
                    } else {
                        mVarF.i(mVarF3, -iD);
                    }
                } else if (z4) {
                    mVarF3.j(mVarF, 1, fVar.x());
                } else {
                    mVarF3.i(mVarF, iD);
                }
            }
        }
        boolean z6 = fVar.E[1] == bVar2 && d(fVar, 1);
        if (mVarF2.f5099i == 4 || mVarF4.f5099i == 4) {
            return;
        }
        if (fVar.E[1] != l.f.b.FIXED && (!z6 || fVar.C() != 8)) {
            if (z6) {
                int iR = fVar.r();
                mVarF2.p(1);
                mVarF4.p(1);
                l.e eVar3 = fVar.f5057v.f4990d;
                if (eVar3 == null && fVar.f5059x.f4990d == null) {
                    if (z4) {
                        mVarF4.j(mVarF2, 1, fVar.w());
                        return;
                    } else {
                        mVarF4.i(mVarF2, iR);
                        return;
                    }
                }
                if (eVar3 != null && fVar.f5059x.f4990d == null) {
                    if (z4) {
                        mVarF4.j(mVarF2, 1, fVar.w());
                        return;
                    } else {
                        mVarF4.i(mVarF2, iR);
                        return;
                    }
                }
                if (eVar3 == null && fVar.f5059x.f4990d != null) {
                    if (z4) {
                        mVarF2.j(mVarF4, -1, fVar.w());
                        return;
                    } else {
                        mVarF2.i(mVarF4, -iR);
                        return;
                    }
                }
                if (eVar3 == null || fVar.f5059x.f4990d == null) {
                    return;
                }
                if (z4) {
                    fVar.w().a(mVarF2);
                    fVar.x().a(mVarF4);
                }
                if (fVar.I == 0.0f) {
                    mVarF2.p(3);
                    mVarF4.p(3);
                    mVarF2.n(mVarF4, 0.0f);
                    mVarF4.n(mVarF2, 0.0f);
                    return;
                }
                mVarF2.p(2);
                mVarF4.p(2);
                mVarF2.n(mVarF4, -iR);
                mVarF4.n(mVarF2, iR);
                fVar.b0(iR);
                if (fVar.U > 0) {
                    fVar.f5060y.f().h(1, mVarF2, fVar.U);
                    return;
                }
                return;
            }
            return;
        }
        l.e eVar4 = fVar.f5057v.f4990d;
        if (eVar4 == null && fVar.f5059x.f4990d == null) {
            mVarF2.p(1);
            mVarF4.p(1);
            if (z4) {
                mVarF4.j(mVarF2, 1, fVar.w());
            } else {
                mVarF4.i(mVarF2, fVar.r());
            }
            l.e eVar5 = fVar.f5060y;
            if (eVar5.f4990d != null) {
                eVar5.f().p(1);
                mVarF2.h(1, fVar.f5060y.f(), -fVar.U);
                return;
            }
            return;
        }
        if (eVar4 != null && fVar.f5059x.f4990d == null) {
            mVarF2.p(1);
            mVarF4.p(1);
            if (z4) {
                mVarF4.j(mVarF2, 1, fVar.w());
            } else {
                mVarF4.i(mVarF2, fVar.r());
            }
            if (fVar.U > 0) {
                fVar.f5060y.f().h(1, mVarF2, fVar.U);
                return;
            }
            return;
        }
        if (eVar4 == null && fVar.f5059x.f4990d != null) {
            mVarF2.p(1);
            mVarF4.p(1);
            if (z4) {
                mVarF2.j(mVarF4, -1, fVar.w());
            } else {
                mVarF2.i(mVarF4, -fVar.r());
            }
            if (fVar.U > 0) {
                fVar.f5060y.f().h(1, mVarF2, fVar.U);
                return;
            }
            return;
        }
        if (eVar4 == null || fVar.f5059x.f4990d == null) {
            return;
        }
        mVarF2.p(2);
        mVarF4.p(2);
        if (z4) {
            mVarF2.o(mVarF4, -1, fVar.w());
            mVarF4.o(mVarF2, 1, fVar.w());
            fVar.w().a(mVarF2);
            fVar.x().a(mVarF4);
        } else {
            mVarF2.n(mVarF4, -fVar.r());
            mVarF4.n(mVarF2, fVar.r());
        }
        if (fVar.U > 0) {
            fVar.f5060y.f().h(1, mVarF2, fVar.U);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002c A[PHI: r11 r12
  0x002c: PHI (r11v11 boolean) = (r11v1 boolean), (r11v13 boolean) binds: [B:21:0x003c, B:11:0x002a] A[DONT_GENERATE, DONT_INLINE]
  0x002c: PHI (r12v8 boolean) = (r12v1 boolean), (r12v10 boolean) binds: [B:21:0x003c, B:11:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:13:0x002e A[PHI: r11 r12
  0x002e: PHI (r11v3 boolean) = (r11v1 boolean), (r11v13 boolean) binds: [B:21:0x003c, B:11:0x002a] A[DONT_GENERATE, DONT_INLINE]
  0x002e: PHI (r12v3 boolean) = (r12v1 boolean), (r12v10 boolean) binds: [B:21:0x003c, B:11:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x00f5  */
    public static boolean b(l.g gVar, k.e eVar, int i5, int i6, l.d dVar) {
        boolean z4;
        boolean z5;
        boolean z6;
        l.m mVar;
        float fD;
        float f5;
        l.f fVar;
        boolean z7;
        l.f fVar2 = dVar.f4970a;
        l.f fVar3 = dVar.f4972c;
        l.f fVar4 = dVar.f4971b;
        l.f fVar5 = dVar.f4973d;
        l.f fVar6 = dVar.f4974e;
        float f6 = dVar.f4980k;
        l.f.b bVar = gVar.E[i5];
        l.f.b bVar2 = l.f.b.WRAP_CONTENT;
        if (i5 == 0) {
            int i7 = fVar6.f5039l0;
            z4 = i7 == 0;
            z5 = i7 == 1;
            if (i7 == 2) {
                z6 = true;
            } else {
                z6 = false;
            }
        } else {
            int i8 = fVar6.f5041m0;
            z4 = i8 == 0;
            z5 = i8 == 1;
            if (i8 == 2) {
                z6 = true;
            } else {
                z6 = false;
            }
        }
        l.f fVar7 = fVar2;
        int i9 = 0;
        boolean z8 = false;
        int i10 = 0;
        float fD2 = 0.0f;
        float fD3 = 0.0f;
        while (!z8) {
            if (fVar7.C() != 8) {
                i10++;
                fD2 += i5 == 0 ? fVar7.D() : fVar7.r();
                if (fVar7 != fVar4) {
                    fD2 += fVar7.C[i6].d();
                }
                if (fVar7 != fVar5) {
                    fD2 += fVar7.C[i6 + 1].d();
                }
                fD3 = fD3 + fVar7.C[i6].d() + fVar7.C[i6 + 1].d();
            }
            l.e eVar2 = fVar7.C[i6];
            if (fVar7.C() != 8 && fVar7.E[i5] == l.f.b.MATCH_CONSTRAINT) {
                i9++;
                if (i5 != 0) {
                    z7 = false;
                    if (fVar7.f5026f != 0) {
                        return false;
                    }
                    if (fVar7.f5036k != 0 || fVar7.f5038l != 0) {
                    }
                    return z7;
                }
                if (fVar7.f5024e != 0) {
                    return false;
                }
                z7 = false;
                if (fVar7.f5030h != 0 || fVar7.f5032i != 0) {
                    return false;
                }
                if (fVar7.I != 0.0f) {
                    return z7;
                }
            }
            l.e eVar3 = fVar7.C[i6 + 1].f4990d;
            if (eVar3 != null) {
                l.f fVar8 = eVar3.f4988b;
                l.e[] eVarArr = fVar8.C;
                if (eVarArr[i6].f4990d == null || eVarArr[i6].f4990d.f4988b != fVar7) {
                    fVar = null;
                } else {
                    fVar = fVar8;
                }
            } else {
                fVar = null;
            }
            if (fVar != null) {
                fVar7 = fVar;
            } else {
                z8 = true;
            }
        }
        l.m mVarF = fVar2.C[i6].f();
        int i11 = i6 + 1;
        l.m mVarF2 = fVar3.C[i11].f();
        l.m mVar2 = mVarF.f5095e;
        if (mVar2 == null || (mVar = mVarF2.f5095e) == null || mVar2.f5108b != 1 || mVar.f5108b != 1) {
            return false;
        }
        if (i9 > 0 && i9 != i10) {
            return false;
        }
        if (z6 || z4 || z5) {
            fD = fVar4 != null ? fVar4.C[i6].d() : 0.0f;
            if (fVar5 != null) {
                fD += fVar5.C[i11].d();
            }
        } else {
            fD = 0.0f;
        }
        float f7 = mVarF.f5095e.f5098h;
        float f8 = mVarF2.f5095e.f5098h;
        float f9 = (f7 < f8 ? f8 - f7 : f7 - f8) - fD2;
        if (i9 > 0 && i9 == i10) {
            if (fVar7.u() != null && fVar7.u().E[i5] == l.f.b.WRAP_CONTENT) {
                return false;
            }
            float f10 = (f9 + fD2) - fD3;
            float fD4 = f7;
            l.f fVar9 = fVar2;
            while (fVar9 != null) {
                int i12 = k.e.f4818q;
                l.f fVar10 = fVar9.f5051r0[i5];
                if (fVar10 != null || fVar9 == fVar3) {
                    float f11 = f10 / i9;
                    if (f6 > 0.0f) {
                        float[] fArr = fVar9.f5047p0;
                        if (fArr[i5] == -1.0f) {
                            f5 = 0.0f;
                        } else {
                            f11 = (fArr[i5] * f10) / f6;
                            f5 = f11;
                        }
                    } else {
                        f5 = f11;
                    }
                    if (fVar9.C() == 8) {
                        f5 = 0.0f;
                    }
                    float fD5 = fD4 + fVar9.C[i6].d();
                    fVar9.C[i6].f().l(mVarF.f5097g, fD5);
                    float f12 = fD5 + f5;
                    fVar9.C[i11].f().l(mVarF.f5097g, f12);
                    fVar9.C[i6].f().g(eVar);
                    fVar9.C[i11].f().g(eVar);
                    fD4 = f12 + fVar9.C[i11].d();
                }
                fVar9 = fVar10;
            }
            return true;
        }
        if (f9 < 0.0f) {
            z6 = true;
            z4 = false;
            z5 = false;
        }
        if (z6) {
            l.f fVar11 = fVar2;
            float fK = f7 + ((f9 - fD) * fVar11.k(i5));
            while (true) {
                l.f fVar12 = fVar11;
                if (fVar12 == null) {
                    return true;
                }
                int i13 = k.e.f4818q;
                fVar11 = fVar12.f5051r0[i5];
                if (fVar11 != null || fVar12 == fVar3) {
                    int iD = i5 == 0 ? fVar12.D() : fVar12.r();
                    float fD6 = fK + fVar12.C[i6].d();
                    fVar12.C[i6].f().l(mVarF.f5097g, fD6);
                    float f13 = fD6 + iD;
                    fVar12.C[i11].f().l(mVarF.f5097g, f13);
                    fVar12.C[i6].f().g(eVar);
                    fVar12.C[i11].f().g(eVar);
                    fK = f13 + fVar12.C[i11].d();
                }
            }
        } else {
            l.f fVar13 = fVar2;
            if (!z4 && !z5) {
                return true;
            }
            if (z4 || z5) {
                f9 -= fD;
            }
            float f14 = f9 / (i10 + 1);
            if (z5) {
                f14 = f9 / (i10 > 1 ? i10 - 1 : 2.0f);
            }
            float fD7 = fVar13.C() != 8 ? f7 + f14 : f7;
            if (z5 && i10 > 1) {
                fD7 = fVar4.C[i6].d() + f7;
            }
            if (z4 && fVar4 != null) {
                fD7 += fVar4.C[i6].d();
            }
            while (true) {
                l.f fVar14 = fVar13;
                if (fVar14 == null) {
                    return true;
                }
                int i14 = k.e.f4818q;
                fVar13 = fVar14.f5051r0[i5];
                if (fVar13 != null || fVar14 == fVar3) {
                    float fD8 = i5 == 0 ? fVar14.D() : fVar14.r();
                    if (fVar14 != fVar4) {
                        fD7 += fVar14.C[i6].d();
                    }
                    fVar14.C[i6].f().l(mVarF.f5097g, fD7);
                    fVar14.C[i11].f().l(mVarF.f5097g, fD7 + fD8);
                    fVar14.C[i6].f().g(eVar);
                    fVar14.C[i11].f().g(eVar);
                    fD7 += fD8 + fVar14.C[i11].d();
                    if (fVar13 != null) {
                        if (fVar13.C() != 8) {
                            fD7 += f14;
                        }
                    }
                }
            }
        }
    }

    public static void c(l.g gVar, k.e eVar, l.f fVar) {
        l.f.b bVar = gVar.E[0];
        l.f.b bVar2 = l.f.b.WRAP_CONTENT;
        if (bVar != bVar2 && fVar.E[0] == l.f.b.MATCH_PARENT) {
            int i5 = fVar.f5056u.f4991e;
            int iD = gVar.D() - fVar.f5058w.f4991e;
            l.e eVar2 = fVar.f5056u;
            eVar2.f4996j = eVar.r(eVar2);
            l.e eVar3 = fVar.f5058w;
            eVar3.f4996j = eVar.r(eVar3);
            eVar.f(fVar.f5056u.f4996j, i5);
            eVar.f(fVar.f5058w.f4996j, iD);
            fVar.f5016a = 2;
            fVar.f0(i5, iD);
        }
        if (gVar.E[1] == bVar2 || fVar.E[1] != l.f.b.MATCH_PARENT) {
            return;
        }
        int i6 = fVar.f5057v.f4991e;
        int iR = gVar.r() - fVar.f5059x.f4991e;
        l.e eVar4 = fVar.f5057v;
        eVar4.f4996j = eVar.r(eVar4);
        l.e eVar5 = fVar.f5059x;
        eVar5.f4996j = eVar.r(eVar5);
        eVar.f(fVar.f5057v.f4996j, i6);
        eVar.f(fVar.f5059x.f4996j, iR);
        if (fVar.U > 0 || fVar.C() == 8) {
            l.e eVar6 = fVar.f5060y;
            eVar6.f4996j = eVar.r(eVar6);
            eVar.f(fVar.f5060y.f4996j, fVar.U + i6);
        }
        fVar.f5018b = 2;
        fVar.t0(i6, iR);
    }

    public static boolean d(l.f fVar, int i5) {
        l.f.b[] bVarArr = fVar.E;
        if (bVarArr[i5] != l.f.b.MATCH_CONSTRAINT) {
            return false;
        }
        if (fVar.I != 0.0f) {
            l.f.b bVar = bVarArr[i5 != 0 ? (char) 0 : (char) 1];
            return false;
        }
        if (i5 == 0) {
            if (fVar.f5024e != 0 || fVar.f5030h != 0 || fVar.f5032i != 0) {
                return false;
            }
        } else if (fVar.f5026f != 0 || fVar.f5036k != 0 || fVar.f5038l != 0) {
            return false;
        }
        return true;
    }

    public static void e(l.f fVar, int i5, int i6) {
        int i7 = i5 * 2;
        int i8 = i7 + 1;
        fVar.C[i7].f().f5097g = fVar.u().f5056u.f();
        fVar.C[i7].f().f5098h = i6;
        fVar.C[i7].f().f5108b = 1;
        fVar.C[i8].f().f5097g = fVar.C[i7].f();
        fVar.C[i8].f().f5098h = fVar.t(i5);
        fVar.C[i8].f().f5108b = 1;
    }
}
