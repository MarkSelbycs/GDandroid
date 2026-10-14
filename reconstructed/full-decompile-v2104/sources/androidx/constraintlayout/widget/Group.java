package androidx.constraintlayout.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Group extends androidx.constraintlayout.widget.ConstraintHelper {
    public Group(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void b(android.util.AttributeSet attributeSet) {
        super.b(attributeSet);
        this.f1102e = false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void c(androidx.constraintlayout.widget.ConstraintLayout constraintLayout) {
        androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.f1146l0.y0(0);
        layoutParams.f1146l0.b0(0);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void e(androidx.constraintlayout.widget.ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i5 = 0; i5 < this.f1099b; i5++) {
            android.view.View viewE = constraintLayout.e(this.f1098a[i5]);
            if (viewE != null) {
                viewE.setVisibility(visibility);
                if (elevation > 0.0f) {
                    viewE.setElevation(elevation);
                }
            }
        }
    }

    public Group(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
    }
}
