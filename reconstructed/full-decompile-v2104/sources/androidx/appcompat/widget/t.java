package androidx.appcompat.widget;

/* JADX INFO: compiled from: MenuPopupWindow.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class t extends androidx.appcompat.widget.ListPopupWindow implements androidx.appcompat.widget.s {
    public static java.lang.reflect.Method Q;
    public androidx.appcompat.widget.s P;

    /* JADX INFO: compiled from: MenuPopupWindow.java */
    public static class a extends androidx.appcompat.widget.p {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final int f1037t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final int f1038u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public androidx.appcompat.widget.s f1039v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public android.view.MenuItem f1040w;

        public a(android.content.Context context, boolean z4) {
            super(context, z4);
            if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
                this.f1037t = 21;
                this.f1038u = 22;
            } else {
                this.f1037t = 22;
                this.f1038u = 21;
            }
        }

        @Override // androidx.appcompat.widget.p
        public /* bridge */ /* synthetic */ int d(int i5, int i6, int i7, int i8, int i9) {
            return super.d(i5, i6, i7, i8, i9);
        }

        @Override // androidx.appcompat.widget.p
        public /* bridge */ /* synthetic */ boolean e(android.view.MotionEvent motionEvent, int i5) {
            return super.e(motionEvent, i5);
        }

        @Override // androidx.appcompat.widget.p, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.p, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.p, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.p, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.p, android.view.View
        public boolean onHoverEvent(android.view.MotionEvent motionEvent) {
            int headersCount;
            androidx.appcompat.view.menu.d dVar;
            int iPointToPosition;
            int i5;
            if (this.f1039v != null) {
                android.widget.ListAdapter adapter = getAdapter();
                if (adapter instanceof android.widget.HeaderViewListAdapter) {
                    android.widget.HeaderViewListAdapter headerViewListAdapter = (android.widget.HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    dVar = (androidx.appcompat.view.menu.d) headerViewListAdapter.getWrappedAdapter();
                } else {
                    headersCount = 0;
                    dVar = (androidx.appcompat.view.menu.d) adapter;
                }
                androidx.appcompat.view.menu.g item = null;
                if (motionEvent.getAction() != 10 && (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i5 = iPointToPosition - headersCount) >= 0 && i5 < dVar.getCount()) {
                    item = dVar.getItem(i5);
                }
                android.view.MenuItem menuItem = this.f1040w;
                if (menuItem != item) {
                    androidx.appcompat.view.menu.e eVarB = dVar.b();
                    if (menuItem != null) {
                        this.f1039v.c(eVarB, menuItem);
                    }
                    this.f1040w = item;
                    if (item != null) {
                        this.f1039v.a(eVarB, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i5, android.view.KeyEvent keyEvent) {
            androidx.appcompat.view.menu.ListMenuItemView listMenuItemView = (androidx.appcompat.view.menu.ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i5 == this.f1037t) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i5 != this.f1038u) {
                return super.onKeyDown(i5, keyEvent);
            }
            setSelection(-1);
            ((androidx.appcompat.view.menu.d) getAdapter()).b().e(false);
            return true;
        }

        @Override // androidx.appcompat.widget.p, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(android.view.MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(androidx.appcompat.widget.s sVar) {
            this.f1039v = sVar;
        }

        @Override // androidx.appcompat.widget.p, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(android.graphics.drawable.Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            Q = android.widget.PopupWindow.class.getDeclaredMethod("setTouchModal", java.lang.Boolean.TYPE);
        } catch (java.lang.NoSuchMethodException unused) {
            android.util.Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public t(android.content.Context context, android.util.AttributeSet attributeSet, int i5, int i6) {
        super(context, attributeSet, i5, i6);
    }

    public void J(java.lang.Object obj) {
        this.L.setEnterTransition((android.transition.Transition) obj);
    }

    public void K(java.lang.Object obj) {
        this.L.setExitTransition((android.transition.Transition) obj);
    }

    public void L(androidx.appcompat.widget.s sVar) {
        this.P = sVar;
    }

    public void M(boolean z4) {
        java.lang.reflect.Method method = Q;
        if (method != null) {
            try {
                method.invoke(this.L, java.lang.Boolean.valueOf(z4));
            } catch (java.lang.Exception unused) {
                android.util.Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
            }
        }
    }

    @Override // androidx.appcompat.widget.s
    public void a(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem) {
        androidx.appcompat.widget.s sVar = this.P;
        if (sVar != null) {
            sVar.a(eVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.s
    public void c(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem) {
        androidx.appcompat.widget.s sVar = this.P;
        if (sVar != null) {
            sVar.c(eVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    public androidx.appcompat.widget.p h(android.content.Context context, boolean z4) {
        androidx.appcompat.widget.t.a aVar = new androidx.appcompat.widget.t.a(context, z4);
        aVar.setHoverListener(this);
        return aVar;
    }
}
