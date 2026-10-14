package androidx.core.widget;

/* JADX INFO: compiled from: AutoScrollHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a implements android.view.View.OnTouchListener {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f1416w = android.view.ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.view.View f1419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.lang.Runnable f1420d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1424h;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1428q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1429r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1430s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1431t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1432u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f1433v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.core.widget.a.C0010a f1417a = new androidx.core.widget.a.C0010a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.view.animation.Interpolator f1418b = new android.view.animation.AccelerateInterpolator();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f1421e = {0.0f, 0.0f};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float[] f1422f = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float[] f1425i = {0.0f, 0.0f};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float[] f1426o = {0.0f, 0.0f};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float[] f1427p = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: androidx.core.widget.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoScrollHelper.java */
    public static class C0010a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1434a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1435b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f1436c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f1437d;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f1443j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f1444k;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f1438e = Long.MIN_VALUE;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f1442i = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f1439f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1440g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1441h = 0;

        public void a() {
            if (this.f1439f == 0) {
                throw new java.lang.RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = android.view.animation.AnimationUtils.currentAnimationTimeMillis();
            float fG = g(e(jCurrentAnimationTimeMillis));
            long j5 = jCurrentAnimationTimeMillis - this.f1439f;
            this.f1439f = jCurrentAnimationTimeMillis;
            float f5 = j5 * fG;
            this.f1440g = (int) (this.f1436c * f5);
            this.f1441h = (int) (f5 * this.f1437d);
        }

        public int b() {
            return this.f1440g;
        }

        public int c() {
            return this.f1441h;
        }

        public int d() {
            float f5 = this.f1436c;
            return (int) (f5 / java.lang.Math.abs(f5));
        }

        public final float e(long j5) {
            long j6 = this.f1438e;
            if (j5 < j6) {
                return 0.0f;
            }
            long j7 = this.f1442i;
            if (j7 < 0 || j5 < j7) {
                return androidx.core.widget.a.e((j5 - j6) / this.f1434a, 0.0f, 1.0f) * 0.5f;
            }
            float f5 = this.f1443j;
            return (1.0f - f5) + (f5 * androidx.core.widget.a.e((j5 - j7) / this.f1444k, 0.0f, 1.0f));
        }

        public int f() {
            float f5 = this.f1437d;
            return (int) (f5 / java.lang.Math.abs(f5));
        }

        public final float g(float f5) {
            return ((-4.0f) * f5 * f5) + (f5 * 4.0f);
        }

        public boolean h() {
            return this.f1442i > 0 && android.view.animation.AnimationUtils.currentAnimationTimeMillis() > this.f1442i + ((long) this.f1444k);
        }

        public void i() {
            long jCurrentAnimationTimeMillis = android.view.animation.AnimationUtils.currentAnimationTimeMillis();
            this.f1444k = androidx.core.widget.a.f((int) (jCurrentAnimationTimeMillis - this.f1438e), 0, this.f1435b);
            this.f1443j = e(jCurrentAnimationTimeMillis);
            this.f1442i = jCurrentAnimationTimeMillis;
        }

        public void j(int i5) {
            this.f1435b = i5;
        }

        public void k(int i5) {
            this.f1434a = i5;
        }

        public void l(float f5, float f6) {
            this.f1436c = f5;
            this.f1437d = f6;
        }

        public void m() {
            long jCurrentAnimationTimeMillis = android.view.animation.AnimationUtils.currentAnimationTimeMillis();
            this.f1438e = jCurrentAnimationTimeMillis;
            this.f1442i = -1L;
            this.f1439f = jCurrentAnimationTimeMillis;
            this.f1443j = 0.5f;
            this.f1440g = 0;
            this.f1441h = 0;
        }
    }

    /* JADX INFO: compiled from: AutoScrollHelper.java */
    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.core.widget.a aVar = androidx.core.widget.a.this;
            if (aVar.f1431t) {
                if (aVar.f1429r) {
                    aVar.f1429r = false;
                    aVar.f1417a.m();
                }
                androidx.core.widget.a.C0010a c0010a = androidx.core.widget.a.this.f1417a;
                if (c0010a.h() || !androidx.core.widget.a.this.u()) {
                    androidx.core.widget.a.this.f1431t = false;
                    return;
                }
                androidx.core.widget.a aVar2 = androidx.core.widget.a.this;
                if (aVar2.f1430s) {
                    aVar2.f1430s = false;
                    aVar2.c();
                }
                c0010a.a();
                androidx.core.widget.a.this.j(c0010a.b(), c0010a.c());
                w.q.L(androidx.core.widget.a.this.f1419c, this);
            }
        }
    }

    public a(android.view.View view) {
        this.f1419c = view;
        float f5 = android.content.res.Resources.getSystem().getDisplayMetrics().density;
        float f6 = (int) ((1575.0f * f5) + 0.5f);
        o(f6, f6);
        float f7 = (int) ((f5 * 315.0f) + 0.5f);
        p(f7, f7);
        l(1);
        n(Float.MAX_VALUE, Float.MAX_VALUE);
        s(0.2f, 0.2f);
        t(1.0f, 1.0f);
        k(f1416w);
        r(500);
        q(500);
    }

    public static float e(float f5, float f6, float f7) {
        if (f5 > f7) {
            return f7;
        }
        return f5 < f6 ? f6 : f5;
    }

    public static int f(int i5, int i6, int i7) {
        if (i5 > i7) {
            return i7;
        }
        return i5 < i6 ? i6 : i5;
    }

    public abstract boolean a(int i5);

    public abstract boolean b(int i5);

    public void c() {
        long jUptimeMillis = android.os.SystemClock.uptimeMillis();
        android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f1419c.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public final float d(int i5, float f5, float f6, float f7) {
        float fH = h(this.f1421e[i5], f6, this.f1422f[i5], f5);
        if (fH == 0.0f) {
            return 0.0f;
        }
        float f8 = this.f1425i[i5];
        float f9 = this.f1426o[i5];
        float f10 = this.f1427p[i5];
        float f11 = f8 * f7;
        return fH > 0.0f ? e(fH * f11, f9, f10) : -e((-fH) * f11, f9, f10);
    }

    public final float g(float f5, float f6) {
        if (f6 == 0.0f) {
            return 0.0f;
        }
        int i5 = this.f1423g;
        if (i5 == 0 || i5 == 1) {
            if (f5 < f6) {
                if (f5 >= 0.0f) {
                    return 1.0f - (f5 / f6);
                }
                if (this.f1431t && i5 == 1) {
                    return 1.0f;
                }
            }
        } else if (i5 == 2 && f5 < 0.0f) {
            return f5 / (-f6);
        }
        return 0.0f;
    }

    public final float h(float f5, float f6, float f7, float f8) {
        float interpolation;
        float fE = e(f5 * f6, 0.0f, f7);
        float fG = g(f6 - f8, fE) - g(f8, fE);
        if (fG < 0.0f) {
            interpolation = -this.f1418b.getInterpolation(-fG);
        } else {
            if (fG <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.f1418b.getInterpolation(fG);
        }
        return e(interpolation, -1.0f, 1.0f);
    }

    public final void i() {
        if (this.f1429r) {
            this.f1431t = false;
        } else {
            this.f1417a.i();
        }
    }

    public abstract void j(int i5, int i6);

    public androidx.core.widget.a k(int i5) {
        this.f1424h = i5;
        return this;
    }

    public androidx.core.widget.a l(int i5) {
        this.f1423g = i5;
        return this;
    }

    public androidx.core.widget.a m(boolean z4) {
        if (this.f1432u && !z4) {
            i();
        }
        this.f1432u = z4;
        return this;
    }

    public androidx.core.widget.a n(float f5, float f6) {
        float[] fArr = this.f1422f;
        fArr[0] = f5;
        fArr[1] = f6;
        return this;
    }

    public androidx.core.widget.a o(float f5, float f6) {
        float[] fArr = this.f1427p;
        fArr[0] = f5 / 1000.0f;
        fArr[1] = f6 / 1000.0f;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
        if (!this.f1432u) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                i();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    i();
                }
            }
            return this.f1433v && this.f1431t;
        }
        this.f1430s = true;
        this.f1428q = false;
        this.f1417a.l(d(0, motionEvent.getX(), view.getWidth(), this.f1419c.getWidth()), d(1, motionEvent.getY(), view.getHeight(), this.f1419c.getHeight()));
        if (!this.f1431t && u()) {
            v();
        }
        if (this.f1433v) {
            return false;
        }
    }

    public androidx.core.widget.a p(float f5, float f6) {
        float[] fArr = this.f1426o;
        fArr[0] = f5 / 1000.0f;
        fArr[1] = f6 / 1000.0f;
        return this;
    }

    public androidx.core.widget.a q(int i5) {
        this.f1417a.j(i5);
        return this;
    }

    public androidx.core.widget.a r(int i5) {
        this.f1417a.k(i5);
        return this;
    }

    public androidx.core.widget.a s(float f5, float f6) {
        float[] fArr = this.f1421e;
        fArr[0] = f5;
        fArr[1] = f6;
        return this;
    }

    public androidx.core.widget.a t(float f5, float f6) {
        float[] fArr = this.f1425i;
        fArr[0] = f5 / 1000.0f;
        fArr[1] = f6 / 1000.0f;
        return this;
    }

    public boolean u() {
        androidx.core.widget.a.C0010a c0010a = this.f1417a;
        int iF = c0010a.f();
        int iD = c0010a.d();
        return (iF != 0 && b(iF)) || (iD != 0 && a(iD));
    }

    public final void v() {
        int i5;
        if (this.f1420d == null) {
            this.f1420d = new androidx.core.widget.a.b();
        }
        this.f1431t = true;
        this.f1429r = true;
        if (this.f1428q || (i5 = this.f1424h) <= 0) {
            this.f1420d.run();
        } else {
            w.q.M(this.f1419c, this.f1420d, i5);
        }
        this.f1428q = true;
    }
}
