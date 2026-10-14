package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ListPopupWindow implements f.i {
    public static java.lang.reflect.Method M;
    public static java.lang.reflect.Method N;
    public static java.lang.reflect.Method O;
    public android.widget.AdapterView.OnItemClickListener A;
    public android.widget.AdapterView.OnItemSelectedListener B;
    public final androidx.appcompat.widget.ListPopupWindow.g C;
    public final androidx.appcompat.widget.ListPopupWindow.f D;
    public final androidx.appcompat.widget.ListPopupWindow.e E;
    public final androidx.appcompat.widget.ListPopupWindow.c F;
    public java.lang.Runnable G;
    public final android.os.Handler H;
    public final android.graphics.Rect I;
    public android.graphics.Rect J;
    public boolean K;
    public android.widget.PopupWindow L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.content.Context f757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.widget.ListAdapter f758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.appcompat.widget.p f759c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f760d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f762f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f763g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f764h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f765i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f766o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f767p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f768q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f769r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f770s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f771t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f772u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public android.view.View f773v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f774w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public android.database.DataSetObserver f775x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public android.view.View f776y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public android.graphics.drawable.Drawable f777z;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            android.view.View viewI = androidx.appcompat.widget.ListPopupWindow.this.i();
            if (viewI == null || viewI.getWindowToken() == null) {
                return;
            }
            androidx.appcompat.widget.ListPopupWindow.this.b();
        }
    }

    public class b implements android.widget.AdapterView.OnItemSelectedListener {
        public b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(android.widget.AdapterView<?> adapterView, android.view.View view, int i5, long j5) {
            androidx.appcompat.widget.p pVar;
            if (i5 == -1 || (pVar = androidx.appcompat.widget.ListPopupWindow.this.f759c) == null) {
                return;
            }
            pVar.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(android.widget.AdapterView<?> adapterView) {
        }
    }

    public class c implements java.lang.Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.ListPopupWindow.this.e();
        }
    }

    public class d extends android.database.DataSetObserver {
        public d() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (androidx.appcompat.widget.ListPopupWindow.this.f()) {
                androidx.appcompat.widget.ListPopupWindow.this.b();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            androidx.appcompat.widget.ListPopupWindow.this.dismiss();
        }
    }

    public class e implements android.widget.AbsListView.OnScrollListener {
        public e() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(android.widget.AbsListView absListView, int i5, int i6, int i7) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(android.widget.AbsListView absListView, int i5) {
            if (i5 != 1 || androidx.appcompat.widget.ListPopupWindow.this.o() || androidx.appcompat.widget.ListPopupWindow.this.L.getContentView() == null) {
                return;
            }
            androidx.appcompat.widget.ListPopupWindow listPopupWindow = androidx.appcompat.widget.ListPopupWindow.this;
            listPopupWindow.H.removeCallbacks(listPopupWindow.C);
            androidx.appcompat.widget.ListPopupWindow.this.C.run();
        }
    }

    public class f implements android.view.View.OnTouchListener {
        public f() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
            android.widget.PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x4 = (int) motionEvent.getX();
            int y4 = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = androidx.appcompat.widget.ListPopupWindow.this.L) != null && popupWindow.isShowing() && x4 >= 0 && x4 < androidx.appcompat.widget.ListPopupWindow.this.L.getWidth() && y4 >= 0 && y4 < androidx.appcompat.widget.ListPopupWindow.this.L.getHeight()) {
                androidx.appcompat.widget.ListPopupWindow listPopupWindow = androidx.appcompat.widget.ListPopupWindow.this;
                listPopupWindow.H.postDelayed(listPopupWindow.C, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            androidx.appcompat.widget.ListPopupWindow listPopupWindow2 = androidx.appcompat.widget.ListPopupWindow.this;
            listPopupWindow2.H.removeCallbacks(listPopupWindow2.C);
            return false;
        }
    }

    public class g implements java.lang.Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.p pVar = androidx.appcompat.widget.ListPopupWindow.this.f759c;
            if (pVar == null || !w.q.C(pVar) || androidx.appcompat.widget.ListPopupWindow.this.f759c.getCount() <= androidx.appcompat.widget.ListPopupWindow.this.f759c.getChildCount()) {
                return;
            }
            int childCount = androidx.appcompat.widget.ListPopupWindow.this.f759c.getChildCount();
            androidx.appcompat.widget.ListPopupWindow listPopupWindow = androidx.appcompat.widget.ListPopupWindow.this;
            if (childCount <= listPopupWindow.f772u) {
                listPopupWindow.L.setInputMethodMode(2);
                androidx.appcompat.widget.ListPopupWindow.this.b();
            }
        }
    }

    static {
        try {
            M = android.widget.PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", java.lang.Boolean.TYPE);
        } catch (java.lang.NoSuchMethodException unused) {
            android.util.Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
        try {
            N = android.widget.PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", android.view.View.class, java.lang.Integer.TYPE, java.lang.Boolean.TYPE);
        } catch (java.lang.NoSuchMethodException unused2) {
            android.util.Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
        }
        try {
            O = android.widget.PopupWindow.class.getDeclaredMethod("setEpicenterBounds", android.graphics.Rect.class);
        } catch (java.lang.NoSuchMethodException unused3) {
            android.util.Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
        }
    }

    public ListPopupWindow(android.content.Context context) {
        this(context, null, androidx.appcompat.R.attr.listPopupWindowStyle);
    }

    public void A(boolean z4) {
        this.K = z4;
        this.L.setFocusable(z4);
    }

    public void B(android.widget.PopupWindow.OnDismissListener onDismissListener) {
        this.L.setOnDismissListener(onDismissListener);
    }

    public void C(android.widget.AdapterView.OnItemClickListener onItemClickListener) {
        this.A = onItemClickListener;
    }

    public void D(boolean z4) {
        this.f768q = true;
        this.f767p = z4;
    }

    public final void E(boolean z4) {
        java.lang.reflect.Method method = M;
        if (method != null) {
            try {
                method.invoke(this.L, java.lang.Boolean.valueOf(z4));
            } catch (java.lang.Exception unused) {
                android.util.Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
    }

    public void F(int i5) {
        this.f774w = i5;
    }

    public void G(int i5) {
        androidx.appcompat.widget.p pVar = this.f759c;
        if (!f() || pVar == null) {
            return;
        }
        pVar.setListSelectionHidden(false);
        pVar.setSelection(i5);
        if (pVar.getChoiceMode() != 0) {
            pVar.setItemChecked(i5, true);
        }
    }

    public void H(int i5) {
        this.f763g = i5;
        this.f765i = true;
    }

    public void I(int i5) {
        this.f761e = i5;
    }

    @Override // f.i
    public void b() {
        int iD = d();
        boolean zO = o();
        androidx.core.widget.j.b(this.L, this.f764h);
        if (this.L.isShowing()) {
            if (w.q.C(i())) {
                int width = this.f761e;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = i().getWidth();
                }
                int i5 = this.f760d;
                if (i5 == -1) {
                    if (!zO) {
                        iD = -1;
                    }
                    if (zO) {
                        this.L.setWidth(this.f761e == -1 ? -1 : 0);
                        this.L.setHeight(0);
                    } else {
                        this.L.setWidth(this.f761e == -1 ? -1 : 0);
                        this.L.setHeight(-1);
                    }
                } else if (i5 != -2) {
                    iD = i5;
                }
                this.L.setOutsideTouchable((this.f771t || this.f770s) ? false : true);
                this.L.update(i(), this.f762f, this.f763g, width < 0 ? -1 : width, iD < 0 ? -1 : iD);
                return;
            }
            return;
        }
        int width2 = this.f761e;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = i().getWidth();
        }
        int i6 = this.f760d;
        if (i6 == -1) {
            iD = -1;
        } else if (i6 != -2) {
            iD = i6;
        }
        this.L.setWidth(width2);
        this.L.setHeight(iD);
        E(true);
        this.L.setOutsideTouchable((this.f771t || this.f770s) ? false : true);
        this.L.setTouchInterceptor(this.D);
        if (this.f768q) {
            androidx.core.widget.j.a(this.L, this.f767p);
        }
        java.lang.reflect.Method method = O;
        if (method != null) {
            try {
                method.invoke(this.L, this.J);
            } catch (java.lang.Exception e5) {
                android.util.Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e5);
            }
        }
        androidx.core.widget.j.c(this.L, i(), this.f762f, this.f763g, this.f769r);
        this.f759c.setSelection(-1);
        if (!this.K || this.f759c.isInTouchMode()) {
            e();
        }
        if (this.K) {
            return;
        }
        this.H.post(this.F);
    }

    public final int d() {
        int measuredHeight;
        int i5;
        int iMakeMeasureSpec;
        android.view.View view;
        int i6;
        if (this.f759c == null) {
            android.content.Context context = this.f757a;
            this.G = new androidx.appcompat.widget.ListPopupWindow.a();
            androidx.appcompat.widget.p pVarH = h(context, !this.K);
            this.f759c = pVarH;
            android.graphics.drawable.Drawable drawable = this.f777z;
            if (drawable != null) {
                pVarH.setSelector(drawable);
            }
            this.f759c.setAdapter(this.f758b);
            this.f759c.setOnItemClickListener(this.A);
            this.f759c.setFocusable(true);
            this.f759c.setFocusableInTouchMode(true);
            this.f759c.setOnItemSelectedListener(new androidx.appcompat.widget.ListPopupWindow.b());
            this.f759c.setOnScrollListener(this.E);
            android.widget.AdapterView.OnItemSelectedListener onItemSelectedListener = this.B;
            if (onItemSelectedListener != null) {
                this.f759c.setOnItemSelectedListener(onItemSelectedListener);
            }
            androidx.appcompat.widget.p pVar = this.f759c;
            android.view.View view2 = this.f773v;
            if (view2 != null) {
                android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(context);
                linearLayout.setOrientation(1);
                android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i7 = this.f774w;
                if (i7 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(pVar, layoutParams);
                } else if (i7 != 1) {
                    android.util.Log.e("ListPopupWindow", "Invalid hint position " + this.f774w);
                } else {
                    linearLayout.addView(pVar, layoutParams);
                    linearLayout.addView(view2);
                }
                int i8 = this.f761e;
                if (i8 >= 0) {
                    i6 = Integer.MIN_VALUE;
                } else {
                    i8 = 0;
                    i6 = 0;
                }
                view2.measure(android.view.View.MeasureSpec.makeMeasureSpec(i8, i6), 0);
                android.widget.LinearLayout.LayoutParams layoutParams2 = (android.widget.LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight = view2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                measuredHeight = 0;
                view = pVar;
            }
            this.L.setContentView(view);
        } else {
            android.view.View view3 = this.f773v;
            if (view3 != null) {
                android.widget.LinearLayout.LayoutParams layoutParams3 = (android.widget.LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        android.graphics.drawable.Drawable background = this.L.getBackground();
        if (background != null) {
            background.getPadding(this.I);
            android.graphics.Rect rect = this.I;
            int i9 = rect.top;
            i5 = rect.bottom + i9;
            if (!this.f765i) {
                this.f763g = -i9;
            }
        } else {
            this.I.setEmpty();
            i5 = 0;
        }
        int iL = l(i(), this.f763g, this.L.getInputMethodMode() == 2);
        if (this.f770s || this.f760d == -1) {
            return iL + i5;
        }
        int i10 = this.f761e;
        if (i10 == -2) {
            int i11 = this.f757a.getResources().getDisplayMetrics().widthPixels;
            android.graphics.Rect rect2 = this.I;
            iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(i11 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i10 != -1) {
            iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(i10, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        } else {
            int i12 = this.f757a.getResources().getDisplayMetrics().widthPixels;
            android.graphics.Rect rect3 = this.I;
            iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(i12 - (rect3.left + rect3.right), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        }
        int iD = this.f759c.d(iMakeMeasureSpec, 0, -1, iL - measuredHeight, -1);
        if (iD > 0) {
            measuredHeight += i5 + this.f759c.getPaddingTop() + this.f759c.getPaddingBottom();
        }
        return iD + measuredHeight;
    }

    @Override // f.i
    public void dismiss() {
        this.L.dismiss();
        q();
        this.L.setContentView(null);
        this.f759c = null;
        this.H.removeCallbacks(this.C);
    }

    public void e() {
        androidx.appcompat.widget.p pVar = this.f759c;
        if (pVar != null) {
            pVar.setListSelectionHidden(true);
            pVar.requestLayout();
        }
    }

    @Override // f.i
    public boolean f() {
        return this.L.isShowing();
    }

    @Override // f.i
    public android.widget.ListView g() {
        return this.f759c;
    }

    public androidx.appcompat.widget.p h(android.content.Context context, boolean z4) {
        return new androidx.appcompat.widget.p(context, z4);
    }

    public android.view.View i() {
        return this.f776y;
    }

    public android.graphics.drawable.Drawable j() {
        return this.L.getBackground();
    }

    public int k() {
        return this.f762f;
    }

    public final int l(android.view.View view, int i5, boolean z4) {
        java.lang.reflect.Method method = N;
        if (method != null) {
            try {
                return ((java.lang.Integer) method.invoke(this.L, view, java.lang.Integer.valueOf(i5), java.lang.Boolean.valueOf(z4))).intValue();
            } catch (java.lang.Exception unused) {
                android.util.Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.L.getMaxAvailableHeight(view, i5);
    }

    public int m() {
        if (this.f765i) {
            return this.f763g;
        }
        return 0;
    }

    public int n() {
        return this.f761e;
    }

    public boolean o() {
        return this.L.getInputMethodMode() == 2;
    }

    public boolean p() {
        return this.K;
    }

    public final void q() {
        android.view.View view = this.f773v;
        if (view != null) {
            android.view.ViewParent parent = view.getParent();
            if (parent instanceof android.view.ViewGroup) {
                ((android.view.ViewGroup) parent).removeView(this.f773v);
            }
        }
    }

    public void r(android.widget.ListAdapter listAdapter) {
        android.database.DataSetObserver dataSetObserver = this.f775x;
        if (dataSetObserver == null) {
            this.f775x = new androidx.appcompat.widget.ListPopupWindow.d();
        } else {
            android.widget.ListAdapter listAdapter2 = this.f758b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f758b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f775x);
        }
        androidx.appcompat.widget.p pVar = this.f759c;
        if (pVar != null) {
            pVar.setAdapter(this.f758b);
        }
    }

    public void s(android.view.View view) {
        this.f776y = view;
    }

    public void t(int i5) {
        this.L.setAnimationStyle(i5);
    }

    public void u(android.graphics.drawable.Drawable drawable) {
        this.L.setBackgroundDrawable(drawable);
    }

    public void v(int i5) {
        android.graphics.drawable.Drawable background = this.L.getBackground();
        if (background == null) {
            I(i5);
            return;
        }
        background.getPadding(this.I);
        android.graphics.Rect rect = this.I;
        this.f761e = rect.left + rect.right + i5;
    }

    public void w(int i5) {
        this.f769r = i5;
    }

    public void x(android.graphics.Rect rect) {
        this.J = rect;
    }

    public void y(int i5) {
        this.f762f = i5;
    }

    public void z(int i5) {
        this.L.setInputMethodMode(i5);
    }

    public ListPopupWindow(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        this(context, attributeSet, i5, 0);
    }

    public ListPopupWindow(android.content.Context context, android.util.AttributeSet attributeSet, int i5, int i6) {
        this.f760d = -2;
        this.f761e = -2;
        this.f764h = com.alibaba.fastjson.JSONStreamContext.PropertyKey;
        this.f766o = true;
        this.f769r = 0;
        this.f770s = false;
        this.f771t = false;
        this.f772u = Integer.MAX_VALUE;
        this.f774w = 0;
        this.C = new androidx.appcompat.widget.ListPopupWindow.g();
        this.D = new androidx.appcompat.widget.ListPopupWindow.f();
        this.E = new androidx.appcompat.widget.ListPopupWindow.e();
        this.F = new androidx.appcompat.widget.ListPopupWindow.c();
        this.I = new android.graphics.Rect();
        this.f757a = context;
        this.H = new android.os.Handler(context.getMainLooper());
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.ListPopupWindow, i5, i6);
        this.f762f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(androidx.appcompat.R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(androidx.appcompat.R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f763g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f765i = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        androidx.appcompat.widget.AppCompatPopupWindow appCompatPopupWindow = new androidx.appcompat.widget.AppCompatPopupWindow(context, attributeSet, i5, i6);
        this.L = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }
}
