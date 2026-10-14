package androidx.appcompat.widget;

/* JADX INFO: compiled from: DropDownListView.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p extends android.widget.ListView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.graphics.Rect f1010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1012c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1013d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1014e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1015f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public java.lang.reflect.Field f1016g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public androidx.appcompat.widget.p.a f1017h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1018i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1019o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1020p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public w.w f1021q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public androidx.core.widget.h f1022r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.appcompat.widget.p.b f1023s;

    /* JADX INFO: compiled from: DropDownListView.java */
    public static class a extends c.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1024b;

        public a(android.graphics.drawable.Drawable drawable) {
            super(drawable);
            this.f1024b = true;
        }

        public void c(boolean z4) {
            this.f1024b = z4;
        }

        @Override // c.a, android.graphics.drawable.Drawable
        public void draw(android.graphics.Canvas canvas) {
            if (this.f1024b) {
                super.draw(canvas);
            }
        }

        @Override // c.a, android.graphics.drawable.Drawable
        public void setHotspot(float f5, float f6) {
            if (this.f1024b) {
                super.setHotspot(f5, f6);
            }
        }

        @Override // c.a, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i5, int i6, int i7, int i8) {
            if (this.f1024b) {
                super.setHotspotBounds(i5, i6, i7, i8);
            }
        }

        @Override // c.a, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f1024b) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // c.a, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z4, boolean z5) {
            if (this.f1024b) {
                return super.setVisible(z4, z5);
            }
            return false;
        }
    }

    /* JADX INFO: compiled from: DropDownListView.java */
    public class b implements java.lang.Runnable {
        public b() {
        }

        public void a() {
            androidx.appcompat.widget.p pVar = androidx.appcompat.widget.p.this;
            pVar.f1023s = null;
            pVar.removeCallbacks(this);
        }

        public void b() {
            androidx.appcompat.widget.p.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.p pVar = androidx.appcompat.widget.p.this;
            pVar.f1023s = null;
            pVar.drawableStateChanged();
        }
    }

    public p(android.content.Context context, boolean z4) {
        super(context, null, androidx.appcompat.R.attr.dropDownListViewStyle);
        this.f1010a = new android.graphics.Rect();
        this.f1011b = 0;
        this.f1012c = 0;
        this.f1013d = 0;
        this.f1014e = 0;
        this.f1019o = z4;
        setCacheColorHint(0);
        try {
            java.lang.reflect.Field declaredField = android.widget.AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1016g = declaredField;
            declaredField.setAccessible(true);
        } catch (java.lang.NoSuchFieldException e5) {
            e5.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z4) {
        androidx.appcompat.widget.p.a aVar = this.f1017h;
        if (aVar != null) {
            aVar.c(z4);
        }
    }

    public final void a() {
        this.f1020p = false;
        setPressed(false);
        drawableStateChanged();
        android.view.View childAt = getChildAt(this.f1015f - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        w.w wVar = this.f1021q;
        if (wVar != null) {
            wVar.c();
            this.f1021q = null;
        }
    }

    public final void b(android.view.View view, int i5) {
        performItemClick(view, i5, getItemIdAtPosition(i5));
    }

    public final void c(android.graphics.Canvas canvas) {
        android.graphics.drawable.Drawable selector;
        if (this.f1010a.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f1010a);
        selector.draw(canvas);
    }

    public int d(int i5, int i6, int i7, int i8, int i9) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        android.graphics.drawable.Drawable divider = getDivider();
        android.widget.ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        android.view.View view = null;
        while (i10 < count) {
            int itemViewType = adapter.getItemViewType(i10);
            if (itemViewType != i11) {
                view = null;
                i11 = itemViewType;
            }
            view = adapter.getView(i10, view, this);
            android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i13 = layoutParams.height;
            view.measure(i5, i13 > 0 ? android.view.View.MeasureSpec.makeMeasureSpec(i13, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY) : android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i10 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i8) {
                return (i9 < 0 || i10 <= i9 || i12 <= 0 || measuredHeight == i8) ? i8 : i12;
            }
            if (i9 >= 0 && i10 >= i9) {
                i12 = measuredHeight;
            }
            i10++;
        }
        return measuredHeight;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(android.graphics.Canvas canvas) {
        c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f1023s != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        k();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004a  */
    /* JADX WARN: Code duplicated, block: B:25:0x004f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0053  */
    /* JADX WARN: Code duplicated, block: B:29:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x0069  */
    /* JADX WARN: Code duplicated, block: B:9:0x0011  */
    public boolean e(android.view.MotionEvent motionEvent, int i5) {
        boolean z4;
        boolean z5;
        androidx.core.widget.h hVar;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            z4 = false;
        } else {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    z5 = false;
                    z4 = true;
                } else {
                    z5 = false;
                    z4 = false;
                }
                if (z4 || z5) {
                    a();
                }
                if (z4) {
                    if (this.f1022r == null) {
                        this.f1022r = new androidx.core.widget.h(this);
                    }
                    this.f1022r.m(true);
                    this.f1022r.onTouch(this, motionEvent);
                } else {
                    hVar = this.f1022r;
                    if (hVar != null) {
                        hVar.m(false);
                    }
                }
                return z4;
            }
            z4 = true;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(i5);
        if (iFindPointerIndex < 0) {
            z5 = false;
            z4 = false;
        } else {
            int x4 = (int) motionEvent.getX(iFindPointerIndex);
            int y4 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x4, y4);
            if (iPointToPosition == -1) {
                z5 = true;
            } else {
                android.view.View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                i(childAt, iPointToPosition, x4, y4);
                if (actionMasked == 1) {
                    b(childAt, iPointToPosition);
                }
                z5 = false;
                z4 = true;
            }
        }
        if (z4) {
            a();
        } else {
            a();
        }
        if (z4) {
            if (this.f1022r == null) {
                this.f1022r = new androidx.core.widget.h(this);
            }
            this.f1022r.m(true);
            this.f1022r.onTouch(this, motionEvent);
        } else {
            hVar = this.f1022r;
            if (hVar != null) {
                hVar.m(false);
            }
        }
        return z4;
    }

    public final void f(int i5, android.view.View view) {
        android.graphics.Rect rect = this.f1010a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1011b;
        rect.top -= this.f1012c;
        rect.right += this.f1013d;
        rect.bottom += this.f1014e;
        try {
            boolean z4 = this.f1016g.getBoolean(this);
            if (view.isEnabled() != z4) {
                this.f1016g.set(this, java.lang.Boolean.valueOf(!z4));
                if (i5 != -1) {
                    refreshDrawableState();
                }
            }
        } catch (java.lang.IllegalAccessException e5) {
            e5.printStackTrace();
        }
    }

    public final void g(int i5, android.view.View view) {
        android.graphics.drawable.Drawable selector = getSelector();
        boolean z4 = (selector == null || i5 == -1) ? false : true;
        if (z4) {
            selector.setVisible(false, false);
        }
        f(i5, view);
        if (z4) {
            android.graphics.Rect rect = this.f1010a;
            float fExactCenterX = rect.exactCenterX();
            float fExactCenterY = rect.exactCenterY();
            selector.setVisible(getVisibility() == 0, false);
            p.a.d(selector, fExactCenterX, fExactCenterY);
        }
    }

    public final void h(int i5, android.view.View view, float f5, float f6) {
        g(i5, view);
        android.graphics.drawable.Drawable selector = getSelector();
        if (selector == null || i5 == -1) {
            return;
        }
        p.a.d(selector, f5, f6);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f1019o || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f1019o || super.hasWindowFocus();
    }

    public final void i(android.view.View view, int i5, float f5, float f6) {
        android.view.View childAt;
        this.f1020p = true;
        drawableHotspotChanged(f5, f6);
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i6 = this.f1015f;
        if (i6 != -1 && (childAt = getChildAt(i6 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f1015f = i5;
        view.drawableHotspotChanged(f5 - view.getLeft(), f6 - view.getTop());
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        h(i5, view, f5, f6);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f1019o || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f1019o && this.f1018i) || super.isInTouchMode();
    }

    public final boolean j() {
        return this.f1020p;
    }

    public final void k() {
        android.graphics.drawable.Drawable selector = getSelector();
        if (selector != null && j() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f1023s = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1023s == null) {
            androidx.appcompat.widget.p.b bVar = new androidx.appcompat.widget.p.b();
            this.f1023s = bVar;
            bVar.b();
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                android.view.View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                }
                k();
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1015f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        androidx.appcompat.widget.p.b bVar = this.f1023s;
        if (bVar != null) {
            bVar.a();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z4) {
        this.f1018i = z4;
    }

    @Override // android.widget.AbsListView
    public void setSelector(android.graphics.drawable.Drawable drawable) {
        androidx.appcompat.widget.p.a aVar = drawable != null ? new androidx.appcompat.widget.p.a(drawable) : null;
        this.f1017h = aVar;
        super.setSelector(aVar);
        android.graphics.Rect rect = new android.graphics.Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1011b = rect.left;
        this.f1012c = rect.top;
        this.f1013d = rect.right;
        this.f1014e = rect.bottom;
    }
}
