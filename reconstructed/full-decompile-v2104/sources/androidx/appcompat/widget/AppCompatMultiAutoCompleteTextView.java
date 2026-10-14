package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatMultiAutoCompleteTextView extends android.widget.MultiAutoCompleteTextView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f697c = {android.R.attr.popupBackground};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.d f698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.widget.k f699b;

    public AppCompatMultiAutoCompleteTextView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.autoCompleteTextViewStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.d dVar = this.f698a;
        if (dVar != null) {
            dVar.b();
        }
        androidx.appcompat.widget.k kVar = this.f699b;
        if (kVar != null) {
            kVar.b();
        }
    }

    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.d dVar = this.f698a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.d dVar = this.f698a;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo editorInfo) {
        return androidx.appcompat.widget.g.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.d dVar = this.f698a;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        androidx.appcompat.widget.d dVar = this.f698a;
        if (dVar != null) {
            dVar.g(i5);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i5) {
        setDropDownBackgroundDrawable(b.a.b(getContext(), i5));
    }

    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        androidx.appcompat.widget.d dVar = this.f698a;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        androidx.appcompat.widget.d dVar = this.f698a;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(android.content.Context context, int i5) {
        super.setTextAppearance(context, i5);
        androidx.appcompat.widget.k kVar = this.f699b;
        if (kVar != null) {
            kVar.n(context, i5);
        }
    }

    public AppCompatMultiAutoCompleteTextView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(androidx.appcompat.widget.a0.b(context), attributeSet, i5);
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(getContext(), attributeSet, f697c, i5, 0);
        if (d0VarT.q(0)) {
            setDropDownBackgroundDrawable(d0VarT.f(0));
        }
        d0VarT.u();
        androidx.appcompat.widget.d dVar = new androidx.appcompat.widget.d(this);
        this.f698a = dVar;
        dVar.e(attributeSet, i5);
        androidx.appcompat.widget.k kVar = new androidx.appcompat.widget.k(this);
        this.f699b = kVar;
        kVar.k(attributeSet, i5);
        kVar.b();
    }
}
