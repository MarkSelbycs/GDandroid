package androidx.appcompat.view.menu;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ActionMenuItemView extends androidx.appcompat.widget.AppCompatTextView implements androidx.appcompat.view.menu.j.a, android.view.View.OnClickListener, androidx.appcompat.widget.ActionMenuView.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.appcompat.view.menu.g f390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.lang.CharSequence f391e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f392f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public androidx.appcompat.view.menu.e.b f393g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public androidx.appcompat.widget.r f394h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public androidx.appcompat.view.menu.ActionMenuItemView.b f395i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f396o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f397p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f398q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f399r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f400s;

    public class a extends androidx.appcompat.widget.r {
        public a() {
            super(androidx.appcompat.view.menu.ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.r
        public f.i b() {
            androidx.appcompat.view.menu.ActionMenuItemView.b bVar = androidx.appcompat.view.menu.ActionMenuItemView.this.f395i;
            if (bVar != null) {
                return bVar.a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.r
        public boolean c() {
            f.i iVarB;
            androidx.appcompat.view.menu.ActionMenuItemView actionMenuItemView = androidx.appcompat.view.menu.ActionMenuItemView.this;
            androidx.appcompat.view.menu.e.b bVar = actionMenuItemView.f393g;
            return bVar != null && bVar.a(actionMenuItemView.f390d) && (iVarB = b()) != null && iVarB.f();
        }
    }

    public static abstract class b {
        public abstract f.i a();
    }

    public ActionMenuItemView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean a() {
        return f();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean b() {
        return f() && this.f390d.getIcon() == null;
    }

    @Override // androidx.appcompat.view.menu.j.a
    public boolean c() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.j.a
    public void d(androidx.appcompat.view.menu.g gVar, int i5) {
        this.f390d = gVar;
        setIcon(gVar.getIcon());
        setTitle(gVar.i(this));
        setId(gVar.getItemId());
        setVisibility(gVar.isVisible() ? 0 : 8);
        setEnabled(gVar.isEnabled());
        if (gVar.hasSubMenu() && this.f394h == null) {
            this.f394h = new androidx.appcompat.view.menu.ActionMenuItemView.a();
        }
    }

    public boolean f() {
        return !android.text.TextUtils.isEmpty(getText());
    }

    public final boolean g() {
        android.content.res.Configuration configuration = getContext().getResources().getConfiguration();
        int i5 = configuration.screenWidthDp;
        return i5 >= 480 || (i5 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    @Override // androidx.appcompat.view.menu.j.a
    public androidx.appcompat.view.menu.g getItemData() {
        return this.f390d;
    }

    public final void h() {
        boolean z4 = true;
        boolean z5 = !android.text.TextUtils.isEmpty(this.f391e);
        if (this.f392f != null && (!this.f390d.B() || (!this.f396o && !this.f397p))) {
            z4 = false;
        }
        boolean z6 = z5 & z4;
        setText(z6 ? this.f391e : null);
        java.lang.CharSequence contentDescription = this.f390d.getContentDescription();
        if (android.text.TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z6 ? null : this.f390d.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        java.lang.CharSequence tooltipText = this.f390d.getTooltipText();
        if (android.text.TextUtils.isEmpty(tooltipText)) {
            androidx.appcompat.widget.f0.a(this, z6 ? null : this.f390d.getTitle());
        } else {
            androidx.appcompat.widget.f0.a(this, tooltipText);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        androidx.appcompat.view.menu.e.b bVar = this.f393g;
        if (bVar != null) {
            bVar.a(this.f390d);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f396o = g();
        h();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i5, int i6) {
        int i7;
        boolean zF = f();
        if (zF && (i7 = this.f399r) >= 0) {
            super.setPadding(i7, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i5, i6);
        int mode = android.view.View.MeasureSpec.getMode(i5);
        int size = android.view.View.MeasureSpec.getSize(i5);
        int measuredWidth = getMeasuredWidth();
        int iMin = mode == Integer.MIN_VALUE ? java.lang.Math.min(size, this.f398q) : this.f398q;
        if (mode != 1073741824 && this.f398q > 0 && measuredWidth < iMin) {
            super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(iMin, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), i6);
        }
        if (zF || this.f392f == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f392f.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        androidx.appcompat.widget.r rVar;
        if (this.f390d.hasSubMenu() && (rVar = this.f394h) != null && rVar.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z4) {
    }

    public void setChecked(boolean z4) {
    }

    public void setExpandedFormat(boolean z4) {
        if (this.f397p != z4) {
            this.f397p = z4;
            androidx.appcompat.view.menu.g gVar = this.f390d;
            if (gVar != null) {
                gVar.c();
            }
        }
    }

    public void setIcon(android.graphics.drawable.Drawable drawable) {
        this.f392f = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i5 = this.f400s;
            if (intrinsicWidth > i5) {
                intrinsicHeight = (int) (intrinsicHeight * (i5 / intrinsicWidth));
                intrinsicWidth = i5;
            }
            if (intrinsicHeight > i5) {
                intrinsicWidth = (int) (intrinsicWidth * (i5 / intrinsicHeight));
            } else {
                i5 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i5);
        }
        setCompoundDrawables(drawable, null, null, null);
        h();
    }

    public void setItemInvoker(androidx.appcompat.view.menu.e.b bVar) {
        this.f393g = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i5, int i6, int i7, int i8) {
        this.f399r = i5;
        super.setPadding(i5, i6, i7, i8);
    }

    public void setPopupCallback(androidx.appcompat.view.menu.ActionMenuItemView.b bVar) {
        this.f395i = bVar;
    }

    public void setTitle(java.lang.CharSequence charSequence) {
        this.f391e = charSequence;
        h();
    }

    public ActionMenuItemView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        android.content.res.Resources resources = context.getResources();
        this.f396o = g();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.ActionMenuItemView, i5, 0);
        this.f398q = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.ActionMenuItemView_android_minWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f400s = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f399r = -1;
        setSaveEnabled(false);
    }
}
