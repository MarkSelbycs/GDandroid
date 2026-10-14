package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ActionBarContainer extends android.widget.FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.view.View f573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.view.View f574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.view.View f575d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.graphics.drawable.Drawable f576e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f577f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.graphics.drawable.Drawable f578g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f579h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f580i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f581o;

    public ActionBarContainer(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        w.q.R(this, new androidx.appcompat.widget.b(this));
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.ActionBar);
        this.f576e = typedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.ActionBar_background);
        this.f577f = typedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.ActionBar_backgroundStacked);
        this.f581o = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.ActionBar_height, -1);
        boolean z4 = true;
        if (getId() == androidx.appcompat.R.id.split_action_bar) {
            this.f579h = true;
            this.f578g = typedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.ActionBar_backgroundSplit);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f579h ? this.f576e != null || this.f577f != null : this.f578g != null) {
            z4 = false;
        }
        setWillNotDraw(z4);
    }

    public final int a(android.view.View view) {
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    public final boolean b(android.view.View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        android.graphics.drawable.Drawable drawable = this.f576e;
        if (drawable != null && drawable.isStateful()) {
            this.f576e.setState(getDrawableState());
        }
        android.graphics.drawable.Drawable drawable2 = this.f577f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f577f.setState(getDrawableState());
        }
        android.graphics.drawable.Drawable drawable3 = this.f578g;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f578g.setState(getDrawableState());
    }

    public android.view.View getTabContainer() {
        return this.f573b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        android.graphics.drawable.Drawable drawable = this.f576e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        android.graphics.drawable.Drawable drawable2 = this.f577f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        android.graphics.drawable.Drawable drawable3 = this.f578g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f574c = findViewById(androidx.appcompat.R.id.action_bar);
        this.f575d = findViewById(androidx.appcompat.R.id.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(android.view.MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        return this.f572a || super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0048 A[PHI: r0
  0x0048: PHI (r0v8 boolean) = (r0v1 boolean), (r0v1 boolean), (r0v0 boolean) binds: [B:31:0x00a5, B:33:0x00a9, B:15:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        android.graphics.drawable.Drawable drawable;
        super.onLayout(z4, i5, i6, i7, i8);
        android.view.View view = this.f573b;
        boolean z5 = true;
        boolean z6 = false;
        boolean z7 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = measuredHeight - view.getMeasuredHeight();
            int i9 = layoutParams.bottomMargin;
            view.layout(i5, measuredHeight2 - i9, i7, measuredHeight - i9);
        }
        if (this.f579h) {
            android.graphics.drawable.Drawable drawable2 = this.f578g;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z5 = z6;
            }
        } else {
            if (this.f576e != null) {
                if (this.f574c.getVisibility() == 0) {
                    this.f576e.setBounds(this.f574c.getLeft(), this.f574c.getTop(), this.f574c.getRight(), this.f574c.getBottom());
                } else {
                    android.view.View view2 = this.f575d;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f576e.setBounds(0, 0, 0, 0);
                    } else {
                        this.f576e.setBounds(this.f575d.getLeft(), this.f575d.getTop(), this.f575d.getRight(), this.f575d.getBottom());
                    }
                }
                z6 = true;
            }
            this.f580i = z7;
            if (!z7 || (drawable = this.f577f) == null) {
                z5 = z6;
            } else {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z5) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i5, int i6) {
        int iA;
        int i7;
        if (this.f574c == null && android.view.View.MeasureSpec.getMode(i6) == Integer.MIN_VALUE && (i7 = this.f581o) >= 0) {
            i6 = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.min(i7, android.view.View.MeasureSpec.getSize(i6)), Integer.MIN_VALUE);
        }
        super.onMeasure(i5, i6);
        if (this.f574c == null) {
            return;
        }
        int mode = android.view.View.MeasureSpec.getMode(i6);
        android.view.View view = this.f573b;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        if (b(this.f574c)) {
            iA = !b(this.f575d) ? a(this.f575d) : 0;
        } else {
            iA = a(this.f574c);
        }
        setMeasuredDimension(getMeasuredWidth(), java.lang.Math.min(iA + a(this.f573b), mode == Integer.MIN_VALUE ? android.view.View.MeasureSpec.getSize(i6) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2 = this.f576e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f576e);
        }
        this.f576e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            android.view.View view = this.f574c;
            if (view != null) {
                this.f576e.setBounds(view.getLeft(), this.f574c.getTop(), this.f574c.getRight(), this.f574c.getBottom());
            }
        }
        boolean z4 = true;
        if (!this.f579h ? this.f576e != null || this.f577f != null : this.f578g != null) {
            z4 = false;
        }
        setWillNotDraw(z4);
        invalidate();
    }

    public void setSplitBackground(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2;
        android.graphics.drawable.Drawable drawable3 = this.f578g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f578g);
        }
        this.f578g = drawable;
        boolean z4 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f579h && (drawable2 = this.f578g) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f579h ? !(this.f576e != null || this.f577f != null) : this.f578g == null) {
            z4 = true;
        }
        setWillNotDraw(z4);
        invalidate();
    }

    public void setStackedBackground(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2;
        android.graphics.drawable.Drawable drawable3 = this.f577f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f577f);
        }
        this.f577f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f580i && (drawable2 = this.f577f) != null) {
                drawable2.setBounds(this.f573b.getLeft(), this.f573b.getTop(), this.f573b.getRight(), this.f573b.getBottom());
            }
        }
        boolean z4 = true;
        if (!this.f579h ? this.f576e != null || this.f577f != null : this.f578g != null) {
            z4 = false;
        }
        setWillNotDraw(z4);
        invalidate();
    }

    public void setTabContainer(androidx.appcompat.widget.w wVar) {
        android.view.View view = this.f573b;
        if (view != null) {
            removeView(view);
        }
        this.f573b = wVar;
        if (wVar != null) {
            addView(wVar);
            android.view.ViewGroup.LayoutParams layoutParams = wVar.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            wVar.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z4) {
        this.f572a = z4;
        setDescendantFocusability(z4 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i5) {
        super.setVisibility(i5);
        boolean z4 = i5 == 0;
        android.graphics.drawable.Drawable drawable = this.f576e;
        if (drawable != null) {
            drawable.setVisible(z4, false);
        }
        android.graphics.drawable.Drawable drawable2 = this.f577f;
        if (drawable2 != null) {
            drawable2.setVisible(z4, false);
        }
        android.graphics.drawable.Drawable drawable3 = this.f578g;
        if (drawable3 != null) {
            drawable3.setVisible(z4, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public android.view.ActionMode startActionModeForChild(android.view.View view, android.view.ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public android.view.ActionMode startActionModeForChild(android.view.View view, android.view.ActionMode.Callback callback, int i5) {
        if (i5 != 0) {
            return super.startActionModeForChild(view, callback, i5);
        }
        return null;
    }

    @Override // android.view.View
    public boolean verifyDrawable(android.graphics.drawable.Drawable drawable) {
        return (drawable == this.f576e && !this.f579h) || (drawable == this.f577f && this.f580i) || ((drawable == this.f578g && this.f579h) || super.verifyDrawable(drawable));
    }
}
