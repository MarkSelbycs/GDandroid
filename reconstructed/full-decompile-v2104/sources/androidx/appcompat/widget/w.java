package androidx.appcompat.widget;

/* JADX INFO: compiled from: ScrollingTabContainerView.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class w extends android.widget.HorizontalScrollView implements android.widget.AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final android.view.animation.Interpolator f1050o = new android.view.animation.DecelerateInterpolator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.Runnable f1051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.appcompat.widget.w.c f1052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.appcompat.widget.LinearLayoutCompat f1053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.widget.Spinner f1054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1056f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1057g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1058h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1059i;

    /* JADX INFO: compiled from: ScrollingTabContainerView.java */
    public class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ android.view.View f1060a;

        public a(android.view.View view) {
            this.f1060a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.w.this.smoothScrollTo(this.f1060a.getLeft() - ((androidx.appcompat.widget.w.this.getWidth() - this.f1060a.getWidth()) / 2), 0);
            androidx.appcompat.widget.w.this.f1051a = null;
        }
    }

    /* JADX INFO: compiled from: ScrollingTabContainerView.java */
    public class b extends android.widget.BaseAdapter {
        public b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return androidx.appcompat.widget.w.this.f1053c.getChildCount();
        }

        @Override // android.widget.Adapter
        public java.lang.Object getItem(int i5) {
            return ((androidx.appcompat.widget.w.d) androidx.appcompat.widget.w.this.f1053c.getChildAt(i5)).b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i5) {
            return i5;
        }

        @Override // android.widget.Adapter
        public android.view.View getView(int i5, android.view.View view, android.view.ViewGroup viewGroup) {
            if (view == null) {
                return androidx.appcompat.widget.w.this.c((androidx.appcompat.app.ActionBar.b) getItem(i5), true);
            }
            ((androidx.appcompat.widget.w.d) view).a((androidx.appcompat.app.ActionBar.b) getItem(i5));
            return view;
        }
    }

    /* JADX INFO: compiled from: ScrollingTabContainerView.java */
    public class c implements android.view.View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            ((androidx.appcompat.widget.w.d) view).b().e();
            int childCount = androidx.appcompat.widget.w.this.f1053c.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                android.view.View childAt = androidx.appcompat.widget.w.this.f1053c.getChildAt(i5);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* JADX INFO: compiled from: ScrollingTabContainerView.java */
    public class d extends android.widget.LinearLayout {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int[] f1064a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.appcompat.app.ActionBar.b f1065b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public android.widget.TextView f1066c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public android.widget.ImageView f1067d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public android.view.View f1068e;

        /* JADX WARN: Illegal instructions before constructor call */
        public d(android.content.Context context, androidx.appcompat.app.ActionBar.b bVar, boolean z4) {
            int i5 = androidx.appcompat.R.attr.actionBarTabStyle;
            super(context, null, i5);
            int[] iArr = {android.R.attr.background};
            this.f1064a = iArr;
            this.f1065b = bVar;
            androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(context, null, iArr, i5, 0);
            if (d0VarT.q(0)) {
                setBackgroundDrawable(d0VarT.f(0));
            }
            d0VarT.u();
            if (z4) {
                setGravity(8388627);
            }
            c();
        }

        public void a(androidx.appcompat.app.ActionBar.b bVar) {
            this.f1065b = bVar;
            c();
        }

        public androidx.appcompat.app.ActionBar.b b() {
            return this.f1065b;
        }

        public void c() {
            androidx.appcompat.app.ActionBar.b bVar = this.f1065b;
            android.view.View viewB = bVar.b();
            if (viewB != null) {
                android.view.ViewParent parent = viewB.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((android.view.ViewGroup) parent).removeView(viewB);
                    }
                    addView(viewB);
                }
                this.f1068e = viewB;
                android.widget.TextView textView = this.f1066c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                android.widget.ImageView imageView = this.f1067d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f1067d.setImageDrawable(null);
                    return;
                }
                return;
            }
            android.view.View view = this.f1068e;
            if (view != null) {
                removeView(view);
                this.f1068e = null;
            }
            android.graphics.drawable.Drawable drawableC = bVar.c();
            java.lang.CharSequence charSequenceD = bVar.d();
            if (drawableC != null) {
                if (this.f1067d == null) {
                    androidx.appcompat.widget.AppCompatImageView appCompatImageView = new androidx.appcompat.widget.AppCompatImageView(getContext());
                    android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1067d = appCompatImageView;
                }
                this.f1067d.setImageDrawable(drawableC);
                this.f1067d.setVisibility(0);
            } else {
                android.widget.ImageView imageView2 = this.f1067d;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1067d.setImageDrawable(null);
                }
            }
            boolean z4 = !android.text.TextUtils.isEmpty(charSequenceD);
            if (z4) {
                if (this.f1066c == null) {
                    androidx.appcompat.widget.AppCompatTextView appCompatTextView = new androidx.appcompat.widget.AppCompatTextView(getContext(), null, androidx.appcompat.R.attr.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(android.text.TextUtils.TruncateAt.END);
                    android.widget.LinearLayout.LayoutParams layoutParams2 = new android.widget.LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1066c = appCompatTextView;
                }
                this.f1066c.setText(charSequenceD);
                this.f1066c.setVisibility(0);
            } else {
                android.widget.TextView textView2 = this.f1066c;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1066c.setText((java.lang.CharSequence) null);
                }
            }
            android.widget.ImageView imageView3 = this.f1067d;
            if (imageView3 != null) {
                imageView3.setContentDescription(bVar.a());
            }
            androidx.appcompat.widget.f0.a(this, z4 ? null : bVar.a());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(androidx.appcompat.app.ActionBar.b.class.getName());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(androidx.appcompat.app.ActionBar.b.class.getName());
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i5, int i6) {
            super.onMeasure(i5, i6);
            if (androidx.appcompat.widget.w.this.f1056f > 0) {
                int measuredWidth = getMeasuredWidth();
                int i7 = androidx.appcompat.widget.w.this.f1056f;
                if (measuredWidth > i7) {
                    super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(i7, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), i6);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z4) {
            boolean z5 = isSelected() != z4;
            super.setSelected(z4);
            if (z5 && z4) {
                sendAccessibilityEvent(4);
            }
        }
    }

    public void a(int i5) {
        android.view.View childAt = this.f1053c.getChildAt(i5);
        java.lang.Runnable runnable = this.f1051a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        androidx.appcompat.widget.w.a aVar = new androidx.appcompat.widget.w.a(childAt);
        this.f1051a = aVar;
        post(aVar);
    }

    public final android.widget.Spinner b() {
        androidx.appcompat.widget.AppCompatSpinner appCompatSpinner = new androidx.appcompat.widget.AppCompatSpinner(getContext(), null, androidx.appcompat.R.attr.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new androidx.appcompat.widget.LinearLayoutCompat.LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    public androidx.appcompat.widget.w.d c(androidx.appcompat.app.ActionBar.b bVar, boolean z4) {
        androidx.appcompat.widget.w.d dVar = new androidx.appcompat.widget.w.d(getContext(), bVar, z4);
        if (z4) {
            dVar.setBackgroundDrawable(null);
            dVar.setLayoutParams(new android.widget.AbsListView.LayoutParams(-1, this.f1058h));
        } else {
            dVar.setFocusable(true);
            if (this.f1052b == null) {
                this.f1052b = new androidx.appcompat.widget.w.c();
            }
            dVar.setOnClickListener(this.f1052b);
        }
        return dVar;
    }

    public final boolean d() {
        android.widget.Spinner spinner = this.f1054d;
        return spinner != null && spinner.getParent() == this;
    }

    public final void e() {
        if (d()) {
            return;
        }
        if (this.f1054d == null) {
            this.f1054d = b();
        }
        removeView(this.f1053c);
        addView(this.f1054d, new android.view.ViewGroup.LayoutParams(-2, -1));
        if (this.f1054d.getAdapter() == null) {
            this.f1054d.setAdapter((android.widget.SpinnerAdapter) new androidx.appcompat.widget.w.b());
        }
        java.lang.Runnable runnable = this.f1051a;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1051a = null;
        }
        this.f1054d.setSelection(this.f1059i);
    }

    public final boolean f() {
        if (!d()) {
            return false;
        }
        removeView(this.f1054d);
        addView(this.f1053c, new android.view.ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1054d.getSelectedItemPosition());
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        java.lang.Runnable runnable = this.f1051a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        e.a aVarB = e.a.b(getContext());
        setContentHeight(aVarB.f());
        this.f1057g = aVarB.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        java.lang.Runnable runnable = this.f1051a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(android.widget.AdapterView<?> adapterView, android.view.View view, int i5, long j5) {
        ((androidx.appcompat.widget.w.d) view).b().e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i5, int i6) {
        int mode = android.view.View.MeasureSpec.getMode(i5);
        boolean z4 = mode == 1073741824;
        setFillViewport(z4);
        int childCount = this.f1053c.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1056f = -1;
        } else {
            if (childCount > 2) {
                this.f1056f = (int) (android.view.View.MeasureSpec.getSize(i5) * 0.4f);
            } else {
                this.f1056f = android.view.View.MeasureSpec.getSize(i5) / 2;
            }
            this.f1056f = java.lang.Math.min(this.f1056f, this.f1057g);
        }
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(this.f1058h, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        if (!z4 && this.f1055e) {
            this.f1053c.measure(0, iMakeMeasureSpec);
            if (this.f1053c.getMeasuredWidth() > android.view.View.MeasureSpec.getSize(i5)) {
                e();
            } else {
                f();
            }
        } else {
            f();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i5, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z4 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1059i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(android.widget.AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z4) {
        this.f1055e = z4;
    }

    public void setContentHeight(int i5) {
        this.f1058h = i5;
        requestLayout();
    }

    public void setTabSelected(int i5) {
        this.f1059i = i5;
        int childCount = this.f1053c.getChildCount();
        int i6 = 0;
        while (i6 < childCount) {
            android.view.View childAt = this.f1053c.getChildAt(i6);
            boolean z4 = i6 == i5;
            childAt.setSelected(z4);
            if (z4) {
                a(i5);
            }
            i6++;
        }
        android.widget.Spinner spinner = this.f1054d;
        if (spinner == null || i5 < 0) {
            return;
        }
        spinner.setSelection(i5);
    }
}
