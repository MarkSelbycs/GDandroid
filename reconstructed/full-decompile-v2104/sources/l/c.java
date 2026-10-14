package l;

/* JADX INFO: compiled from: Chain.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c {
    public static void a(l.g gVar, k.e eVar, int i5) {
        int i6;
        int i7;
        l.d[] dVarArr;
        if (i5 == 0) {
            int i8 = gVar.D0;
            dVarArr = gVar.G0;
            i7 = i8;
            i6 = 0;
        } else {
            i6 = 2;
            i7 = gVar.E0;
            dVarArr = gVar.F0;
        }
        for (int i9 = 0; i9 < i7; i9++) {
            l.d dVar = dVarArr[i9];
            dVar.a();
            if (!gVar.X0(4)) {
                b(gVar, eVar, i5, i6, dVar);
            } else if (!l.k.b(gVar, eVar, i5, i6, dVar)) {
                b(gVar, eVar, i5, i6, dVar);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:151:0x029e  */
    /* JADX WARN: Code duplicated, block: B:25:0x003e A[PHI: r14 r15
  0x003e: PHI (r14v3 boolean) = (r14v1 boolean), (r14v28 boolean) binds: [B:24:0x003c, B:15:0x002d] A[DONT_GENERATE, DONT_INLINE]
  0x003e: PHI (r15v3 boolean) = (r15v1 boolean), (r15v36 boolean) binds: [B:24:0x003c, B:15:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:26:0x0040 A[PHI: r14 r15
  0x0040: PHI (r14v26 boolean) = (r14v1 boolean), (r14v28 boolean) binds: [B:24:0x003c, B:15:0x002d] A[DONT_GENERATE, DONT_INLINE]
  0x0040: PHI (r15v34 boolean) = (r15v1 boolean), (r15v36 boolean) binds: [B:24:0x003c, B:15:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:81:0x0142  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r38v0, types: [k.e] */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30, types: [k.i] */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [l.f] */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34 */
    public static void b(l.g gVar, k.e eVar, int i5, int i6, l.d dVar) {
        boolean z4;
        boolean z5;
        boolean z6;
        java.lang.Object obj;
        int i7;
        int i8;
        k.i iVar;
        l.e eVar2;
        k.i iVar2;
        l.e eVar3;
        k.i iVar3;
        k.i iVar4;
        ?? r5;
        k.i iVar5;
        int size;
        int i9;
        int i10;
        l.f fVar = dVar.f4970a;
        l.f fVar2 = dVar.f4972c;
        l.f fVar3 = dVar.f4971b;
        l.f fVar4 = dVar.f4973d;
        l.f fVar5 = dVar.f4974e;
        float f5 = dVar.f4980k;
        boolean z7 = gVar.E[i5] == l.f.b.WRAP_CONTENT;
        if (i5 == 0) {
            int i11 = fVar5.f5039l0;
            z4 = i11 == 0;
            z5 = i11 == 1;
            if (i11 == 2) {
                z6 = true;
            } else {
                z6 = false;
            }
        } else {
            int i12 = fVar5.f5041m0;
            z4 = i12 == 0;
            z5 = i12 == 1;
            if (i12 == 2) {
                z6 = true;
            } else {
                z6 = false;
            }
        }
        ?? r7 = fVar;
        boolean z8 = false;
        while (true) {
            obj = null;
            if (z8) {
                break;
            }
            l.e eVar4 = r7.C[i6];
            int i13 = (z7 || z6) ? 1 : 4;
            int iD = eVar4.d();
            float f6 = f5;
            l.e eVar5 = eVar4.f4990d;
            if (eVar5 != null && r7 != fVar) {
                iD += eVar5.d();
            }
            int i14 = iD;
            if (!z6 || r7 == fVar || r7 == fVar3) {
                i9 = (z4 && z7) ? 4 : i13;
            } else {
                i9 = 6;
            }
            l.e eVar6 = eVar4.f4990d;
            if (eVar6 != null) {
                if (r7 == fVar3) {
                    eVar.i(eVar4.f4996j, eVar6.f4996j, i14, 5);
                } else {
                    eVar.i(eVar4.f4996j, eVar6.f4996j, i14, 6);
                }
                eVar.e(eVar4.f4996j, eVar4.f4990d.f4996j, i14, i9);
            } else {
                fVar5 = fVar5;
                z4 = z4;
            }
            if (z7) {
                if (r7.C() == 8 || r7.E[i5] != l.f.b.MATCH_CONSTRAINT) {
                    i10 = 0;
                } else {
                    l.e[] eVarArr = r7.C;
                    i10 = 0;
                    eVar.i(eVarArr[i6 + 1].f4996j, eVarArr[i6].f4996j, 0, 5);
                }
                eVar.i(r7.C[i6].f4996j, gVar.C[i6].f4996j, i10, 6);
            }
            l.e eVar7 = r7.C[i6 + 1].f4990d;
            if (eVar7 != null) {
                l.f fVar6 = eVar7.f4988b;
                l.e[] eVarArr2 = fVar6.C;
                if (eVarArr2[i6].f4990d != null && eVarArr2[i6].f4990d.f4988b == r7) {
                    obj = fVar6;
                }
            }
            if (obj != null) {
                r7 = obj;
                z8 = z8;
            } else {
                z8 = true;
            }
            z5 = z5;
            f5 = f6;
            z4 = z4;
            fVar5 = fVar5;
            r7 = r7;
        }
        l.f fVar7 = fVar5;
        float f7 = f5;
        boolean z9 = z4;
        boolean z10 = z5;
        if (fVar4 != null) {
            l.e[] eVarArr3 = fVar2.C;
            int i15 = i6 + 1;
            if (eVarArr3[i15].f4990d != null) {
                l.e eVar8 = fVar4.C[i15];
                eVar.k(eVar8.f4996j, eVarArr3[i15].f4990d.f4996j, -eVar8.d(), 5);
            }
        }
        if (z7) {
            int i16 = i6 + 1;
            k.i iVar6 = gVar.C[i16].f4996j;
            l.e[] eVarArr4 = fVar2.C;
            eVar.i(iVar6, eVarArr4[i16].f4996j, eVarArr4[i16].d(), 6);
        }
        java.util.ArrayList<l.f> arrayList = dVar.f4977h;
        if (arrayList != null && (size = arrayList.size()) > 1) {
            float f8 = (!dVar.f4983n || dVar.f4985p) ? f7 : dVar.f4979j;
            float f9 = 0.0f;
            float f10 = 0.0f;
            l.f fVar8 = null;
            int i17 = 0;
            while (i17 < size) {
                l.f fVar9 = arrayList.get(i17);
                float f11 = fVar9.f5047p0[i5];
                if (f11 < f9) {
                    if (dVar.f4985p) {
                        l.e[] eVarArr5 = fVar9.C;
                        eVar.e(eVarArr5[i6 + 1].f4996j, eVarArr5[i6].f4996j, 0, 4);
                    } else {
                        f11 = 1.0f;
                        f9 = 0.0f;
                    }
                    arrayList = arrayList;
                    size = size;
                    i17++;
                    size = size;
                    arrayList = arrayList;
                    f9 = 0.0f;
                }
                if (f11 == f9) {
                    l.e[] eVarArr6 = fVar9.C;
                    eVar.e(eVarArr6[i6 + 1].f4996j, eVarArr6[i6].f4996j, 0, 6);
                    arrayList = arrayList;
                    size = size;
                } else {
                    if (fVar8 != null) {
                        l.e[] eVarArr7 = fVar8.C;
                        k.i iVar7 = eVarArr7[i6].f4996j;
                        int i18 = i6 + 1;
                        k.i iVar8 = eVarArr7[i18].f4996j;
                        l.e[] eVarArr8 = fVar9.C;
                        k.i iVar9 = eVarArr8[i6].f4996j;
                        k.i iVar10 = eVarArr8[i18].f4996j;
                        k.b bVarS = eVar.s();
                        bVarS.k(f10, f8, f11, iVar7, iVar8, iVar9, iVar10);
                        eVar.d(bVarS);
                    }
                    f10 = f11;
                    fVar8 = fVar9;
                }
                i17++;
                size = size;
                arrayList = arrayList;
                f9 = 0.0f;
            }
        }
        if (fVar3 != null && (fVar3 == fVar4 || z6)) {
            l.e[] eVarArr9 = fVar.C;
            l.e eVar9 = eVarArr9[i6];
            l.e[] eVarArr10 = fVar2.C;
            int i19 = i6 + 1;
            l.e eVar10 = eVarArr10[i19];
            k.i iVar11 = eVarArr9[i6].f4990d != null ? eVarArr9[i6].f4990d.f4996j : null;
            k.i iVar12 = eVarArr10[i19].f4990d != null ? eVarArr10[i19].f4990d.f4996j : null;
            if (fVar3 == fVar4) {
                l.e[] eVarArr11 = fVar3.C;
                eVar9 = eVarArr11[i6];
                eVar10 = eVarArr11[i19];
            }
            if (iVar11 != null && iVar12 != null) {
                eVar.c(eVar9.f4996j, iVar11, eVar9.d(), i5 == 0 ? fVar7.Z : fVar7.f5017a0, iVar12, eVar10.f4996j, eVar10.d(), 5);
            }
        } else if (!z9 || fVar3 == null) {
            int i20 = 8;
            if (z10 && fVar3 != null) {
                int i21 = dVar.f4979j;
                boolean z11 = i21 > 0 && dVar.f4978i == i21;
                l.f fVar10 = fVar3;
                l.f fVar11 = fVar10;
                while (fVar10 != null) {
                    l.f fVar12 = fVar10.f5051r0[i5];
                    while (fVar12 != null && fVar12.C() == i20) {
                        fVar12 = fVar12.f5051r0[i5];
                    }
                    if (fVar10 == fVar3 || fVar10 == fVar4 || fVar12 == null) {
                        fVar11 = fVar11;
                        i8 = i20;
                    } else {
                        l.f fVar13 = fVar12 == fVar4 ? null : fVar12;
                        l.e eVar11 = fVar10.C[i6];
                        k.i iVar13 = eVar11.f4996j;
                        l.e eVar12 = eVar11.f4990d;
                        if (eVar12 != null) {
                            k.i iVar14 = eVar12.f4996j;
                        }
                        int i22 = i6 + 1;
                        k.i iVar15 = fVar11.C[i22].f4996j;
                        int iD2 = eVar11.d();
                        int iD3 = fVar10.C[i22].d();
                        if (fVar13 != null) {
                            eVar2 = fVar13.C[i6];
                            iVar2 = eVar2.f4996j;
                            l.e eVar13 = eVar2.f4990d;
                            iVar = eVar13 != null ? eVar13.f4996j : null;
                        } else {
                            l.e[] eVarArr12 = fVar10.C;
                            l.e eVar14 = eVarArr12[i22].f4990d;
                            k.i iVar16 = eVar14 != null ? eVar14.f4996j : null;
                            iVar = eVarArr12[i22].f4996j;
                            eVar2 = eVar14;
                            iVar2 = iVar16;
                        }
                        if (eVar2 != null) {
                            iD3 += eVar2.d();
                        }
                        int i23 = iD3;
                        int iD4 = fVar11.C[i22].d() + iD2;
                        int i24 = z11 ? 6 : 4;
                        if (iVar13 == null || iVar15 == null || iVar2 == null || iVar == null) {
                            i8 = 8;
                        } else {
                            i8 = 8;
                            eVar.c(iVar13, iVar15, iD4, 0.5f, iVar2, iVar, i23, i24);
                        }
                        fVar12 = fVar13;
                    }
                    if (fVar10.C() == i8) {
                        fVar10 = fVar11;
                    }
                    i20 = i8;
                    fVar11 = fVar10;
                    fVar10 = fVar12;
                }
                l.e eVar15 = fVar3.C[i6];
                l.e eVar16 = fVar.C[i6].f4990d;
                int i25 = i6 + 1;
                l.e eVar17 = fVar4.C[i25];
                l.e eVar18 = fVar2.C[i25].f4990d;
                if (eVar16 == null) {
                    i7 = 5;
                } else if (fVar3 != fVar4) {
                    i7 = 5;
                    eVar.e(eVar15.f4996j, eVar16.f4996j, eVar15.d(), 5);
                } else {
                    i7 = 5;
                    if (eVar18 != null) {
                        eVar.c(eVar15.f4996j, eVar16.f4996j, eVar15.d(), 0.5f, eVar17.f4996j, eVar18.f4996j, eVar17.d(), 5);
                    }
                }
                if (eVar18 != null && fVar3 != fVar4) {
                    eVar.e(eVar17.f4996j, eVar18.f4996j, -eVar17.d(), i7);
                }
            }
        } else {
            int i26 = dVar.f4979j;
            boolean z12 = i26 > 0 && dVar.f4978i == i26;
            l.f fVar14 = fVar3;
            l.f fVar15 = fVar14;
            while (fVar14 != null) {
                l.f fVar16 = fVar14.f5051r0[i5];
                while (fVar16 != null && fVar16.C() == 8) {
                    fVar16 = fVar16.f5051r0[i5];
                }
                if (fVar16 != null || fVar14 == fVar4) {
                    l.e eVar19 = fVar14.C[i6];
                    k.i iVar17 = eVar19.f4996j;
                    l.e eVar20 = eVar19.f4990d;
                    k.i iVar18 = eVar20 != null ? eVar20.f4996j : null;
                    if (fVar15 != fVar14) {
                        iVar18 = fVar15.C[i6 + 1].f4996j;
                    } else if (fVar14 == fVar3 && fVar15 == fVar14) {
                        l.e[] eVarArr13 = fVar.C;
                        iVar18 = eVarArr13[i6].f4990d != null ? eVarArr13[i6].f4990d.f4996j : null;
                    }
                    int iD5 = eVar19.d();
                    int i27 = i6 + 1;
                    int iD6 = fVar14.C[i27].d();
                    if (fVar16 != null) {
                        eVar3 = fVar16.C[i6];
                        k.i iVar19 = eVar3.f4996j;
                        iVar4 = fVar14.C[i27].f4996j;
                        iVar3 = iVar19;
                    } else {
                        eVar3 = fVar2.C[i27].f4990d;
                        iVar3 = eVar3 != null ? eVar3.f4996j : null;
                        iVar4 = fVar14.C[i27].f4996j;
                    }
                    if (eVar3 != null) {
                        iD6 += eVar3.d();
                    }
                    if (fVar15 != null) {
                        iD5 += fVar15.C[i27].d();
                    }
                    if (iVar17 != null && iVar18 != null && iVar3 != null && iVar4 != null) {
                        if (fVar14 == fVar3) {
                            iD5 = fVar3.C[i6].d();
                        }
                        eVar.c(iVar17, iVar18, iD5, 0.5f, iVar3, iVar4, fVar14 == fVar4 ? fVar4.C[i27].d() : iD6, z12 ? 6 : 4);
                    }
                }
                if (fVar14.C() != 8) {
                    fVar15 = fVar14;
                }
                fVar14 = fVar16;
            }
        }
        if ((z9 || z10) && fVar3 != null) {
            l.e[] eVarArr14 = fVar3.C;
            l.e eVar21 = eVarArr14[i6];
            int i28 = i6 + 1;
            l.e eVar22 = fVar4.C[i28];
            l.e eVar23 = eVar21.f4990d;
            k.i iVar20 = eVar23 != null ? eVar23.f4996j : null;
            l.e eVar24 = eVar22.f4990d;
            if (eVar24 != null) {
                iVar5 = eVar24.f4996j;
            } else {
                r5 = 0;
            }
            if (fVar2 != fVar4) {
                l.e eVar25 = fVar2.C[i28].f4990d;
                if (eVar25 != null) {
                    r5 = iVar5;
                    obj = eVar25.f4996j;
                }
                r5 = iVar5;
                r5 = obj;
            }
            if (fVar3 == fVar4) {
                eVar21 = eVarArr14[i6];
                eVar22 = eVarArr14[i28];
            }
            if (iVar20 == null || r5 == 0) {
                return;
            }
            eVar.c(eVar21.f4996j, iVar20, eVar21.d(), 0.5f, r5, eVar22.f4996j, fVar4.C[i28].d(), 5);
        }
    }
}
