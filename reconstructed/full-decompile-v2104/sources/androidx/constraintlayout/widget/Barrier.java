package androidx.constraintlayout.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Barrier extends androidx.constraintlayout.widget.ConstraintHelper {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1095g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1096h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public l.b f1097i;

    public Barrier(android.content.Context context) {
        super(context);
        super.setVisibility(8);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void b(android.util.AttributeSet attributeSet) {
        super.b(attributeSet);
        this.f1097i = new l.b();
        if (attributeSet != null) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i5 = 0; i5 < indexCount; i5++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i5);
                if (index == androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f1097i.K0(typedArrayObtainStyledAttributes.getBoolean(index, true));
                }
            }
        }
        this.f1101d = this.f1097i;
        f();
    }

    public int getType() {
        return this.f1095g;
    }

    public void setAllowsGoneWidget(boolean z4) {
        this.f1097i.K0(z4);
    }

    public void setType(int i5) {
        this.f1095g = i5;
        this.f1096h = i5;
        if (1 == getResources().getConfiguration().getLayoutDirection()) {
            int i6 = this.f1095g;
            if (i6 == 5) {
                this.f1096h = 1;
            } else if (i6 == 6) {
                this.f1096h = 0;
            }
        } else {
            int i7 = this.f1095g;
            if (i7 == 5) {
                this.f1096h = 0;
            } else if (i7 == 6) {
                this.f1096h = 1;
            }
        }
        this.f1097i.L0(this.f1096h);
    }

    public Barrier(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        super.setVisibility(8);
    }
}
