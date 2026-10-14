package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatCheckedTextView extends android.widget.CheckedTextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f689b = {android.R.attr.checkMark};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.k f690a;

    public AppCompatCheckedTextView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.checkedTextViewStyle);
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.k kVar = this.f690a;
        if (kVar != null) {
            kVar.b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo editorInfo) {
        return androidx.appcompat.widget.g.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i5) {
        setCheckMarkDrawable(b.a.b(getContext(), i5));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(android.view.ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.k.k(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(android.content.Context context, int i5) {
        super.setTextAppearance(context, i5);
        androidx.appcompat.widget.k kVar = this.f690a;
        if (kVar != null) {
            kVar.n(context, i5);
        }
    }

    public AppCompatCheckedTextView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(androidx.appcompat.widget.a0.b(context), attributeSet, i5);
        androidx.appcompat.widget.k kVar = new androidx.appcompat.widget.k(this);
        this.f690a = kVar;
        kVar.k(attributeSet, i5);
        kVar.b();
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(getContext(), attributeSet, f689b, i5, 0);
        setCheckMarkDrawable(d0VarT.f(0));
        d0VarT.u();
    }
}
