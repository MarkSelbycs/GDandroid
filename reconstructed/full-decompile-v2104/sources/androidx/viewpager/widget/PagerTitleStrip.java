package androidx.viewpager.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@androidx.viewpager.widget.ViewPager.e
public class PagerTitleStrip extends android.view.ViewGroup {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int[] f2504t = {android.R.attr.textAppearance, android.R.attr.textSize, android.R.attr.textColor, android.R.attr.gravity};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int[] f2505u = {android.R.attr.textAllCaps};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.viewpager.widget.ViewPager f2506a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.widget.TextView f2507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.widget.TextView f2508c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.widget.TextView f2509d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2510e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f2511f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2512g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2513h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2514i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2515o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final androidx.viewpager.widget.PagerTitleStrip.a f2516p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public java.lang.ref.WeakReference<n0.a> f2517q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2518r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2519s;

    public class a extends android.database.DataSetObserver implements androidx.viewpager.widget.ViewPager.i, androidx.viewpager.widget.ViewPager.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2520a;

        public a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.i
        public void a(int i5, float f5, int i6) {
            if (f5 > 0.5f) {
                i5++;
            }
            androidx.viewpager.widget.PagerTitleStrip.this.d(i5, f5, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.i
        public void b(int i5) {
            this.f2520a = i5;
        }

        @Override // androidx.viewpager.widget.ViewPager.i
        public void c(int i5) {
            if (this.f2520a == 0) {
                androidx.viewpager.widget.PagerTitleStrip pagerTitleStrip = androidx.viewpager.widget.PagerTitleStrip.this;
                pagerTitleStrip.c(pagerTitleStrip.f2506a.getCurrentItem(), androidx.viewpager.widget.PagerTitleStrip.this.f2506a.getAdapter());
                androidx.viewpager.widget.PagerTitleStrip pagerTitleStrip2 = androidx.viewpager.widget.PagerTitleStrip.this;
                float f5 = pagerTitleStrip2.f2511f;
                if (f5 < 0.0f) {
                    f5 = 0.0f;
                }
                pagerTitleStrip2.d(pagerTitleStrip2.f2506a.getCurrentItem(), f5, true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void d(androidx.viewpager.widget.ViewPager viewPager, n0.a aVar, n0.a aVar2) {
            androidx.viewpager.widget.PagerTitleStrip.this.b(aVar, aVar2);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            androidx.viewpager.widget.PagerTitleStrip pagerTitleStrip = androidx.viewpager.widget.PagerTitleStrip.this;
            pagerTitleStrip.c(pagerTitleStrip.f2506a.getCurrentItem(), androidx.viewpager.widget.PagerTitleStrip.this.f2506a.getAdapter());
            androidx.viewpager.widget.PagerTitleStrip pagerTitleStrip2 = androidx.viewpager.widget.PagerTitleStrip.this;
            float f5 = pagerTitleStrip2.f2511f;
            if (f5 < 0.0f) {
                f5 = 0.0f;
            }
            pagerTitleStrip2.d(pagerTitleStrip2.f2506a.getCurrentItem(), f5, true);
        }
    }

    public static class b extends android.text.method.SingleLineTransformationMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.util.Locale f2522a;

        public b(android.content.Context context) {
            this.f2522a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public java.lang.CharSequence getTransformation(java.lang.CharSequence charSequence, android.view.View view) {
            java.lang.CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f2522a);
            }
            return null;
        }
    }

    public PagerTitleStrip(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2510e = -1;
        this.f2511f = -1.0f;
        this.f2516p = new androidx.viewpager.widget.PagerTitleStrip.a();
        android.widget.TextView textView = new android.widget.TextView(context);
        this.f2507b = textView;
        addView(textView);
        android.widget.TextView textView2 = new android.widget.TextView(context);
        this.f2508c = textView2;
        addView(textView2);
        android.widget.TextView textView3 = new android.widget.TextView(context);
        this.f2509d = textView3;
        addView(textView3);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2504t);
        boolean z4 = false;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            androidx.core.widget.k.i(this.f2507b, resourceId);
            androidx.core.widget.k.i(this.f2508c, resourceId);
            androidx.core.widget.k.i(this.f2509d, resourceId);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            a(0, dimensionPixelSize);
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            int color = typedArrayObtainStyledAttributes.getColor(2, 0);
            this.f2507b.setTextColor(color);
            this.f2508c.setTextColor(color);
            this.f2509d.setTextColor(color);
        }
        this.f2513h = typedArrayObtainStyledAttributes.getInteger(3, 80);
        typedArrayObtainStyledAttributes.recycle();
        this.f2519s = this.f2508c.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.f2507b.setEllipsize(android.text.TextUtils.TruncateAt.END);
        this.f2508c.setEllipsize(android.text.TextUtils.TruncateAt.END);
        this.f2509d.setEllipsize(android.text.TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f2505u);
            z4 = typedArrayObtainStyledAttributes2.getBoolean(0, false);
            typedArrayObtainStyledAttributes2.recycle();
        }
        if (z4) {
            setSingleLineAllCaps(this.f2507b);
            setSingleLineAllCaps(this.f2508c);
            setSingleLineAllCaps(this.f2509d);
        } else {
            this.f2507b.setSingleLine();
            this.f2508c.setSingleLine();
            this.f2509d.setSingleLine();
        }
        this.f2512g = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    private static void setSingleLineAllCaps(android.widget.TextView textView) {
        textView.setTransformationMethod(new androidx.viewpager.widget.PagerTitleStrip.b(textView.getContext()));
    }

