package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FitWindowsLinearLayout extends android.widget.LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.appcompat.widget.q f739a;

    public FitWindowsLinearLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(android.graphics.Rect rect) {
        androidx.appcompat.widget.q qVar = this.f739a;
        if (qVar != null) {
            qVar.a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    public void setOnFitSystemWindowsListener(androidx.appcompat.widget.q qVar) {
        this.f739a = qVar;
    }
}
