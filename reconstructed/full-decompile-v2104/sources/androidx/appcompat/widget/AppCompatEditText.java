package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatEditText extends android.widget.EditText {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.d f691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.widget.k f692b;

    public AppCompatEditText(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.editTextStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.d dVar = this.f691a;
        if (dVar != null) {
            dVar.b();
        }
        androidx.appcompat.widget.k kVar = this.f692b;
        if (kVar != null) {
            kVar.b();
        }
    }

    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.d dVar = this.f691a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.d dVar = this.f691a;
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
        androidx.appcompat.widget.d dVar = this.f691a;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        androidx.appcompat.widget.d dVar = this.f691a;
        if (dVar != null) {
            dVar.g(i5);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(android.view.ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.k.k(this, callback));
    }

    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        androidx.appcompat.widget.d dVar = this.f691a;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        androidx.appcompat.widget.d dVar = this.f691a;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(android.content.Context context, int i5) {
        super.setTextAppearance(context, i5);
        androidx.appcompat.widget.k kVar = this.f692b;
        if (kVar != null) {
            kVar.n(context, i5);
        }
    }

    public AppCompatEditText(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(androidx.appcompat.widget.a0.b(context), attributeSet, i5);
        androidx.appcompat.widget.d dVar = new androidx.appcompat.widget.d(this);
        this.f691a = dVar;
        dVar.e(attributeSet, i5);
        androidx.appcompat.widget.k kVar = new androidx.appcompat.widget.k(this);
        this.f692b = kVar;
        kVar.k(attributeSet, i5);
        kVar.b();
    }

    @Override // android.widget.EditText, android.widget.TextView
    public android.text.Editable getText() {
        return super.getText();
    }
}
