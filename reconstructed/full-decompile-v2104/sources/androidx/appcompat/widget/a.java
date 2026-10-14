package androidx.appcompat.widget;

/* JADX INFO: compiled from: AbsActionBarView.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a extends android.view.ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.a.C0005a f894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.Context f895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.appcompat.widget.ActionMenuView f896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.appcompat.widget.ActionMenuPresenter f897d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public w.w f899f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f900g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f901h;

    /* JADX INFO: renamed from: androidx.appcompat.widget.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbsActionBarView.java */
    public class C0005a implements w.x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f902a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f903b;

        public C0005a() {
        }

        @Override // w.x
        public void a(android.view.View view) {
            if (this.f902a) {
                return;
            }
            androidx.appcompat.widget.a aVar = androidx.appcompat.widget.a.this;
            aVar.f899f = null;
            androidx.appcompat.widget.a.super.setVisibility(this.f903b);
        }

        @Override // w.x
        public void b(android.view.View view) {
            androidx.appcompat.widget.a.super.setVisibility(0);
            this.f902a = false;
        }

        @Override // w.x
        public void c(android.view.View view) {
            this.f902a = true;
        }

        public androidx.appcompat.widget.a.C0005a d(w.w wVar, int i5) {
            androidx.appcompat.widget.a.this.f899f = wVar;
            this.f903b = i5;
            return this;
        }
    }

    public a(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static int d(int i5, int i6, boolean z4) {
        return z4 ? i5 - i6 : i5 + i6;
    }

    public int c(android.view.View view, int i5, int i6, int i7) {
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE), i6);
        return java.lang.Math.max(0, (i5 - view.getMeasuredWidth()) - i7);
    }

    public int e(android.view.View view, int i5, int i6, int i7, boolean z4) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i8 = i6 + ((i7 - measuredHeight) / 2);
        if (z4) {
            view.layout(i5 - measuredWidth, i8, i5, measuredHeight + i8);
        } else {
            view.layout(i5, i8, i5 + measuredWidth, measuredHeight + i8);
        }
        return z4 ? -measuredWidth : measuredWidth;
    }

    public w.w f(int i5, long j5) {
        w.w wVar = this.f899f;
        if (wVar != null) {
            wVar.c();
        }
        if (i5 != 0) {
            w.w wVarB = w.q.b(this).b(0.0f);
            wVarB.f(j5);
            wVarB.h(this.f894a.d(wVarB, i5));
            return wVarB;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        w.w wVarB2 = w.q.b(this).b(1.0f);
        wVarB2.f(j5);
        wVarB2.h(this.f894a.d(wVarB2, i5));
        return wVarB2;
    }

    public int getAnimatedVisibility() {
        return this.f899f != null ? this.f894a.f903b : getVisibility();
    }

    public int getContentHeight() {
        return this.f898e;
    }

    @Override // android.view.View
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, androidx.appcompat.R.styleable.ActionBar, androidx.appcompat.R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(androidx.appcompat.R.styleable.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = this.f897d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.F(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f901h = false;
        }
        if (!this.f901h) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f901h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f901h = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f900g = false;
        }
        if (!this.f900g) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f900g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f900g = false;
        }
        return true;
    }

    public void setContentHeight(int i5) {
        this.f898e = i5;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i5) {
        if (i5 != getVisibility()) {
            w.w wVar = this.f899f;
            if (wVar != null) {
                wVar.c();
            }
            super.setVisibility(i5);
        }
    }

    public a(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f894a = new androidx.appcompat.widget.a.C0005a();
        android.util.TypedValue typedValue = new android.util.TypedValue();
        if (!context.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f895b = context;
        } else {
            this.f895b = new android.view.ContextThemeWrapper(context, typedValue.resourceId);
        }
    }
}
