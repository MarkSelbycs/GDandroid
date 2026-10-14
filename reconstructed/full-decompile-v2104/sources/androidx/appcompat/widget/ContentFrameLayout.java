package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ContentFrameLayout extends android.widget.FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.util.TypedValue f730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.util.TypedValue f731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.util.TypedValue f732c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.util.TypedValue f733d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.util.TypedValue f734e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.util.TypedValue f735f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final android.graphics.Rect f736g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public androidx.appcompat.widget.ContentFrameLayout.a f737h;

    public interface a {
        void a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(android.content.Context context) {
        this(context, null);
    }

    public void a(android.graphics.Rect rect) {
        fitSystemWindows(rect);
    }

    public void b(int i5, int i6, int i7, int i8) {
        this.f736g.set(i5, i6, i7, i8);
        if (w.q.D(this)) {
            requestLayout();
        }
    }

    public android.util.TypedValue getFixedHeightMajor() {
        if (this.f734e == null) {
            this.f734e = new android.util.TypedValue();
        }
        return this.f734e;
    }

    public android.util.TypedValue getFixedHeightMinor() {
        if (this.f735f == null) {
            this.f735f = new android.util.TypedValue();
        }
        return this.f735f;
    }

    public android.util.TypedValue getFixedWidthMajor() {
        if (this.f732c == null) {
            this.f732c = new android.util.TypedValue();
        }
        return this.f732c;
    }

    public android.util.TypedValue getFixedWidthMinor() {
        if (this.f733d == null) {
            this.f733d = new android.util.TypedValue();
        }
        return this.f733d;
    }

    public android.util.TypedValue getMinWidthMajor() {
        if (this.f730a == null) {
            this.f730a = new android.util.TypedValue();
        }
        return this.f730a;
    }

    public android.util.TypedValue getMinWidthMinor() {
        if (this.f731b == null) {
            this.f731b = new android.util.TypedValue();
        }
        return this.f731b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        androidx.appcompat.widget.ContentFrameLayout.a aVar = this.f737h;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        androidx.appcompat.widget.ContentFrameLayout.a aVar = this.f737h;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0086  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00db  */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i5, int i6) {
        boolean z4;
        int i7;
        int i8;
        float fraction;
        int i9;
        int i10;
        float fraction2;
        int i11;
        int i12;
        float fraction3;
        android.util.DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z5 = true;
        boolean z6 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = android.view.View.MeasureSpec.getMode(i5);
        int mode2 = android.view.View.MeasureSpec.getMode(i6);
        if (mode != Integer.MIN_VALUE) {
            z4 = false;
        } else {
            android.util.TypedValue typedValue = z6 ? this.f733d : this.f732c;
            if (typedValue == null || (i11 = typedValue.type) == 0) {
                z4 = false;
            } else {
                if (i11 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else {
                    if (i11 == 6) {
                        int i13 = displayMetrics.widthPixels;
                        fraction3 = typedValue.getFraction(i13, i13);
                    } else {
                        i12 = 0;
                    }
                    if (i12 > 0) {
                        android.graphics.Rect rect = this.f736g;
                        i5 = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.min(i12 - (rect.left + rect.right), android.view.View.MeasureSpec.getSize(i5)), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                }
                i12 = (int) fraction3;
                if (i12 > 0) {
                    android.graphics.Rect rect2 = this.f736g;
                    i5 = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.min(i12 - (rect2.left + rect2.right), android.view.View.MeasureSpec.getSize(i5)), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                    z4 = true;
                } else {
                    z4 = false;
                }
            }
        }
        if (mode2 == Integer.MIN_VALUE) {
            android.util.TypedValue typedValue2 = z6 ? this.f734e : this.f735f;
            if (typedValue2 != null && (i9 = typedValue2.type) != 0) {
                if (i9 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else {
                    if (i9 == 6) {
                        int i14 = displayMetrics.heightPixels;
                        fraction2 = typedValue2.getFraction(i14, i14);
                    } else {
                        i10 = 0;
                    }
                    if (i10 > 0) {
                        android.graphics.Rect rect3 = this.f736g;
                        i6 = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.min(i10 - (rect3.top + rect3.bottom), android.view.View.MeasureSpec.getSize(i6)), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                    }
                }
                i10 = (int) fraction2;
                if (i10 > 0) {
                    android.graphics.Rect rect4 = this.f736g;
                    i6 = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.min(i10 - (rect4.top + rect4.bottom), android.view.View.MeasureSpec.getSize(i6)), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                }
            }
        }
        super.onMeasure(i5, i6);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(measuredWidth, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        if (z4 || mode != Integer.MIN_VALUE) {
            z5 = false;
        } else {
            android.util.TypedValue typedValue3 = z6 ? this.f731b : this.f730a;
            if (typedValue3 == null || (i7 = typedValue3.type) == 0) {
                z5 = false;
            } else {
                if (i7 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else {
                    if (i7 == 6) {
                        int i15 = displayMetrics.widthPixels;
                        fraction = typedValue3.getFraction(i15, i15);
                    } else {
                        i8 = 0;
                    }
                    if (i8 > 0) {
                        android.graphics.Rect rect5 = this.f736g;
                        i8 -= rect5.left + rect5.right;
                    }
                    if (measuredWidth < i8) {
                        iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(i8, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                    } else {
                        z5 = false;
                    }
                }
                i8 = (int) fraction;
                if (i8 > 0) {
                    android.graphics.Rect rect6 = this.f736g;
                    i8 -= rect6.left + rect6.right;
                }
                if (measuredWidth < i8) {
                    iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(i8, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                } else {
                    z5 = false;
                }
            }
        }
        if (z5) {
            super.onMeasure(iMakeMeasureSpec, i6);
        }
    }

    public void setAttachListener(androidx.appcompat.widget.ContentFrameLayout.a aVar) {
        this.f737h = aVar;
    }

    public ContentFrameLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f736g = new android.graphics.Rect();
    }
}
