package androidx.viewpager.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PagerTabStrip extends androidx.viewpager.widget.PagerTitleStrip {
    public int A;
    public final android.graphics.Paint B;
    public final android.graphics.Rect C;
    public int D;
    public boolean E;
    public boolean F;
    public int G;
    public boolean H;
    public float I;
    public float J;
    public int K;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2497v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2498w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2499x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2500y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2501z;

    public class a implements android.view.View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            androidx.viewpager.widget.ViewPager viewPager = androidx.viewpager.widget.PagerTabStrip.this.f2506a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        }
    }

    public class b implements android.view.View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            androidx.viewpager.widget.ViewPager viewPager = androidx.viewpager.widget.PagerTabStrip.this.f2506a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    public PagerTabStrip(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        android.graphics.Paint paint = new android.graphics.Paint();
        this.B = paint;
        this.C = new android.graphics.Rect();
        this.D = 255;
        this.E = false;
        this.F = false;
        int i5 = this.f2519s;
        this.f2497v = i5;
        paint.setColor(i5);
        float f5 = context.getResources().getDisplayMetrics().density;
        this.f2498w = (int) ((3.0f * f5) + 0.5f);
        this.f2499x = (int) ((6.0f * f5) + 0.5f);
        this.f2500y = (int) (64.0f * f5);
        this.A = (int) ((16.0f * f5) + 0.5f);
        this.G = (int) ((1.0f * f5) + 0.5f);
        this.f2501z = (int) ((f5 * 32.0f) + 0.5f);
        this.K = android.view.ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f2507b.setFocusable(true);
        this.f2507b.setOnClickListener(new androidx.viewpager.widget.PagerTabStrip.a());
        this.f2509d.setFocusable(true);
        this.f2509d.setOnClickListener(new androidx.viewpager.widget.PagerTabStrip.b());
        if (getBackground() == null) {
            this.E = true;
        }
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void d(int i5, float f5, boolean z4) {
        android.graphics.Rect rect = this.C;
        int height = getHeight();
        int left = this.f2508c.getLeft() - this.A;
        int right = this.f2508c.getRight() + this.A;
        int i6 = height - this.f2498w;
        rect.set(left, i6, right, height);
        super.d(i5, f5, z4);
        this.D = (int) (java.lang.Math.abs(f5 - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f2508c.getLeft() - this.A, i6, this.f2508c.getRight() + this.A, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.E;
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public int getMinHeight() {
        return java.lang.Math.max(super.getMinHeight(), this.f2501z);
    }

    public int getTabIndicatorColor() {
        return this.f2497v;
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f2508c.getLeft() - this.A;
        int right = this.f2508c.getRight() + this.A;
        int i5 = height - this.f2498w;
        this.B.setColor((this.D << 24) | (this.f2497v & 16777215));
        float f5 = height;
        canvas.drawRect(left, i5, right, f5, this.B);
        if (this.E) {
            this.B.setColor((-16777216) | (this.f2497v & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.G, getWidth() - getPaddingRight(), f5, this.B);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.H) {
            return false;
        }
        float x4 = motionEvent.getX();
        float y4 = motionEvent.getY();
        if (action == 0) {
            this.I = x4;
            this.J = y4;
            this.H = false;
        } else if (action != 1) {
            if (action == 2 && (java.lang.Math.abs(x4 - this.I) > this.K || java.lang.Math.abs(y4 - this.J) > this.K)) {
                this.H = true;
            }
        } else if (x4 < this.f2508c.getLeft() - this.A) {
            androidx.viewpager.widget.ViewPager viewPager = this.f2506a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        } else if (x4 > this.f2508c.getRight() + this.A) {
            androidx.viewpager.widget.ViewPager viewPager2 = this.f2506a;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i5) {
        super.setBackgroundColor(i5);
        if (this.F) {
            return;
        }
        this.E = (i5 & (-16777216)) == 0;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.F) {
            return;
        }
        this.E = drawable == null;
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        if (this.F) {
            return;
        }
        this.E = i5 == 0;
    }

    public void setDrawFullUnderline(boolean z4) {
        this.E = z4;
        this.F = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i5, int i6, int i7, int i8) {
        int i9 = this.f2499x;
        if (i8 < i9) {
            i8 = i9;
        }
        super.setPadding(i5, i6, i7, i8);
    }

    public void setTabIndicatorColor(int i5) {
        this.f2497v = i5;
        this.B.setColor(i5);
        invalidate();
    }

    public void setTabIndicatorColorResource(int i5) {
        setTabIndicatorColor(androidx.core.content.a.a(getContext(), i5));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i5) {
        int i6 = this.f2500y;
        if (i5 < i6) {
            i5 = i6;
        }
        super.setTextSpacing(i5);
    }
}
