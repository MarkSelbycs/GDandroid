package androidx.appcompat.widget;

/* JADX INFO: compiled from: AppCompatSeekBarHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j extends androidx.appcompat.widget.i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final android.widget.SeekBar f977d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.graphics.drawable.Drawable f978e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.content.res.ColorStateList f979f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f980g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f981h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f982i;

    public j(android.widget.SeekBar seekBar) {
        super(seekBar);
        this.f979f = null;
        this.f980g = null;
        this.f981h = false;
        this.f982i = false;
        this.f977d = seekBar;
    }

    @Override // androidx.appcompat.widget.i
    public void c(android.util.AttributeSet attributeSet, int i5) {
        super.c(attributeSet, i5);
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(this.f977d.getContext(), attributeSet, androidx.appcompat.R.styleable.AppCompatSeekBar, i5, 0);
        android.graphics.drawable.Drawable drawableG = d0VarT.g(androidx.appcompat.R.styleable.AppCompatSeekBar_android_thumb);
        if (drawableG != null) {
            this.f977d.setThumb(drawableG);
        }
        j(d0VarT.f(androidx.appcompat.R.styleable.AppCompatSeekBar_tickMark));
        int i6 = androidx.appcompat.R.styleable.AppCompatSeekBar_tickMarkTintMode;
        if (d0VarT.q(i6)) {
            this.f980g = androidx.appcompat.widget.o.d(d0VarT.j(i6, -1), this.f980g);
            this.f982i = true;
        }
        int i7 = androidx.appcompat.R.styleable.AppCompatSeekBar_tickMarkTint;
        if (d0VarT.q(i7)) {
            this.f979f = d0VarT.c(i7);
            this.f981h = true;
        }
        d0VarT.u();
        f();
    }

    public final void f() {
        android.graphics.drawable.Drawable drawable = this.f978e;
        if (drawable != null) {
            if (this.f981h || this.f982i) {
                android.graphics.drawable.Drawable drawableK = p.a.k(drawable.mutate());
                this.f978e = drawableK;
                if (this.f981h) {
                    p.a.h(drawableK, this.f979f);
                }
                if (this.f982i) {
                    p.a.i(this.f978e, this.f980g);
                }
                if (this.f978e.isStateful()) {
                    this.f978e.setState(this.f977d.getDrawableState());
                }
            }
        }
    }

    public void g(android.graphics.Canvas canvas) {
        if (this.f978e != null) {
            int max = this.f977d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f978e.getIntrinsicWidth();
                int intrinsicHeight = this.f978e.getIntrinsicHeight();
                int i5 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i6 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f978e.setBounds(-i5, -i6, i5, i6);
                float width = ((this.f977d.getWidth() - this.f977d.getPaddingLeft()) - this.f977d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f977d.getPaddingLeft(), this.f977d.getHeight() / 2);
                for (int i7 = 0; i7 <= max; i7++) {
                    this.f978e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }

    public void h() {
        android.graphics.drawable.Drawable drawable = this.f978e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f977d.getDrawableState())) {
            this.f977d.invalidateDrawable(drawable);
        }
    }

    public void i() {
        android.graphics.drawable.Drawable drawable = this.f978e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public void j(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2 = this.f978e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f978e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f977d);
            p.a.f(drawable, w.q.p(this.f977d));
            if (drawable.isStateful()) {
                drawable.setState(this.f977d.getDrawableState());
            }
            f();
        }
        this.f977d.invalidate();
    }
}
