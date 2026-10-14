package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
class AppCompatPopupWindow extends android.widget.PopupWindow {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f700b = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f701a;

    public AppCompatPopupWindow(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        a(context, attributeSet, i5, 0);
    }

    public final void a(android.content.Context context, android.util.AttributeSet attributeSet, int i5, int i6) {
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(context, attributeSet, androidx.appcompat.R.styleable.PopupWindow, i5, i6);
        int i7 = androidx.appcompat.R.styleable.PopupWindow_overlapAnchor;
        if (d0VarT.q(i7)) {
            b(d0VarT.a(i7, false));
        }
        setBackgroundDrawable(d0VarT.f(androidx.appcompat.R.styleable.PopupWindow_android_popupBackground));
        d0VarT.u();
    }

    public final void b(boolean z4) {
        if (f700b) {
            this.f701a = z4;
        } else {
            androidx.core.widget.j.a(this, z4);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(android.view.View view, int i5, int i6) {
        if (f700b && this.f701a) {
            i6 -= view.getHeight();
        }
        super.showAsDropDown(view, i5, i6);
    }

    @Override // android.widget.PopupWindow
    public void update(android.view.View view, int i5, int i6, int i7, int i8) {
        if (f700b && this.f701a) {
            i6 -= view.getHeight();
        }
        super.update(view, i5, i6, i7, i8);
    }

    public AppCompatPopupWindow(android.content.Context context, android.util.AttributeSet attributeSet, int i5, int i6) {
        super(context, attributeSet, i5, i6);
        a(context, attributeSet, i5, i6);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(android.view.View view, int i5, int i6, int i7) {
        if (f700b && this.f701a) {
            i6 -= view.getHeight();
        }
        super.showAsDropDown(view, i5, i6, i7);
    }
}