    public void a(int i5, float f5) {
        this.f2507b.setTextSize(i5, f5);
        this.f2508c.setTextSize(i5, f5);
        this.f2509d.setTextSize(i5, f5);
    }

    public void b(n0.a aVar, n0.a aVar2) {
        if (aVar != null) {
            aVar.t(this.f2516p);
            this.f2517q = null;
        }
        if (aVar2 != null) {
            aVar2.l(this.f2516p);
            this.f2517q = new java.lang.ref.WeakReference<>(aVar2);
        }
        androidx.viewpager.widget.ViewPager viewPager = this.f2506a;
        if (viewPager != null) {
            this.f2510e = -1;
            this.f2511f = -1.0f;
            c(viewPager.getCurrentItem(), aVar2);
            requestLayout();
        }
    }

    public void c(int i5, n0.a aVar) {
        int iE = aVar != null ? aVar.e() : 0;
        this.f2514i = true;
        java.lang.CharSequence charSequenceG = null;
        this.f2507b.setText((i5 < 1 || aVar == null) ? null : aVar.g(i5 - 1));
        this.f2508c.setText((aVar == null || i5 >= iE) ? null : aVar.g(i5));
        int i6 = i5 + 1;
        if (i6 < iE && aVar != null) {
            charSequenceG = aVar.g(i6);
        }
        this.f2509d.setText(charSequenceG);
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f2507b.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f2508c.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f2509d.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f2510e = i5;
        if (!this.f2515o) {
            d(i5, this.f2511f, false);
        }
        this.f2514i = false;
    }

    public void d(int i5, float f5, boolean z4) {
        int i6;
        int i7;
        int i8;
        int i9;
        if (i5 != this.f2510e) {
            c(i5, this.f2506a.getAdapter());
        } else if (!z4 && f5 == this.f2511f) {
            return;
        }
        this.f2515o = true;
        int measuredWidth = this.f2507b.getMeasuredWidth();
        int measuredWidth2 = this.f2508c.getMeasuredWidth();
        int measuredWidth3 = this.f2509d.getMeasuredWidth();
        int i10 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i11 = paddingRight + i10;
        int i12 = (width - (paddingLeft + i10)) - i11;
        float f6 = 0.5f + f5;
        if (f6 > 1.0f) {
            f6 -= 1.0f;
        }
        int i13 = ((width - i11) - ((int) (i12 * f6))) - i10;
        int i14 = measuredWidth2 + i13;
        int baseline = this.f2507b.getBaseline();
        int baseline2 = this.f2508c.getBaseline();
        int baseline3 = this.f2509d.getBaseline();
        int iMax = java.lang.Math.max(java.lang.Math.max(baseline, baseline2), baseline3);
        int i15 = iMax - baseline;
        int i16 = iMax - baseline2;
        int i17 = iMax - baseline3;
        int iMax2 = java.lang.Math.max(java.lang.Math.max(this.f2507b.getMeasuredHeight() + i15, this.f2508c.getMeasuredHeight() + i16), this.f2509d.getMeasuredHeight() + i17);
        int i18 = this.f2513h & 112;
        if (i18 != 16) {
            if (i18 != 80) {
                i7 = i15 + paddingTop;
                i8 = i16 + paddingTop;
                i9 = paddingTop + i17;
            } else {
                i6 = (height - paddingBottom) - iMax2;
            }
            android.widget.TextView textView = this.f2508c;
            textView.layout(i13, i8, i14, textView.getMeasuredHeight() + i8);
            int iMin = java.lang.Math.min(paddingLeft, (i13 - this.f2512g) - measuredWidth);
            android.widget.TextView textView2 = this.f2507b;
            textView2.layout(iMin, i7, measuredWidth + iMin, textView2.getMeasuredHeight() + i7);
            int iMax3 = java.lang.Math.max((width - paddingRight) - measuredWidth3, i14 + this.f2512g);
            android.widget.TextView textView3 = this.f2509d;
            textView3.layout(iMax3, i9, iMax3 + measuredWidth3, textView3.getMeasuredHeight() + i9);
            this.f2511f = f5;
            this.f2515o = false;
        }
        i6 = (((height - paddingTop) - paddingBottom) - iMax2) / 2;
        i7 = i15 + i6;
        i8 = i16 + i6;
        i9 = i6 + i17;
        android.widget.TextView textView4 = this.f2508c;
        textView4.layout(i13, i8, i14, textView4.getMeasuredHeight() + i8);
        int iMin2 = java.lang.Math.min(paddingLeft, (i13 - this.f2512g) - measuredWidth);
        android.widget.TextView textView5 = this.f2507b;
        textView5.layout(iMin2, i7, measuredWidth + iMin2, textView5.getMeasuredHeight() + i7);
        int iMax4 = java.lang.Math.max((width - paddingRight) - measuredWidth3, i14 + this.f2512g);
        android.widget.TextView textView6 = this.f2509d;
        textView6.layout(iMax4, i9, iMax4 + measuredWidth3, textView6.getMeasuredHeight() + i9);
        this.f2511f = f5;
        this.f2515o = false;
    }

