package androidx.constraintlayout.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Guideline extends android.view.View {
    public Guideline(android.content.Context context) {
        super(context);
        super.setVisibility(8);
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        setMeasuredDimension(0, 0);
    }

    public void setGuidelineBegin(int i5) {
        androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.f1123a = i5;
        setLayoutParams(layoutParams);
    }

    public void setGuidelineEnd(int i5) {
        androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.f1125b = i5;
        setLayoutParams(layoutParams);
    }

    public void setGuidelinePercent(float f5) {
        androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.f1127c = f5;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void setVisibility(int i5) {
    }

    public Guideline(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Guideline(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        super.setVisibility(8);
    }
}
