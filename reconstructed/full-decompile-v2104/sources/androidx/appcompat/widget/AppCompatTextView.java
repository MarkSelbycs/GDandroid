package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatTextView extends android.widget.TextView implements androidx.core.widget.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.d f724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.widget.k f725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.util.concurrent.Future<u.a> f726c;

    public AppCompatTextView(android.content.Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.d dVar = this.f724a;
        if (dVar != null) {
            dVar.b();
        }
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar != null) {
            kVar.b();
        }
    }

    public final void e() {
        java.util.concurrent.Future<u.a> future = this.f726c;
        if (future != null) {
            try {
                this.f726c = null;
                androidx.core.widget.k.h(this, future.get());
            } catch (java.lang.InterruptedException | java.util.concurrent.ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (androidx.core.widget.b.f1446j) {
            return super.getAutoSizeMaxTextSize();
        }
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar != null) {
            return kVar.e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (androidx.core.widget.b.f1446j) {
            return super.getAutoSizeMinTextSize();
        }
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar != null) {
            return kVar.f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (androidx.core.widget.b.f1446j) {
            return super.getAutoSizeStepGranularity();
        }
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar != null) {
            return kVar.g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (androidx.core.widget.b.f1446j) {
            return super.getAutoSizeTextAvailableSizes();
        }
        androidx.appcompat.widget.k kVar = this.f725b;
        return kVar != null ? kVar.h() : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (androidx.core.widget.b.f1446j) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar != null) {
            return kVar.i();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return androidx.core.widget.k.a(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return androidx.core.widget.k.b(this);
    }

    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.d dVar = this.f724a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.d dVar = this.f724a;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    @Override // android.widget.TextView
    public java.lang.CharSequence getText() {
        e();
        return super.getText();
    }

    public u.a.C0084a getTextMetricsParamsCompat() {
        return androidx.core.widget.k.d(this);
    }

    @Override // android.widget.TextView, android.view.View
    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo editorInfo) {
        return androidx.appcompat.widget.g.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar != null) {
            kVar.m(z4, i5, i6, i7, i8);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i5, int i6) {
        e();
        super.onMeasure(i5, i6);
    }

    @Override // android.widget.TextView
    public void onTextChanged(java.lang.CharSequence charSequence, int i5, int i6, int i7) {
        super.onTextChanged(charSequence, i5, i6, i7);
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar == null || androidx.core.widget.b.f1446j || !kVar.j()) {
            return;
        }
        this.f725b.c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i5, int i6, int i7, int i8) throws java.lang.IllegalArgumentException {
        if (androidx.core.widget.b.f1446j) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i5, i6, i7, i8);
            return;
        }
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar != null) {
            kVar.p(i5, i6, i7, i8);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i5) throws java.lang.IllegalArgumentException {
        if (androidx.core.widget.b.f1446j) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i5);
            return;
        }
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar != null) {
            kVar.q(iArr, i5);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i5) {
        if (androidx.core.widget.b.f1446j) {
            super.setAutoSizeTextTypeWithDefaults(i5);
            return;
        }
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar != null) {
            kVar.r(i5);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.d dVar = this.f724a;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        androidx.appcompat.widget.d dVar = this.f724a;
        if (dVar != null) {
            dVar.g(i5);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(android.view.ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.k.k(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i5) {
        super.setFirstBaselineToTopHeight(i5);
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i5) {
        super.setLastBaselineToBottomHeight(i5);
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i5) {
        androidx.core.widget.k.g(this, i5);
    }

    public void setPrecomputedText(u.a aVar) {
        androidx.core.widget.k.h(this, aVar);
    }

    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        androidx.appcompat.widget.d dVar = this.f724a;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        androidx.appcompat.widget.d dVar = this.f724a;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(android.content.Context context, int i5) {
        super.setTextAppearance(context, i5);
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar != null) {
            kVar.n(context, i5);
        }
    }

    public void setTextFuture(java.util.concurrent.Future<u.a> future) {
        this.f726c = future;
        requestLayout();
    }

    public void setTextMetricsParamsCompat(u.a.C0084a c0084a) {
        androidx.core.widget.k.j(this, c0084a);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i5, float f5) {
        if (androidx.core.widget.b.f1446j) {
            super.setTextSize(i5, f5);
            return;
        }
        androidx.appcompat.widget.k kVar = this.f725b;
        if (kVar != null) {
            kVar.s(i5, f5);
        }
    }

    public AppCompatTextView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.textViewStyle);
    }

    public AppCompatTextView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(androidx.appcompat.widget.a0.b(context), attributeSet, i5);
        androidx.appcompat.widget.d dVar = new androidx.appcompat.widget.d(this);
        this.f724a = dVar;
        dVar.e(attributeSet, i5);
        androidx.appcompat.widget.k kVar = new androidx.appcompat.widget.k(this);
        this.f725b = kVar;
        kVar.k(attributeSet, i5);
        kVar.b();
    }
}
