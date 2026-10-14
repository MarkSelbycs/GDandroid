package k;

/* JADX INFO: compiled from: ArrayRow.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b implements k.e.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final k.a f4813d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k.i f4810a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f4811b = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4812c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4814e = false;

    public b(k.c cVar) {
        this.f4813d = new k.a(this, cVar);
    }

    @Override // k.e.a
    public k.i a(k.e eVar, boolean[] zArr) {
        return this.f4813d.g(zArr, null);
    }

    @Override // k.e.a
    public void b(k.e.a aVar) {
        if (!(aVar instanceof k.b)) {
            return;
        }
        k.b bVar = (k.b) aVar;
        this.f4810a = null;
        this.f4813d.c();
        int i5 = 0;
        while (true) {
            k.a aVar2 = bVar.f4813d;
            if (i5 >= aVar2.f4799a) {
                return;
            }
            this.f4813d.a(aVar2.h(i5), bVar.f4813d.i(i5), true);
            i5++;
        }
    }

    @Override // k.e.a
    public void c(k.i iVar) {
        int i5 = iVar.f4841d;
        float f5 = 1.0f;
        if (i5 != 1) {
            if (i5 == 2) {
                f5 = 1000.0f;
            } else if (i5 == 3) {
                f5 = 1000000.0f;
            } else if (i5 == 4) {
                f5 = 1.0E9f;
            } else if (i5 == 5) {
                f5 = 1.0E12f;
            }
        }
        this.f4813d.l(iVar, f5);
    }

    @Override // k.e.a
    public void clear() {
        this.f4813d.c();
        this.f4810a = null;
        this.f4811b = 0.0f;
    }

    public k.b d(k.e eVar, int i5) {
        this.f4813d.l(eVar.p(i5, "ep"), 1.0f);
        this.f4813d.l(eVar.p(i5, "em"), -1.0f);
        return this;
    }

    public k.b e(k.i iVar, int i5) {
        this.f4813d.l(iVar, i5);
        return this;
    }

    public boolean f(k.e eVar) {
        boolean z4;
        k.i iVarB = this.f4813d.b(eVar);
        if (iVarB == null) {
            z4 = true;
        } else {
            v(iVarB);
            z4 = false;
        }
        if (this.f4813d.f4799a == 0) {
            this.f4814e = true;
        }
        return z4;
    }

    public k.b g(k.i iVar, k.i iVar2, int i5, float f5, k.i iVar3, k.i iVar4, int i6) {
        if (iVar2 == iVar3) {
            this.f4813d.l(iVar, 1.0f);
            this.f4813d.l(iVar4, 1.0f);
            this.f4813d.l(iVar2, -2.0f);
            return this;
        }
        if (f5 == 0.5f) {
            this.f4813d.l(iVar, 1.0f);
            this.f4813d.l(iVar2, -1.0f);
            this.f4813d.l(iVar3, -1.0f);
            this.f4813d.l(iVar4, 1.0f);
            if (i5 > 0 || i6 > 0) {
                this.f4811b = (-i5) + i6;
            }
        } else if (f5 <= 0.0f) {
            this.f4813d.l(iVar, -1.0f);
            this.f4813d.l(iVar2, 1.0f);
            this.f4811b = i5;
        } else if (f5 >= 1.0f) {
            this.f4813d.l(iVar3, -1.0f);
            this.f4813d.l(iVar4, 1.0f);
            this.f4811b = i6;
        } else {
            float f6 = 1.0f - f5;
            this.f4813d.l(iVar, f6 * 1.0f);
            this.f4813d.l(iVar2, f6 * (-1.0f));
            this.f4813d.l(iVar3, (-1.0f) * f5);
            this.f4813d.l(iVar4, 1.0f * f5);
            if (i5 > 0 || i6 > 0) {
                this.f4811b = ((-i5) * f6) + (i6 * f5);
            }
        }
        return this;
    }

    @Override // k.e.a
    public k.i getKey() {
        return this.f4810a;
    }

    public k.b h(k.i iVar, int i5) {
        this.f4810a = iVar;
        float f5 = i5;
        iVar.f4842e = f5;
        this.f4811b = f5;
        this.f4814e = true;
        return this;
    }

    public k.b i(k.i iVar, k.i iVar2, k.i iVar3, float f5) {
        this.f4813d.l(iVar, -1.0f);
        this.f4813d.l(iVar2, 1.0f - f5);
        this.f4813d.l(iVar3, f5);
        return this;
    }

    public k.b j(k.i iVar, k.i iVar2, k.i iVar3, k.i iVar4, float f5) {
        this.f4813d.l(iVar, -1.0f);
        this.f4813d.l(iVar2, 1.0f);
        this.f4813d.l(iVar3, f5);
        this.f4813d.l(iVar4, -f5);
        return this;
    }

    public k.b k(float f5, float f6, float f7, k.i iVar, k.i iVar2, k.i iVar3, k.i iVar4) {
        this.f4811b = 0.0f;
        if (f6 == 0.0f || f5 == f7) {
            this.f4813d.l(iVar, 1.0f);
            this.f4813d.l(iVar2, -1.0f);
            this.f4813d.l(iVar4, 1.0f);
            this.f4813d.l(iVar3, -1.0f);
        } else if (f5 == 0.0f) {
            this.f4813d.l(iVar, 1.0f);
            this.f4813d.l(iVar2, -1.0f);
        } else if (f7 == 0.0f) {
            this.f4813d.l(iVar3, 1.0f);
            this.f4813d.l(iVar4, -1.0f);
        } else {
            float f8 = (f5 / f6) / (f7 / f6);
            this.f4813d.l(iVar, 1.0f);
            this.f4813d.l(iVar2, -1.0f);
            this.f4813d.l(iVar4, f8);
            this.f4813d.l(iVar3, -f8);
        }
        return this;
    }

    public k.b l(k.i iVar, int i5) {
        if (i5 < 0) {
            this.f4811b = i5 * (-1);
            this.f4813d.l(iVar, 1.0f);
        } else {
            this.f4811b = i5;
            this.f4813d.l(iVar, -1.0f);
        }
        return this;
    }

    public k.b m(k.i iVar, k.i iVar2, int i5) {
        boolean z4 = false;
        if (i5 != 0) {
            if (i5 < 0) {
                i5 *= -1;
                z4 = true;
            }
            this.f4811b = i5;
        }
        if (z4) {
            this.f4813d.l(iVar, 1.0f);
            this.f4813d.l(iVar2, -1.0f);
        } else {
            this.f4813d.l(iVar, -1.0f);
            this.f4813d.l(iVar2, 1.0f);
        }
        return this;
    }

    public k.b n(k.i iVar, k.i iVar2, k.i iVar3, int i5) {
        boolean z4 = false;
        if (i5 != 0) {
            if (i5 < 0) {
                i5 *= -1;
                z4 = true;
            }
            this.f4811b = i5;
        }
        if (z4) {
            this.f4813d.l(iVar, 1.0f);
            this.f4813d.l(iVar2, -1.0f);
            this.f4813d.l(iVar3, -1.0f);
        } else {
            this.f4813d.l(iVar, -1.0f);
            this.f4813d.l(iVar2, 1.0f);
            this.f4813d.l(iVar3, 1.0f);
        }
        return this;
    }

    public k.b o(k.i iVar, k.i iVar2, k.i iVar3, int i5) {
        boolean z4 = false;
        if (i5 != 0) {
            if (i5 < 0) {
                i5 *= -1;
                z4 = true;
            }
            this.f4811b = i5;
        }
        if (z4) {
            this.f4813d.l(iVar, 1.0f);
            this.f4813d.l(iVar2, -1.0f);
            this.f4813d.l(iVar3, 1.0f);
        } else {
            this.f4813d.l(iVar, -1.0f);
            this.f4813d.l(iVar2, 1.0f);
            this.f4813d.l(iVar3, -1.0f);
        }
        return this;
    }

    public k.b p(k.i iVar, k.i iVar2, k.i iVar3, k.i iVar4, float f5) {
        this.f4813d.l(iVar3, 0.5f);
        this.f4813d.l(iVar4, 0.5f);
        this.f4813d.l(iVar, -0.5f);
        this.f4813d.l(iVar2, -0.5f);
        this.f4811b = -f5;
        return this;
    }

    public void q() {
        float f5 = this.f4811b;
        if (f5 < 0.0f) {
            this.f4811b = f5 * (-1.0f);
            this.f4813d.j();
        }
    }

    public boolean r() {
        k.i iVar = this.f4810a;
        return iVar != null && (iVar.f4844g == k.i.a.UNRESTRICTED || this.f4811b >= 0.0f);
    }

    public boolean s(k.i iVar) {
        return this.f4813d.d(iVar);
    }

    public boolean t() {
        return this.f4810a == null && this.f4811b == 0.0f && this.f4813d.f4799a == 0;
    }

    public java.lang.String toString() {
        return x();
    }

    public k.i u(k.i iVar) {
        return this.f4813d.g(null, iVar);
    }

    public void v(k.i iVar) {
        k.i iVar2 = this.f4810a;
        if (iVar2 != null) {
            this.f4813d.l(iVar2, -1.0f);
            this.f4810a = null;
        }
        float fM = this.f4813d.m(iVar, true) * (-1.0f);
        this.f4810a = iVar;
        if (fM == 1.0f) {
            return;
        }
        this.f4811b /= fM;
        this.f4813d.e(fM);
    }

    public void w() {
        this.f4810a = null;
        this.f4813d.c();
        this.f4811b = 0.0f;
        this.f4814e = false;
    }

    public java.lang.String x() {
        boolean z4;
        java.lang.String str = (this.f4810a == null ? "" + com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS : "" + this.f4810a) + " = ";
        if (this.f4811b != 0.0f) {
            str = str + this.f4811b;
            z4 = true;
        } else {
            z4 = false;
        }
        int i5 = this.f4813d.f4799a;
        for (int i6 = 0; i6 < i5; i6++) {
            k.i iVarH = this.f4813d.h(i6);
            if (iVarH != null) {
                float fI = this.f4813d.i(i6);
                if (fI != 0.0f) {
                    java.lang.String string = iVarH.toString();
                    if (z4) {
                        if (fI > 0.0f) {
                            str = str + " + ";
                        } else {
                            str = str + " - ";
                            fI *= -1.0f;
                        }
                    } else if (fI < 0.0f) {
                        str = str + "- ";
                        fI *= -1.0f;
                    }
                    str = fI == 1.0f ? str + string : str + fI + " " + string;
                    z4 = true;
                }
            }
        }
        if (z4) {
            return str;
        }
        return str + "0.0";
    }
}
