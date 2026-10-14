package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SwitchCompat extends android.widget.CompoundButton {
    public static final android.util.Property<androidx.appcompat.widget.SwitchCompat, java.lang.Float> R = new androidx.appcompat.widget.SwitchCompat.a(java.lang.Float.class, "thumbPos");
    public static final int[] S = {android.R.attr.state_checked};
    public android.view.VelocityTracker A;
    public int B;
    public float C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public final android.text.TextPaint K;
    public android.content.res.ColorStateList L;
    public android.text.Layout M;
    public android.text.Layout N;
    public android.text.method.TransformationMethod O;
    public android.animation.ObjectAnimator P;
    public final android.graphics.Rect Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.graphics.drawable.Drawable f838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.content.res.ColorStateList f839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.content.res.ColorStateList f844g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f846i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f847o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f848p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f849q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f850r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f851s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public java.lang.CharSequence f852t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public java.lang.CharSequence f853u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f854v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f855w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f856x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f857y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f858z;

    public static class a extends android.util.Property<androidx.appcompat.widget.SwitchCompat, java.lang.Float> {
        public a(java.lang.Class cls, java.lang.String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public java.lang.Float get(androidx.appcompat.widget.SwitchCompat switchCompat) {
            return java.lang.Float.valueOf(switchCompat.C);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(androidx.appcompat.widget.SwitchCompat switchCompat, java.lang.Float f5) {
            switchCompat.setThumbPosition(f5.floatValue());
        }
    }

    public SwitchCompat(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.switchStyle);
    }

    public static float f(float f5, float f6, float f7) {
        if (f5 < f6) {
            return f6;
        }
        return f5 > f7 ? f7 : f5;
    }

    private boolean getTargetCheckedState() {
        return this.C > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((androidx.appcompat.widget.h0.b(this) ? 1.0f - this.C : this.C) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        android.graphics.drawable.Drawable drawable = this.f843f;
        if (drawable == null) {
            return 0;
        }
        android.graphics.Rect rect = this.Q;
        drawable.getPadding(rect);
        android.graphics.drawable.Drawable drawable2 = this.f838a;
        android.graphics.Rect rectC = drawable2 != null ? androidx.appcompat.widget.o.c(drawable2) : androidx.appcompat.widget.o.f1008a;
        return ((((this.D - this.F) - rect.left) - rect.right) - rectC.left) - rectC.right;
    }

    public final void a(boolean z4) {
        android.animation.ObjectAnimator objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(this, R, z4 ? 1.0f : 0.0f);
        this.P = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(250L);
        this.P.setAutoCancel(true);
        this.P.start();
    }

    public final void b() {
        android.graphics.drawable.Drawable drawable = this.f838a;
        if (drawable != null) {
            if (this.f841d || this.f842e) {
                android.graphics.drawable.Drawable drawableMutate = drawable.mutate();
                this.f838a = drawableMutate;
                if (this.f841d) {
                    p.a.h(drawableMutate, this.f839b);
                }
                if (this.f842e) {
                    p.a.i(this.f838a, this.f840c);
                }
                if (this.f838a.isStateful()) {
                    this.f838a.setState(getDrawableState());
                }
            }
        }
    }

    public final void c() {
        android.graphics.drawable.Drawable drawable = this.f843f;
        if (drawable != null) {
            if (this.f846i || this.f847o) {
                android.graphics.drawable.Drawable drawableMutate = drawable.mutate();
                this.f843f = drawableMutate;
                if (this.f846i) {
                    p.a.h(drawableMutate, this.f844g);
                }
                if (this.f847o) {
                    p.a.i(this.f843f, this.f845h);
                }
                if (this.f843f.isStateful()) {
                    this.f843f.setState(getDrawableState());
                }
            }
        }
    }

    public final void d() {
        android.animation.ObjectAnimator objectAnimator = this.P;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        int i5;
        int i6;
        android.graphics.Rect rect = this.Q;
        int i7 = this.G;
        int i8 = this.H;
        int i9 = this.I;
        int i10 = this.J;
        int thumbOffset = getThumbOffset() + i7;
        android.graphics.drawable.Drawable drawable = this.f838a;
        android.graphics.Rect rectC = drawable != null ? androidx.appcompat.widget.o.c(drawable) : androidx.appcompat.widget.o.f1008a;
        android.graphics.drawable.Drawable drawable2 = this.f843f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i11 = rect.left;
            thumbOffset += i11;
            if (rectC != null) {
                int i12 = rectC.left;
                if (i12 > i11) {
                    i7 += i12 - i11;
                }
                int i13 = rectC.top;
                int i14 = rect.top;
                i5 = i13 > i14 ? (i13 - i14) + i8 : i8;
                int i15 = rectC.right;
                int i16 = rect.right;
                if (i15 > i16) {
                    i9 -= i15 - i16;
                }
                int i17 = rectC.bottom;
                int i18 = rect.bottom;
                if (i17 > i18) {
                    i6 = i10 - (i17 - i18);
                }
                this.f843f.setBounds(i7, i5, i9, i6);
            } else {
                i5 = i8;
            }
            i6 = i10;
            this.f843f.setBounds(i7, i5, i9, i6);
        }
        android.graphics.drawable.Drawable drawable3 = this.f838a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i19 = thumbOffset - rect.left;
            int i20 = thumbOffset + this.F + rect.right;
            this.f838a.setBounds(i19, i8, i20, i10);
            android.graphics.drawable.Drawable background = getBackground();
            if (background != null) {
                p.a.e(background, i19, i8, i20, i10);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f5, float f6) {
        super.drawableHotspotChanged(f5, f6);
        android.graphics.drawable.Drawable drawable = this.f838a;
        if (drawable != null) {
            p.a.d(drawable, f5, f6);
        }
        android.graphics.drawable.Drawable drawable2 = this.f843f;
        if (drawable2 != null) {
            p.a.d(drawable2, f5, f6);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        android.graphics.drawable.Drawable drawable = this.f838a;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        android.graphics.drawable.Drawable drawable2 = this.f843f;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    public final void e(android.view.MotionEvent motionEvent) {
        android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(motionEvent);
        motionEventObtain.setAction(3);
        super.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public final boolean g(float f5, float f6) {
        if (this.f838a == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f838a.getPadding(this.Q);
        int i5 = this.H;
        int i6 = this.f856x;
        int i7 = i5 - i6;
        int i8 = (this.G + thumbOffset) - i6;
        int i9 = this.F + i8;
        android.graphics.Rect rect = this.Q;
        return f5 > ((float) i8) && f5 < ((float) (((i9 + rect.left) + rect.right) + i6)) && f6 > ((float) i7) && f6 < ((float) (this.J + i6));
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!androidx.appcompat.widget.h0.b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.D;
        return !android.text.TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f850r : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (androidx.appcompat.widget.h0.b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.D;
        return !android.text.TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f850r : compoundPaddingRight;
    }

    public boolean getShowText() {
        return this.f854v;
    }

    public boolean getSplitTrack() {
        return this.f851s;
    }

    public int getSwitchMinWidth() {
        return this.f849q;
    }

    public int getSwitchPadding() {
        return this.f850r;
    }

    public java.lang.CharSequence getTextOff() {
        return this.f853u;
    }

    public java.lang.CharSequence getTextOn() {
        return this.f852t;
    }

    public android.graphics.drawable.Drawable getThumbDrawable() {
        return this.f838a;
    }

    public int getThumbTextPadding() {
        return this.f848p;
    }

    public android.content.res.ColorStateList getThumbTintList() {
        return this.f839b;
    }

    public android.graphics.PorterDuff.Mode getThumbTintMode() {
        return this.f840c;
    }

    public android.graphics.drawable.Drawable getTrackDrawable() {
        return this.f843f;
    }

    public android.content.res.ColorStateList getTrackTintList() {
        return this.f844g;
    }

    public android.graphics.PorterDuff.Mode getTrackTintMode() {
        return this.f845h;
    }

    public final android.text.Layout h(java.lang.CharSequence charSequence) {
        android.text.method.TransformationMethod transformationMethod = this.O;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        java.lang.CharSequence charSequence2 = charSequence;
        android.text.TextPaint textPaint = this.K;
        return new android.text.StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) java.lang.Math.ceil(android.text.Layout.getDesiredWidth(charSequence2, textPaint)) : 0, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    public void i(android.content.Context context, int i5) {
        androidx.appcompat.widget.d0 d0VarR = androidx.appcompat.widget.d0.r(context, i5, androidx.appcompat.R.styleable.TextAppearance);
        android.content.res.ColorStateList colorStateListC = d0VarR.c(androidx.appcompat.R.styleable.TextAppearance_android_textColor);
        if (colorStateListC != null) {
            this.L = colorStateListC;
        } else {
            this.L = getTextColors();
        }
        int iE = d0VarR.e(androidx.appcompat.R.styleable.TextAppearance_android_textSize, 0);
        if (iE != 0) {
            float f5 = iE;
            if (f5 != this.K.getTextSize()) {
                this.K.setTextSize(f5);
                requestLayout();
            }
        }
        k(d0VarR.j(androidx.appcompat.R.styleable.TextAppearance_android_typeface, -1), d0VarR.j(androidx.appcompat.R.styleable.TextAppearance_android_textStyle, -1));
        if (d0VarR.a(androidx.appcompat.R.styleable.TextAppearance_textAllCaps, false)) {
            this.O = new d.a(getContext());
        } else {
            this.O = null;
        }
        d0VarR.u();
    }

    public void j(android.graphics.Typeface typeface, int i5) {
        if (i5 <= 0) {
            this.K.setFakeBoldText(false);
            this.K.setTextSkewX(0.0f);
            setSwitchTypeface(typeface);
        } else {
            android.graphics.Typeface typefaceDefaultFromStyle = typeface == null ? android.graphics.Typeface.defaultFromStyle(i5) : android.graphics.Typeface.create(typeface, i5);
            setSwitchTypeface(typefaceDefaultFromStyle);
            int i6 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i5;
            this.K.setFakeBoldText((i6 & 1) != 0);
            this.K.setTextSkewX((i6 & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        android.graphics.drawable.Drawable drawable = this.f838a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        android.graphics.drawable.Drawable drawable2 = this.f843f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        android.animation.ObjectAnimator objectAnimator = this.P;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.P.end();
        this.P = null;
    }

    public final void k(int i5, int i6) {
        android.graphics.Typeface typeface;
        if (i5 == 1) {
            typeface = android.graphics.Typeface.SANS_SERIF;
        } else if (i5 != 2) {
            typeface = i5 != 3 ? null : android.graphics.Typeface.MONOSPACE;
        } else {
            typeface = android.graphics.Typeface.SERIF;
        }
        j(typeface, i6);
    }

    public final void l(android.view.MotionEvent motionEvent) {
        this.f855w = 0;
        boolean targetCheckedState = true;
        boolean z4 = motionEvent.getAction() == 1 && isEnabled();
        boolean zIsChecked = isChecked();
        if (z4) {
            this.A.computeCurrentVelocity(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO);
            float xVelocity = this.A.getXVelocity();
            if (java.lang.Math.abs(xVelocity) <= this.B) {
                targetCheckedState = getTargetCheckedState();
            } else if (!androidx.appcompat.widget.h0.b(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                targetCheckedState = false;
            }
        } else {
            targetCheckedState = zIsChecked;
        }
        if (targetCheckedState != zIsChecked) {
            playSoundEffect(0);
        }
        setChecked(targetCheckedState);
        e(motionEvent);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i5) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i5 + 1);
        if (isChecked()) {
            android.widget.CompoundButton.mergeDrawableStates(iArrOnCreateDrawableState, S);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        int width;
        super.onDraw(canvas);
        android.graphics.Rect rect = this.Q;
        android.graphics.drawable.Drawable drawable = this.f843f;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i5 = this.H;
        int i6 = this.J;
        int i7 = i5 + rect.top;
        int i8 = i6 - rect.bottom;
        android.graphics.drawable.Drawable drawable2 = this.f838a;
        if (drawable != null) {
            if (!this.f851s || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                android.graphics.Rect rectC = androidx.appcompat.widget.o.c(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectC.left;
                rect.right -= rectC.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, android.graphics.Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        android.text.Layout layout = getTargetCheckedState() ? this.M : this.N;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            android.content.res.ColorStateList colorStateList = this.L;
            if (colorStateList != null) {
                this.K.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.K.drawableState = drawableState;
            if (drawable2 != null) {
                android.graphics.Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i7 + i8) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        java.lang.CharSequence charSequence = isChecked() ? this.f852t : this.f853u;
        if (android.text.TextUtils.isEmpty(charSequence)) {
            return;
        }
        java.lang.CharSequence text = accessibilityNodeInfo.getText();
        if (android.text.TextUtils.isEmpty(text)) {
            accessibilityNodeInfo.setText(charSequence);
            return;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(text);
        sb.append(' ');
        sb.append(charSequence);
        accessibilityNodeInfo.setText(sb);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int iMax;
        int width;
        int paddingLeft;
        int i9;
        int paddingTop;
        int height;
        super.onLayout(z4, i5, i6, i7, i8);
        int iMax2 = 0;
        if (this.f838a != null) {
            android.graphics.Rect rect = this.Q;
            android.graphics.drawable.Drawable drawable = this.f843f;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            android.graphics.Rect rectC = androidx.appcompat.widget.o.c(this.f838a);
            iMax = java.lang.Math.max(0, rectC.left - rect.left);
            iMax2 = java.lang.Math.max(0, rectC.right - rect.right);
        } else {
            iMax = 0;
        }
        if (androidx.appcompat.widget.h0.b(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.D + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.D) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity != 16) {
            if (gravity != 80) {
                paddingTop = getPaddingTop();
                i9 = this.E;
            } else {
                height = getHeight() - getPaddingBottom();
                paddingTop = height - this.E;
            }
            this.G = paddingLeft;
            this.H = paddingTop;
            this.J = height;
            this.I = width;
        }
        int paddingTop2 = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
        i9 = this.E;
        paddingTop = paddingTop2 - (i9 / 2);
        height = i9 + paddingTop;
        this.G = paddingLeft;
        this.H = paddingTop;
        this.J = height;
        this.I = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i5, int i6) {
        int intrinsicWidth;
        int intrinsicHeight;
        if (this.f854v) {
            if (this.M == null) {
                this.M = h(this.f852t);
            }
            if (this.N == null) {
                this.N = h(this.f853u);
            }
        }
        android.graphics.Rect rect = this.Q;
        android.graphics.drawable.Drawable drawable = this.f838a;
        int intrinsicHeight2 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f838a.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f838a.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        this.F = java.lang.Math.max(this.f854v ? java.lang.Math.max(this.M.getWidth(), this.N.getWidth()) + (this.f848p * 2) : 0, intrinsicWidth);
        android.graphics.drawable.Drawable drawable2 = this.f843f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f843f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax = rect.left;
        int iMax2 = rect.right;
        android.graphics.drawable.Drawable drawable3 = this.f838a;
        if (drawable3 != null) {
            android.graphics.Rect rectC = androidx.appcompat.widget.o.c(drawable3);
            iMax = java.lang.Math.max(iMax, rectC.left);
            iMax2 = java.lang.Math.max(iMax2, rectC.right);
        }
        int iMax3 = java.lang.Math.max(this.f849q, (this.F * 2) + iMax + iMax2);
        int iMax4 = java.lang.Math.max(intrinsicHeight2, intrinsicHeight);
        this.D = iMax3;
        this.E = iMax4;
        super.onMeasure(i5, i6);
        if (getMeasuredHeight() < iMax4) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax4);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        java.lang.CharSequence charSequence = isChecked() ? this.f852t : this.f853u;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0089  */
    /* JADX WARN: Code duplicated, block: B:36:0x008d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0094  */
    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        float f5;
        this.A.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x4 = motionEvent.getX();
            float y4 = motionEvent.getY();
            if (isEnabled() && g(x4, y4)) {
                this.f855w = 1;
                this.f857y = x4;
                this.f858z = y4;
            }
        } else if (actionMasked == 1) {
            if (this.f855w == 2) {
                l(motionEvent);
                super.onTouchEvent(motionEvent);
                return true;
            }
            this.f855w = 0;
            this.A.clear();
        } else if (actionMasked == 2) {
            int i5 = this.f855w;
            if (i5 == 1) {
                float x5 = motionEvent.getX();
                float y5 = motionEvent.getY();
                if (java.lang.Math.abs(x5 - this.f857y) > this.f856x || java.lang.Math.abs(y5 - this.f858z) > this.f856x) {
                    this.f855w = 2;
                    getParent().requestDisallowInterceptTouchEvent(true);
                    this.f857y = x5;
                    this.f858z = y5;
                    return true;
                }
            } else if (i5 == 2) {
                float x6 = motionEvent.getX();
                int thumbScrollRange = getThumbScrollRange();
                float f6 = x6 - this.f857y;
                if (thumbScrollRange != 0) {
                    f5 = f6 / thumbScrollRange;
                } else {
                    f5 = f6 > 0.0f ? 1.0f : -1.0f;
                }
                if (androidx.appcompat.widget.h0.b(this)) {
                    f5 = -f5;
                }
                float f7 = f(this.C + f5, 0.0f, 1.0f);
                if (f7 != this.C) {
                    this.f857y = x6;
                    setThumbPosition(f7);
                }
                return true;
            }
        } else if (actionMasked == 3) {
            if (this.f855w == 2) {
                l(motionEvent);
                super.onTouchEvent(motionEvent);
                return true;
            }
            this.f855w = 0;
            this.A.clear();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z4) {
        super.setChecked(z4);
        boolean zIsChecked = isChecked();
        if (getWindowToken() != null && w.q.D(this)) {
            a(zIsChecked);
        } else {
            d();
            setThumbPosition(zIsChecked ? 1.0f : 0.0f);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(android.view.ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.k.k(this, callback));
    }

    public void setShowText(boolean z4) {
        if (this.f854v != z4) {
            this.f854v = z4;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z4) {
        this.f851s = z4;
        invalidate();
    }

    public void setSwitchMinWidth(int i5) {
        this.f849q = i5;
        requestLayout();
    }

    public void setSwitchPadding(int i5) {
        this.f850r = i5;
        requestLayout();
    }

    public void setSwitchTypeface(android.graphics.Typeface typeface) {
        if ((this.K.getTypeface() == null || this.K.getTypeface().equals(typeface)) && (this.K.getTypeface() != null || typeface == null)) {
            return;
        }
        this.K.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(java.lang.CharSequence charSequence) {
        this.f853u = charSequence;
        requestLayout();
    }

    public void setTextOn(java.lang.CharSequence charSequence) {
        this.f852t = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2 = this.f838a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f838a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f5) {
        this.C = f5;
        invalidate();
    }

    public void setThumbResource(int i5) {
        setThumbDrawable(b.a.b(getContext(), i5));
    }

    public void setThumbTextPadding(int i5) {
        this.f848p = i5;
        requestLayout();
    }

    public void setThumbTintList(android.content.res.ColorStateList colorStateList) {
        this.f839b = colorStateList;
        this.f841d = true;
        b();
    }

    public void setThumbTintMode(android.graphics.PorterDuff.Mode mode) {
        this.f840c = mode;
        this.f842e = true;
        b();
    }

    public void setTrackDrawable(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2 = this.f843f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f843f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i5) {
        setTrackDrawable(b.a.b(getContext(), i5));
    }

    public void setTrackTintList(android.content.res.ColorStateList colorStateList) {
        this.f844g = colorStateList;
        this.f846i = true;
        c();
    }

    public void setTrackTintMode(android.graphics.PorterDuff.Mode mode) {
        this.f845h = mode;
        this.f847o = true;
        c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public boolean verifyDrawable(android.graphics.drawable.Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f838a || drawable == this.f843f;
    }

    public SwitchCompat(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f839b = null;
        this.f840c = null;
        this.f841d = false;
        this.f842e = false;
        this.f844g = null;
        this.f845h = null;
        this.f846i = false;
        this.f847o = false;
        this.A = android.view.VelocityTracker.obtain();
        this.Q = new android.graphics.Rect();
        android.text.TextPaint textPaint = new android.text.TextPaint(1);
        this.K = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(context, attributeSet, androidx.appcompat.R.styleable.SwitchCompat, i5, 0);
        android.graphics.drawable.Drawable drawableF = d0VarT.f(androidx.appcompat.R.styleable.SwitchCompat_android_thumb);
        this.f838a = drawableF;
        if (drawableF != null) {
            drawableF.setCallback(this);
        }
        android.graphics.drawable.Drawable drawableF2 = d0VarT.f(androidx.appcompat.R.styleable.SwitchCompat_track);
        this.f843f = drawableF2;
        if (drawableF2 != null) {
            drawableF2.setCallback(this);
        }
        this.f852t = d0VarT.o(androidx.appcompat.R.styleable.SwitchCompat_android_textOn);
        this.f853u = d0VarT.o(androidx.appcompat.R.styleable.SwitchCompat_android_textOff);
        this.f854v = d0VarT.a(androidx.appcompat.R.styleable.SwitchCompat_showText, true);
        this.f848p = d0VarT.e(androidx.appcompat.R.styleable.SwitchCompat_thumbTextPadding, 0);
        this.f849q = d0VarT.e(androidx.appcompat.R.styleable.SwitchCompat_switchMinWidth, 0);
        this.f850r = d0VarT.e(androidx.appcompat.R.styleable.SwitchCompat_switchPadding, 0);
        this.f851s = d0VarT.a(androidx.appcompat.R.styleable.SwitchCompat_splitTrack, false);
        android.content.res.ColorStateList colorStateListC = d0VarT.c(androidx.appcompat.R.styleable.SwitchCompat_thumbTint);
        if (colorStateListC != null) {
            this.f839b = colorStateListC;
            this.f841d = true;
        }
        android.graphics.PorterDuff.Mode modeD = androidx.appcompat.widget.o.d(d0VarT.j(androidx.appcompat.R.styleable.SwitchCompat_thumbTintMode, -1), null);
        if (this.f840c != modeD) {
            this.f840c = modeD;
            this.f842e = true;
        }
        if (this.f841d || this.f842e) {
            b();
        }
        android.content.res.ColorStateList colorStateListC2 = d0VarT.c(androidx.appcompat.R.styleable.SwitchCompat_trackTint);
        if (colorStateListC2 != null) {
            this.f844g = colorStateListC2;
            this.f846i = true;
        }
        android.graphics.PorterDuff.Mode modeD2 = androidx.appcompat.widget.o.d(d0VarT.j(androidx.appcompat.R.styleable.SwitchCompat_trackTintMode, -1), null);
        if (this.f845h != modeD2) {
            this.f845h = modeD2;
            this.f847o = true;
        }
        if (this.f846i || this.f847o) {
            c();
        }
        int iM = d0VarT.m(androidx.appcompat.R.styleable.SwitchCompat_switchTextAppearance, 0);
        if (iM != 0) {
            i(context, iM);
        }
        d0VarT.u();
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(context);
        this.f856x = viewConfiguration.getScaledTouchSlop();
        this.B = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }
}
