package androidx.appcompat.widget;

/* JADX INFO: compiled from: AppCompatTextHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.widget.TextView f983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f986d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f988f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f989g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final androidx.appcompat.widget.l f990h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f991i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public android.graphics.Typeface f992j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f993k;

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    public class a extends n.d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.ref.WeakReference f994a;

        public a(java.lang.ref.WeakReference weakReference) {
            this.f994a = weakReference;
        }

        @Override // n.d.a
        /* JADX INFO: renamed from: h */
        public void f(int i5) {
        }

        @Override // n.d.a
        /* JADX INFO: renamed from: i */
        public void g(android.graphics.Typeface typeface) {
            androidx.appcompat.widget.k.this.l(this.f994a, typeface);
        }
    }

    public k(android.widget.TextView textView) {
        this.f983a = textView;
        this.f990h = new androidx.appcompat.widget.l(textView);
    }

    public static androidx.appcompat.widget.b0 d(android.content.Context context, androidx.appcompat.widget.f fVar, int i5) {
        android.content.res.ColorStateList colorStateListR = fVar.r(context, i5);
        if (colorStateListR == null) {
            return null;
        }
        androidx.appcompat.widget.b0 b0Var = new androidx.appcompat.widget.b0();
        b0Var.f913d = true;
        b0Var.f910a = colorStateListR;
        return b0Var;
    }

    public final void a(android.graphics.drawable.Drawable drawable, androidx.appcompat.widget.b0 b0Var) {
        if (drawable == null || b0Var == null) {
            return;
        }
        androidx.appcompat.widget.f.B(drawable, b0Var, this.f983a.getDrawableState());
    }

    public void b() {
        if (this.f984b != null || this.f985c != null || this.f986d != null || this.f987e != null) {
            android.graphics.drawable.Drawable[] compoundDrawables = this.f983a.getCompoundDrawables();
            a(compoundDrawables[0], this.f984b);
            a(compoundDrawables[1], this.f985c);
            a(compoundDrawables[2], this.f986d);
            a(compoundDrawables[3], this.f987e);
        }
        if (this.f988f == null && this.f989g == null) {
            return;
        }
        android.graphics.drawable.Drawable[] compoundDrawablesRelative = this.f983a.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f988f);
        a(compoundDrawablesRelative[2], this.f989g);
    }

    public void c() {
        this.f990h.a();
    }

    public int e() {
        return this.f990h.f();
    }

    public int f() {
        return this.f990h.g();
    }

    public int g() {
        return this.f990h.h();
    }

    public int[] h() {
        return this.f990h.i();
    }

    public int i() {
        return this.f990h.j();
    }

    public boolean j() {
        return this.f990h.m();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c8  */
    @android.annotation.SuppressLint({"NewApi"})
    public void k(android.util.AttributeSet attributeSet, int i5) {
        boolean zA;
        boolean z4;
        android.content.Context context = this.f983a.getContext();
        androidx.appcompat.widget.f fVarM = androidx.appcompat.widget.f.m();
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(context, attributeSet, androidx.appcompat.R.styleable.AppCompatTextHelper, i5, 0);
        int iM = d0VarT.m(androidx.appcompat.R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        int i6 = androidx.appcompat.R.styleable.AppCompatTextHelper_android_drawableLeft;
        if (d0VarT.q(i6)) {
            this.f984b = d(context, fVarM, d0VarT.m(i6, 0));
        }
        int i7 = androidx.appcompat.R.styleable.AppCompatTextHelper_android_drawableTop;
        if (d0VarT.q(i7)) {
            this.f985c = d(context, fVarM, d0VarT.m(i7, 0));
        }
        int i8 = androidx.appcompat.R.styleable.AppCompatTextHelper_android_drawableRight;
        if (d0VarT.q(i8)) {
            this.f986d = d(context, fVarM, d0VarT.m(i8, 0));
        }
        int i9 = androidx.appcompat.R.styleable.AppCompatTextHelper_android_drawableBottom;
        if (d0VarT.q(i9)) {
            this.f987e = d(context, fVarM, d0VarT.m(i9, 0));
        }
        int i10 = androidx.appcompat.R.styleable.AppCompatTextHelper_android_drawableStart;
        if (d0VarT.q(i10)) {
            this.f988f = d(context, fVarM, d0VarT.m(i10, 0));
        }
        int i11 = androidx.appcompat.R.styleable.AppCompatTextHelper_android_drawableEnd;
        if (d0VarT.q(i11)) {
            this.f989g = d(context, fVarM, d0VarT.m(i11, 0));
        }
        d0VarT.u();
        boolean z5 = this.f983a.getTransformationMethod() instanceof android.text.method.PasswordTransformationMethod;
        boolean z6 = true;
        if (iM != -1) {
            androidx.appcompat.widget.d0 d0VarR = androidx.appcompat.widget.d0.r(context, iM, androidx.appcompat.R.styleable.TextAppearance);
            if (z5) {
                zA = false;
                z4 = false;
            } else {
                int i12 = androidx.appcompat.R.styleable.TextAppearance_textAllCaps;
                if (d0VarR.q(i12)) {
                    zA = d0VarR.a(i12, false);
                    z4 = true;
                } else {
                    zA = false;
                    z4 = false;
                }
            }
            u(context, d0VarR);
            d0VarR.u();
        } else {
            zA = false;
            z4 = false;
        }
        androidx.appcompat.widget.d0 d0VarT2 = androidx.appcompat.widget.d0.t(context, attributeSet, androidx.appcompat.R.styleable.TextAppearance, i5, 0);
        if (z5) {
            z6 = z4;
        } else {
            int i13 = androidx.appcompat.R.styleable.TextAppearance_textAllCaps;
            if (d0VarT2.q(i13)) {
                zA = d0VarT2.a(i13, false);
            } else {
                z6 = z4;
            }
        }
        int i14 = androidx.appcompat.R.styleable.TextAppearance_android_textSize;
        if (d0VarT2.q(i14) && d0VarT2.e(i14, -1) == 0) {
            this.f983a.setTextSize(0, 0.0f);
        }
        u(context, d0VarT2);
        d0VarT2.u();
        if (!z5 && z6) {
            o(zA);
        }
        android.graphics.Typeface typeface = this.f992j;
        if (typeface != null) {
            this.f983a.setTypeface(typeface, this.f991i);
        }
        this.f990h.n(attributeSet, i5);
        if (androidx.core.widget.b.f1446j && this.f990h.j() != 0) {
            int[] iArrI = this.f990h.i();
            if (iArrI.length > 0) {
                if (this.f983a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f983a.setAutoSizeTextTypeUniformWithConfiguration(this.f990h.g(), this.f990h.f(), this.f990h.h(), 0);
                } else {
                    this.f983a.setAutoSizeTextTypeUniformWithPresetSizes(iArrI, 0);
                }
            }
        }
        androidx.appcompat.widget.d0 d0VarS = androidx.appcompat.widget.d0.s(context, attributeSet, androidx.appcompat.R.styleable.AppCompatTextView);
        int iE = d0VarS.e(androidx.appcompat.R.styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
        int iE2 = d0VarS.e(androidx.appcompat.R.styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int iE3 = d0VarS.e(androidx.appcompat.R.styleable.AppCompatTextView_lineHeight, -1);
        d0VarS.u();
        if (iE != -1) {
            androidx.core.widget.k.e(this.f983a, iE);
        }
        if (iE2 != -1) {
            androidx.core.widget.k.f(this.f983a, iE2);
        }
        if (iE3 != -1) {
            androidx.core.widget.k.g(this.f983a, iE3);
        }
    }

    public void l(java.lang.ref.WeakReference<android.widget.TextView> weakReference, android.graphics.Typeface typeface) {
        if (this.f993k) {
            this.f992j = typeface;
            android.widget.TextView textView = weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, this.f991i);
            }
        }
    }

    public void m(boolean z4, int i5, int i6, int i7, int i8) {
        if (androidx.core.widget.b.f1446j) {
            return;
        }
        c();
    }

    public void n(android.content.Context context, int i5) {
        androidx.appcompat.widget.d0 d0VarR = androidx.appcompat.widget.d0.r(context, i5, androidx.appcompat.R.styleable.TextAppearance);
        int i6 = androidx.appcompat.R.styleable.TextAppearance_textAllCaps;
        if (d0VarR.q(i6)) {
            o(d0VarR.a(i6, false));
        }
        int i7 = androidx.appcompat.R.styleable.TextAppearance_android_textSize;
        if (d0VarR.q(i7) && d0VarR.e(i7, -1) == 0) {
            this.f983a.setTextSize(0, 0.0f);
        }
        u(context, d0VarR);
        d0VarR.u();
        android.graphics.Typeface typeface = this.f992j;
        if (typeface != null) {
            this.f983a.setTypeface(typeface, this.f991i);
        }
    }

    public void o(boolean z4) {
        this.f983a.setAllCaps(z4);
    }

    public void p(int i5, int i6, int i7, int i8) throws java.lang.IllegalArgumentException {
        this.f990h.o(i5, i6, i7, i8);
    }

    public void q(int[] iArr, int i5) throws java.lang.IllegalArgumentException {
        this.f990h.p(iArr, i5);
    }

    public void r(int i5) {
        this.f990h.q(i5);
    }

    public void s(int i5, float f5) {
        if (androidx.core.widget.b.f1446j || j()) {
            return;
        }
        t(i5, f5);
    }

    public final void t(int i5, float f5) {
        this.f990h.s(i5, f5);
    }

    public final void u(android.content.Context context, androidx.appcompat.widget.d0 d0Var) {
        java.lang.String strN;
        this.f991i = d0Var.j(androidx.appcompat.R.styleable.TextAppearance_android_textStyle, this.f991i);
        int i5 = androidx.appcompat.R.styleable.TextAppearance_android_fontFamily;
        if (d0Var.q(i5) || d0Var.q(androidx.appcompat.R.styleable.TextAppearance_fontFamily)) {
            this.f992j = null;
            int i6 = androidx.appcompat.R.styleable.TextAppearance_fontFamily;
            if (d0Var.q(i6)) {
                i5 = i6;
            }
            if (!context.isRestricted()) {
                try {
                    android.graphics.Typeface typefaceI = d0Var.i(i5, this.f991i, new androidx.appcompat.widget.k.a(new java.lang.ref.WeakReference(this.f983a)));
                    this.f992j = typefaceI;
                    this.f993k = typefaceI == null;
                } catch (android.content.res.Resources.NotFoundException | java.lang.UnsupportedOperationException unused) {
                }
            }
            if (this.f992j != null || (strN = d0Var.n(i5)) == null) {
                return;
            }
            this.f992j = android.graphics.Typeface.create(strN, this.f991i);
            return;
        }
        int i7 = androidx.appcompat.R.styleable.TextAppearance_android_typeface;
        if (d0Var.q(i7)) {
            this.f993k = false;
            int iJ = d0Var.j(i7, 1);
            if (iJ == 1) {
                this.f992j = android.graphics.Typeface.SANS_SERIF;
            } else if (iJ == 2) {
                this.f992j = android.graphics.Typeface.SERIF;
            } else {
                if (iJ != 3) {
                    return;
                }
                this.f992j = android.graphics.Typeface.MONOSPACE;
            }
        }
    }
}
