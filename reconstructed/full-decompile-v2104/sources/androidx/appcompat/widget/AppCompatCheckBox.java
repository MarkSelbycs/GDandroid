package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatCheckBox extends android.widget.CheckBox {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.e f688a;

    public AppCompatCheckBox(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.checkboxStyle);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        androidx.appcompat.widget.e eVar = this.f688a;
        return eVar != null ? eVar.b(compoundPaddingLeft) : compoundPaddingLeft;
    }

    public android.content.res.ColorStateList getSupportButtonTintList() {
        androidx.appcompat.widget.e eVar = this.f688a;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode getSupportButtonTintMode() {
        androidx.appcompat.widget.e eVar = this.f688a;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(android.graphics.drawable.Drawable drawable) {
        super.setButtonDrawable(drawable);
        androidx.appcompat.widget.e eVar = this.f688a;
        if (eVar != null) {
            eVar.f();
        }
    }

    public void setSupportButtonTintList(android.content.res.ColorStateList colorStateList) {
        androidx.appcompat.widget.e eVar = this.f688a;
        if (eVar != null) {
            eVar.g(colorStateList);
        }
    }

    public void setSupportButtonTintMode(android.graphics.PorterDuff.Mode mode) {
        androidx.appcompat.widget.e eVar = this.f688a;
        if (eVar != null) {
            eVar.h(mode);
        }
    }

    public AppCompatCheckBox(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(androidx.appcompat.widget.a0.b(context), attributeSet, i5);
        androidx.appcompat.widget.e eVar = new androidx.appcompat.widget.e(this);
        this.f688a = eVar;
        eVar.e(attributeSet, i5);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i5) {
        setButtonDrawable(b.a.b(getContext(), i5));
    }
}
