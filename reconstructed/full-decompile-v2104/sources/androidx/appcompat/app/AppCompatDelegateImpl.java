package androidx.appcompat.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatDelegateImpl extends androidx.appcompat.app.d implements androidx.appcompat.view.menu.e.a, android.view.LayoutInflater.Factory2 {
    public static final boolean X = false;
    public static final int[] Y = {android.R.attr.windowBackground};
    public android.view.View A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[] J;
    public androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState K;
    public boolean L;
    public boolean M;
    public boolean O;
    public androidx.appcompat.app.AppCompatDelegateImpl.j P;
    public boolean Q;
    public int R;
    public boolean T;
    public android.graphics.Rect U;
    public android.graphics.Rect V;
    public androidx.appcompat.app.AppCompatViewInflater W;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.Context f250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.view.Window f251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final android.view.Window.Callback f252d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final android.view.Window.Callback f253e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final androidx.appcompat.app.c f254f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public androidx.appcompat.app.ActionBar f255g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.view.MenuInflater f256h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.lang.CharSequence f257i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public androidx.appcompat.widget.m f258o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public androidx.appcompat.app.AppCompatDelegateImpl.g f259p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public androidx.appcompat.app.AppCompatDelegateImpl.l f260q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public e.b f261r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarContextView f262s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public android.widget.PopupWindow f263t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public java.lang.Runnable f264u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f267x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public android.view.ViewGroup f268y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public android.widget.TextView f269z;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public w.w f265v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f266w = true;
    public int N = -100;
    public final java.lang.Runnable S = new androidx.appcompat.app.AppCompatDelegateImpl.a();

    public static final class PanelFeatureState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f270a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f271b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f272c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f273d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f274e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f275f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public android.view.ViewGroup f276g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public android.view.View f277h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public android.view.View f278i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public androidx.appcompat.view.menu.e f279j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public androidx.appcompat.view.menu.c f280k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public android.content.Context f281l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f282m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f283n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f284o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f285p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public boolean f286q = false;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public boolean f287r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public android.os.Bundle f288s;

        public static class SavedState implements android.os.Parcelable {
            public static final android.os.Parcelable.Creator<androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState> CREATOR = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState.a();

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f289a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f290b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public android.os.Bundle f291c;

            public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState> {
                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState createFromParcel(android.os.Parcel parcel) {
                    return androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState.a(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                    return androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState.a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState[] newArray(int i5) {
                    return new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState[i5];
                }
            }

            public static androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState a(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState savedState = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState();
                savedState.f289a = parcel.readInt();
                boolean z4 = parcel.readInt() == 1;
                savedState.f290b = z4;
                if (z4) {
                    savedState.f291c = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(android.os.Parcel parcel, int i5) {
                parcel.writeInt(this.f289a);
                parcel.writeInt(this.f290b ? 1 : 0);
                if (this.f290b) {
                    parcel.writeBundle(this.f291c);
                }
            }
        }

        public PanelFeatureState(int i5) {
            this.f270a = i5;
        }

        public androidx.appcompat.view.menu.j a(androidx.appcompat.view.menu.i.a aVar) {
            if (this.f279j == null) {
                return null;
            }
            if (this.f280k == null) {
                androidx.appcompat.view.menu.c cVar = new androidx.appcompat.view.menu.c(this.f281l, androidx.appcompat.R.layout.abc_list_menu_item_layout);
                this.f280k = cVar;
                cVar.i(aVar);
                this.f279j.b(this.f280k);
            }
            return this.f280k.f(this.f276g);
        }

        public boolean b() {
            if (this.f277h == null) {
                return false;
            }
            return this.f278i != null || this.f280k.b().getCount() > 0;
        }

        public void c(androidx.appcompat.view.menu.e eVar) {
            androidx.appcompat.view.menu.c cVar;
            androidx.appcompat.view.menu.e eVar2 = this.f279j;
            if (eVar == eVar2) {
                return;
            }
            if (eVar2 != null) {
                eVar2.O(this.f280k);
            }
            this.f279j = eVar;
            if (eVar == null || (cVar = this.f280k) == null) {
                return;
            }
            eVar.b(cVar);
        }

        public void d(android.content.Context context) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            android.content.res.Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(androidx.appcompat.R.attr.actionBarPopupTheme, typedValue, true);
            int i5 = typedValue.resourceId;
            if (i5 != 0) {
                themeNewTheme.applyStyle(i5, true);
            }
            themeNewTheme.resolveAttribute(androidx.appcompat.R.attr.panelMenuListTheme, typedValue, true);
            int i6 = typedValue.resourceId;
            if (i6 != 0) {
                themeNewTheme.applyStyle(i6, true);
            } else {
                themeNewTheme.applyStyle(androidx.appcompat.R.style.Theme_AppCompat_CompactMenu, true);
            }
            e.d dVar = new e.d(context, 0);
            dVar.getTheme().setTo(themeNewTheme);
            this.f281l = dVar;
            android.content.res.TypedArray typedArrayObtainStyledAttributes = dVar.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
            this.f271b = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AppCompatTheme_panelBackground, 0);
            this.f275f = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl = androidx.appcompat.app.AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.R & 1) != 0) {
                appCompatDelegateImpl.L(0);
            }
            androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl2 = androidx.appcompat.app.AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl2.R & 4096) != 0) {
                appCompatDelegateImpl2.L(108);
            }
            androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl3 = androidx.appcompat.app.AppCompatDelegateImpl.this;
            appCompatDelegateImpl3.Q = false;
            appCompatDelegateImpl3.R = 0;
        }
    }

    public class b implements w.n {
        public b() {
        }

        @Override // w.n
        public w.a0 a(android.view.View view, w.a0 a0Var) {
            int iK = a0Var.k();
            int iX0 = androidx.appcompat.app.AppCompatDelegateImpl.this.x0(iK);
            if (iK != iX0) {
                a0Var = a0Var.m(a0Var.i(), iX0, a0Var.j(), a0Var.h());
            }
            return w.q.I(view, a0Var);
        }
    }

    public class c implements androidx.appcompat.widget.ContentFrameLayout.a {
        public c() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void onDetachedFromWindow() {
            androidx.appcompat.app.AppCompatDelegateImpl.this.J();
        }
    }

    public class d implements java.lang.Runnable {

        public class a extends w.y {
            public a() {
            }

            @Override // w.x
            public void a(android.view.View view) {
                androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.setAlpha(1.0f);
                androidx.appcompat.app.AppCompatDelegateImpl.this.f265v.h(null);
                androidx.appcompat.app.AppCompatDelegateImpl.this.f265v = null;
            }

            @Override // w.y, w.x
            public void b(android.view.View view) {
                androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.setVisibility(0);
            }
        }

        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl = androidx.appcompat.app.AppCompatDelegateImpl.this;
            appCompatDelegateImpl.f263t.showAtLocation(appCompatDelegateImpl.f262s, 55, 0, 0);
            androidx.appcompat.app.AppCompatDelegateImpl.this.M();
            if (!androidx.appcompat.app.AppCompatDelegateImpl.this.r0()) {
                androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.setAlpha(1.0f);
                androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.setVisibility(0);
            } else {
                androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.setAlpha(0.0f);
                androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl2 = androidx.appcompat.app.AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.f265v = w.q.b(appCompatDelegateImpl2.f262s).b(1.0f);
                androidx.appcompat.app.AppCompatDelegateImpl.this.f265v.h(new androidx.appcompat.app.AppCompatDelegateImpl.d.a());
            }
        }
    }

    public class e extends w.y {
        public e() {
        }

        @Override // w.x
        public void a(android.view.View view) {
            androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.setAlpha(1.0f);
            androidx.appcompat.app.AppCompatDelegateImpl.this.f265v.h(null);
            androidx.appcompat.app.AppCompatDelegateImpl.this.f265v = null;
        }

        @Override // w.y, w.x
        public void b(android.view.View view) {
            androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.setVisibility(0);
            androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.sendAccessibilityEvent(32);
            if (androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.getParent() instanceof android.view.View) {
                w.q.N((android.view.View) androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.getParent());
            }
        }
    }

    public class f implements androidx.appcompat.app.a {
        public f() {
        }
    }

    public final class g implements androidx.appcompat.view.menu.i.a {
        public g() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
            androidx.appcompat.app.AppCompatDelegateImpl.this.E(eVar);
        }

        @Override // androidx.appcompat.view.menu.i.a
        public boolean b(androidx.appcompat.view.menu.e eVar) {
            android.view.Window.Callback callbackU = androidx.appcompat.app.AppCompatDelegateImpl.this.U();
            if (callbackU == null) {
                return true;
            }
            callbackU.onMenuOpened(108, eVar);
            return true;
        }
    }

    public class h implements e.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e.b.a f300a;

        public class a extends w.y {
            public a() {
            }

            @Override // w.x
            public void a(android.view.View view) {
                androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.setVisibility(8);
                androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl = androidx.appcompat.app.AppCompatDelegateImpl.this;
                android.widget.PopupWindow popupWindow = appCompatDelegateImpl.f263t;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.f262s.getParent() instanceof android.view.View) {
                    w.q.N((android.view.View) androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.getParent());
                }
                androidx.appcompat.app.AppCompatDelegateImpl.this.f262s.removeAllViews();
                androidx.appcompat.app.AppCompatDelegateImpl.this.f265v.h(null);
                androidx.appcompat.app.AppCompatDelegateImpl.this.f265v = null;
            }
        }

        public h(e.b.a aVar) {
            this.f300a = aVar;
        }

        @Override // e.b.a
        public boolean a(e.b bVar, android.view.Menu menu) {
            return this.f300a.a(bVar, menu);
        }

        @Override // e.b.a
        public boolean b(e.b bVar, android.view.Menu menu) {
            return this.f300a.b(bVar, menu);
        }

        @Override // e.b.a
        public void c(e.b bVar) {
            this.f300a.c(bVar);
            androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl = androidx.appcompat.app.AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.f263t != null) {
                appCompatDelegateImpl.f251c.getDecorView().removeCallbacks(androidx.appcompat.app.AppCompatDelegateImpl.this.f264u);
            }
            androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl2 = androidx.appcompat.app.AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.f262s != null) {
                appCompatDelegateImpl2.M();
                androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl3 = androidx.appcompat.app.AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.f265v = w.q.b(appCompatDelegateImpl3.f262s).b(0.0f);
                androidx.appcompat.app.AppCompatDelegateImpl.this.f265v.h(new androidx.appcompat.app.AppCompatDelegateImpl.h.a());
            }
            androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl4 = androidx.appcompat.app.AppCompatDelegateImpl.this;
            androidx.appcompat.app.c cVar = appCompatDelegateImpl4.f254f;
            if (cVar != null) {
                cVar.onSupportActionModeFinished(appCompatDelegateImpl4.f261r);
            }
            androidx.appcompat.app.AppCompatDelegateImpl.this.f261r = null;
        }

        @Override // e.b.a
        public boolean d(e.b bVar, android.view.MenuItem menuItem) {
            return this.f300a.d(bVar, menuItem);
        }
    }

    public class i extends e.i {
        public i(android.view.Window.Callback callback) {
            super(callback);
        }

        public final android.view.ActionMode a(android.view.ActionMode.Callback callback) {
            e.f.a aVar = new e.f.a(androidx.appcompat.app.AppCompatDelegateImpl.this.f250b, callback);
            e.b bVarB = androidx.appcompat.app.AppCompatDelegateImpl.this.B(aVar);
            if (bVarB != null) {
                return aVar.e(bVarB);
            }
            return null;
        }

        @Override // e.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
            return androidx.appcompat.app.AppCompatDelegateImpl.this.K(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // e.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(android.view.KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || androidx.appcompat.app.AppCompatDelegateImpl.this.f0(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // e.i, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // e.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i5, android.view.Menu menu) {
            if (i5 != 0 || (menu instanceof androidx.appcompat.view.menu.e)) {
                return super.onCreatePanelMenu(i5, menu);
            }
            return false;
        }

        @Override // e.i, android.view.Window.Callback
        public boolean onMenuOpened(int i5, android.view.Menu menu) {
            super.onMenuOpened(i5, menu);
            androidx.appcompat.app.AppCompatDelegateImpl.this.i0(i5);
            return true;
        }

        @Override // e.i, android.view.Window.Callback
        public void onPanelClosed(int i5, android.view.Menu menu) {
            super.onPanelClosed(i5, menu);
            androidx.appcompat.app.AppCompatDelegateImpl.this.j0(i5);
        }

        @Override // e.i, android.view.Window.Callback
        public boolean onPreparePanel(int i5, android.view.View view, android.view.Menu menu) {
            androidx.appcompat.view.menu.e eVar = menu instanceof androidx.appcompat.view.menu.e ? (androidx.appcompat.view.menu.e) menu : null;
            if (i5 == 0 && eVar == null) {
                return false;
            }
            if (eVar != null) {
                eVar.a0(true);
            }
            boolean zOnPreparePanel = super.onPreparePanel(i5, view, menu);
            if (eVar != null) {
                eVar.a0(false);
            }
            return zOnPreparePanel;
        }

        @Override // e.i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(java.util.List<android.view.KeyboardShortcutGroup> list, android.view.Menu menu, int i5) {
            androidx.appcompat.view.menu.e eVar;
            androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS = androidx.appcompat.app.AppCompatDelegateImpl.this.S(0, true);
            if (panelFeatureStateS == null || (eVar = panelFeatureStateS.f279j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i5);
            } else {
                super.onProvideKeyboardShortcuts(list, eVar, i5);
            }
        }

        @Override // e.i, android.view.Window.Callback
        public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback) {
            return null;
        }

        @Override // e.i, android.view.Window.Callback
        public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback, int i5) {
            return (androidx.appcompat.app.AppCompatDelegateImpl.this.a0() && i5 == 0) ? a(callback) : super.onWindowStartingActionMode(callback, i5);
        }
    }

    public final class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.appcompat.app.h f304a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f305b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public android.content.BroadcastReceiver f306c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public android.content.IntentFilter f307d;

        public class a extends android.content.BroadcastReceiver {
            public a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(android.content.Context context, android.content.Intent intent) {
                androidx.appcompat.app.AppCompatDelegateImpl.j.this.b();
            }
        }

        public j(androidx.appcompat.app.h hVar) {
            this.f304a = hVar;
            this.f305b = hVar.d();
        }

        public void a() {
            android.content.BroadcastReceiver broadcastReceiver = this.f306c;
            if (broadcastReceiver != null) {
                androidx.appcompat.app.AppCompatDelegateImpl.this.f250b.unregisterReceiver(broadcastReceiver);
                this.f306c = null;
            }
        }

        public void b() {
            boolean zD = this.f304a.d();
            if (zD != this.f305b) {
                this.f305b = zD;
                androidx.appcompat.app.AppCompatDelegateImpl.this.d();
            }
        }

        public int c() {
            boolean zD = this.f304a.d();
            this.f305b = zD;
            return zD ? 2 : 1;
        }

        public void d() {
            a();
            if (this.f306c == null) {
                this.f306c = new androidx.appcompat.app.AppCompatDelegateImpl.j.a();
            }
            if (this.f307d == null) {
                android.content.IntentFilter intentFilter = new android.content.IntentFilter();
                this.f307d = intentFilter;
                intentFilter.addAction("android.intent.action.TIME_SET");
                this.f307d.addAction("android.intent.action.TIMEZONE_CHANGED");
                this.f307d.addAction("android.intent.action.TIME_TICK");
            }
            androidx.appcompat.app.AppCompatDelegateImpl.this.f250b.registerReceiver(this.f306c, this.f307d);
        }
    }

    public class k extends androidx.appcompat.widget.ContentFrameLayout {
        public k(android.content.Context context) {
            super(context);
        }

        public final boolean c(int i5, int i6) {
            return i5 < -5 || i6 < -5 || i5 > getWidth() + 5 || i6 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
            return androidx.appcompat.app.AppCompatDelegateImpl.this.K(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !c((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            androidx.appcompat.app.AppCompatDelegateImpl.this.F(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i5) {
            setBackgroundDrawable(b.a.b(getContext(), i5));
        }
    }

    public final class l implements androidx.appcompat.view.menu.i.a {
        public l() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
            androidx.appcompat.view.menu.e eVarD = eVar.D();
            boolean z5 = eVarD != eVar;
            androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl = androidx.appcompat.app.AppCompatDelegateImpl.this;
            if (z5) {
                eVar = eVarD;
            }
            androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateP = appCompatDelegateImpl.P(eVar);
            if (panelFeatureStateP != null) {
                if (!z5) {
                    androidx.appcompat.app.AppCompatDelegateImpl.this.G(panelFeatureStateP, z4);
                } else {
                    androidx.appcompat.app.AppCompatDelegateImpl.this.D(panelFeatureStateP.f270a, panelFeatureStateP, eVarD);
                    androidx.appcompat.app.AppCompatDelegateImpl.this.G(panelFeatureStateP, true);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.i.a
        public boolean b(androidx.appcompat.view.menu.e eVar) {
            android.view.Window.Callback callbackU;
            if (eVar != null) {
                return true;
            }
            androidx.appcompat.app.AppCompatDelegateImpl appCompatDelegateImpl = androidx.appcompat.app.AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.D || (callbackU = appCompatDelegateImpl.U()) == null || androidx.appcompat.app.AppCompatDelegateImpl.this.M) {
                return true;
            }
            callbackU.onMenuOpened(108, eVar);
            return true;
        }
    }

    public AppCompatDelegateImpl(android.content.Context context, android.view.Window window, androidx.appcompat.app.c cVar) {
        this.f250b = context;
        this.f251c = window;
        this.f254f = cVar;
        android.view.Window.Callback callback = window.getCallback();
        this.f252d = callback;
        if (callback instanceof androidx.appcompat.app.AppCompatDelegateImpl.i) {
            throw new java.lang.IllegalStateException("AppCompat has already installed itself into the Window");
        }
        androidx.appcompat.app.AppCompatDelegateImpl.i iVar = new androidx.appcompat.app.AppCompatDelegateImpl.i(callback);
        this.f253e = iVar;
        window.setCallback(iVar);
        androidx.appcompat.widget.d0 d0VarS = androidx.appcompat.widget.d0.s(context, null, Y);
        android.graphics.drawable.Drawable drawableG = d0VarS.g(0);
        if (drawableG != null) {
            window.setBackgroundDrawable(drawableG);
        }
        d0VarS.u();
    }

    @Override // androidx.appcompat.app.d
    public final void A(java.lang.CharSequence charSequence) {
        this.f257i = charSequence;
        androidx.appcompat.widget.m mVar = this.f258o;
        if (mVar != null) {
            mVar.setWindowTitle(charSequence);
            return;
        }
        if (m0() != null) {
            m0().u(charSequence);
            return;
        }
        android.widget.TextView textView = this.f269z;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.appcompat.app.d
    public e.b B(e.b.a aVar) {
        androidx.appcompat.app.c cVar;
        if (aVar == null) {
            throw new java.lang.IllegalArgumentException("ActionMode callback can not be null.");
        }
        e.b bVar = this.f261r;
        if (bVar != null) {
            bVar.c();
        }
        androidx.appcompat.app.AppCompatDelegateImpl.h hVar = new androidx.appcompat.app.AppCompatDelegateImpl.h(aVar);
        androidx.appcompat.app.ActionBar actionBarK = k();
        if (actionBarK != null) {
            e.b bVarV = actionBarK.v(hVar);
            this.f261r = bVarV;
            if (bVarV != null && (cVar = this.f254f) != null) {
                cVar.onSupportActionModeStarted(bVarV);
            }
        }
        if (this.f261r == null) {
            this.f261r = u0(hVar);
        }
        return this.f261r;
    }

    public final void C() {
        androidx.appcompat.widget.ContentFrameLayout contentFrameLayout = (androidx.appcompat.widget.ContentFrameLayout) this.f268y.findViewById(android.R.id.content);
        android.view.View decorView = this.f251c.getDecorView();
        contentFrameLayout.b(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        android.content.res.TypedArray typedArrayObtainStyledAttributes = this.f250b.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        int i5 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            typedArrayObtainStyledAttributes.getValue(i5, contentFrameLayout.getFixedWidthMajor());
        }
        int i6 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor;
        if (typedArrayObtainStyledAttributes.hasValue(i6)) {
            typedArrayObtainStyledAttributes.getValue(i6, contentFrameLayout.getFixedWidthMinor());
        }
        int i7 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor;
        if (typedArrayObtainStyledAttributes.hasValue(i7)) {
            typedArrayObtainStyledAttributes.getValue(i7, contentFrameLayout.getFixedHeightMajor());
        }
        int i8 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor;
        if (typedArrayObtainStyledAttributes.hasValue(i8)) {
            typedArrayObtainStyledAttributes.getValue(i8, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    public void D(int i5, androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState, android.view.Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i5 >= 0) {
                androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[] panelFeatureStateArr = this.J;
                if (i5 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i5];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.f279j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.f284o) && !this.M) {
            this.f252d.onPanelClosed(i5, menu);
        }
    }

    public void E(androidx.appcompat.view.menu.e eVar) {
        if (this.I) {
            return;
        }
        this.I = true;
        this.f258o.j();
        android.view.Window.Callback callbackU = U();
        if (callbackU != null && !this.M) {
            callbackU.onPanelClosed(108, eVar);
        }
        this.I = false;
    }

    public void F(int i5) {
        G(S(i5, true), true);
    }

    public void G(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState, boolean z4) {
        android.view.ViewGroup viewGroup;
        androidx.appcompat.widget.m mVar;
        if (z4 && panelFeatureState.f270a == 0 && (mVar = this.f258o) != null && mVar.d()) {
            E(panelFeatureState.f279j);
            return;
        }
        android.view.WindowManager windowManager = (android.view.WindowManager) this.f250b.getSystemService("window");
        if (windowManager != null && panelFeatureState.f284o && (viewGroup = panelFeatureState.f276g) != null) {
            windowManager.removeView(viewGroup);
            if (z4) {
                D(panelFeatureState.f270a, panelFeatureState, null);
            }
        }
        panelFeatureState.f282m = false;
        panelFeatureState.f283n = false;
        panelFeatureState.f284o = false;
        panelFeatureState.f277h = null;
        panelFeatureState.f286q = true;
        if (this.K == panelFeatureState) {
            this.K = null;
        }
    }

    public final android.view.ViewGroup H() {
        android.view.ViewGroup viewGroup;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = this.f250b.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        int i5 = androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar;
        if (!typedArrayObtainStyledAttributes.hasValue(i5)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new java.lang.IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowNoTitle, false)) {
            v(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(i5, false)) {
            v(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            v(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            v(10);
        }
        this.G = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        this.f251c.getDecorView();
        android.view.LayoutInflater layoutInflaterFrom = android.view.LayoutInflater.from(this.f250b);
        if (this.H) {
            viewGroup = this.F ? (android.view.ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_screen_simple_overlay_action_mode, (android.view.ViewGroup) null) : (android.view.ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_screen_simple, (android.view.ViewGroup) null);
            w.q.Y(viewGroup, new androidx.appcompat.app.AppCompatDelegateImpl.b());
        } else if (this.G) {
            viewGroup = (android.view.ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_dialog_title_material, (android.view.ViewGroup) null);
            this.E = false;
            this.D = false;
        } else if (this.D) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            this.f250b.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (android.view.ViewGroup) android.view.LayoutInflater.from(typedValue.resourceId != 0 ? new e.d(this.f250b, typedValue.resourceId) : this.f250b).inflate(androidx.appcompat.R.layout.abc_screen_toolbar, (android.view.ViewGroup) null);
            androidx.appcompat.widget.m mVar = (androidx.appcompat.widget.m) viewGroup.findViewById(androidx.appcompat.R.id.decor_content_parent);
            this.f258o = mVar;
            mVar.setWindowCallback(U());
            if (this.E) {
                this.f258o.i(109);
            }
            if (this.B) {
                this.f258o.i(2);
            }
            if (this.C) {
                this.f258o.i(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new java.lang.IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.D + ", windowActionBarOverlay: " + this.E + ", android:windowIsFloating: " + this.G + ", windowActionModeOverlay: " + this.F + ", windowNoTitle: " + this.H + " }");
        }
        if (this.f258o == null) {
            this.f269z = (android.widget.TextView) viewGroup.findViewById(androidx.appcompat.R.id.title);
        }
        androidx.appcompat.widget.h0.c(viewGroup);
        androidx.appcompat.widget.ContentFrameLayout contentFrameLayout = (androidx.appcompat.widget.ContentFrameLayout) viewGroup.findViewById(androidx.appcompat.R.id.action_bar_activity_content);
        android.view.ViewGroup viewGroup2 = (android.view.ViewGroup) this.f251c.findViewById(android.R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                android.view.View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(android.R.id.content);
            if (viewGroup2 instanceof android.widget.FrameLayout) {
                ((android.widget.FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f251c.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new androidx.appcompat.app.AppCompatDelegateImpl.c());
        return viewGroup;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public android.view.View I(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        boolean zS0 = false;
        if (this.W == null) {
            java.lang.String string = this.f250b.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme).getString(androidx.appcompat.R.styleable.AppCompatTheme_viewInflaterClass);
            if (string == null || androidx.appcompat.app.AppCompatViewInflater.class.getName().equals(string)) {
                this.W = new androidx.appcompat.app.AppCompatViewInflater();
            } else {
                try {
                    this.W = (androidx.appcompat.app.AppCompatViewInflater) java.lang.Class.forName(string).getDeclaredConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
                } catch (java.lang.Throwable th) {
                    android.util.Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.W = new androidx.appcompat.app.AppCompatViewInflater();
                }
            }
        }
        boolean z4 = X;
        if (z4) {
            if (!(attributeSet instanceof org.xmlpull.v1.XmlPullParser)) {
                zS0 = s0((android.view.ViewParent) view);
            } else if (((org.xmlpull.v1.XmlPullParser) attributeSet).getDepth() > 1) {
                zS0 = true;
            }
        }
        return this.W.p(view, str, context, attributeSet, zS0, z4, true, androidx.appcompat.widget.g0.b());
    }

    public void J() {
        androidx.appcompat.view.menu.e eVar;
        androidx.appcompat.widget.m mVar = this.f258o;
        if (mVar != null) {
            mVar.j();
        }
        if (this.f263t != null) {
            this.f251c.getDecorView().removeCallbacks(this.f264u);
            if (this.f263t.isShowing()) {
                try {
                    this.f263t.dismiss();
                } catch (java.lang.IllegalArgumentException unused) {
                }
            }
            this.f263t = null;
        }
        M();
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS = S(0, false);
        if (panelFeatureStateS == null || (eVar = panelFeatureStateS.f279j) == null) {
            return;
        }
        eVar.close();
    }

    public boolean K(android.view.KeyEvent keyEvent) {
        android.view.View decorView;
        android.view.Window.Callback callback = this.f252d;
        if (((callback instanceof w.e.a) || (callback instanceof androidx.appcompat.app.e)) && (decorView = this.f251c.getDecorView()) != null && w.e.a(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f252d.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? d0(keyCode, keyEvent) : g0(keyCode, keyEvent);
    }

    public void L(int i5) {
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS;
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS2 = S(i5, true);
        if (panelFeatureStateS2.f279j != null) {
            android.os.Bundle bundle = new android.os.Bundle();
            panelFeatureStateS2.f279j.Q(bundle);
            if (bundle.size() > 0) {
                panelFeatureStateS2.f288s = bundle;
            }
            panelFeatureStateS2.f279j.d0();
            panelFeatureStateS2.f279j.clear();
        }
        panelFeatureStateS2.f287r = true;
        panelFeatureStateS2.f286q = true;
        if ((i5 != 108 && i5 != 0) || this.f258o == null || (panelFeatureStateS = S(0, false)) == null) {
            return;
        }
        panelFeatureStateS.f282m = false;
        o0(panelFeatureStateS, null);
    }

    public void M() {
        w.w wVar = this.f265v;
        if (wVar != null) {
            wVar.c();
        }
    }

    public final void N() {
        if (this.P == null) {
            this.P = new androidx.appcompat.app.AppCompatDelegateImpl.j(androidx.appcompat.app.h.a(this.f250b));
        }
    }

    public final void O() {
        if (this.f267x) {
            return;
        }
        this.f268y = H();
        java.lang.CharSequence charSequenceT = T();
        if (!android.text.TextUtils.isEmpty(charSequenceT)) {
            androidx.appcompat.widget.m mVar = this.f258o;
            if (mVar != null) {
                mVar.setWindowTitle(charSequenceT);
            } else if (m0() != null) {
                m0().u(charSequenceT);
            } else {
                android.widget.TextView textView = this.f269z;
                if (textView != null) {
                    textView.setText(charSequenceT);
                }
            }
        }
        C();
        k0(this.f268y);
        this.f267x = true;
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS = S(0, false);
        if (this.M) {
            return;
        }
        if (panelFeatureStateS == null || panelFeatureStateS.f279j == null) {
            Z(108);
        }
    }

    public androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState P(android.view.Menu menu) {
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[] panelFeatureStateArr = this.J;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i5 = 0; i5 < length; i5++) {
            androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState = panelFeatureStateArr[i5];
            if (panelFeatureState != null && panelFeatureState.f279j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    public final android.content.Context Q() {
        androidx.appcompat.app.ActionBar actionBarK = k();
        android.content.Context contextK = actionBarK != null ? actionBarK.k() : null;
        return contextK == null ? this.f250b : contextK;
    }

    public final int R() {
        int i5 = this.N;
        return i5 != -100 ? i5 : androidx.appcompat.app.d.h();
    }

    public androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState S(int i5, boolean z4) {
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[] panelFeatureStateArr = this.J;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i5) {
            androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[] panelFeatureStateArr2 = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[i5 + 1];
            if (panelFeatureStateArr != null) {
                java.lang.System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.J = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState = panelFeatureStateArr[i5];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState2 = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState(i5);
        panelFeatureStateArr[i5] = panelFeatureState2;
        return panelFeatureState2;
    }

    public final java.lang.CharSequence T() {
        android.view.Window.Callback callback = this.f252d;
        return callback instanceof android.app.Activity ? ((android.app.Activity) callback).getTitle() : this.f257i;
    }

    public final android.view.Window.Callback U() {
        return this.f251c.getCallback();
    }

    public final void V() {
        O();
        if (this.D && this.f255g == null) {
            android.view.Window.Callback callback = this.f252d;
            if (callback instanceof android.app.Activity) {
                this.f255g = new androidx.appcompat.app.i((android.app.Activity) this.f252d, this.E);
            } else if (callback instanceof android.app.Dialog) {
                this.f255g = new androidx.appcompat.app.i((android.app.Dialog) this.f252d);
            }
            androidx.appcompat.app.ActionBar actionBar = this.f255g;
            if (actionBar != null) {
                actionBar.s(this.T);
            }
        }
    }

    public final boolean W(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState) {
        android.view.View view = panelFeatureState.f278i;
        if (view != null) {
            panelFeatureState.f277h = view;
            return true;
        }
        if (panelFeatureState.f279j == null) {
            return false;
        }
        if (this.f260q == null) {
            this.f260q = new androidx.appcompat.app.AppCompatDelegateImpl.l();
        }
        android.view.View view2 = (android.view.View) panelFeatureState.a(this.f260q);
        panelFeatureState.f277h = view2;
        return view2 != null;
    }

    public final boolean X(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState) {
        panelFeatureState.d(Q());
        panelFeatureState.f276g = new androidx.appcompat.app.AppCompatDelegateImpl.k(panelFeatureState.f281l);
        panelFeatureState.f272c = 81;
        return true;
    }

    public final boolean Y(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState) {
        android.content.Context context = this.f250b;
        int i5 = panelFeatureState.f270a;
        if ((i5 == 0 || i5 == 108) && this.f258o != null) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            android.content.res.Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
            android.content.res.Resources.Theme themeNewTheme = null;
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                e.d dVar = new e.d(context, 0);
                dVar.getTheme().setTo(themeNewTheme);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(context);
        eVar.R(this);
        panelFeatureState.c(eVar);
        return true;
    }

    public final void Z(int i5) {
        this.R = (1 << i5) | this.R;
        if (this.Q) {
            return;
        }
        w.q.L(this.f251c.getDecorView(), this.S);
        this.Q = true;
    }

    @Override // androidx.appcompat.view.menu.e.a
    public boolean a(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem) {
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateP;
        android.view.Window.Callback callbackU = U();
        if (callbackU == null || this.M || (panelFeatureStateP = P(eVar.D())) == null) {
            return false;
        }
        return callbackU.onMenuItemSelected(panelFeatureStateP.f270a, menuItem);
    }

    public boolean a0() {
        return this.f266w;
    }

    @Override // androidx.appcompat.view.menu.e.a
    public void b(androidx.appcompat.view.menu.e eVar) {
        p0(eVar, true);
    }

    public int b0(int i5) {
        if (i5 == -100) {
            return -1;
        }
        if (i5 != 0) {
            return i5;
        }
        if (((android.app.UiModeManager) this.f250b.getSystemService(android.app.UiModeManager.class)).getNightMode() == 0) {
            return -1;
        }
        N();
        return this.P.c();
    }

    @Override // androidx.appcompat.app.d
    public void c(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        O();
        ((android.view.ViewGroup) this.f268y.findViewById(android.R.id.content)).addView(view, layoutParams);
        this.f252d.onContentChanged();
    }

    public boolean c0() {
        e.b bVar = this.f261r;
        if (bVar != null) {
            bVar.c();
            return true;
        }
        androidx.appcompat.app.ActionBar actionBarK = k();
        return actionBarK != null && actionBarK.h();
    }

    @Override // androidx.appcompat.app.d
    public boolean d() {
        int iR = R();
        int iB0 = b0(iR);
        boolean zW0 = iB0 != -1 ? w0(iB0) : false;
        if (iR == 0) {
            N();
            this.P.d();
        }
        this.O = true;
        return zW0;
    }

    public boolean d0(int i5, android.view.KeyEvent keyEvent) {
        if (i5 == 4) {
            this.L = (keyEvent.getFlags() & com.alibaba.fastjson.asm.Opcodes.IOR) != 0;
        } else if (i5 == 82) {
            e0(0, keyEvent);
            return true;
        }
        return false;
    }

    public final boolean e0(int i5, android.view.KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS = S(i5, true);
        if (panelFeatureStateS.f284o) {
            return false;
        }
        return o0(panelFeatureStateS, keyEvent);
    }

    public boolean f0(int i5, android.view.KeyEvent keyEvent) {
        androidx.appcompat.app.ActionBar actionBarK = k();
        if (actionBarK != null && actionBarK.p(i5, keyEvent)) {
            return true;
        }
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState = this.K;
        if (panelFeatureState != null && n0(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState2 = this.K;
            if (panelFeatureState2 != null) {
                panelFeatureState2.f283n = true;
            }
            return true;
        }
        if (this.K == null) {
            androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS = S(0, true);
            o0(panelFeatureStateS, keyEvent);
            boolean zN0 = n0(panelFeatureStateS, keyEvent.getKeyCode(), keyEvent, 1);
            panelFeatureStateS.f282m = false;
            if (zN0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.d
    public <T extends android.view.View> T g(int i5) {
        O();
        return (T) this.f251c.findViewById(i5);
    }

    public boolean g0(int i5, android.view.KeyEvent keyEvent) {
        if (i5 == 4) {
            boolean z4 = this.L;
            this.L = false;
            androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS = S(0, false);
            if (panelFeatureStateS != null && panelFeatureStateS.f284o) {
                if (!z4) {
                    G(panelFeatureStateS, true);
                }
                return true;
            }
            if (c0()) {
                return true;
            }
        } else if (i5 == 82) {
            h0(0, keyEvent);
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    public final boolean h0(int i5, android.view.KeyEvent keyEvent) {
        boolean zO0;
        androidx.appcompat.widget.m mVar;
        if (this.f261r != null) {
            return false;
        }
        boolean zE = true;
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS = S(i5, true);
        if (i5 != 0 || (mVar = this.f258o) == null || !mVar.h() || android.view.ViewConfiguration.get(this.f250b).hasPermanentMenuKey()) {
            boolean z4 = panelFeatureStateS.f284o;
            if (z4 || panelFeatureStateS.f283n) {
                G(panelFeatureStateS, true);
                zE = z4;
            } else if (panelFeatureStateS.f282m) {
                if (panelFeatureStateS.f287r) {
                    panelFeatureStateS.f282m = false;
                    zO0 = o0(panelFeatureStateS, keyEvent);
                } else {
                    zO0 = true;
                }
                if (zO0) {
                    l0(panelFeatureStateS, keyEvent);
                } else {
                    zE = false;
                }
            } else {
                zE = false;
            }
        } else if (this.f258o.d()) {
            zE = this.f258o.e();
        } else if (this.M || !o0(panelFeatureStateS, keyEvent)) {
            zE = false;
        } else {
            zE = this.f258o.f();
        }
        if (zE) {
            android.media.AudioManager audioManager = (android.media.AudioManager) this.f250b.getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                android.util.Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return zE;
    }

    @Override // androidx.appcompat.app.d
    public final androidx.appcompat.app.a i() {
        return new androidx.appcompat.app.AppCompatDelegateImpl.f();
    }

    public void i0(int i5) {
        androidx.appcompat.app.ActionBar actionBarK;
        if (i5 != 108 || (actionBarK = k()) == null) {
            return;
        }
        actionBarK.i(true);
    }

    @Override // androidx.appcompat.app.d
    public android.view.MenuInflater j() {
        if (this.f256h == null) {
            V();
            androidx.appcompat.app.ActionBar actionBar = this.f255g;
            this.f256h = new e.g(actionBar != null ? actionBar.k() : this.f250b);
        }
        return this.f256h;
    }

    public void j0(int i5) {
        if (i5 == 108) {
            androidx.appcompat.app.ActionBar actionBarK = k();
            if (actionBarK != null) {
                actionBarK.i(false);
                return;
            }
            return;
        }
        if (i5 == 0) {
            androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS = S(i5, true);
            if (panelFeatureStateS.f284o) {
                G(panelFeatureStateS, false);
            }
        }
    }

    @Override // androidx.appcompat.app.d
    public androidx.appcompat.app.ActionBar k() {
        V();
        return this.f255g;
    }

    public void k0(android.view.ViewGroup viewGroup) {
    }

    @Override // androidx.appcompat.app.d
    public void l() {
        android.view.LayoutInflater layoutInflaterFrom = android.view.LayoutInflater.from(this.f250b);
        if (layoutInflaterFrom.getFactory() == null) {
            w.f.a(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof androidx.appcompat.app.AppCompatDelegateImpl) {
                return;
            }
            android.util.Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    public final void l0(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState, android.view.KeyEvent keyEvent) {
        int i5;
        android.view.ViewGroup.LayoutParams layoutParams;
        if (panelFeatureState.f284o || this.M) {
            return;
        }
        if (panelFeatureState.f270a == 0) {
            if ((this.f250b.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        android.view.Window.Callback callbackU = U();
        if (callbackU != null && !callbackU.onMenuOpened(panelFeatureState.f270a, panelFeatureState.f279j)) {
            G(panelFeatureState, true);
            return;
        }
        android.view.WindowManager windowManager = (android.view.WindowManager) this.f250b.getSystemService("window");
        if (windowManager != null && o0(panelFeatureState, keyEvent)) {
            android.view.ViewGroup viewGroup = panelFeatureState.f276g;
            if (viewGroup != null && !panelFeatureState.f286q) {
                android.view.View view = panelFeatureState.f278i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i5 = -1;
                }
                panelFeatureState.f283n = false;
                android.view.WindowManager.LayoutParams layoutParams2 = new android.view.WindowManager.LayoutParams(i5, -2, panelFeatureState.f273d, panelFeatureState.f274e, com.alibaba.fastjson.JSONStreamContext.PropertyKey, 8519680, -3);
                layoutParams2.gravity = panelFeatureState.f272c;
                layoutParams2.windowAnimations = panelFeatureState.f275f;
                windowManager.addView(panelFeatureState.f276g, layoutParams2);
                panelFeatureState.f284o = true;
            }
            if (viewGroup == null) {
                if (!X(panelFeatureState) || panelFeatureState.f276g == null) {
                    return;
                }
            } else if (panelFeatureState.f286q && viewGroup.getChildCount() > 0) {
                panelFeatureState.f276g.removeAllViews();
            }
            if (!W(panelFeatureState) || !panelFeatureState.b()) {
                return;
            }
            android.view.ViewGroup.LayoutParams layoutParams3 = panelFeatureState.f277h.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new android.view.ViewGroup.LayoutParams(-2, -2);
            }
            panelFeatureState.f276g.setBackgroundResource(panelFeatureState.f271b);
            android.view.ViewParent parent = panelFeatureState.f277h.getParent();
            if (parent != null && (parent instanceof android.view.ViewGroup)) {
                ((android.view.ViewGroup) parent).removeView(panelFeatureState.f277h);
            }
            panelFeatureState.f276g.addView(panelFeatureState.f277h, layoutParams3);
            if (!panelFeatureState.f277h.hasFocus()) {
                panelFeatureState.f277h.requestFocus();
            }
            i5 = -2;
            panelFeatureState.f283n = false;
            android.view.WindowManager.LayoutParams layoutParams4 = new android.view.WindowManager.LayoutParams(i5, -2, panelFeatureState.f273d, panelFeatureState.f274e, com.alibaba.fastjson.JSONStreamContext.PropertyKey, 8519680, -3);
            layoutParams4.gravity = panelFeatureState.f272c;
            layoutParams4.windowAnimations = panelFeatureState.f275f;
            windowManager.addView(panelFeatureState.f276g, layoutParams4);
            panelFeatureState.f284o = true;
        }
    }

    @Override // androidx.appcompat.app.d
    public void m() {
        androidx.appcompat.app.ActionBar actionBarK = k();
        if (actionBarK == null || !actionBarK.m()) {
            Z(0);
        }
    }

    public final androidx.appcompat.app.ActionBar m0() {
        return this.f255g;
    }

    @Override // androidx.appcompat.app.d
    public void n(android.content.res.Configuration configuration) {
        androidx.appcompat.app.ActionBar actionBarK;
        if (this.D && this.f267x && (actionBarK = k()) != null) {
            actionBarK.n(configuration);
        }
        androidx.appcompat.widget.f.m().x(this.f250b);
        d();
    }

    public final boolean n0(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState, int i5, android.view.KeyEvent keyEvent, int i6) {
        androidx.appcompat.view.menu.e eVar;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.f282m || o0(panelFeatureState, keyEvent)) && (eVar = panelFeatureState.f279j) != null) {
            zPerformShortcut = eVar.performShortcut(i5, keyEvent, i6);
        }
        if (zPerformShortcut && (i6 & 1) == 0 && this.f258o == null) {
            G(panelFeatureState, true);
        }
        return zPerformShortcut;
    }

    @Override // androidx.appcompat.app.d
    public void o(android.os.Bundle bundle) {
        android.view.Window.Callback callback = this.f252d;
        if (callback instanceof android.app.Activity) {
            java.lang.String strC = null;
            try {
                strC = androidx.core.app.c.c((android.app.Activity) callback);
            } catch (java.lang.IllegalArgumentException unused) {
            }
            if (strC != null) {
                androidx.appcompat.app.ActionBar actionBarM0 = m0();
                if (actionBarM0 == null) {
                    this.T = true;
                } else {
                    actionBarM0.s(true);
                }
            }
        }
        if (bundle == null || this.N != -100) {
            return;
        }
        this.N = bundle.getInt("appcompat:local_night_mode", -100);
    }

    public final boolean o0(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState, android.view.KeyEvent keyEvent) {
        androidx.appcompat.widget.m mVar;
        androidx.appcompat.widget.m mVar2;
        androidx.appcompat.widget.m mVar3;
        if (this.M) {
            return false;
        }
        if (panelFeatureState.f282m) {
            return true;
        }
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureState2 = this.K;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            G(panelFeatureState2, false);
        }
        android.view.Window.Callback callbackU = U();
        if (callbackU != null) {
            panelFeatureState.f278i = callbackU.onCreatePanelView(panelFeatureState.f270a);
        }
        int i5 = panelFeatureState.f270a;
        boolean z4 = i5 == 0 || i5 == 108;
        if (z4 && (mVar3 = this.f258o) != null) {
            mVar3.g();
        }
        if (panelFeatureState.f278i == null && (!z4 || !(m0() instanceof androidx.appcompat.app.f))) {
            androidx.appcompat.view.menu.e eVar = panelFeatureState.f279j;
            if (eVar == null || panelFeatureState.f287r) {
                if (eVar == null && (!Y(panelFeatureState) || panelFeatureState.f279j == null)) {
                    return false;
                }
                if (z4 && this.f258o != null) {
                    if (this.f259p == null) {
                        this.f259p = new androidx.appcompat.app.AppCompatDelegateImpl.g();
                    }
                    this.f258o.a(panelFeatureState.f279j, this.f259p);
                }
                panelFeatureState.f279j.d0();
                if (!callbackU.onCreatePanelMenu(panelFeatureState.f270a, panelFeatureState.f279j)) {
                    panelFeatureState.c(null);
                    if (z4 && (mVar = this.f258o) != null) {
                        mVar.a(null, this.f259p);
                    }
                    return false;
                }
                panelFeatureState.f287r = false;
            }
            panelFeatureState.f279j.d0();
            android.os.Bundle bundle = panelFeatureState.f288s;
            if (bundle != null) {
                panelFeatureState.f279j.P(bundle);
                panelFeatureState.f288s = null;
            }
            if (!callbackU.onPreparePanel(0, panelFeatureState.f278i, panelFeatureState.f279j)) {
                if (z4 && (mVar2 = this.f258o) != null) {
                    mVar2.a(null, this.f259p);
                }
                panelFeatureState.f279j.c0();
                return false;
            }
            boolean z5 = android.view.KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f285p = z5;
            panelFeatureState.f279j.setQwertyMode(z5);
            panelFeatureState.f279j.c0();
        }
        panelFeatureState.f282m = true;
        panelFeatureState.f283n = false;
        this.K = panelFeatureState;
        return true;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final android.view.View onCreateView(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        return I(view, str, context, attributeSet);
    }

    @Override // androidx.appcompat.app.d
    public void p() {
        if (this.Q) {
            this.f251c.getDecorView().removeCallbacks(this.S);
        }
        this.M = true;
        androidx.appcompat.app.ActionBar actionBar = this.f255g;
        if (actionBar != null) {
            actionBar.o();
        }
        androidx.appcompat.app.AppCompatDelegateImpl.j jVar = this.P;
        if (jVar != null) {
            jVar.a();
        }
    }

    public final void p0(androidx.appcompat.view.menu.e eVar, boolean z4) {
        androidx.appcompat.widget.m mVar = this.f258o;
        if (mVar == null || !mVar.h() || (android.view.ViewConfiguration.get(this.f250b).hasPermanentMenuKey() && !this.f258o.c())) {
            androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS = S(0, true);
            panelFeatureStateS.f286q = true;
            G(panelFeatureStateS, false);
            l0(panelFeatureStateS, null);
            return;
        }
        android.view.Window.Callback callbackU = U();
        if (this.f258o.d() && z4) {
            this.f258o.e();
            if (this.M) {
                return;
            }
            callbackU.onPanelClosed(108, S(0, true).f279j);
            return;
        }
        if (callbackU == null || this.M) {
            return;
        }
        if (this.Q && (this.R & 1) != 0) {
            this.f251c.getDecorView().removeCallbacks(this.S);
            this.S.run();
        }
        androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState panelFeatureStateS2 = S(0, true);
        androidx.appcompat.view.menu.e eVar2 = panelFeatureStateS2.f279j;
        if (eVar2 == null || panelFeatureStateS2.f287r || !callbackU.onPreparePanel(0, panelFeatureStateS2.f278i, eVar2)) {
            return;
        }
        callbackU.onMenuOpened(108, panelFeatureStateS2.f279j);
        this.f258o.f();
    }

    @Override // androidx.appcompat.app.d
    public void q(android.os.Bundle bundle) {
        O();
    }

    public final int q0(int i5) {
        if (i5 == 8) {
            android.util.Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i5 != 9) {
            return i5;
        }
        android.util.Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return 109;
    }

    @Override // androidx.appcompat.app.d
    public void r() {
        androidx.appcompat.app.ActionBar actionBarK = k();
        if (actionBarK != null) {
            actionBarK.t(true);
        }
    }

    public final boolean r0() {
        android.view.ViewGroup viewGroup;
        return this.f267x && (viewGroup = this.f268y) != null && w.q.D(viewGroup);
    }

    @Override // androidx.appcompat.app.d
    public void s(android.os.Bundle bundle) {
        int i5 = this.N;
        if (i5 != -100) {
            bundle.putInt("appcompat:local_night_mode", i5);
        }
    }

    public final boolean s0(android.view.ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        android.view.View decorView = this.f251c.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof android.view.View) || w.q.C((android.view.View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    @Override // androidx.appcompat.app.d
    public void t() {
        d();
    }

    public final boolean t0() {
        if (this.O) {
            android.content.Context context = this.f250b;
            if (context instanceof android.app.Activity) {
                android.content.pm.PackageManager packageManager = context.getPackageManager();
                try {
                    android.content.Context context2 = this.f250b;
                    return (packageManager.getActivityInfo(new android.content.ComponentName(context2, context2.getClass()), 0).configChanges & 512) == 0;
                } catch (android.content.pm.PackageManager.NameNotFoundException e5) {
                    android.util.Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e5);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.d
    public void u() {
        androidx.appcompat.app.ActionBar actionBarK = k();
        if (actionBarK != null) {
            actionBarK.t(false);
        }
        androidx.appcompat.app.AppCompatDelegateImpl.j jVar = this.P;
        if (jVar != null) {
            jVar.a();
        }
    }

    public e.b u0(e.b.a aVar) {
        e.b bVarOnWindowStartingSupportActionMode;
        android.content.Context dVar;
        androidx.appcompat.app.c cVar;
        M();
        e.b bVar = this.f261r;
        if (bVar != null) {
            bVar.c();
        }
        if (!(aVar instanceof androidx.appcompat.app.AppCompatDelegateImpl.h)) {
            aVar = new androidx.appcompat.app.AppCompatDelegateImpl.h(aVar);
        }
        androidx.appcompat.app.c cVar2 = this.f254f;
        if (cVar2 == null || this.M) {
            bVarOnWindowStartingSupportActionMode = null;
        } else {
            try {
                bVarOnWindowStartingSupportActionMode = cVar2.onWindowStartingSupportActionMode(aVar);
            } catch (java.lang.AbstractMethodError unused) {
                bVarOnWindowStartingSupportActionMode = null;
            }
        }
        if (bVarOnWindowStartingSupportActionMode != null) {
            this.f261r = bVarOnWindowStartingSupportActionMode;
        } else {
            if (this.f262s == null) {
                if (this.G) {
                    android.util.TypedValue typedValue = new android.util.TypedValue();
                    android.content.res.Resources.Theme theme = this.f250b.getTheme();
                    theme.resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        android.content.res.Resources.Theme themeNewTheme = this.f250b.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        dVar = new e.d(this.f250b, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                    } else {
                        dVar = this.f250b;
                    }
                    this.f262s = new androidx.appcompat.widget.ActionBarContextView(dVar);
                    android.widget.PopupWindow popupWindow = new android.widget.PopupWindow(dVar, (android.util.AttributeSet) null, androidx.appcompat.R.attr.actionModePopupWindowStyle);
                    this.f263t = popupWindow;
                    androidx.core.widget.j.b(popupWindow, 2);
                    this.f263t.setContentView(this.f262s);
                    this.f263t.setWidth(-1);
                    dVar.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarSize, typedValue, true);
                    this.f262s.setContentHeight(android.util.TypedValue.complexToDimensionPixelSize(typedValue.data, dVar.getResources().getDisplayMetrics()));
                    this.f263t.setHeight(-2);
                    this.f264u = new androidx.appcompat.app.AppCompatDelegateImpl.d();
                } else {
                    androidx.appcompat.widget.ViewStubCompat viewStubCompat = (androidx.appcompat.widget.ViewStubCompat) this.f268y.findViewById(androidx.appcompat.R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(android.view.LayoutInflater.from(Q()));
                        this.f262s = (androidx.appcompat.widget.ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (this.f262s != null) {
                M();
                this.f262s.k();
                e.e eVar = new e.e(this.f262s.getContext(), this.f262s, aVar, this.f263t == null);
                if (aVar.b(eVar, eVar.e())) {
                    eVar.k();
                    this.f262s.h(eVar);
                    this.f261r = eVar;
                    if (r0()) {
                        this.f262s.setAlpha(0.0f);
                        w.w wVarB = w.q.b(this.f262s).b(1.0f);
                        this.f265v = wVarB;
                        wVarB.h(new androidx.appcompat.app.AppCompatDelegateImpl.e());
                    } else {
                        this.f262s.setAlpha(1.0f);
                        this.f262s.setVisibility(0);
                        this.f262s.sendAccessibilityEvent(32);
                        if (this.f262s.getParent() instanceof android.view.View) {
                            w.q.N((android.view.View) this.f262s.getParent());
                        }
                    }
                    if (this.f263t != null) {
                        this.f251c.getDecorView().post(this.f264u);
                    }
                } else {
                    this.f261r = null;
                }
            }
        }
        e.b bVar2 = this.f261r;
        if (bVar2 != null && (cVar = this.f254f) != null) {
            cVar.onSupportActionModeStarted(bVar2);
        }
        return this.f261r;
    }

    @Override // androidx.appcompat.app.d
    public boolean v(int i5) {
        int iQ0 = q0(i5);
        if (this.H && iQ0 == 108) {
            return false;
        }
        if (this.D && iQ0 == 1) {
            this.D = false;
        }
        if (iQ0 == 1) {
            v0();
            this.H = true;
            return true;
        }
        if (iQ0 == 2) {
            v0();
            this.B = true;
            return true;
        }
        if (iQ0 == 5) {
            v0();
            this.C = true;
            return true;
        }
        if (iQ0 == 10) {
            v0();
            this.F = true;
            return true;
        }
        if (iQ0 == 108) {
            v0();
            this.D = true;
            return true;
        }
        if (iQ0 != 109) {
            return this.f251c.requestFeature(iQ0);
        }
        v0();
        this.E = true;
        return true;
    }

    public final void v0() {
        if (this.f267x) {
            throw new android.util.AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    @Override // androidx.appcompat.app.d
    public void w(int i5) {
        O();
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.f268y.findViewById(android.R.id.content);
        viewGroup.removeAllViews();
        android.view.LayoutInflater.from(this.f250b).inflate(i5, viewGroup);
        this.f252d.onContentChanged();
    }

    public final boolean w0(int i5) {
        android.content.res.Resources resources = this.f250b.getResources();
        android.content.res.Configuration configuration = resources.getConfiguration();
        int i6 = configuration.uiMode & 48;
        int i7 = i5 == 2 ? 32 : 16;
        if (i6 == i7) {
            return false;
        }
        if (t0()) {
            ((android.app.Activity) this.f250b).recreate();
            return true;
        }
        android.content.res.Configuration configuration2 = new android.content.res.Configuration(configuration);
        android.util.DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        configuration2.uiMode = i7 | (configuration2.uiMode & (-49));
        resources.updateConfiguration(configuration2, displayMetrics);
        return true;
    }

    @Override // androidx.appcompat.app.d
    public void x(android.view.View view) {
        O();
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.f268y.findViewById(android.R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f252d.onContentChanged();
    }

    public int x0(int i5) {
        boolean z4;
        boolean z5;
        androidx.appcompat.widget.ActionBarContextView actionBarContextView = this.f262s;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof android.view.ViewGroup.MarginLayoutParams)) {
            z4 = false;
        } else {
            android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) this.f262s.getLayoutParams();
            boolean z6 = true;
            if (this.f262s.isShown()) {
                if (this.U == null) {
                    this.U = new android.graphics.Rect();
                    this.V = new android.graphics.Rect();
                }
                android.graphics.Rect rect = this.U;
                android.graphics.Rect rect2 = this.V;
                rect.set(0, i5, 0, 0);
                androidx.appcompat.widget.h0.a(this.f268y, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i5 : 0)) {
                    marginLayoutParams.topMargin = i5;
                    android.view.View view = this.A;
                    if (view == null) {
                        android.view.View view2 = new android.view.View(this.f250b);
                        this.A = view2;
                        view2.setBackgroundColor(this.f250b.getResources().getColor(androidx.appcompat.R.color.abc_input_method_navigation_guard));
                        this.f268y.addView(this.A, -1, new android.view.ViewGroup.LayoutParams(-1, i5));
                    } else {
                        android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams.height != i5) {
                            layoutParams.height = i5;
                            this.A.setLayoutParams(layoutParams);
                        }
                    }
                    z5 = true;
                } else {
                    z5 = false;
                }
                z6 = this.A != null;
                if (!this.F && z6) {
                    i5 = 0;
                }
                boolean z7 = z6;
                z6 = z5;
                z4 = z7;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z4 = false;
            } else {
                z4 = false;
                z6 = false;
            }
            if (z6) {
                this.f262s.setLayoutParams(marginLayoutParams);
            }
        }
        android.view.View view3 = this.A;
        if (view3 != null) {
            view3.setVisibility(z4 ? 0 : 8);
        }
        return i5;
    }

    @Override // androidx.appcompat.app.d
    public void y(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        O();
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.f268y.findViewById(android.R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f252d.onContentChanged();
    }

    @Override // androidx.appcompat.app.d
    public void z(androidx.appcompat.widget.Toolbar toolbar) {
        if (this.f252d instanceof android.app.Activity) {
            androidx.appcompat.app.ActionBar actionBarK = k();
            if (actionBarK instanceof androidx.appcompat.app.i) {
                throw new java.lang.IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.f256h = null;
            if (actionBarK != null) {
                actionBarK.o();
            }
            if (toolbar != null) {
                androidx.appcompat.app.f fVar = new androidx.appcompat.app.f(toolbar, ((android.app.Activity) this.f252d).getTitle(), this.f253e);
                this.f255g = fVar;
                this.f251c.setCallback(fVar.x());
            } else {
                this.f255g = null;
                this.f251c.setCallback(this.f253e);
            }
            m();
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public android.view.View onCreateView(java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
