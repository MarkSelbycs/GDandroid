package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ActivityChooserView extends android.view.ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.ActivityChooserView.f f653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.widget.ActivityChooserView.g f654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.view.View f655c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final android.graphics.drawable.Drawable f656d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final android.widget.FrameLayout f657e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final android.widget.ImageView f658f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final android.widget.FrameLayout f659g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final android.widget.ImageView f660h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f661i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public w.b f662o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final android.database.DataSetObserver f663p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final android.view.ViewTreeObserver.OnGlobalLayoutListener f664q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public androidx.appcompat.widget.ListPopupWindow f665r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public android.widget.PopupWindow.OnDismissListener f666s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f667t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f668u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f669v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f670w;

    public static class InnerLayout extends android.widget.LinearLayout {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int[] f671a = {android.R.attr.background};

        public InnerLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            androidx.appcompat.widget.d0 d0VarS = androidx.appcompat.widget.d0.s(context, attributeSet, f671a);
            setBackgroundDrawable(d0VarS.f(0));
            d0VarS.u();
        }
    }

    public class a extends android.database.DataSetObserver {
        public a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            androidx.appcompat.widget.ActivityChooserView.this.f653a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            androidx.appcompat.widget.ActivityChooserView.this.f653a.notifyDataSetInvalidated();
        }
    }

    public class b implements android.view.ViewTreeObserver.OnGlobalLayoutListener {
        public b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (androidx.appcompat.widget.ActivityChooserView.this.b()) {
                if (!androidx.appcompat.widget.ActivityChooserView.this.isShown()) {
                    androidx.appcompat.widget.ActivityChooserView.this.getListPopupWindow().dismiss();
                    return;
                }
                androidx.appcompat.widget.ActivityChooserView.this.getListPopupWindow().b();
                w.b bVar = androidx.appcompat.widget.ActivityChooserView.this.f662o;
                if (bVar != null) {
                    bVar.k(true);
                }
            }
        }
    }

    public class c extends android.view.View.AccessibilityDelegate {
        public c() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(android.view.View view, android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            x.c.j0(accessibilityNodeInfo).N(true);
        }
    }

    public class d extends androidx.appcompat.widget.r {
        public d(android.view.View view) {
            super(view);
        }

        @Override // androidx.appcompat.widget.r
        public f.i b() {
            return androidx.appcompat.widget.ActivityChooserView.this.getListPopupWindow();
        }

        @Override // androidx.appcompat.widget.r
        public boolean c() {
            androidx.appcompat.widget.ActivityChooserView.this.c();
            return true;
        }

        @Override // androidx.appcompat.widget.r
        public boolean d() {
            androidx.appcompat.widget.ActivityChooserView.this.a();
            return true;
        }
    }

    public class e extends android.database.DataSetObserver {
        public e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            androidx.appcompat.widget.ActivityChooserView.this.e();
        }
    }

    public class f extends android.widget.BaseAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f677a = 4;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f678b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f679c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f680d;

        public f() {
        }

        public int a() {
            throw null;
        }

        public androidx.appcompat.widget.c b() {
            return null;
        }

        public android.content.pm.ResolveInfo c() {
            throw null;
        }

        public int d() {
            throw null;
        }

        public boolean e() {
            return this.f678b;
        }

        public void f(androidx.appcompat.widget.c cVar) {
            androidx.appcompat.widget.ActivityChooserView.this.f653a.b();
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            throw null;
        }

        @Override // android.widget.Adapter
        public java.lang.Object getItem(int i5) {
            int itemViewType = getItemViewType(i5);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    return null;
                }
                throw new java.lang.IllegalArgumentException();
            }
            if (this.f678b) {
                throw null;
            }
            throw null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i5) {
            return i5;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i5) {
            return (this.f680d && i5 == getCount() - 1) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public android.view.View getView(int i5, android.view.View view, android.view.ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i5);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new java.lang.IllegalArgumentException();
                }
                if (view != null && view.getId() == 1) {
                    return view;
                }
                android.view.View viewInflate = android.view.LayoutInflater.from(androidx.appcompat.widget.ActivityChooserView.this.getContext()).inflate(androidx.appcompat.R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                viewInflate.setId(1);
                ((android.widget.TextView) viewInflate.findViewById(androidx.appcompat.R.id.title)).setText(androidx.appcompat.widget.ActivityChooserView.this.getContext().getString(androidx.appcompat.R.string.abc_activity_chooser_view_see_all));
                return viewInflate;
            }
            if (view == null || view.getId() != androidx.appcompat.R.id.list_item) {
                view = android.view.LayoutInflater.from(androidx.appcompat.widget.ActivityChooserView.this.getContext()).inflate(androidx.appcompat.R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            android.content.pm.PackageManager packageManager = androidx.appcompat.widget.ActivityChooserView.this.getContext().getPackageManager();
            android.widget.ImageView imageView = (android.widget.ImageView) view.findViewById(androidx.appcompat.R.id.icon);
            android.content.pm.ResolveInfo resolveInfo = (android.content.pm.ResolveInfo) getItem(i5);
            imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
            ((android.widget.TextView) view.findViewById(androidx.appcompat.R.id.title)).setText(resolveInfo.loadLabel(packageManager));
            if (this.f678b && i5 == 0 && this.f679c) {
                view.setActivated(true);
            } else {
                view.setActivated(false);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    public class g implements android.widget.AdapterView.OnItemClickListener, android.view.View.OnClickListener, android.view.View.OnLongClickListener, android.widget.PopupWindow.OnDismissListener {
        public g() {
        }

        public final void a() {
            android.widget.PopupWindow.OnDismissListener onDismissListener = androidx.appcompat.widget.ActivityChooserView.this.f666s;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            androidx.appcompat.widget.ActivityChooserView activityChooserView = androidx.appcompat.widget.ActivityChooserView.this;
            if (view == activityChooserView.f659g) {
                activityChooserView.a();
                androidx.appcompat.widget.ActivityChooserView.this.f653a.c();
                androidx.appcompat.widget.ActivityChooserView.this.f653a.b();
                throw null;
            }
            if (view != activityChooserView.f657e) {
                throw new java.lang.IllegalArgumentException();
            }
            activityChooserView.f667t = false;
            activityChooserView.d(activityChooserView.f668u);
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            a();
            w.b bVar = androidx.appcompat.widget.ActivityChooserView.this.f662o;
            if (bVar != null) {
                bVar.k(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i5, long j5) {
            int itemViewType = ((androidx.appcompat.widget.ActivityChooserView.f) adapterView.getAdapter()).getItemViewType(i5);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new java.lang.IllegalArgumentException();
                }
                androidx.appcompat.widget.ActivityChooserView.this.d(Integer.MAX_VALUE);
                return;
            }
            androidx.appcompat.widget.ActivityChooserView.this.a();
            androidx.appcompat.widget.ActivityChooserView activityChooserView = androidx.appcompat.widget.ActivityChooserView.this;
            if (!activityChooserView.f667t) {
                activityChooserView.f653a.e();
                androidx.appcompat.widget.ActivityChooserView.this.f653a.b();
                throw null;
            }
            if (i5 <= 0) {
                return;
            }
            activityChooserView.f653a.b();
            throw null;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(android.view.View view) {
            androidx.appcompat.widget.ActivityChooserView activityChooserView = androidx.appcompat.widget.ActivityChooserView.this;
            if (view != activityChooserView.f659g) {
                throw new java.lang.IllegalArgumentException();
            }
            if (activityChooserView.f653a.getCount() > 0) {
                androidx.appcompat.widget.ActivityChooserView activityChooserView2 = androidx.appcompat.widget.ActivityChooserView.this;
                activityChooserView2.f667t = true;
                activityChooserView2.d(activityChooserView2.f668u);
            }
            return true;
        }
    }

    public ActivityChooserView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public boolean a() {
        if (!b()) {
            return true;
        }
        getListPopupWindow().dismiss();
        android.view.ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.f664q);
        return true;
    }

    public boolean b() {
        return getListPopupWindow().f();
    }

    public boolean c() {
        if (b() || !this.f669v) {
            return false;
        }
        this.f667t = false;
        d(this.f668u);
        return true;
    }

    public void d(int i5) {
        this.f653a.b();
        throw new java.lang.IllegalStateException("No data model. Did you call #setDataModel?");
    }

    public void e() {
        if (this.f653a.getCount() > 0) {
            this.f657e.setEnabled(true);
        } else {
            this.f657e.setEnabled(false);
        }
        int iA = this.f653a.a();
        int iD = this.f653a.d();
        if (iA == 1 || (iA > 1 && iD > 0)) {
            this.f659g.setVisibility(0);
            android.content.pm.ResolveInfo resolveInfoC = this.f653a.c();
            android.content.pm.PackageManager packageManager = getContext().getPackageManager();
            this.f660h.setImageDrawable(resolveInfoC.loadIcon(packageManager));
            if (this.f670w != 0) {
                this.f659g.setContentDescription(getContext().getString(this.f670w, resolveInfoC.loadLabel(packageManager)));
            }
        } else {
            this.f659g.setVisibility(8);
        }
        if (this.f659g.getVisibility() == 0) {
            this.f655c.setBackgroundDrawable(this.f656d);
        } else {
            this.f655c.setBackgroundDrawable(null);
        }
    }

    public androidx.appcompat.widget.c getDataModel() {
        this.f653a.b();
        return null;
    }

    public androidx.appcompat.widget.ListPopupWindow getListPopupWindow() {
        if (this.f665r == null) {
            androidx.appcompat.widget.ListPopupWindow listPopupWindow = new androidx.appcompat.widget.ListPopupWindow(getContext());
            this.f665r = listPopupWindow;
            listPopupWindow.r(this.f653a);
            this.f665r.s(this);
            this.f665r.A(true);
            this.f665r.C(this.f654b);
            this.f665r.B(this.f654b);
        }
        return this.f665r;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f653a.b();
        this.f669v = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f653a.b();
        android.view.ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f664q);
        }
        if (b()) {
            a();
        }
        this.f669v = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        this.f655c.layout(0, 0, i7 - i5, i8 - i6);
        if (b()) {
            return;
        }
        a();
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        android.view.View view = this.f655c;
        if (this.f659g.getVisibility() != 0) {
            i6 = android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(i6), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        }
        measureChild(view, i5, i6);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(androidx.appcompat.widget.c cVar) {
        this.f653a.f(cVar);
        if (b()) {
            a();
            c();
        }
    }

    public void setDefaultActionButtonContentDescription(int i5) {
        this.f670w = i5;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i5) {
        this.f658f.setContentDescription(getContext().getString(i5));
    }

    public void setExpandActivityOverflowButtonDrawable(android.graphics.drawable.Drawable drawable) {
        this.f658f.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i5) {
        this.f668u = i5;
    }

    public void setOnDismissListener(android.widget.PopupWindow.OnDismissListener onDismissListener) {
        this.f666s = onDismissListener;
    }

    public void setProvider(w.b bVar) {
        this.f662o = bVar;
    }

    public ActivityChooserView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f663p = new androidx.appcompat.widget.ActivityChooserView.a();
        this.f664q = new androidx.appcompat.widget.ActivityChooserView.b();
        this.f668u = 4;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.ActivityChooserView, i5, 0);
        this.f668u = typedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.ActivityChooserView_initialActivityCount, 4);
        android.graphics.drawable.Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        typedArrayObtainStyledAttributes.recycle();
        android.view.LayoutInflater.from(getContext()).inflate(androidx.appcompat.R.layout.abc_activity_chooser_view, (android.view.ViewGroup) this, true);
        androidx.appcompat.widget.ActivityChooserView.g gVar = new androidx.appcompat.widget.ActivityChooserView.g();
        this.f654b = gVar;
        android.view.View viewFindViewById = findViewById(androidx.appcompat.R.id.activity_chooser_view_content);
        this.f655c = viewFindViewById;
        this.f656d = viewFindViewById.getBackground();
        android.widget.FrameLayout frameLayout = (android.widget.FrameLayout) findViewById(androidx.appcompat.R.id.default_activity_button);
        this.f659g = frameLayout;
        frameLayout.setOnClickListener(gVar);
        frameLayout.setOnLongClickListener(gVar);
        int i6 = androidx.appcompat.R.id.image;
        this.f660h = (android.widget.ImageView) frameLayout.findViewById(i6);
        android.widget.FrameLayout frameLayout2 = (android.widget.FrameLayout) findViewById(androidx.appcompat.R.id.expand_activities_button);
        frameLayout2.setOnClickListener(gVar);
        frameLayout2.setAccessibilityDelegate(new androidx.appcompat.widget.ActivityChooserView.c());
        frameLayout2.setOnTouchListener(new androidx.appcompat.widget.ActivityChooserView.d(frameLayout2));
        this.f657e = frameLayout2;
        android.widget.ImageView imageView = (android.widget.ImageView) frameLayout2.findViewById(i6);
        this.f658f = imageView;
        imageView.setImageDrawable(drawable);
        androidx.appcompat.widget.ActivityChooserView.f fVar = new androidx.appcompat.widget.ActivityChooserView.f();
        this.f653a = fVar;
        fVar.registerDataSetObserver(new androidx.appcompat.widget.ActivityChooserView.e());
        android.content.res.Resources resources = context.getResources();
        this.f661i = java.lang.Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(androidx.appcompat.R.dimen.abc_config_prefDialogWidth));
    }
}
