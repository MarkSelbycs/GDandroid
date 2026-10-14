package androidx.appcompat.widget;

/* JADX INFO: compiled from: AppCompatCompoundButtonHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.widget.CompoundButton f924a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.content.res.ColorStateList f925b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f926c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f927d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f928e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f929f;

    public e(android.widget.CompoundButton compoundButton) {
        this.f924a = compoundButton;
    }

    public void a() {
        android.graphics.drawable.Drawable drawableA = androidx.core.widget.c.a(this.f924a);
        if (drawableA != null) {
            if (this.f927d || this.f928e) {
                android.graphics.drawable.Drawable drawableMutate = p.a.k(drawableA).mutate();
                if (this.f927d) {
                    p.a.h(drawableMutate, this.f925b);
                }
                if (this.f928e) {
                    p.a.i(drawableMutate, this.f926c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f924a.getDrawableState());
                }
                this.f924a.setButtonDrawable(drawableMutate);
            }
        }
    }

    public int b(int i5) {
        return i5;
    }

    public android.content.res.ColorStateList c() {
        return this.f925b;
    }

    public android.graphics.PorterDuff.Mode d() {
        return this.f926c;
    }

    public void e(android.util.AttributeSet attributeSet, int i5) {
        int resourceId;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = this.f924a.getContext().obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.CompoundButton, i5, 0);
        try {
            int i6 = androidx.appcompat.R.styleable.CompoundButton_android_button;
            if (typedArrayObtainStyledAttributes.hasValue(i6) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(i6, 0)) != 0) {
                android.widget.CompoundButton compoundButton = this.f924a;
                compoundButton.setButtonDrawable(b.a.b(compoundButton.getContext(), resourceId));
            }
            int i7 = androidx.appcompat.R.styleable.CompoundButton_buttonTint;
            if (typedArrayObtainStyledAttributes.hasValue(i7)) {
                androidx.core.widget.c.b(this.f924a, typedArrayObtainStyledAttributes.getColorStateList(i7));
            }
            int i8 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode;
            if (typedArrayObtainStyledAttributes.hasValue(i8)) {
                androidx.core.widget.c.c(this.f924a, androidx.appcompat.widget.o.d(typedArrayObtainStyledAttributes.getInt(i8, -1), null));
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void f() {
        if (this.f929f) {
            this.f929f = false;
        } else {
            this.f929f = true;
            a();
        }
    }

    public void g(android.content.res.ColorStateList colorStateList) {
        this.f925b = colorStateList;
        this.f927d = true;
        a();
    }

    public void h(android.graphics.PorterDuff.Mode mode) {
        this.f926c = mode;
        this.f928e = true;
        a();
    }
}
