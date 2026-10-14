package androidx.appcompat.widget;

/* JADX INFO: compiled from: AppCompatImageHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.widget.ImageView f969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.appcompat.widget.b0 f972d;

    public h(android.widget.ImageView imageView) {
        this.f969a = imageView;
    }

    public final boolean a(android.graphics.drawable.Drawable drawable) {
        if (this.f972d == null) {
            this.f972d = new androidx.appcompat.widget.b0();
        }
        androidx.appcompat.widget.b0 b0Var = this.f972d;
        b0Var.a();
        android.content.res.ColorStateList colorStateListA = androidx.core.widget.g.a(this.f969a);
        if (colorStateListA != null) {
            b0Var.f913d = true;
            b0Var.f910a = colorStateListA;
        }
        android.graphics.PorterDuff.Mode modeB = androidx.core.widget.g.b(this.f969a);
        if (modeB != null) {
            b0Var.f912c = true;
            b0Var.f911b = modeB;
        }
        if (!b0Var.f913d && !b0Var.f912c) {
            return false;
        }
        androidx.appcompat.widget.f.B(drawable, b0Var, this.f969a.getDrawableState());
        return true;
    }

    public void b() {
        android.graphics.drawable.Drawable drawable = this.f969a.getDrawable();
        if (drawable != null) {
            androidx.appcompat.widget.o.b(drawable);
        }
        if (drawable != null) {
            if (j() && a(drawable)) {
                return;
            }
            androidx.appcompat.widget.b0 b0Var = this.f971c;
            if (b0Var != null) {
                androidx.appcompat.widget.f.B(drawable, b0Var, this.f969a.getDrawableState());
                return;
            }
            androidx.appcompat.widget.b0 b0Var2 = this.f970b;
            if (b0Var2 != null) {
                androidx.appcompat.widget.f.B(drawable, b0Var2, this.f969a.getDrawableState());
            }
        }
    }

    public android.content.res.ColorStateList c() {
        androidx.appcompat.widget.b0 b0Var = this.f971c;
        if (b0Var != null) {
            return b0Var.f910a;
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode d() {
        androidx.appcompat.widget.b0 b0Var = this.f971c;
        if (b0Var != null) {
            return b0Var.f911b;
        }
        return null;
    }

    public boolean e() {
        return !(this.f969a.getBackground() instanceof android.graphics.drawable.RippleDrawable);
    }

    public void f(android.util.AttributeSet attributeSet, int i5) {
        int iM;
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(this.f969a.getContext(), attributeSet, androidx.appcompat.R.styleable.AppCompatImageView, i5, 0);
        try {
            android.graphics.drawable.Drawable drawable = this.f969a.getDrawable();
            if (drawable == null && (iM = d0VarT.m(androidx.appcompat.R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = b.a.b(this.f969a.getContext(), iM)) != null) {
                this.f969a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                androidx.appcompat.widget.o.b(drawable);
            }
            int i6 = androidx.appcompat.R.styleable.AppCompatImageView_tint;
            if (d0VarT.q(i6)) {
                androidx.core.widget.g.c(this.f969a, d0VarT.c(i6));
            }
            int i7 = androidx.appcompat.R.styleable.AppCompatImageView_tintMode;
            if (d0VarT.q(i7)) {
                androidx.core.widget.g.d(this.f969a, androidx.appcompat.widget.o.d(d0VarT.j(i7, -1), null));
            }
        } finally {
            d0VarT.u();
        }
    }

    public void g(int i5) {
        if (i5 != 0) {
            android.graphics.drawable.Drawable drawableB = b.a.b(this.f969a.getContext(), i5);
            if (drawableB != null) {
                androidx.appcompat.widget.o.b(drawableB);
            }
            this.f969a.setImageDrawable(drawableB);
        } else {
            this.f969a.setImageDrawable(null);
        }
        b();
    }

    public void h(android.content.res.ColorStateList colorStateList) {
        if (this.f971c == null) {
            this.f971c = new androidx.appcompat.widget.b0();
        }
        androidx.appcompat.widget.b0 b0Var = this.f971c;
        b0Var.f910a = colorStateList;
        b0Var.f913d = true;
        b();
    }

    public void i(android.graphics.PorterDuff.Mode mode) {
        if (this.f971c == null) {
            this.f971c = new androidx.appcompat.widget.b0();
        }
        androidx.appcompat.widget.b0 b0Var = this.f971c;
        b0Var.f911b = mode;
        b0Var.f912c = true;
        b();
    }

    public final boolean j() {
        return this.f970b != null;
    }
}
