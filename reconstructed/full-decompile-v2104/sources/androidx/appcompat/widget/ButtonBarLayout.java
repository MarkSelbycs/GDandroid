package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ButtonBarLayout extends android.widget.LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f727a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f729c;

    public ButtonBarLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f728b = -1;
        this.f729c = 0;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.ButtonBarLayout);
        this.f727a = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.ButtonBarLayout_allowStacking, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void setStacked(boolean z4) {
        setOrientation(z4 ? 1 : 0);
        setGravity(z4 ? 5 : 80);
        android.view.View viewFindViewById = findViewById(androidx.appcompat.R.id.spacer);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(z4 ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    public final int a(int i5) {
        int childCount = getChildCount();
        while (i5 < childCount) {
            if (getChildAt(i5).getVisibility() == 0) {
                return i5;
            }
            i5++;
        }
        return -1;
    }

    public final boolean b() {
        return getOrientation() == 1;
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return java.lang.Math.max(this.f729c, super.getMinimumHeight());
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i5, int i6) {
        int iMakeMeasureSpec;
        boolean z4;
        int size = android.view.View.MeasureSpec.getSize(i5);
        int paddingBottom = 0;
        if (this.f727a) {
            if (size > this.f728b && b()) {
                setStacked(false);
            }
            this.f728b = size;
        }
        if (b() || android.view.View.MeasureSpec.getMode(i5) != 1073741824) {
            iMakeMeasureSpec = i5;
            z4 = false;
        } else {
            iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z4 = true;
        }
        super.onMeasure(iMakeMeasureSpec, i6);
        if (this.f727a && !b()) {
            if ((getMeasuredWidthAndState() & (-16777216)) == 16777216) {
                setStacked(true);
                z4 = true;
            }
        }
        if (z4) {
            super.onMeasure(i5, i6);
        }
        int iA = a(0);
        if (iA >= 0) {
            android.view.View childAt = getChildAt(iA);
            android.widget.LinearLayout.LayoutParams layoutParams = (android.widget.LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (b()) {
                int iA2 = a(iA + 1);
                if (iA2 >= 0) {
                    paddingTop += getChildAt(iA2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
                paddingBottom = paddingTop;
            } else {
                paddingBottom = paddingTop + getPaddingBottom();
            }
        }
        if (w.q.q(this) != paddingBottom) {
            setMinimumHeight(paddingBottom);
        }
    }

    public void setAllowStacking(boolean z4) {
        if (this.f727a != z4) {
            this.f727a = z4;
            if (!z4 && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
