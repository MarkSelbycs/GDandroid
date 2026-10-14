package androidx.appcompat.widget;

/* JADX INFO: compiled from: AppCompatBackgroundHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.view.View f915a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f918d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f919e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f920f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f917c = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.widget.f f916b = androidx.appcompat.widget.f.m();

    public d(android.view.View view) {
        this.f915a = view;
    }

    public final boolean a(android.graphics.drawable.Drawable drawable) {
        if (this.f920f == null) {
            this.f920f = new androidx.appcompat.widget.b0();
        }
        androidx.appcompat.widget.b0 b0Var = this.f920f;
        b0Var.a();
        android.content.res.ColorStateList colorStateListI = w.q.i(this.f915a);
        if (colorStateListI != null) {
            b0Var.f913d = true;
            b0Var.f910a = colorStateListI;
        }
        android.graphics.PorterDuff.Mode modeJ = w.q.j(this.f915a);
        if (modeJ != null) {
            b0Var.f912c = true;
            b0Var.f911b = modeJ;
        }
        if (!b0Var.f913d && !b0Var.f912c) {
            return false;
        }
        androidx.appcompat.widget.f.B(drawable, b0Var, this.f915a.getDrawableState());
        return true;
    }

    public void b() {
        android.graphics.drawable.Drawable background = this.f915a.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            androidx.appcompat.widget.b0 b0Var = this.f919e;
            if (b0Var != null) {
                androidx.appcompat.widget.f.B(background, b0Var, this.f915a.getDrawableState());
                return;
            }
            androidx.appcompat.widget.b0 b0Var2 = this.f918d;
            if (b0Var2 != null) {
                androidx.appcompat.widget.f.B(background, b0Var2, this.f915a.getDrawableState());
            }
        }
    }

    public android.content.res.ColorStateList c() {
        androidx.appcompat.widget.b0 b0Var = this.f919e;
        if (b0Var != null) {
            return b0Var.f910a;
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode d() {
        androidx.appcompat.widget.b0 b0Var = this.f919e;
        if (b0Var != null) {
            return b0Var.f911b;
        }
        return null;
    }

    public void e(android.util.AttributeSet attributeSet, int i5) {
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(this.f915a.getContext(), attributeSet, androidx.appcompat.R.styleable.ViewBackgroundHelper, i5, 0);
        try {
            int i6 = androidx.appcompat.R.styleable.ViewBackgroundHelper_android_background;
            if (d0VarT.q(i6)) {
                this.f917c = d0VarT.m(i6, -1);
                android.content.res.ColorStateList colorStateListR = this.f916b.r(this.f915a.getContext(), this.f917c);
                if (colorStateListR != null) {
                    h(colorStateListR);
                }
            }
            int i7 = androidx.appcompat.R.styleable.ViewBackgroundHelper_backgroundTint;
            if (d0VarT.q(i7)) {
                w.q.S(this.f915a, d0VarT.c(i7));
            }
            int i8 = androidx.appcompat.R.styleable.ViewBackgroundHelper_backgroundTintMode;
            if (d0VarT.q(i8)) {
                w.q.T(this.f915a, androidx.appcompat.widget.o.d(d0VarT.j(i8, -1), null));
            }
        } finally {
            d0VarT.u();
        }
    }

    public void f(android.graphics.drawable.Drawable drawable) {
        this.f917c = -1;
        h(null);
        b();
    }

    public void g(int i5) {
        this.f917c = i5;
        androidx.appcompat.widget.f fVar = this.f916b;
        h(fVar != null ? fVar.r(this.f915a.getContext(), i5) : null);
        b();
    }

    public void h(android.content.res.ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f918d == null) {
                this.f918d = new androidx.appcompat.widget.b0();
            }
            androidx.appcompat.widget.b0 b0Var = this.f918d;
            b0Var.f910a = colorStateList;
            b0Var.f913d = true;
        } else {
            this.f918d = null;
        }
        b();
    }

    public void i(android.content.res.ColorStateList colorStateList) {
        if (this.f919e == null) {
            this.f919e = new androidx.appcompat.widget.b0();
        }
        androidx.appcompat.widget.b0 b0Var = this.f919e;
        b0Var.f910a = colorStateList;
        b0Var.f913d = true;
        b();
    }

    public void j(android.graphics.PorterDuff.Mode mode) {
        if (this.f919e == null) {
            this.f919e = new androidx.appcompat.widget.b0();
        }
        androidx.appcompat.widget.b0 b0Var = this.f919e;
        b0Var.f911b = mode;
        b0Var.f912c = true;
        b();
    }

    public final boolean k() {
        return this.f918d != null;
    }
}
