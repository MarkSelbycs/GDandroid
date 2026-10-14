package androidx.appcompat.view.menu;

/* JADX INFO: compiled from: StandardMenuPopup.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k extends f.f implements android.widget.PopupWindow.OnDismissListener, android.view.View.OnKeyListener {
    public static final int A = androidx.appcompat.R.layout.abc_popup_menu_item_layout;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.Context f550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.appcompat.view.menu.e f551c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.appcompat.view.menu.d f552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f554f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f555g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f556h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final androidx.appcompat.widget.t f557i;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public android.widget.PopupWindow.OnDismissListener f560q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public android.view.View f561r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public android.view.View f562s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public androidx.appcompat.view.menu.i.a f563t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public android.view.ViewTreeObserver f564u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f565v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f566w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f567x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f569z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final android.view.ViewTreeObserver.OnGlobalLayoutListener f558o = new androidx.appcompat.view.menu.k.a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final android.view.View.OnAttachStateChangeListener f559p = new androidx.appcompat.view.menu.k.b();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f568y = 0;

    /* JADX INFO: compiled from: StandardMenuPopup.java */
    public class a implements android.view.ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!androidx.appcompat.view.menu.k.this.f() || androidx.appcompat.view.menu.k.this.f557i.p()) {
                return;
            }
            android.view.View view = androidx.appcompat.view.menu.k.this.f562s;
            if (view == null || !view.isShown()) {
                androidx.appcompat.view.menu.k.this.dismiss();
            } else {
                androidx.appcompat.view.menu.k.this.f557i.b();
            }
        }
    }

    /* JADX INFO: compiled from: StandardMenuPopup.java */
    public class b implements android.view.View.OnAttachStateChangeListener {
        public b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(android.view.View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(android.view.View view) {
            android.view.ViewTreeObserver viewTreeObserver = androidx.appcompat.view.menu.k.this.f564u;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    androidx.appcompat.view.menu.k.this.f564u = view.getViewTreeObserver();
                }
                androidx.appcompat.view.menu.k kVar = androidx.appcompat.view.menu.k.this;
                kVar.f564u.removeGlobalOnLayoutListener(kVar.f558o);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public k(android.content.Context context, androidx.appcompat.view.menu.e eVar, android.view.View view, int i5, int i6, boolean z4) {
        this.f550b = context;
        this.f551c = eVar;
        this.f553e = z4;
        this.f552d = new androidx.appcompat.view.menu.d(eVar, android.view.LayoutInflater.from(context), z4, A);
        this.f555g = i5;
        this.f556h = i6;
        android.content.res.Resources resources = context.getResources();
        this.f554f = java.lang.Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(androidx.appcompat.R.dimen.abc_config_prefDialogWidth));
        this.f561r = view;
        this.f557i = new androidx.appcompat.widget.t(context, null, i5, i6);
        eVar.c(this, context);
    }

    @Override // androidx.appcompat.view.menu.i
    public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
        if (eVar != this.f551c) {
            return;
        }
        dismiss();
        androidx.appcompat.view.menu.i.a aVar = this.f563t;
        if (aVar != null) {
            aVar.a(eVar, z4);
        }
    }

    @Override // f.i
    public void b() {
        if (!z()) {
            throw new java.lang.IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean c() {
        return false;
    }

    @Override // f.i
    public void dismiss() {
        if (f()) {
            this.f557i.dismiss();
        }
    }

    @Override // f.i
    public boolean f() {
        return !this.f565v && this.f557i.f();
    }

    @Override // f.i
    public android.widget.ListView g() {
        return this.f557i.g();
    }

    @Override // androidx.appcompat.view.menu.i
    public void i(androidx.appcompat.view.menu.i.a aVar) {
        this.f563t = aVar;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean j(androidx.appcompat.view.menu.l lVar) {
        if (lVar.hasVisibleItems()) {
            androidx.appcompat.view.menu.h hVar = new androidx.appcompat.view.menu.h(this.f550b, lVar, this.f562s, this.f553e, this.f555g, this.f556h);
            hVar.j(this.f563t);
            hVar.g(f.f.x(lVar));
            hVar.i(this.f560q);
            this.f560q = null;
            this.f551c.e(false);
            int iK = this.f557i.k();
            int iM = this.f557i.m();
            if ((android.view.Gravity.getAbsoluteGravity(this.f568y, w.q.p(this.f561r)) & 7) == 5) {
                iK += this.f561r.getWidth();
            }
            if (hVar.n(iK, iM)) {
                androidx.appcompat.view.menu.i.a aVar = this.f563t;
                if (aVar == null) {
                    return true;
                }
                aVar.b(lVar);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public void k(boolean z4) {
        this.f566w = false;
        androidx.appcompat.view.menu.d dVar = this.f552d;
        if (dVar != null) {
            dVar.notifyDataSetChanged();
        }
    }

    @Override // f.f
    public void l(androidx.appcompat.view.menu.e eVar) {
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f565v = true;
        this.f551c.close();
        android.view.ViewTreeObserver viewTreeObserver = this.f564u;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f564u = this.f562s.getViewTreeObserver();
            }
            this.f564u.removeGlobalOnLayoutListener(this.f558o);
            this.f564u = null;
        }
        this.f562s.removeOnAttachStateChangeListener(this.f559p);
        android.widget.PopupWindow.OnDismissListener onDismissListener = this.f560q;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(android.view.View view, int i5, android.view.KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i5 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // f.f
    public void p(android.view.View view) {
        this.f561r = view;
    }

    @Override // f.f
    public void r(boolean z4) {
        this.f552d.d(z4);
    }

    @Override // f.f
    public void s(int i5) {
        this.f568y = i5;
    }

    @Override // f.f
    public void t(int i5) {
        this.f557i.y(i5);
    }

    @Override // f.f
    public void u(android.widget.PopupWindow.OnDismissListener onDismissListener) {
        this.f560q = onDismissListener;
    }

    @Override // f.f
    public void v(boolean z4) {
        this.f569z = z4;
    }

    @Override // f.f
    public void w(int i5) {
        this.f557i.H(i5);
    }

    public final boolean z() {
        android.view.View view;
        if (f()) {
            return true;
        }
        if (this.f565v || (view = this.f561r) == null) {
            return false;
        }
        this.f562s = view;
        this.f557i.B(this);
        this.f557i.C(this);
        this.f557i.A(true);
        android.view.View view2 = this.f562s;
        boolean z4 = this.f564u == null;
        android.view.ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f564u = viewTreeObserver;
        if (z4) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f558o);
        }
        view2.addOnAttachStateChangeListener(this.f559p);
        this.f557i.s(view2);
        this.f557i.w(this.f568y);
        if (!this.f566w) {
            this.f567x = f.f.o(this.f552d, null, this.f550b, this.f554f);
            this.f566w = true;
        }
        this.f557i.v(this.f567x);
        this.f557i.z(2);
        this.f557i.x(n());
        this.f557i.b();
        android.widget.ListView listViewG = this.f557i.g();
        listViewG.setOnKeyListener(this);
        if (this.f569z && this.f551c.x() != null) {
            android.widget.FrameLayout frameLayout = (android.widget.FrameLayout) android.view.LayoutInflater.from(this.f550b).inflate(androidx.appcompat.R.layout.abc_popup_menu_header_item_layout, (android.view.ViewGroup) listViewG, false);
            android.widget.TextView textView = (android.widget.TextView) frameLayout.findViewById(android.R.id.title);
            if (textView != null) {
                textView.setText(this.f551c.x());
            }
            frameLayout.setEnabled(false);
            listViewG.addHeaderView(frameLayout, null, false);
        }
        this.f557i.r(this.f552d);
        this.f557i.b();
        return true;
    }
}
