package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AlertDialogLayout extends androidx.appcompat.widget.LinearLayoutCompat {
    public AlertDialogLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void j(int i5, int i6) {
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        for (int i7 = 0; i7 < i5; i7++) {
            android.view.View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) childAt.getLayoutParams();
                if (((android.view.ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                    int i8 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height;
                    ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, iMakeMeasureSpec, 0, i6, 0);
                    ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height = i8;
                }
            }
        }
    }

    private void y(android.view.View view, int i5, int i6, int i7, int i8) {
        view.layout(i5, i6, i7 + i5, i8 + i6);
    }

    public static int z(android.view.View view) {
        int iQ = w.q.q(view);
        if (iQ > 0) {
            return iQ;
        }
        if (view instanceof android.view.ViewGroup) {
            android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
            if (viewGroup.getChildCount() == 1) {
                return z(viewGroup.getChildAt(0));
            }
        }
        return 0;
    }

    public final boolean A(int i5, int i6) {
        int iCombineMeasuredStates;
        int iZ;
        int measuredHeight;
        int measuredHeight2;
        int childCount = getChildCount();
        android.view.View view = null;
        android.view.View view2 = null;
        android.view.View view3 = null;
        for (int i7 = 0; i7 < childCount; i7++) {
            android.view.View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int id = childAt.getId();
                if (id == androidx.appcompat.R.id.topPanel) {
                    view = childAt;
                } else if (id == androidx.appcompat.R.id.buttonPanel) {
                    view2 = childAt;
                } else {
                    if ((id != androidx.appcompat.R.id.contentPanel && id != androidx.appcompat.R.id.customPanel) || view3 != null) {
                        return false;
                    }
                    view3 = childAt;
                }
            }
        }
        int mode = android.view.View.MeasureSpec.getMode(i6);
        int size = android.view.View.MeasureSpec.getSize(i6);
        int mode2 = android.view.View.MeasureSpec.getMode(i5);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (view != null) {
            view.measure(i5, 0);
            paddingTop += view.getMeasuredHeight();
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(0, view.getMeasuredState());
        } else {
            iCombineMeasuredStates = 0;
        }
        if (view2 != null) {
            view2.measure(i5, 0);
            iZ = z(view2);
            measuredHeight = view2.getMeasuredHeight() - iZ;
            paddingTop += iZ;
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
        } else {
            iZ = 0;
            measuredHeight = 0;
        }
        if (view3 != null) {
            view3.measure(i5, mode == 0 ? 0 : android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.max(0, size - paddingTop), mode));
            measuredHeight2 = view3.getMeasuredHeight();
            paddingTop += measuredHeight2;
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
        } else {
            measuredHeight2 = 0;
        }
        int i8 = size - paddingTop;
        if (view2 != null) {
            int i9 = paddingTop - iZ;
            int iMin = java.lang.Math.min(i8, measuredHeight);
            if (iMin > 0) {
                i8 -= iMin;
                iZ += iMin;
            }
            view2.measure(i5, android.view.View.MeasureSpec.makeMeasureSpec(iZ, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
            paddingTop = i9 + view2.getMeasuredHeight();
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
        }
        if (view3 != null && i8 > 0) {
            view3.measure(i5, android.view.View.MeasureSpec.makeMeasureSpec(measuredHeight2 + i8, mode));
            paddingTop = (paddingTop - measuredHeight2) + view3.getMeasuredHeight();
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
        }
        int iMax = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            android.view.View childAt2 = getChildAt(i10);
            if (childAt2.getVisibility() != 8) {
                iMax = java.lang.Math.max(iMax, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(android.view.View.resolveSizeAndState(iMax + getPaddingLeft() + getPaddingRight(), i5, iCombineMeasuredStates), android.view.View.resolveSizeAndState(paddingTop, i6, 0));
        if (mode2 == 1073741824) {
            return true;
        }
        j(childCount, i6);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00a8  */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int i9;
        int i10;
        int i11;
        int paddingLeft = getPaddingLeft();
        int i12 = i7 - i5;
        int paddingRight = i12 - getPaddingRight();
        int paddingRight2 = (i12 - paddingLeft) - getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        int i13 = gravity & 112;
        int i14 = gravity & 8388615;
        int paddingTop = i13 != 16 ? i13 != 80 ? getPaddingTop() : ((getPaddingTop() + i8) - i6) - measuredHeight : getPaddingTop() + (((i8 - i6) - measuredHeight) / 2);
        android.graphics.drawable.Drawable dividerDrawable = getDividerDrawable();
        int intrinsicHeight = dividerDrawable == null ? 0 : dividerDrawable.getIntrinsicHeight();
        for (int i15 = 0; i15 < childCount; i15++) {
            android.view.View childAt = getChildAt(i15);
            if (childAt != null && childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight2 = childAt.getMeasuredHeight();
                androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) childAt.getLayoutParams();
                int i16 = layoutParams.f756b;
                if (i16 < 0) {
                    i16 = i14;
                }
                int iB = w.d.b(i16, w.q.p(this)) & 7;
                if (iB != 1) {
                    if (iB != 5) {
                        i11 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                    } else {
                        i9 = paddingRight - measuredWidth;
                        i10 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    }
                    if (r(i15)) {
                        paddingTop += intrinsicHeight;
                    }
                    int i17 = paddingTop + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    y(childAt, i11, i17, measuredWidth, measuredHeight2);
                    paddingTop = i17 + measuredHeight2 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                } else {
                    i9 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    i10 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                }
                i11 = i9 - i10;
                if (r(i15)) {
                    paddingTop += intrinsicHeight;
                }
                int i18 = paddingTop + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                y(childAt, i11, i18, measuredWidth, measuredHeight2);
                paddingTop = i18 + measuredHeight2 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i5, int i6) {
        if (A(i5, i6)) {
            return;
        }
        super.onMeasure(i5, i6);
    }
}
