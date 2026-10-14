package androidx.appcompat.view.menu;

/* JADX INFO: compiled from: CascadingMenuPopup.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b extends f.f implements android.view.View.OnKeyListener, android.widget.PopupWindow.OnDismissListener {
    public static final int G = androidx.appcompat.R.layout.abc_cascading_menu_item_layout;
    public boolean B;
    public androidx.appcompat.view.menu.i.a C;
    public android.view.ViewTreeObserver D;
    public android.widget.PopupWindow.OnDismissListener E;
    public boolean F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.Context f433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f434c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f435d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f436e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f437f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final android.os.Handler f438g;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public android.view.View f446t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public android.view.View f447u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f449w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f450x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f451y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f452z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final java.util.List<androidx.appcompat.view.menu.e> f439h = new java.util.ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final java.util.List<androidx.appcompat.view.menu.b.d> f440i = new java.util.ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final android.view.ViewTreeObserver.OnGlobalLayoutListener f441o = new androidx.appcompat.view.menu.b.a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final android.view.View.OnAttachStateChangeListener f442p = new androidx.appcompat.view.menu.b.ViewOnAttachStateChangeListenerC0003b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final androidx.appcompat.widget.s f443q = new androidx.appcompat.view.menu.b.c();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f444r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f445s = 0;
    public boolean A = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f448v = D();

    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    public class a implements android.view.ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!androidx.appcompat.view.menu.b.this.f() || androidx.appcompat.view.menu.b.this.f440i.size() <= 0 || androidx.appcompat.view.menu.b.this.f440i.get(0).f460a.p()) {
                return;
            }
            android.view.View view = androidx.appcompat.view.menu.b.this.f447u;
            if (view == null || !view.isShown()) {
                androidx.appcompat.view.menu.b.this.dismiss();
                return;
            }
            java.util.Iterator<androidx.appcompat.view.menu.b.d> it = androidx.appcompat.view.menu.b.this.f440i.iterator();
            while (it.hasNext()) {
                it.next().f460a.b();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    public class ViewOnAttachStateChangeListenerC0003b implements android.view.View.OnAttachStateChangeListener {
        public ViewOnAttachStateChangeListenerC0003b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(android.view.View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(android.view.View view) {
            android.view.ViewTreeObserver viewTreeObserver = androidx.appcompat.view.menu.b.this.D;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    androidx.appcompat.view.menu.b.this.D = view.getViewTreeObserver();
                }
                androidx.appcompat.view.menu.b bVar = androidx.appcompat.view.menu.b.this;
                bVar.D.removeGlobalOnLayoutListener(bVar.f441o);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    public class c implements androidx.appcompat.widget.s {

        /* JADX INFO: compiled from: CascadingMenuPopup.java */
        public class a implements java.lang.Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ androidx.appcompat.view.menu.b.d f456a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ android.view.MenuItem f457b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ androidx.appcompat.view.menu.e f458c;

            public a(androidx.appcompat.view.menu.b.d dVar, android.view.MenuItem menuItem, androidx.appcompat.view.menu.e eVar) {
                this.f456a = dVar;
                this.f457b = menuItem;
                this.f458c = eVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                androidx.appcompat.view.menu.b.d dVar = this.f456a;
                if (dVar != null) {
                    androidx.appcompat.view.menu.b.this.F = true;
                    dVar.f461b.e(false);
                    androidx.appcompat.view.menu.b.this.F = false;
                }
                if (this.f457b.isEnabled() && this.f457b.hasSubMenu()) {
                    this.f458c.L(this.f457b, 4);
                }
            }
        }

        public c() {
        }

        @Override // androidx.appcompat.widget.s
        public void a(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem) {
            androidx.appcompat.view.menu.b.this.f438g.removeCallbacksAndMessages(null);
            int size = androidx.appcompat.view.menu.b.this.f440i.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size) {
                    i5 = -1;
                    break;
                } else if (eVar == androidx.appcompat.view.menu.b.this.f440i.get(i5).f461b) {
                    break;
                } else {
                    i5++;
                }
            }
            if (i5 == -1) {
                return;
            }
            int i6 = i5 + 1;
            androidx.appcompat.view.menu.b.this.f438g.postAtTime(new androidx.appcompat.view.menu.b.c.a(i6 < androidx.appcompat.view.menu.b.this.f440i.size() ? androidx.appcompat.view.menu.b.this.f440i.get(i6) : null, menuItem, eVar), eVar, android.os.SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.s
        public void c(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem) {
            androidx.appcompat.view.menu.b.this.f438g.removeCallbacksAndMessages(eVar);
        }
    }

    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.appcompat.widget.t f460a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.appcompat.view.menu.e f461b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f462c;

        public d(androidx.appcompat.widget.t tVar, androidx.appcompat.view.menu.e eVar, int i5) {
            this.f460a = tVar;
            this.f461b = eVar;
            this.f462c = i5;
        }

        public android.widget.ListView a() {
            return this.f460a.g();
        }
    }

    public b(android.content.Context context, android.view.View view, int i5, int i6, boolean z4) {
        this.f433b = context;
        this.f446t = view;
        this.f435d = i5;
        this.f436e = i6;
        this.f437f = z4;
        android.content.res.Resources resources = context.getResources();
        this.f434c = java.lang.Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(androidx.appcompat.R.dimen.abc_config_prefDialogWidth));
        this.f438g = new android.os.Handler();
    }

    public final int A(androidx.appcompat.view.menu.e eVar) {
        int size = this.f440i.size();
        for (int i5 = 0; i5 < size; i5++) {
            if (eVar == this.f440i.get(i5).f461b) {
                return i5;
            }
        }
        return -1;
    }

    public final android.view.MenuItem B(androidx.appcompat.view.menu.e eVar, androidx.appcompat.view.menu.e eVar2) {
        int size = eVar.size();
        for (int i5 = 0; i5 < size; i5++) {
            android.view.MenuItem item = eVar.getItem(i5);
            if (item.hasSubMenu() && eVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    public final android.view.View C(androidx.appcompat.view.menu.b.d dVar, androidx.appcompat.view.menu.e eVar) {
        androidx.appcompat.view.menu.d dVar2;
        int headersCount;
        int firstVisiblePosition;
        android.view.MenuItem menuItemB = B(dVar.f461b, eVar);
        if (menuItemB == null) {
            return null;
        }
        android.widget.ListView listViewA = dVar.a();
        android.widget.ListAdapter adapter = listViewA.getAdapter();
        int i5 = 0;
        if (adapter instanceof android.widget.HeaderViewListAdapter) {
            android.widget.HeaderViewListAdapter headerViewListAdapter = (android.widget.HeaderViewListAdapter) adapter;
            headersCount = headerViewListAdapter.getHeadersCount();
            dVar2 = (androidx.appcompat.view.menu.d) headerViewListAdapter.getWrappedAdapter();
        } else {
            dVar2 = (androidx.appcompat.view.menu.d) adapter;
            headersCount = 0;
        }
        int count = dVar2.getCount();
        while (true) {
            if (i5 >= count) {
                i5 = -1;
                break;
            }
            if (menuItemB == dVar2.getItem(i5)) {
                break;
            }
            i5++;
        }
        if (i5 != -1 && (firstVisiblePosition = (i5 + headersCount) - listViewA.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listViewA.getChildCount()) {
            return listViewA.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    public final int D() {
        return w.q.p(this.f446t) == 1 ? 0 : 1;
    }

    public final int E(int i5) {
        java.util.List<androidx.appcompat.view.menu.b.d> list = this.f440i;
        android.widget.ListView listViewA = list.get(list.size() - 1).a();
        int[] iArr = new int[2];
        listViewA.getLocationOnScreen(iArr);
        android.graphics.Rect rect = new android.graphics.Rect();
        this.f447u.getWindowVisibleDisplayFrame(rect);
        if (this.f448v == 1) {
            return (iArr[0] + listViewA.getWidth()) + i5 > rect.right ? 0 : 1;
        }
        return iArr[0] - i5 < 0 ? 1 : 0;
    }

    public final void F(androidx.appcompat.view.menu.e eVar) {
        androidx.appcompat.view.menu.b.d dVar;
        android.view.View viewC;
        int i5;
        android.view.LayoutInflater layoutInflaterFrom = android.view.LayoutInflater.from(this.f433b);
        androidx.appcompat.view.menu.d dVar2 = new androidx.appcompat.view.menu.d(eVar, layoutInflaterFrom, this.f437f, G);
        if (!f() && this.A) {
            dVar2.d(true);
        } else if (f()) {
            dVar2.d(f.f.x(eVar));
        }
        int iO = f.f.o(dVar2, null, this.f433b, this.f434c);
        androidx.appcompat.widget.t tVarZ = z();
        tVarZ.r(dVar2);
        tVarZ.v(iO);
        tVarZ.w(this.f445s);
        if (this.f440i.size() > 0) {
            java.util.List<androidx.appcompat.view.menu.b.d> list = this.f440i;
            dVar = list.get(list.size() - 1);
            viewC = C(dVar, eVar);
        } else {
            dVar = null;
            viewC = null;
        }
        if (viewC != null) {
            tVarZ.M(false);
            tVarZ.J(null);
            int iE = E(iO);
            boolean z4 = iE == 1;
            this.f448v = iE;
            tVarZ.s(viewC);
            if ((this.f445s & 5) == 5) {
                if (z4) {
                    i5 = iO + 0;
                } else {
                    iO = viewC.getWidth();
                    i5 = 0 - iO;
                }
            } else if (z4) {
                iO = viewC.getWidth();
                i5 = iO + 0;
            } else {
                i5 = 0 - iO;
            }
            tVarZ.y(i5);
            tVarZ.D(true);
            tVarZ.H(0);
        } else {
            if (this.f449w) {
                tVarZ.y(this.f451y);
            }
            if (this.f450x) {
                tVarZ.H(this.f452z);
            }
            tVarZ.x(n());
        }
        this.f440i.add(new androidx.appcompat.view.menu.b.d(tVarZ, eVar, this.f448v));
        tVarZ.b();
        android.widget.ListView listViewG = tVarZ.g();
        listViewG.setOnKeyListener(this);
        if (dVar == null && this.B && eVar.x() != null) {
            android.widget.FrameLayout frameLayout = (android.widget.FrameLayout) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_popup_menu_header_item_layout, (android.view.ViewGroup) listViewG, false);
            android.widget.TextView textView = (android.widget.TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(eVar.x());
            listViewG.addHeaderView(frameLayout, null, false);
            tVarZ.b();
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
        int iA = A(eVar);
        if (iA < 0) {
            return;
        }
        int i5 = iA + 1;
        if (i5 < this.f440i.size()) {
            this.f440i.get(i5).f461b.e(false);
        }
        androidx.appcompat.view.menu.b.d dVarRemove = this.f440i.remove(iA);
        dVarRemove.f461b.O(this);
        if (this.F) {
            dVarRemove.f460a.K(null);
            dVarRemove.f460a.t(0);
        }
        dVarRemove.f460a.dismiss();
        int size = this.f440i.size();
        if (size > 0) {
            this.f448v = this.f440i.get(size - 1).f462c;
        } else {
            this.f448v = D();
        }
        if (size != 0) {
            if (z4) {
                this.f440i.get(0).f461b.e(false);
                return;
            }
            return;
        }
        dismiss();
        androidx.appcompat.view.menu.i.a aVar = this.C;
        if (aVar != null) {
            aVar.a(eVar, true);
        }
        android.view.ViewTreeObserver viewTreeObserver = this.D;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.D.removeGlobalOnLayoutListener(this.f441o);
            }
            this.D = null;
        }
        this.f447u.removeOnAttachStateChangeListener(this.f442p);
        this.E.onDismiss();
    }

    @Override // f.i
    public void b() {
        if (f()) {
            return;
        }
        java.util.Iterator<androidx.appcompat.view.menu.e> it = this.f439h.iterator();
        while (it.hasNext()) {
            F(it.next());
        }
        this.f439h.clear();
        android.view.View view = this.f446t;
        this.f447u = view;
        if (view != null) {
            boolean z4 = this.D == null;
            android.view.ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.D = viewTreeObserver;
            if (z4) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f441o);
            }
            this.f447u.addOnAttachStateChangeListener(this.f442p);
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean c() {
        return false;
    }

    @Override // f.i
    public void dismiss() {
        int size = this.f440i.size();
        if (size > 0) {
            androidx.appcompat.view.menu.b.d[] dVarArr = (androidx.appcompat.view.menu.b.d[]) this.f440i.toArray(new androidx.appcompat.view.menu.b.d[size]);
            for (int i5 = size - 1; i5 >= 0; i5--) {
                androidx.appcompat.view.menu.b.d dVar = dVarArr[i5];
                if (dVar.f460a.f()) {
                    dVar.f460a.dismiss();
                }
            }
        }
    }

    @Override // f.i
    public boolean f() {
        return this.f440i.size() > 0 && this.f440i.get(0).f460a.f();
    }

    @Override // f.i
    public android.widget.ListView g() {
        if (this.f440i.isEmpty()) {
            return null;
        }
        java.util.List<androidx.appcompat.view.menu.b.d> list = this.f440i;
        return list.get(list.size() - 1).a();
    }

    @Override // androidx.appcompat.view.menu.i
    public void i(androidx.appcompat.view.menu.i.a aVar) {
        this.C = aVar;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean j(androidx.appcompat.view.menu.l lVar) {
        for (androidx.appcompat.view.menu.b.d dVar : this.f440i) {
            if (lVar == dVar.f461b) {
                dVar.a().requestFocus();
                return true;
            }
        }
        if (!lVar.hasVisibleItems()) {
            return false;
        }
        l(lVar);
        androidx.appcompat.view.menu.i.a aVar = this.C;
        if (aVar != null) {
            aVar.b(lVar);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.i
    public void k(boolean z4) {
        java.util.Iterator<androidx.appcompat.view.menu.b.d> it = this.f440i.iterator();
        while (it.hasNext()) {
            f.f.y(it.next().a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // f.f
    public void l(androidx.appcompat.view.menu.e eVar) {
        eVar.c(this, this.f433b);
        if (f()) {
            F(eVar);
        } else {
            this.f439h.add(eVar);
        }
    }

    @Override // f.f
    public boolean m() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        androidx.appcompat.view.menu.b.d dVar;
        int size = this.f440i.size();
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                dVar = null;
                break;
            }
            dVar = this.f440i.get(i5);
            if (!dVar.f460a.f()) {
                break;
            } else {
                i5++;
            }
        }
        if (dVar != null) {
            dVar.f461b.e(false);
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
        if (this.f446t != view) {
            this.f446t = view;
            this.f445s = w.d.b(this.f444r, w.q.p(view));
        }
    }

    @Override // f.f
    public void r(boolean z4) {
        this.A = z4;
    }

    @Override // f.f
    public void s(int i5) {
        if (this.f444r != i5) {
            this.f444r = i5;
            this.f445s = w.d.b(i5, w.q.p(this.f446t));
        }
    }

    @Override // f.f
    public void t(int i5) {
        this.f449w = true;
        this.f451y = i5;
    }

    @Override // f.f
    public void u(android.widget.PopupWindow.OnDismissListener onDismissListener) {
        this.E = onDismissListener;
    }

    @Override // f.f
    public void v(boolean z4) {
        this.B = z4;
    }

    @Override // f.f
    public void w(int i5) {
        this.f450x = true;
        this.f452z = i5;
    }

    public final androidx.appcompat.widget.t z() {
        androidx.appcompat.widget.t tVar = new androidx.appcompat.widget.t(this.f433b, null, this.f435d, this.f436e);
        tVar.L(this.f443q);
        tVar.C(this);
        tVar.B(this);
        tVar.s(this.f446t);
        tVar.w(this.f445s);
        tVar.A(true);
        tVar.z(2);
        return tVar;
    }
}
