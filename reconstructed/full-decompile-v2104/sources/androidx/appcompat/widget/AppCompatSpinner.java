package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatSpinner extends android.widget.Spinner {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f706i = {android.R.attr.spinnerMode};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.d f707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.Context f708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.appcompat.widget.r f709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.widget.SpinnerAdapter f710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.appcompat.widget.AppCompatSpinner.c f712f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f713g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final android.graphics.Rect f714h;

    public class a extends androidx.appcompat.widget.r {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final /* synthetic */ androidx.appcompat.widget.AppCompatSpinner.c f715o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(android.view.View view, androidx.appcompat.widget.AppCompatSpinner.c cVar) {
            super(view);
            this.f715o = cVar;
        }

        @Override // androidx.appcompat.widget.r
        public f.i b() {
            return this.f715o;
        }

        @Override // androidx.appcompat.widget.r
        public boolean c() {
            if (androidx.appcompat.widget.AppCompatSpinner.this.f712f.f()) {
                return true;
            }
            androidx.appcompat.widget.AppCompatSpinner.this.f712f.b();
            return true;
        }
    }

    public static class b implements android.widget.ListAdapter, android.widget.SpinnerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public android.widget.SpinnerAdapter f717a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public android.widget.ListAdapter f718b;

        public b(android.widget.SpinnerAdapter spinnerAdapter, android.content.res.Resources.Theme theme) {
            this.f717a = spinnerAdapter;
            if (spinnerAdapter instanceof android.widget.ListAdapter) {
                this.f718b = (android.widget.ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (spinnerAdapter instanceof android.widget.ThemedSpinnerAdapter) {
                    android.widget.ThemedSpinnerAdapter themedSpinnerAdapter = (android.widget.ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                        return;
                    }
                    return;
                }
                if (spinnerAdapter instanceof androidx.appcompat.widget.z) {
                    androidx.appcompat.widget.z zVar = (androidx.appcompat.widget.z) spinnerAdapter;
                    if (zVar.getDropDownViewTheme() == null) {
                        zVar.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            android.widget.ListAdapter listAdapter = this.f718b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            android.widget.SpinnerAdapter spinnerAdapter = this.f717a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public android.view.View getDropDownView(int i5, android.view.View view, android.view.ViewGroup viewGroup) {
            android.widget.SpinnerAdapter spinnerAdapter = this.f717a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i5, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public java.lang.Object getItem(int i5) {
            android.widget.SpinnerAdapter spinnerAdapter = this.f717a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i5);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i5) {
            android.widget.SpinnerAdapter spinnerAdapter = this.f717a;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i5);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i5) {
            return 0;
        }

        @Override // android.widget.Adapter
        public android.view.View getView(int i5, android.view.View view, android.view.ViewGroup viewGroup) {
            return getDropDownView(i5, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            android.widget.SpinnerAdapter spinnerAdapter = this.f717a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i5) {
            android.widget.ListAdapter listAdapter = this.f718b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i5);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(android.database.DataSetObserver dataSetObserver) {
            android.widget.SpinnerAdapter spinnerAdapter = this.f717a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(android.database.DataSetObserver dataSetObserver) {
            android.widget.SpinnerAdapter spinnerAdapter = this.f717a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    public class c extends androidx.appcompat.widget.ListPopupWindow {
        public java.lang.CharSequence P;
        public android.widget.ListAdapter Q;
        public final android.graphics.Rect R;

        public class a implements android.widget.AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ androidx.appcompat.widget.AppCompatSpinner f719a;

            public a(androidx.appcompat.widget.AppCompatSpinner appCompatSpinner) {
                this.f719a = appCompatSpinner;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i5, long j5) {
                androidx.appcompat.widget.AppCompatSpinner.this.setSelection(i5);
                if (androidx.appcompat.widget.AppCompatSpinner.this.getOnItemClickListener() != null) {
                    androidx.appcompat.widget.AppCompatSpinner.c cVar = androidx.appcompat.widget.AppCompatSpinner.c.this;
                    androidx.appcompat.widget.AppCompatSpinner.this.performItemClick(view, i5, cVar.Q.getItemId(i5));
                }
                androidx.appcompat.widget.AppCompatSpinner.c.this.dismiss();
            }
        }

        public class b implements android.view.ViewTreeObserver.OnGlobalLayoutListener {
            public b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                androidx.appcompat.widget.AppCompatSpinner.c cVar = androidx.appcompat.widget.AppCompatSpinner.c.this;
                if (!cVar.M(androidx.appcompat.widget.AppCompatSpinner.this)) {
                    androidx.appcompat.widget.AppCompatSpinner.c.this.dismiss();
                } else {
                    androidx.appcompat.widget.AppCompatSpinner.c.this.K();
                    androidx.appcompat.widget.AppCompatSpinner.c.super.b();
                }
            }
        }

        /* JADX INFO: renamed from: androidx.appcompat.widget.AppCompatSpinner$c$c, reason: collision with other inner class name */
        public class C0004c implements android.widget.PopupWindow.OnDismissListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ android.view.ViewTreeObserver.OnGlobalLayoutListener f722a;

            public C0004c(android.view.ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f722a = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                android.view.ViewTreeObserver viewTreeObserver = androidx.appcompat.widget.AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f722a);
                }
            }
        }

        public c(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
            super(context, attributeSet, i5);
            this.R = new android.graphics.Rect();
            s(androidx.appcompat.widget.AppCompatSpinner.this);
            A(true);
            F(0);
            C(new androidx.appcompat.widget.AppCompatSpinner.c.a(androidx.appcompat.widget.AppCompatSpinner.this));
        }

        public void K() {
            android.graphics.drawable.Drawable drawableJ = j();
            int i5 = 0;
            if (drawableJ != null) {
                drawableJ.getPadding(androidx.appcompat.widget.AppCompatSpinner.this.f714h);
                i5 = androidx.appcompat.widget.h0.b(androidx.appcompat.widget.AppCompatSpinner.this) ? androidx.appcompat.widget.AppCompatSpinner.this.f714h.right : -androidx.appcompat.widget.AppCompatSpinner.this.f714h.left;
            } else {
                android.graphics.Rect rect = androidx.appcompat.widget.AppCompatSpinner.this.f714h;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = androidx.appcompat.widget.AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = androidx.appcompat.widget.AppCompatSpinner.this.getPaddingRight();
            int width = androidx.appcompat.widget.AppCompatSpinner.this.getWidth();
            androidx.appcompat.widget.AppCompatSpinner appCompatSpinner = androidx.appcompat.widget.AppCompatSpinner.this;
            int i6 = appCompatSpinner.f713g;
            if (i6 == -2) {
                int iA = appCompatSpinner.a((android.widget.SpinnerAdapter) this.Q, j());
                int i7 = androidx.appcompat.widget.AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                android.graphics.Rect rect2 = androidx.appcompat.widget.AppCompatSpinner.this.f714h;
                int i8 = (i7 - rect2.left) - rect2.right;
                if (iA > i8) {
                    iA = i8;
                }
                v(java.lang.Math.max(iA, (width - paddingLeft) - paddingRight));
            } else if (i6 == -1) {
                v((width - paddingLeft) - paddingRight);
            } else {
                v(i6);
            }
            y(androidx.appcompat.widget.h0.b(androidx.appcompat.widget.AppCompatSpinner.this) ? i5 + ((width - paddingRight) - n()) : i5 + paddingLeft);
        }

        public java.lang.CharSequence L() {
            return this.P;
        }

        public boolean M(android.view.View view) {
            return w.q.C(view) && view.getGlobalVisibleRect(this.R);
        }

        public void N(java.lang.CharSequence charSequence) {
            this.P = charSequence;
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, f.i
        public void b() {
            android.view.ViewTreeObserver viewTreeObserver;
            boolean zF = f();
            K();
            z(2);
            super.b();
            g().setChoiceMode(1);
            G(androidx.appcompat.widget.AppCompatSpinner.this.getSelectedItemPosition());
            if (zF || (viewTreeObserver = androidx.appcompat.widget.AppCompatSpinner.this.getViewTreeObserver()) == null) {
                return;
            }
            androidx.appcompat.widget.AppCompatSpinner.c.b bVar = new androidx.appcompat.widget.AppCompatSpinner.c.b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            B(new androidx.appcompat.widget.AppCompatSpinner.c.C0004c(bVar));
        }

        @Override // androidx.appcompat.widget.ListPopupWindow
        public void r(android.widget.ListAdapter listAdapter) {
            super.r(listAdapter);
            this.Q = listAdapter;
        }
    }

    public AppCompatSpinner(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.spinnerStyle);
    }

    public int a(android.widget.SpinnerAdapter spinnerAdapter, android.graphics.drawable.Drawable drawable) {
        int i5 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = java.lang.Math.max(0, getSelectedItemPosition());
        int iMin = java.lang.Math.min(spinnerAdapter.getCount(), iMax + 15);
        android.view.View view = null;
        int iMax2 = 0;
        for (int iMax3 = java.lang.Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i5) {
                view = null;
                i5 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = java.lang.Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.f714h);
        android.graphics.Rect rect = this.f714h;
        return iMax2 + rect.left + rect.right;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.d dVar = this.f707a;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        androidx.appcompat.widget.AppCompatSpinner.c cVar = this.f712f;
        return cVar != null ? cVar.k() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        androidx.appcompat.widget.AppCompatSpinner.c cVar = this.f712f;
        return cVar != null ? cVar.m() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f712f != null ? this.f713g : super.getDropDownWidth();
    }

    @Override // android.widget.Spinner
    public android.graphics.drawable.Drawable getPopupBackground() {
        androidx.appcompat.widget.AppCompatSpinner.c cVar = this.f712f;
        return cVar != null ? cVar.j() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public android.content.Context getPopupContext() {
        return this.f712f != null ? this.f708b : super.getPopupContext();
    }

    @Override // android.widget.Spinner
    public java.lang.CharSequence getPrompt() {
        androidx.appcompat.widget.AppCompatSpinner.c cVar = this.f712f;
        return cVar != null ? cVar.L() : super.getPrompt();
    }

    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.d dVar = this.f707a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.d dVar = this.f707a;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        androidx.appcompat.widget.AppCompatSpinner.c cVar = this.f712f;
        if (cVar == null || !cVar.f()) {
            return;
        }
        this.f712f.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
        if (this.f712f == null || android.view.View.MeasureSpec.getMode(i5) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(java.lang.Math.min(java.lang.Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), android.view.View.MeasureSpec.getSize(i5)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        androidx.appcompat.widget.r rVar = this.f709c;
        if (rVar == null || !rVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        androidx.appcompat.widget.AppCompatSpinner.c cVar = this.f712f;
        if (cVar == null) {
            return super.performClick();
        }
        if (cVar.f()) {
            return true;
        }
        this.f712f.b();
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.d dVar = this.f707a;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        androidx.appcompat.widget.d dVar = this.f707a;
        if (dVar != null) {
            dVar.g(i5);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i5) {
        androidx.appcompat.widget.AppCompatSpinner.c cVar = this.f712f;
        if (cVar != null) {
            cVar.y(i5);
        } else {
            super.setDropDownHorizontalOffset(i5);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i5) {
        androidx.appcompat.widget.AppCompatSpinner.c cVar = this.f712f;
        if (cVar != null) {
            cVar.H(i5);
        } else {
            super.setDropDownVerticalOffset(i5);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i5) {
        if (this.f712f != null) {
            this.f713g = i5;
        } else {
            super.setDropDownWidth(i5);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        androidx.appcompat.widget.AppCompatSpinner.c cVar = this.f712f;
        if (cVar != null) {
            cVar.u(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i5) {
        setPopupBackgroundDrawable(b.a.b(getPopupContext(), i5));
    }

    @Override // android.widget.Spinner
    public void setPrompt(java.lang.CharSequence charSequence) {
        androidx.appcompat.widget.AppCompatSpinner.c cVar = this.f712f;
        if (cVar != null) {
            cVar.N(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        androidx.appcompat.widget.d dVar = this.f707a;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        androidx.appcompat.widget.d dVar = this.f707a;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    public AppCompatSpinner(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        this(context, attributeSet, i5, -1);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(android.widget.SpinnerAdapter spinnerAdapter) {
        if (!this.f711e) {
            this.f710d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f712f != null) {
            android.content.Context context = this.f708b;
            if (context == null) {
                context = getContext();
            }
            this.f712f.r(new androidx.appcompat.widget.AppCompatSpinner.b(spinnerAdapter, context.getTheme()));
        }
    }

    public AppCompatSpinner(android.content.Context context, android.util.AttributeSet attributeSet, int i5, int i6) {
        this(context, attributeSet, i5, i6, null);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x006b  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v9, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.view.View, androidx.appcompat.widget.AppCompatSpinner] */
    public AppCompatSpinner(android.content.Context context, android.util.AttributeSet attributeSet, int i5, int i6, android.content.res.Resources.Theme theme) throws java.lang.Throwable {
        java.lang.CharSequence[] charSequenceArrP;
        android.widget.SpinnerAdapter spinnerAdapter;
        android.content.res.TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i5);
        this.f714h = new android.graphics.Rect();
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(context, attributeSet, androidx.appcompat.R.styleable.Spinner, i5, 0);
        this.f707a = new androidx.appcompat.widget.d(this);
        ?? r5 = 0;
        if (theme != null) {
            this.f708b = new e.d(context, theme);
        } else {
            int iM = d0VarT.m(androidx.appcompat.R.styleable.Spinner_popupTheme, 0);
            if (iM != 0) {
                this.f708b = new e.d(context, iM);
            } else {
                this.f708b = null;
            }
        }
        if (this.f708b != null) {
            ?? r12 = -1;
            try {
                if (i6 == -1) {
                    try {
                        typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f706i, i5, 0);
                        try {
                            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(0);
                            r12 = typedArrayObtainStyledAttributes;
                            if (zHasValue) {
                                i6 = typedArrayObtainStyledAttributes.getInt(0, 0);
                                r12 = typedArrayObtainStyledAttributes;
                            }
                        } catch (java.lang.Exception e5) {
                            e = e5;
                            android.util.Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
                            r12 = typedArrayObtainStyledAttributes;
                            if (typedArrayObtainStyledAttributes != null) {
                            }
                            if (i6 == 1) {
                                androidx.appcompat.widget.AppCompatSpinner.c cVar = new androidx.appcompat.widget.AppCompatSpinner.c(this.f708b, attributeSet, i5);
                                androidx.appcompat.widget.d0 d0VarT2 = androidx.appcompat.widget.d0.t(this.f708b, attributeSet, androidx.appcompat.R.styleable.Spinner, i5, 0);
                                this.f713g = d0VarT2.l(androidx.appcompat.R.styleable.Spinner_android_dropDownWidth, -2);
                                cVar.u(d0VarT2.f(androidx.appcompat.R.styleable.Spinner_android_popupBackground));
                                cVar.N(d0VarT.n(androidx.appcompat.R.styleable.Spinner_android_prompt));
                                d0VarT2.u();
                                this.f712f = cVar;
                                this.f709c = new androidx.appcompat.widget.AppCompatSpinner.a(this, cVar);
                            }
                            charSequenceArrP = d0VarT.p(androidx.appcompat.R.styleable.Spinner_android_entries);
                            if (charSequenceArrP != null) {
                                android.widget.ArrayAdapter arrayAdapter = new android.widget.ArrayAdapter(context, android.R.layout.simple_spinner_item, charSequenceArrP);
                                arrayAdapter.setDropDownViewResource(androidx.appcompat.R.layout.support_simple_spinner_dropdown_item);
                                setAdapter(arrayAdapter);
                            }
                            d0VarT.u();
                            this.f711e = true;
                            spinnerAdapter = this.f710d;
                            if (spinnerAdapter != null) {
                                setAdapter(spinnerAdapter);
                                this.f710d = null;
                            }
                            this.f707a.e(attributeSet, i5);
                        }
                    } catch (java.lang.Exception e6) {
                        e = e6;
                        typedArrayObtainStyledAttributes = null;
                    } catch (java.lang.Throwable th) {
                        th = th;
                        if (r5 != 0) {
                            r5.recycle();
                        }
                        throw th;
                    }
                    r12.recycle();
                }
                if (i6 == 1) {
                    androidx.appcompat.widget.AppCompatSpinner.c cVar2 = new androidx.appcompat.widget.AppCompatSpinner.c(this.f708b, attributeSet, i5);
                    androidx.appcompat.widget.d0 d0VarT3 = androidx.appcompat.widget.d0.t(this.f708b, attributeSet, androidx.appcompat.R.styleable.Spinner, i5, 0);
                    this.f713g = d0VarT3.l(androidx.appcompat.R.styleable.Spinner_android_dropDownWidth, -2);
                    cVar2.u(d0VarT3.f(androidx.appcompat.R.styleable.Spinner_android_popupBackground));
                    cVar2.N(d0VarT.n(androidx.appcompat.R.styleable.Spinner_android_prompt));
                    d0VarT3.u();
                    this.f712f = cVar2;
                    this.f709c = new androidx.appcompat.widget.AppCompatSpinner.a(this, cVar2);
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                r5 = r12;
            }
        }
        charSequenceArrP = d0VarT.p(androidx.appcompat.R.styleable.Spinner_android_entries);
        if (charSequenceArrP != null) {
            android.widget.ArrayAdapter arrayAdapter2 = new android.widget.ArrayAdapter(context, android.R.layout.simple_spinner_item, charSequenceArrP);
            arrayAdapter2.setDropDownViewResource(androidx.appcompat.R.layout.support_simple_spinner_dropdown_item);
            setAdapter(arrayAdapter2);
        }
        d0VarT.u();
        this.f711e = true;
        spinnerAdapter = this.f710d;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f710d = null;
        }
        this.f707a.e(attributeSet, i5);
    }
}
