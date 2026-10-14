package j0;

/* JADX INFO: compiled from: CircularProgressDrawable.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends android.graphics.drawable.Drawable implements android.graphics.drawable.Animatable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final android.view.animation.Interpolator f4751g = new android.view.animation.LinearInterpolator();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final android.view.animation.Interpolator f4752h = new a0.a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f4753i = {-16777216};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j0.b.c f4754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f4755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.content.res.Resources f4756c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.animation.Animator f4757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f4758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4759f;

    /* JADX INFO: compiled from: CircularProgressDrawable.java */
    public class a implements android.animation.ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ j0.b.c f4760a;

        public a(j0.b.c cVar) {
            this.f4760a = cVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
            float fFloatValue = ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
            j0.b.this.n(fFloatValue, this.f4760a);
            j0.b.this.b(fFloatValue, this.f4760a, false);
            j0.b.this.invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: j0.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CircularProgressDrawable.java */
    public class C0065b implements android.animation.Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ j0.b.c f4762a;

        public C0065b(j0.b.c cVar) {
            this.f4762a = cVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(android.animation.Animator animator) {
            j0.b.this.b(1.0f, this.f4762a, true);
            this.f4762a.A();
            this.f4762a.l();
            j0.b bVar = j0.b.this;
            if (!bVar.f4759f) {
                bVar.f4758e += 1.0f;
                return;
            }
            bVar.f4759f = false;
            animator.cancel();
            animator.setDuration(1332L);
            animator.start();
            this.f4762a.x(false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            j0.b.this.f4758e = 0.0f;
        }
    }

    /* JADX INFO: compiled from: CircularProgressDrawable.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.graphics.RectF f4764a = new android.graphics.RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final android.graphics.Paint f4765b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final android.graphics.Paint f4766c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final android.graphics.Paint f4767d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f4768e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f4769f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f4770g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f4771h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int[] f4772i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f4773j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f4774k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public float f4775l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public float f4776m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f4777n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public android.graphics.Path f4778o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public float f4779p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public float f4780q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f4781r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f4782s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f4783t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f4784u;

        public c() {
            android.graphics.Paint paint = new android.graphics.Paint();
            this.f4765b = paint;
            android.graphics.Paint paint2 = new android.graphics.Paint();
            this.f4766c = paint2;
            android.graphics.Paint paint3 = new android.graphics.Paint();
            this.f4767d = paint3;
            this.f4768e = 0.0f;
            this.f4769f = 0.0f;
            this.f4770g = 0.0f;
            this.f4771h = 5.0f;
            this.f4779p = 1.0f;
            this.f4783t = 255;
            paint.setStrokeCap(android.graphics.Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(android.graphics.Paint.Style.STROKE);
            paint2.setStyle(android.graphics.Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        public void A() {
            this.f4774k = this.f4768e;
            this.f4775l = this.f4769f;
            this.f4776m = this.f4770g;
        }

        public void a(android.graphics.Canvas canvas, android.graphics.Rect rect) {
            android.graphics.RectF rectF = this.f4764a;
            float f5 = this.f4780q;
            float fMin = (this.f4771h / 2.0f) + f5;
            if (f5 <= 0.0f) {
                fMin = (java.lang.Math.min(rect.width(), rect.height()) / 2.0f) - java.lang.Math.max((this.f4781r * this.f4779p) / 2.0f, this.f4771h / 2.0f);
            }
            rectF.set(rect.centerX() - fMin, rect.centerY() - fMin, rect.centerX() + fMin, rect.centerY() + fMin);
            float f6 = this.f4768e;
            float f7 = this.f4770g;
            float f8 = (f6 + f7) * 360.0f;
            float f9 = ((this.f4769f + f7) * 360.0f) - f8;
            this.f4765b.setColor(this.f4784u);
            this.f4765b.setAlpha(this.f4783t);
            float f10 = this.f4771h / 2.0f;
            rectF.inset(f10, f10);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f4767d);
            float f11 = -f10;
            rectF.inset(f11, f11);
            canvas.drawArc(rectF, f8, f9, false, this.f4765b);
            b(canvas, f8, f9, rectF);
        }

        public void b(android.graphics.Canvas canvas, float f5, float f6, android.graphics.RectF rectF) {
            if (this.f4777n) {
                android.graphics.Path path = this.f4778o;
                if (path == null) {
                    android.graphics.Path path2 = new android.graphics.Path();
                    this.f4778o = path2;
                    path2.setFillType(android.graphics.Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float fMin = java.lang.Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f7 = (this.f4781r * this.f4779p) / 2.0f;
                this.f4778o.moveTo(0.0f, 0.0f);
                this.f4778o.lineTo(this.f4781r * this.f4779p, 0.0f);
                android.graphics.Path path3 = this.f4778o;
                float f8 = this.f4781r;
                float f9 = this.f4779p;
                path3.lineTo((f8 * f9) / 2.0f, this.f4782s * f9);
                this.f4778o.offset((fMin + rectF.centerX()) - f7, rectF.centerY() + (this.f4771h / 2.0f));
                this.f4778o.close();
                this.f4766c.setColor(this.f4784u);
                this.f4766c.setAlpha(this.f4783t);
                canvas.save();
                canvas.rotate(f5 + f6, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f4778o, this.f4766c);
                canvas.restore();
            }
        }

        public int c() {
            return this.f4783t;
        }

        public float d() {
            return this.f4769f;
        }

        public int e() {
            return this.f4772i[f()];
        }

        public int f() {
            return (this.f4773j + 1) % this.f4772i.length;
        }

        public float g() {
            return this.f4768e;
        }

        public int h() {
            return this.f4772i[this.f4773j];
        }

        public float i() {
            return this.f4775l;
        }

        public float j() {
            return this.f4776m;
        }

        public float k() {
            return this.f4774k;
        }

        public void l() {
            t(f());
        }

        public void m() {
            this.f4774k = 0.0f;
            this.f4775l = 0.0f;
            this.f4776m = 0.0f;
            y(0.0f);
            v(0.0f);
            w(0.0f);
        }

        public void n(int i5) {
            this.f4783t = i5;
        }

        public void o(float f5, float f6) {
            this.f4781r = (int) f5;
            this.f4782s = (int) f6;
        }

        public void p(float f5) {
            if (f5 != this.f4779p) {
                this.f4779p = f5;
            }
        }

        public void q(float f5) {
            this.f4780q = f5;
        }

        public void r(int i5) {
            this.f4784u = i5;
        }

        public void s(android.graphics.ColorFilter colorFilter) {
            this.f4765b.setColorFilter(colorFilter);
        }

        public void t(int i5) {
            this.f4773j = i5;
            this.f4784u = this.f4772i[i5];
        }

        public void u(int[] iArr) {
            this.f4772i = iArr;
            t(0);
        }

        public void v(float f5) {
            this.f4769f = f5;
        }

        public void w(float f5) {
            this.f4770g = f5;
        }

        public void x(boolean z4) {
            if (this.f4777n != z4) {
                this.f4777n = z4;
            }
        }

        public void y(float f5) {
            this.f4768e = f5;
        }

        public void z(float f5) {
            this.f4771h = f5;
            this.f4765b.setStrokeWidth(f5);
        }
    }

    public b(android.content.Context context) {
        this.f4756c = ((android.content.Context) v.h.b(context)).getResources();
        j0.b.c cVar = new j0.b.c();
        this.f4754a = cVar;
        cVar.u(f4753i);
        k(2.5f);
        m();
    }

    public final void a(float f5, j0.b.c cVar) {
        n(f5, cVar);
        float fFloor = (float) (java.lang.Math.floor(cVar.j() / 0.8f) + 1.0d);
        cVar.y(cVar.k() + (((cVar.i() - 0.01f) - cVar.k()) * f5));
        cVar.v(cVar.i());
        cVar.w(cVar.j() + ((fFloor - cVar.j()) * f5));
    }

    public void b(float f5, j0.b.c cVar, boolean z4) {
        float interpolation;
        float interpolation2;
        if (this.f4759f) {
            a(f5, cVar);
            return;
        }
        if (f5 != 1.0f || z4) {
            float fJ = cVar.j();
            if (f5 < 0.5f) {
                interpolation = cVar.k();
                interpolation2 = (f4752h.getInterpolation(f5 / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float fK = cVar.k() + 0.79f;
                interpolation = fK - (((1.0f - f4752h.getInterpolation((f5 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                interpolation2 = fK;
            }
            float f6 = fJ + (0.20999998f * f5);
            float f7 = (f5 + this.f4758e) * 216.0f;
            cVar.y(interpolation);
            cVar.v(interpolation2);
            cVar.w(f6);
            h(f7);
        }
    }

    public final int c(float f5, int i5, int i6) {
        int i7 = (i5 >> 24) & 255;
        int i8 = (i5 >> 16) & 255;
        int i9 = (i5 >> 8) & 255;
        int i10 = i5 & 255;
        return ((i7 + ((int) ((((i6 >> 24) & 255) - i7) * f5))) << 24) | ((i8 + ((int) ((((i6 >> 16) & 255) - i8) * f5))) << 16) | ((i9 + ((int) ((((i6 >> 8) & 255) - i9) * f5))) << 8) | (i10 + ((int) (f5 * ((i6 & 255) - i10))));
    }

    public void d(boolean z4) {
        this.f4754a.x(z4);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        android.graphics.Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f4755b, bounds.exactCenterX(), bounds.exactCenterY());
        this.f4754a.a(canvas, bounds);
        canvas.restore();
    }

    public void e(float f5) {
        this.f4754a.p(f5);
        invalidateSelf();
    }

    public void f(int... iArr) {
        this.f4754a.u(iArr);
        this.f4754a.t(0);
        invalidateSelf();
    }

    public void g(float f5) {
        this.f4754a.w(f5);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f4754a.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public final void h(float f5) {
        this.f4755b = f5;
    }

    public final void i(float f5, float f6, float f7, float f8) {
        j0.b.c cVar = this.f4754a;
        float f9 = this.f4756c.getDisplayMetrics().density;
        cVar.z(f6 * f9);
        cVar.q(f5 * f9);
        cVar.t(0);
        cVar.o(f7 * f9, f8 * f9);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f4757d.isRunning();
    }

    public void j(float f5, float f6) {
        this.f4754a.y(f5);
        this.f4754a.v(f6);
        invalidateSelf();
    }

    public void k(float f5) {
        this.f4754a.z(f5);
        invalidateSelf();
    }

    public void l(int i5) {
        if (i5 == 0) {
            i(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            i(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    public final void m() {
        j0.b.c cVar = this.f4754a;
        android.animation.ValueAnimator valueAnimatorOfFloat = android.animation.ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new j0.b.a(cVar));
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(f4751g);
        valueAnimatorOfFloat.addListener(new j0.b.C0065b(cVar));
        this.f4757d = valueAnimatorOfFloat;
    }

    public void n(float f5, j0.b.c cVar) {
        if (f5 > 0.75f) {
            cVar.r(c((f5 - 0.75f) / 0.25f, cVar.h(), cVar.e()));
        } else {
            cVar.r(cVar.h());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i5) {
        this.f4754a.n(i5);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        this.f4754a.s(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f4757d.cancel();
        this.f4754a.A();
        if (this.f4754a.d() != this.f4754a.g()) {
            this.f4759f = true;
            this.f4757d.setDuration(666L);
            this.f4757d.start();
        } else {
            this.f4754a.t(0);
            this.f4754a.m();
            this.f4757d.setDuration(1332L);
            this.f4757d.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f4757d.cancel();
        h(0.0f);
        this.f4754a.x(false);
        this.f4754a.t(0);
        this.f4754a.m();
        invalidateSelf();
    }
}
