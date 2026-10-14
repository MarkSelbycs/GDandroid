package l;

/* JADX INFO: compiled from: Analyzer.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {
    public static void a(l.g gVar) {
        if ((gVar.R0() & 32) != 32) {
            j(gVar);
            return;
        }
        gVar.O0 = true;
        gVar.I0 = false;
        gVar.J0 = false;
        gVar.K0 = false;
        java.util.ArrayList<l.f> arrayList = gVar.f5119v0;
        java.util.List<l.h> list = gVar.H0;
        l.f.b bVarS = gVar.s();
        l.f.b bVar = l.f.b.WRAP_CONTENT;
        boolean z4 = bVarS == bVar;
        boolean z5 = gVar.B() == bVar;
        boolean z6 = z4 || z5;
        list.clear();
        for (l.f fVar : arrayList) {
            fVar.f5050r = null;
            fVar.f5037k0 = false;
            fVar.S();
        }
        for (l.f fVar2 : arrayList) {
            if (fVar2.f5050r == null && !b(fVar2, list, z6)) {
                j(gVar);
                gVar.O0 = false;
                return;
            }
        }
        int iMax = 0;
        int iMax2 = 0;
        for (l.h hVar : list) {
            iMax = java.lang.Math.max(iMax, c(hVar, 0));
            iMax2 = java.lang.Math.max(iMax2, c(hVar, 1));
        }
        if (z4) {
            gVar.g0(l.f.b.FIXED);
            gVar.y0(iMax);
            gVar.I0 = true;
            gVar.J0 = true;
            gVar.L0 = iMax;
        }
        if (z5) {
            gVar.u0(l.f.b.FIXED);
            gVar.b0(iMax2);
            gVar.I0 = true;
            gVar.K0 = true;
            gVar.M0 = iMax2;
        }
        i(list, 0, gVar.D());
        i(list, 1, gVar.r());
    }

    public static boolean b(l.f fVar, java.util.List<l.h> list, boolean z4) {
        l.h hVar = new l.h(new java.util.ArrayList(), true);
        list.add(hVar);
        return k(fVar, hVar, list, z4);
    }

    public static int c(l.h hVar, int i5) {
        int i6 = i5 * 2;
        java.util.List<l.f> listB = hVar.b(i5);
        int size = listB.size();
        int iMax = 0;
        for (int i7 = 0; i7 < size; i7++) {
            l.f fVar = listB.get(i7);
            l.e[] eVarArr = fVar.C;
            int i8 = i6 + 1;
            iMax = java.lang.Math.max(iMax, d(fVar, i5, eVarArr[i8].f4990d == null || !(eVarArr[i6].f4990d == null || eVarArr[i8].f4990d == null), 0));
        }
        hVar.f5077e[i5] = iMax;
        return iMax;
    }

    public static int d(l.f fVar, int i5, boolean z4, int i6) {
        int iR;
        int iJ;
        int i7;
        int i8;
        int i9;
        int iD;
        int i10;
        int i11;
        int iMax = 0;
        if (!fVar.f5033i0) {
            return 0;
        }
        boolean z5 = fVar.f5060y.f4990d != null && i5 == 1;
        if (z4) {
            iR = fVar.j();
            iJ = fVar.r() - fVar.j();
            i8 = i5 * 2;
            i7 = i8 + 1;
        } else {
            iR = fVar.r() - fVar.j();
            iJ = fVar.j();
            i7 = i5 * 2;
            i8 = i7 + 1;
        }
        l.e[] eVarArr = fVar.C;
        if (eVarArr[i7].f4990d == null || eVarArr[i8].f4990d != null) {
            i9 = 1;
        } else {
            i9 = -1;
            int i12 = i7;
            i7 = i8;
            i8 = i12;
        }
        int i13 = z5 ? i6 - iR : i6;
        int iD2 = (eVarArr[i8].d() * i9) + e(fVar, i5);
        int i14 = i13 + iD2;
        int iD3 = (i5 == 0 ? fVar.D() : fVar.r()) * i9;
        java.util.Iterator<l.o> it = fVar.C[i8].f().f5107a.iterator();
        while (it.hasNext()) {
            iMax = java.lang.Math.max(iMax, d(((l.m) it.next()).f5093c.f4988b, i5, z4, i14));
        }
        int iMax2 = 0;
        for (java.util.Iterator<l.o> it2 = fVar.C[i7].f().f5107a.iterator(); it2.hasNext(); it2 = it2) {
            iMax2 = java.lang.Math.max(iMax2, d(((l.m) it2.next()).f5093c.f4988b, i5, z4, iD3 + i14));
        }
        if (z5) {
            iMax -= iR;
            iD = iMax2 + iJ;
        } else {
            iD = iMax2 + ((i5 == 0 ? fVar.D() : fVar.r()) * i9);
        }
        int i15 = 1;
        if (i5 == 1) {
            java.util.Iterator<l.o> it3 = fVar.f5060y.f().f5107a.iterator();
            int iMax3 = 0;
            while (it3.hasNext()) {
                java.util.Iterator<l.o> it4 = it3;
                l.m mVar = (l.m) it3.next();
                iMax3 = i9 == i15 ? java.lang.Math.max(iMax3, d(mVar.f5093c.f4988b, i5, z4, iR + i14)) : java.lang.Math.max(iMax3, d(mVar.f5093c.f4988b, i5, z4, (iJ * i9) + i14));
                it3 = it4;
                i7 = i7;
                i15 = 1;
            }
            i10 = i7;
            int i16 = iMax3;
            i11 = (fVar.f5060y.f().f5107a.size() <= 0 || z5) ? i16 : i9 == 1 ? i16 + iR : i16 - iJ;
        } else {
            i10 = i7;
            i11 = 0;
        }
        int iMax4 = iD2 + java.lang.Math.max(iMax, java.lang.Math.max(iD, i11));
        int i17 = iD3 + i14;
        if (i9 == -1) {
            i17 = i14;
            i14 = i17;
        }
        if (z4) {
            l.k.e(fVar, i5, i14);
            fVar.Z(i14, i17, i5);
        } else {
            fVar.f5050r.a(fVar, i5);
            fVar.q0(i14, i5);
        }
        if (fVar.o(i5) == l.f.b.MATCH_CONSTRAINT && fVar.I != 0.0f) {
            fVar.f5050r.a(fVar, i5);
        }
        l.e[] eVarArr2 = fVar.C;
        if (eVarArr2[i8].f4990d != null && eVarArr2[i10].f4990d != null) {
            l.f fVarU = fVar.u();
            l.e[] eVarArr3 = fVar.C;
            if (eVarArr3[i8].f4990d.f4988b == fVarU && eVarArr3[i10].f4990d.f4988b == fVarU) {
                fVar.f5050r.a(fVar, i5);
            }
        }
        return iMax4;
    }

    public static int e(l.f fVar, int i5) {
        l.e eVar;
        int i6 = i5 * 2;
        l.e[] eVarArr = fVar.C;
        l.e eVar2 = eVarArr[i6];
        l.e eVar3 = eVarArr[i6 + 1];
        l.e eVar4 = eVar2.f4990d;
        if (eVar4 == null) {
            return 0;
        }
        l.f fVar2 = eVar4.f4988b;
        l.f fVar3 = fVar.F;
        if (fVar2 != fVar3 || (eVar = eVar3.f4990d) == null || eVar.f4988b != fVar3) {
            return 0;
        }
        return (int) ((((fVar3.t(i5) - eVar2.d()) - eVar3.d()) - fVar.t(i5)) * (i5 == 0 ? fVar.Z : fVar.f5017a0));
    }

    public static void f(l.g gVar, l.f fVar, l.h hVar) {
        hVar.f5076d = false;
        gVar.O0 = false;
        fVar.f5033i0 = false;
    }

    public static int g(l.f fVar) {
        l.f.b bVarS = fVar.s();
        l.f.b bVar = l.f.b.MATCH_CONSTRAINT;
        if (bVarS == bVar) {
            int iR = (int) (fVar.J == 0 ? fVar.r() * fVar.I : fVar.r() / fVar.I);
            fVar.y0(iR);
            return iR;
        }
        if (fVar.B() != bVar) {
            return -1;
        }
        int iD = (int) (fVar.J == 1 ? fVar.D() * fVar.I : fVar.D() / fVar.I);
        fVar.b0(iD);
        return iD;
    }

    public static void h(l.e eVar) {
        l.m mVarF = eVar.f();
        l.e eVar2 = eVar.f4990d;
        if (eVar2 == null || eVar2.f4990d == eVar) {
            return;
        }
        eVar2.f().a(mVarF);
    }

    public static void i(java.util.List<l.h> list, int i5, int i6) {
        int size = list.size();
        for (int i7 = 0; i7 < size; i7++) {
            for (l.f fVar : list.get(i7).c(i5)) {
                if (fVar.f5033i0) {
                    l(fVar, i5, i6);
                }
            }
        }
    }

    public static void j(l.g gVar) {
        gVar.H0.clear();
        gVar.H0.add(0, new l.h(gVar.f5119v0));
    }

    /* JADX WARN: Code duplicated, block: B:115:0x015b  */
    /* JADX WARN: Code duplicated, block: B:88:0x0112  */
    public static boolean k(l.f fVar, l.h hVar, java.util.List<l.h> list, boolean z4) {
        l.e eVar;
        l.e eVar2;
        if (fVar == null) {
            return true;
        }
        fVar.f5035j0 = false;
        l.g gVar = (l.g) fVar.u();
        l.h hVar2 = fVar.f5050r;
        if (hVar2 != null) {
            if (hVar2 != hVar) {
                hVar.f5073a.addAll(hVar2.f5073a);
                hVar.f5078f.addAll(fVar.f5050r.f5078f);
                hVar.f5079g.addAll(fVar.f5050r.f5079g);
                l.h hVar3 = fVar.f5050r;
                if (!hVar3.f5076d) {
                    hVar.f5076d = false;
                }
                list.remove(hVar3);
                java.util.Iterator<l.f> it = fVar.f5050r.f5073a.iterator();
                while (it.hasNext()) {
                    it.next().f5050r = hVar;
                }
            }
            return true;
        }
        fVar.f5033i0 = true;
        hVar.f5073a.add(fVar);
        fVar.f5050r = hVar;
        if (fVar.f5056u.f4990d == null && fVar.f5058w.f4990d == null && fVar.f5057v.f4990d == null && fVar.f5059x.f4990d == null && fVar.f5060y.f4990d == null && fVar.B.f4990d == null) {
            f(gVar, fVar, hVar);
            if (z4) {
                return false;
            }
        }
        if (fVar.f5057v.f4990d != null && fVar.f5059x.f4990d != null) {
            gVar.B();
            l.f.b bVar = l.f.b.WRAP_CONTENT;
            if (z4) {
                f(gVar, fVar, hVar);
                return false;
            }
            if (fVar.f5057v.f4990d.f4988b != fVar.u() || fVar.f5059x.f4990d.f4988b != fVar.u()) {
                f(gVar, fVar, hVar);
            }
        }
        if (fVar.f5056u.f4990d != null && fVar.f5058w.f4990d != null) {
            gVar.s();
            l.f.b bVar2 = l.f.b.WRAP_CONTENT;
            if (z4) {
                f(gVar, fVar, hVar);
                return false;
            }
            if (fVar.f5056u.f4990d.f4988b != fVar.u() || fVar.f5058w.f4990d.f4988b != fVar.u()) {
                f(gVar, fVar, hVar);
            }
        }
        l.f.b bVarS = fVar.s();
        l.f.b bVar3 = l.f.b.MATCH_CONSTRAINT;
        if (((bVarS == bVar3) ^ (fVar.B() == bVar3)) && fVar.I != 0.0f) {
            g(fVar);
        } else if (fVar.s() == bVar3 || fVar.B() == bVar3) {
            f(gVar, fVar, hVar);
            if (z4) {
                return false;
            }
        }
        l.e eVar3 = fVar.f5056u.f4990d;
        if ((eVar3 == null && fVar.f5058w.f4990d == null) || ((eVar3 != null && eVar3.f4988b == fVar.F && fVar.f5058w.f4990d == null) || ((eVar = fVar.f5058w.f4990d) != null && eVar.f4988b == fVar.F && eVar3 == null))) {
            if (fVar.B.f4990d == null) {
                hVar.f5078f.add(fVar);
            }
        } else if (eVar3 != null) {
            l.f fVar2 = eVar3.f4988b;
            l.f fVar3 = fVar.F;
            if (fVar2 == fVar3 && eVar != null && eVar.f4988b == fVar3) {
                if (fVar.B.f4990d == null && !(fVar instanceof l.i) && !(fVar instanceof l.j)) {
                    hVar.f5078f.add(fVar);
                }
            }
        }
        l.e eVar4 = fVar.f5057v.f4990d;
        if ((eVar4 == null && fVar.f5059x.f4990d == null) || ((eVar4 != null && eVar4.f4988b == fVar.F && fVar.f5059x.f4990d == null) || ((eVar2 = fVar.f5059x.f4990d) != null && eVar2.f4988b == fVar.F && eVar4 == null))) {
            if (fVar.B.f4990d == null) {
                hVar.f5079g.add(fVar);
            }
        } else if (eVar4 != null) {
            l.f fVar4 = eVar4.f4988b;
            l.f fVar5 = fVar.F;
            if (fVar4 == fVar5 && eVar2 != null && eVar2.f4988b == fVar5) {
                if (fVar.B.f4990d == null && fVar.f5060y.f4990d == null && !(fVar instanceof l.i) && !(fVar instanceof l.j)) {
                    hVar.f5079g.add(fVar);
                }
            }
        }
        if (fVar instanceof l.j) {
            f(gVar, fVar, hVar);
            if (z4) {
                return false;
            }
            l.j jVar = (l.j) fVar;
            for (int i5 = 0; i5 < jVar.f5091w0; i5++) {
                if (!k(jVar.f5090v0[i5], hVar, list, z4)) {
                    return false;
                }
            }
        }
        int length = fVar.C.length;
        for (int i6 = 0; i6 < length; i6++) {
            l.e eVar5 = fVar.C[i6];
            l.e eVar6 = eVar5.f4990d;
            if (eVar6 != null && eVar6.f4988b != fVar.u()) {
                if (eVar5.f4989c == l.e.d.CENTER) {
                    f(gVar, fVar, hVar);
                    if (z4) {
                        return false;
                    }
                } else {
                    h(eVar5);
                }
                if (!k(eVar5.f4990d.f4988b, hVar, list, z4)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static void l(l.f fVar, int i5, int i6) {
        int i7 = i5 * 2;
        l.e[] eVarArr = fVar.C;
        l.e eVar = eVarArr[i7];
        l.e eVar2 = eVarArr[i7 + 1];
        if ((eVar.f4990d == null || eVar2.f4990d == null) ? false : true) {
            l.k.e(fVar, i5, e(fVar, i5) + eVar.d());
            return;
        }
        if (fVar.I == 0.0f || fVar.o(i5) != l.f.b.MATCH_CONSTRAINT) {
            int iV = i6 - fVar.v(i5);
            int iT = iV - fVar.t(i5);
            fVar.Z(iT, iV, i5);
            l.k.e(fVar, i5, iT);
            return;
        }
        int iG = g(fVar);
        int i8 = (int) fVar.C[i7].f().f5098h;
        eVar2.f().f5097g = eVar.f();
        eVar2.f().f5098h = iG;
        eVar2.f().f5108b = 1;
        fVar.Z(i8, i8 + iG, i5);
    }
}
