package k;

/* JADX INFO: compiled from: ArrayLinkedVariables.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k.b f4800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final k.c f4801c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4799a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4802d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public k.i f4803e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f4804f = new int[8];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f4805g = new int[8];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float[] f4806h = new float[8];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4807i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4808j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4809k = false;

    public a(k.b bVar, k.c cVar) {
        this.f4800b = bVar;
        this.f4801c = cVar;
    }

    public final void a(k.i iVar, float f5, boolean z4) {
        if (f5 == 0.0f) {
            return;
        }
        int i5 = this.f4807i;
        if (i5 == -1) {
            this.f4807i = 0;
            this.f4806h[0] = f5;
            this.f4804f[0] = iVar.f4839b;
            this.f4805g[0] = -1;
            iVar.f4847j++;
            iVar.a(this.f4800b);
            this.f4799a++;
            if (this.f4809k) {
                return;
            }
            int i6 = this.f4808j + 1;
            this.f4808j = i6;
            int[] iArr = this.f4804f;
            if (i6 >= iArr.length) {
                this.f4809k = true;
                this.f4808j = iArr.length - 1;
                return;
            }
            return;
        }
        int i7 = -1;
        for (int i8 = 0; i5 != -1 && i8 < this.f4799a; i8++) {
            int[] iArr2 = this.f4804f;
            int i9 = iArr2[i5];
            int i10 = iVar.f4839b;
            if (i9 == i10) {
                float[] fArr = this.f4806h;
                fArr[i5] = fArr[i5] + f5;
                if (fArr[i5] == 0.0f) {
                    if (i5 == this.f4807i) {
                        this.f4807i = this.f4805g[i5];
                    } else {
                        int[] iArr3 = this.f4805g;
                        iArr3[i7] = iArr3[i5];
                    }
                    if (z4) {
                        iVar.c(this.f4800b);
                    }
                    if (this.f4809k) {
                        this.f4808j = i5;
                    }
                    iVar.f4847j--;
                    this.f4799a--;
                    return;
                }
                return;
            }
            if (iArr2[i5] < i10) {
                i7 = i5;
            }
            i5 = this.f4805g[i5];
        }
        int length = this.f4808j;
        int i11 = length + 1;
        if (this.f4809k) {
            int[] iArr4 = this.f4804f;
            if (iArr4[length] != -1) {
                length = iArr4.length;
            }
        } else {
            length = i11;
        }
        int[] iArr5 = this.f4804f;
        if (length >= iArr5.length && this.f4799a < iArr5.length) {
            int i12 = 0;
            while (true) {
                int[] iArr6 = this.f4804f;
                if (i12 >= iArr6.length) {
                    break;
                }
                if (iArr6[i12] == -1) {
                    length = i12;
                    break;
                }
                i12++;
            }
        }
        int[] iArr7 = this.f4804f;
        if (length >= iArr7.length) {
            length = iArr7.length;
            int i13 = this.f4802d * 2;
            this.f4802d = i13;
            this.f4809k = false;
            this.f4808j = length - 1;
            this.f4806h = java.util.Arrays.copyOf(this.f4806h, i13);
            this.f4804f = java.util.Arrays.copyOf(this.f4804f, this.f4802d);
            this.f4805g = java.util.Arrays.copyOf(this.f4805g, this.f4802d);
        }
        this.f4804f[length] = iVar.f4839b;
        this.f4806h[length] = f5;
        if (i7 != -1) {
            int[] iArr8 = this.f4805g;
            iArr8[length] = iArr8[i7];
            iArr8[i7] = length;
        } else {
            this.f4805g[length] = this.f4807i;
            this.f4807i = length;
        }
        iVar.f4847j++;
        iVar.a(this.f4800b);
        this.f4799a++;
        if (!this.f4809k) {
            this.f4808j++;
        }
        int i14 = this.f4808j;
        int[] iArr9 = this.f4804f;
        if (i14 >= iArr9.length) {
            this.f4809k = true;
            this.f4808j = iArr9.length - 1;
        }
    }

    public k.i b(k.e eVar) {
        int i5 = this.f4807i;
        k.i iVar = null;
        boolean z4 = false;
        boolean z5 = false;
        float f5 = 0.0f;
        f5 = 0.0f;
        k.i iVar2 = null;
        for (int i6 = 0; i5 != -1 && i6 < this.f4799a; i6++) {
            float[] fArr = this.f4806h;
            f5 = fArr[i5];
            k.i iVar3 = this.f4801c.f4817c[this.f4804f[i5]];
            if (f5 < 0.0f) {
                if (f5 > -0.001f) {
                    fArr[i5] = 0.0f;
                    iVar3.c(this.f4800b);
                    f5 = 0.0f;
                }
            } else if (f5 < 0.001f) {
                fArr[i5] = 0.0f;
                iVar3.c(this.f4800b);
                f5 = 0.0f;
            }
            if (f5 != 0.0f) {
                if (iVar3.f4844g == k.i.a.UNRESTRICTED) {
                    if (iVar2 == null || f5 > f5) {
                        boolean zK = k(iVar3, eVar);
                        z4 = zK;
                        iVar2 = iVar3;
                    } else if (!z4 && k(iVar3, eVar)) {
                        z4 = true;
                        iVar2 = iVar3;
                    }
                } else if (iVar2 == null && f5 < 0.0f) {
                    if (iVar == null || f5 > f5) {
                        boolean zK2 = k(iVar3, eVar);
                        z5 = zK2;
                        iVar = iVar3;
                    } else if (!z5 && k(iVar3, eVar)) {
                        z5 = true;
                        iVar = iVar3;
                    }
                }
            }
            i5 = this.f4805g[i5];
        }
        return iVar2 != null ? iVar2 : iVar;
    }

    public final void c() {
        int i5 = this.f4807i;
        for (int i6 = 0; i5 != -1 && i6 < this.f4799a; i6++) {
            k.i iVar = this.f4801c.f4817c[this.f4804f[i5]];
            if (iVar != null) {
                iVar.c(this.f4800b);
            }
            i5 = this.f4805g[i5];
        }
        this.f4807i = -1;
        this.f4808j = -1;
        this.f4809k = false;
        this.f4799a = 0;
    }

    public final boolean d(k.i iVar) {
        int i5 = this.f4807i;
        if (i5 == -1) {
            return false;
        }
        for (int i6 = 0; i5 != -1 && i6 < this.f4799a; i6++) {
            if (this.f4804f[i5] == iVar.f4839b) {
                return true;
            }
            i5 = this.f4805g[i5];
        }
        return false;
    }

    public void e(float f5) {
        int i5 = this.f4807i;
        for (int i6 = 0; i5 != -1 && i6 < this.f4799a; i6++) {
            float[] fArr = this.f4806h;
            fArr[i5] = fArr[i5] / f5;
            i5 = this.f4805g[i5];
        }
    }

    public final float f(k.i iVar) {
        int i5 = this.f4807i;
        for (int i6 = 0; i5 != -1 && i6 < this.f4799a; i6++) {
            if (this.f4804f[i5] == iVar.f4839b) {
                return this.f4806h[i5];
            }
            i5 = this.f4805g[i5];
        }
        return 0.0f;
    }

    public k.i g(boolean[] zArr, k.i iVar) {
        k.i.a aVar;
        int i5 = this.f4807i;
        k.i iVar2 = null;
        float f5 = 0.0f;
        for (int i6 = 0; i5 != -1 && i6 < this.f4799a; i6++) {
            float[] fArr = this.f4806h;
            if (fArr[i5] < 0.0f) {
                k.i iVar3 = this.f4801c.f4817c[this.f4804f[i5]];
                if ((zArr == null || !zArr[iVar3.f4839b]) && iVar3 != iVar && ((aVar = iVar3.f4844g) == k.i.a.SLACK || aVar == k.i.a.ERROR)) {
                    float f6 = fArr[i5];
                    if (f6 < f5) {
                        f5 = f6;
                        iVar2 = iVar3;
                    }
                }
            }
            i5 = this.f4805g[i5];
        }
        return iVar2;
    }

    public final k.i h(int i5) {
        int i6 = this.f4807i;
        for (int i7 = 0; i6 != -1 && i7 < this.f4799a; i7++) {
            if (i7 == i5) {
                return this.f4801c.f4817c[this.f4804f[i6]];
            }
            i6 = this.f4805g[i6];
        }
        return null;
    }

    public final float i(int i5) {
        int i6 = this.f4807i;
        for (int i7 = 0; i6 != -1 && i7 < this.f4799a; i7++) {
            if (i7 == i5) {
                return this.f4806h[i6];
            }
            i6 = this.f4805g[i6];
        }
        return 0.0f;
    }

    public void j() {
        int i5 = this.f4807i;
        for (int i6 = 0; i5 != -1 && i6 < this.f4799a; i6++) {
            float[] fArr = this.f4806h;
            fArr[i5] = fArr[i5] * (-1.0f);
            i5 = this.f4805g[i5];
        }
    }

    public final boolean k(k.i iVar, k.e eVar) {
        return iVar.f4847j <= 1;
    }

    public final void l(k.i iVar, float f5) {
        if (f5 == 0.0f) {
            m(iVar, true);
            return;
        }
        int i5 = this.f4807i;
        if (i5 == -1) {
            this.f4807i = 0;
            this.f4806h[0] = f5;
            this.f4804f[0] = iVar.f4839b;
            this.f4805g[0] = -1;
            iVar.f4847j++;
            iVar.a(this.f4800b);
            this.f4799a++;
            if (this.f4809k) {
                return;
            }
            int i6 = this.f4808j + 1;
            this.f4808j = i6;
            int[] iArr = this.f4804f;
            if (i6 >= iArr.length) {
                this.f4809k = true;
                this.f4808j = iArr.length - 1;
                return;
            }
            return;
        }
        int i7 = -1;
        for (int i8 = 0; i5 != -1 && i8 < this.f4799a; i8++) {
            int[] iArr2 = this.f4804f;
            int i9 = iArr2[i5];
            int i10 = iVar.f4839b;
            if (i9 == i10) {
                this.f4806h[i5] = f5;
                return;
            }
            if (iArr2[i5] < i10) {
                i7 = i5;
            }
            i5 = this.f4805g[i5];
        }
        int length = this.f4808j;
        int i11 = length + 1;
        if (this.f4809k) {
            int[] iArr3 = this.f4804f;
            if (iArr3[length] != -1) {
                length = iArr3.length;
            }
        } else {
            length = i11;
        }
        int[] iArr4 = this.f4804f;
        if (length >= iArr4.length && this.f4799a < iArr4.length) {
            int i12 = 0;
            while (true) {
                int[] iArr5 = this.f4804f;
                if (i12 >= iArr5.length) {
                    break;
                }
                if (iArr5[i12] == -1) {
                    length = i12;
                    break;
                }
                i12++;
            }
        }
        int[] iArr6 = this.f4804f;
        if (length >= iArr6.length) {
            length = iArr6.length;
            int i13 = this.f4802d * 2;
            this.f4802d = i13;
            this.f4809k = false;
            this.f4808j = length - 1;
            this.f4806h = java.util.Arrays.copyOf(this.f4806h, i13);
            this.f4804f = java.util.Arrays.copyOf(this.f4804f, this.f4802d);
            this.f4805g = java.util.Arrays.copyOf(this.f4805g, this.f4802d);
        }
        this.f4804f[length] = iVar.f4839b;
        this.f4806h[length] = f5;
        if (i7 != -1) {
            int[] iArr7 = this.f4805g;
            iArr7[length] = iArr7[i7];
            iArr7[i7] = length;
        } else {
            this.f4805g[length] = this.f4807i;
            this.f4807i = length;
        }
        iVar.f4847j++;
        iVar.a(this.f4800b);
        int i14 = this.f4799a + 1;
        this.f4799a = i14;
        if (!this.f4809k) {
            this.f4808j++;
        }
        int[] iArr8 = this.f4804f;
        if (i14 >= iArr8.length) {
            this.f4809k = true;
        }
        if (this.f4808j >= iArr8.length) {
            this.f4809k = true;
            this.f4808j = iArr8.length - 1;
        }
    }

    public final float m(k.i iVar, boolean z4) {
        if (this.f4803e == iVar) {
            this.f4803e = null;
        }
        int i5 = this.f4807i;
        if (i5 == -1) {
            return 0.0f;
        }
        int i6 = 0;
        int i7 = -1;
        while (i5 != -1 && i6 < this.f4799a) {
            if (this.f4804f[i5] == iVar.f4839b) {
                if (i5 == this.f4807i) {
                    this.f4807i = this.f4805g[i5];
                } else {
                    int[] iArr = this.f4805g;
                    iArr[i7] = iArr[i5];
                }
                if (z4) {
                    iVar.c(this.f4800b);
                }
                iVar.f4847j--;
                this.f4799a--;
                this.f4804f[i5] = -1;
                if (this.f4809k) {
                    this.f4808j = i5;
                }
                return this.f4806h[i5];
            }
            i6++;
            i7 = i5;
            i5 = this.f4805g[i5];
        }
        return 0.0f;
    }

    public final void n(k.b bVar, k.b bVar2, boolean z4) {
        int i5 = this.f4807i;
        while (true) {
            for (int i6 = 0; i5 != -1 && i6 < this.f4799a; i6++) {
                int i7 = this.f4804f[i5];
                k.i iVar = bVar2.f4810a;
                if (i7 == iVar.f4839b) {
                    float f5 = this.f4806h[i5];
                    m(iVar, z4);
                    k.a aVar = bVar2.f4813d;
                    int i8 = aVar.f4807i;
                    for (int i9 = 0; i8 != -1 && i9 < aVar.f4799a; i9++) {
                        a(this.f4801c.f4817c[aVar.f4804f[i8]], aVar.f4806h[i8] * f5, z4);
                        i8 = aVar.f4805g[i8];
                    }
                    bVar.f4811b += bVar2.f4811b * f5;
                    if (z4) {
                        bVar2.f4810a.c(bVar);
                    }
                    i5 = this.f4807i;
                } else {
                    i5 = this.f4805g[i5];
                }
            }
            return;
        }
    }

    public void o(k.b bVar, k.b[] bVarArr) {
        int i5 = this.f4807i;
        while (true) {
            for (int i6 = 0; i5 != -1 && i6 < this.f4799a; i6++) {
                k.i iVar = this.f4801c.f4817c[this.f4804f[i5]];
                if (iVar.f4840c != -1) {
                    float f5 = this.f4806h[i5];
                    m(iVar, true);
                    k.b bVar2 = bVarArr[iVar.f4840c];
                    if (!bVar2.f4814e) {
                        k.a aVar = bVar2.f4813d;
                        int i7 = aVar.f4807i;
                        for (int i8 = 0; i7 != -1 && i8 < aVar.f4799a; i8++) {
                            a(this.f4801c.f4817c[aVar.f4804f[i7]], aVar.f4806h[i7] * f5, true);
                            i7 = aVar.f4805g[i7];
                        }
                    }
                    bVar.f4811b += bVar2.f4811b * f5;
                    bVar2.f4810a.c(bVar);
                    i5 = this.f4807i;
                } else {
                    i5 = this.f4805g[i5];
                }
            }
            return;
        }
    }

    public java.lang.String toString() {
        int i5 = this.f4807i;
        java.lang.String str = "";
        for (int i6 = 0; i5 != -1 && i6 < this.f4799a; i6++) {
            str = ((str + " -> ") + this.f4806h[i5] + " : ") + this.f4801c.f4817c[this.f4804f[i5]];
            i5 = this.f4805g[i5];
        }
        return str;
    }
}
