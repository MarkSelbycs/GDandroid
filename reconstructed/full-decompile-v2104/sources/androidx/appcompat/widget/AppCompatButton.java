package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatButton extends android.widget.Button implements androidx.core.widget.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.d f686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.widget.k f687b;

    public AppCompatButton(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.buttonStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.d dVar = this.f686a;
        if (dVar != null) {
            dVar.b();
        }
        androidx.appcompat.widget.k kVar = this.f687b;
        if (kVar != null) {
            kVar.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (androidx.core.widget.b.f1446j) {
            return super.getAutoSizeMaxTextSize();
        }
        androidx.appcompat.widget.k kVar = this.f687b;
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
        androidx.appcompat.widget.k kVar = this.f687b;
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
        androidx.appcompat.widget.k kVar = this.f687b;
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
        androidx.appcompat.widget.k kVar = this.f687b;
        return kVar != null ? kVar.h() : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (androidx.core.widget.b.f1446j) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        androidx.appcompat.widget.k kVar = this.f687b;
        if (kVar != null) {
            return kVar.i();
        }
        return 0;
    }

    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.d dVar = this.f686a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.d dVar = this.f686a;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(android.widget.Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(android.widget.Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        androidx.appcompat.widget.k kVar = this.f687b;
        if (kVar != null) {
            kVar.m(z4, i5, i6, i7, i8);
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(java.lang.CharSequence charSequence, int i5, int i6, int i7) {
        super.onTextChanged(charSequence, i5, i6, i7);
        androidx.appcompat.widget.k kVar = this.f687b;
        if (kVar == null || androidx.core.widget.b.f1446j || !kVar.j()) {
            return;
        }
        this.f687b.c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i5, int i6, int i7, int i8) throws java.lang.IllegalArgumentException {
        if (androidx.core.widget.b.f1446j) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i5, i6, i7, i8);
            return;
        }
        androidx.appcompat.widget.k kVar = this.f687b;
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
        androidx.appcompat.widget.k kVar = this.f687b;
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
        androidx.appcompat.widget.k kVar = this.f687b;
        if (kVar != null) {
            kVar.r(i5);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.d dVar = this.f686a;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        androidx.appcompat.widget.d dVar = this.f686a;
        if (dVar != null) {
            dVar.g(i5);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(android.view.ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.k.k(this, callback));
    }

    public void setSupportAllCaps(boolean z4) {
        androidx.appcompat.widget.k kVar = this.f687b;
        if (kVar != null) {
            kVar.o(z4);
        }
    }

    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        androidx.appcompat.widget.d dVar = this.f686a;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        androidx.appcompat.widget.d dVar = this.f686a;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(android.content.Context context, int i5) {
        super.setTextAppearance(context, i5);
        androidx.appcompat.widget.k kVar = this.f687b;
        if (kVar != null) {
            kVar.n(context, i5);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i5, float f5) {
        if (androidx.core.widget.b.f1446j) {
            super.setTextSize(i5, f5);
            return;
        }
        androidx.appcompat.widget.k kVar = this.f687b;
        if (kVar != null) {
            kVar.s(i5, f5);
        }
    }

    public AppCompatButton(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(androidx.appcompat.widget.a0.b(context), attributeSet, i5);
        androidx.appcompat.widget.d dVar = new androidx.appcompat.widget.d(this);
        this.f686a = dVar;
        dVar.e(attributeSet, i5);
        androidx.appcompat.widget.k kVar = new androidx.appcompat.widget.k(this);
        this.f687b = kVar;
        kVar.k(attributeSet, i5);
        kVar.b();
    }
}