    public int getMinHeight() {
        android.graphics.drawable.Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int getTextSpacing() {
        return this.f2512g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        android.view.ViewParent parent = getParent();
        if (!(parent instanceof androidx.viewpager.widget.ViewPager)) {
            throw new java.lang.IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        androidx.viewpager.widget.ViewPager viewPager = (androidx.viewpager.widget.ViewPager) parent;
        n0.a adapter = viewPager.getAdapter();
        viewPager.O(this.f2516p);
        viewPager.b(this.f2516p);
        this.f2506a = viewPager;
        java.lang.ref.WeakReference<n0.a> weakReference = this.f2517q;
        b(weakReference != null ? weakReference.get() : null, adapter);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        androidx.viewpager.widget.ViewPager viewPager = this.f2506a;
        if (viewPager != null) {
            b(viewPager.getAdapter(), null);
            this.f2506a.O(null);
            this.f2506a.H(this.f2516p);
            this.f2506a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        if (this.f2506a != null) {
            float f5 = this.f2511f;
            if (f5 < 0.0f) {
                f5 = 0.0f;
            }
            d(this.f2510e, f5, true);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        int iMax;
        if (android.view.View.MeasureSpec.getMode(i5) != 1073741824) {
            throw new java.lang.IllegalStateException("Must measure with an exact width");
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i6, paddingTop, -2);
        int size = android.view.View.MeasureSpec.getSize(i5);
        int childMeasureSpec2 = android.view.ViewGroup.getChildMeasureSpec(i5, (int) (size * 0.2f), -2);
        this.f2507b.measure(childMeasureSpec2, childMeasureSpec);
        this.f2508c.measure(childMeasureSpec2, childMeasureSpec);
        this.f2509d.measure(childMeasureSpec2, childMeasureSpec);
        if (android.view.View.MeasureSpec.getMode(i6) == 1073741824) {
            iMax = android.view.View.MeasureSpec.getSize(i6);
        } else {
            iMax = java.lang.Math.max(getMinHeight(), this.f2508c.getMeasuredHeight() + paddingTop);
        }
        setMeasuredDimension(size, android.view.View.resolveSizeAndState(iMax, i6, this.f2508c.getMeasuredState() << 16));
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f2514i) {
            return;
        }
        super.requestLayout();
    }

    public void setGravity(int i5) {
        this.f2513h = i5;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f5) {
        int i5 = ((int) (f5 * 255.0f)) & 255;
        this.f2518r = i5;
        int i6 = (i5 << 24) | (this.f2519s & 16777215);
        this.f2507b.setTextColor(i6);
        this.f2509d.setTextColor(i6);
    }

    public void setTextColor(int i5) {
        this.f2519s = i5;
        this.f2508c.setTextColor(i5);
        int i6 = (this.f2518r << 24) | (this.f2519s & 16777215);
        this.f2507b.setTextColor(i6);
        this.f2509d.setTextColor(i6);
    }

    public void setTextSpacing(int i5) {
        this.f2512g = i5;
        requestLayout();
    }
}
