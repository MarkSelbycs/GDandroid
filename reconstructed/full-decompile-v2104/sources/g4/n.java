package g4;

/* JADX INFO: compiled from: Settings.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f4526d = new int[10];

    public void a() {
        this.f4525c = 0;
        this.f4524b = 0;
        this.f4523a = 0;
        java.util.Arrays.fill(this.f4526d, 0);
    }

    public int b(int i5) {
        int i6 = h(i5) ? 2 : 0;
        return k(i5) ? i6 | 1 : i6;
    }

    public int c(int i5) {
        return this.f4526d[i5];
    }

    public int d() {
        if ((this.f4523a & 2) != 0) {
            return this.f4526d[1];
        }
        return -1;
    }

    public int e(int i5) {
        return (this.f4523a & com.alibaba.fastjson.asm.Opcodes.IOR) != 0 ? this.f4526d[7] : i5;
    }

    public int f(int i5) {
        return (this.f4523a & 16) != 0 ? this.f4526d[4] : i5;
    }

    public int g(int i5) {
        return (this.f4523a & 32) != 0 ? this.f4526d[5] : i5;
    }

    public boolean h(int i5) {
        return ((1 << i5) & this.f4525c) != 0;
    }

    public boolean i(int i5) {
        return ((1 << i5) & this.f4523a) != 0;
    }

    public void j(g4.n nVar) {
        for (int i5 = 0; i5 < 10; i5++) {
            if (nVar.i(i5)) {
                l(i5, nVar.b(i5), nVar.c(i5));
            }
        }
    }

    public boolean k(int i5) {
        return ((1 << i5) & this.f4524b) != 0;
    }

    public g4.n l(int i5, int i6, int i7) {
        int[] iArr = this.f4526d;
        if (i5 >= iArr.length) {
            return this;
        }
        int i8 = 1 << i5;
        this.f4523a |= i8;
        if ((i6 & 1) != 0) {
            this.f4524b |= i8;
        } else {
            this.f4524b &= ~i8;
        }
        if ((i6 & 2) != 0) {
            this.f4525c |= i8;
        } else {
            this.f4525c &= ~i8;
        }
        iArr[i5] = i7;
        return this;
    }

    public int m() {
        return java.lang.Integer.bitCount(this.f4523a);
    }
}
