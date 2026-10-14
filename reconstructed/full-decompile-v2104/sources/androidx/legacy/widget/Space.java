package androidx.legacy.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.Deprecated
public class Space extends android.view.View {
    @java.lang.Deprecated
    public Space(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        if (getVisibility() == 0) {
            setVisibility(4);
        }
    }

    public static int a(int i5, int i6) {
        int mode = android.view.View.MeasureSpec.getMode(i6);
        int size = android.view.View.MeasureSpec.getSize(i6);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? i5 : size;
        }
        return java.lang.Math.min(i5, size);
    }

    @Override // android.view.View
    @android.annotation.SuppressLint({"MissingSuperCall"})
    @java.lang.Deprecated
    public void draw(android.graphics.Canvas canvas) {
    }

    @Override // android.view.View
    @java.lang.Deprecated
    public void onMeasure(int i5, int i6) {
        setMeasuredDimension(a(getSuggestedMinimumWidth(), i5), a(getSuggestedMinimumHeight(), i6));
    }

    @java.lang.Deprecated
    public Space(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
