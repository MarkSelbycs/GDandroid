package androidx.appcompat.view.menu;

/* JADX INFO: compiled from: MenuItemImpl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g implements q.b {
    public android.view.View A;
    public w.b B;
    public android.view.MenuItem.OnActionExpandListener C;
    public android.view.ContextMenu.ContextMenuInfo E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f510a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f512c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f513d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.lang.CharSequence f514e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.lang.CharSequence f515f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.content.Intent f516g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public char f517h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public char f519j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public android.graphics.drawable.Drawable f521l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f523n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public androidx.appcompat.view.menu.l f524o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public java.lang.Runnable f525p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public android.view.MenuItem.OnMenuItemClickListener f526q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public java.lang.CharSequence f527r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public java.lang.CharSequence f528s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f535z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f518i = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f520k = 4096;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f522m = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public android.content.res.ColorStateList f529t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f530u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f531v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f532w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f533x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f534y = 16;
    public boolean D = false;

    /* JADX INFO: compiled from: MenuItemImpl.java */
    public class a implements w.b.InterfaceC0096b {
        public a() {
        }

        @Override // w.b.InterfaceC0096b
        public void onActionProviderVisibilityChanged(boolean z4) {
            androidx.appcompat.view.menu.g gVar = androidx.appcompat.view.menu.g.this;
            gVar.f523n.J(gVar);
        }
    }

    public g(androidx.appcompat.view.menu.e eVar, int i5, int i6, int i7, int i8, java.lang.CharSequence charSequence, int i9) {
        this.f523n = eVar;
        this.f510a = i6;
        this.f511b = i5;
        this.f512c = i7;
        this.f513d = i8;
        this.f514e = charSequence;
        this.f535z = i9;
    }

    public static void d(java.lang.StringBuilder sb, int i5, int i6, java.lang.String str) {
        if ((i5 & i6) == i6) {
            sb.append(str);
        }
    }

    public boolean A() {
        return this.f523n.H() && g() != 0;
    }

    public boolean B() {
        return (this.f535z & 4) == 4;
    }

    @Override // q.b
    public q.b a(w.b bVar) {
        w.b bVar2 = this.B;
        if (bVar2 != null) {
            bVar2.h();
        }
        this.A = null;
        this.B = bVar;
        this.f523n.K(true);
        w.b bVar3 = this.B;
        if (bVar3 != null) {
            bVar3.j(new androidx.appcompat.view.menu.g.a());
        }
        return this;
    }

    @Override // q.b
    public w.b b() {
        return this.B;
    }

    public void c() {
        this.f523n.I(this);
    }

    @Override // q.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f535z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        android.view.MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f523n.f(this);
        }
        return false;
    }

    public final android.graphics.drawable.Drawable e(android.graphics.drawable.Drawable drawable) {
        if (drawable != null && this.f533x && (this.f531v || this.f532w)) {
            drawable = p.a.k(drawable).mutate();
            if (this.f531v) {
                p.a.h(drawable, this.f529t);
            }
            if (this.f532w) {
                p.a.i(drawable, this.f530u);
            }
            this.f533x = false;
        }
        return drawable;
    }

    @Override // q.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!j()) {
            return false;
        }
        android.view.MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f523n.k(this);
        }
        return false;
    }

    public int f() {
        return this.f513d;
    }

    public char g() {
        return this.f523n.G() ? this.f519j : this.f517h;
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new java.lang.UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // q.b, android.view.MenuItem
    public android.view.View getActionView() {
        android.view.View view = this.A;
        if (view != null) {
            return view;
        }
        w.b bVar = this.B;
        if (bVar == null) {
            return null;
        }
        android.view.View viewD = bVar.d(this);
        this.A = viewD;
        return viewD;
    }

    @Override // q.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f520k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f519j;
    }

    @Override // q.b, android.view.MenuItem
    public java.lang.CharSequence getContentDescription() {
        return this.f527r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f511b;
    }

    @Override // android.view.MenuItem
    public android.graphics.drawable.Drawable getIcon() {
        android.graphics.drawable.Drawable drawable = this.f521l;
        if (drawable != null) {
            return e(drawable);
        }
        if (this.f522m == 0) {
            return null;
        }
        android.graphics.drawable.Drawable drawableB = b.a.b(this.f523n.u(), this.f522m);
        this.f522m = 0;
        this.f521l = drawableB;
        return e(drawableB);
    }

    @Override // q.b, android.view.MenuItem
    public android.content.res.ColorStateList getIconTintList() {
        return this.f529t;
    }

    @Override // q.b, android.view.MenuItem
    public android.graphics.PorterDuff.Mode getIconTintMode() {
        return this.f530u;
    }

    @Override // android.view.MenuItem
    public android.content.Intent getIntent() {
        return this.f516g;
    }

    @Override // android.view.MenuItem
    @android.view.ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f510a;
    }

    @Override // android.view.MenuItem
    public android.view.ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    @Override // q.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f518i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f517h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f512c;
    }

    @Override // android.view.MenuItem
    public android.view.SubMenu getSubMenu() {
        return this.f524o;
    }

    @Override // android.view.MenuItem
    @android.view.ViewDebug.CapturedViewProperty
    public java.lang.CharSequence getTitle() {
        return this.f514e;
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTitleCondensed() {
        java.lang.CharSequence charSequence = this.f515f;
        return charSequence != null ? charSequence : this.f514e;
    }

    @Override // q.b, android.view.MenuItem
    public java.lang.CharSequence getTooltipText() {
        return this.f528s;
    }

    public java.lang.String h() {
        char cG = g();
        if (cG == 0) {
            return "";
        }
        android.content.res.Resources resources = this.f523n.u().getResources();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        if (android.view.ViewConfiguration.get(this.f523n.u()).hasPermanentMenuKey()) {
            sb.append(resources.getString(androidx.appcompat.R.string.abc_prepend_shortcut_label));
        }
        int i5 = this.f523n.G() ? this.f520k : this.f518i;
        d(sb, i5, 65536, resources.getString(androidx.appcompat.R.string.abc_menu_meta_shortcut_label));
        d(sb, i5, 4096, resources.getString(androidx.appcompat.R.string.abc_menu_ctrl_shortcut_label));
        d(sb, i5, 2, resources.getString(androidx.appcompat.R.string.abc_menu_alt_shortcut_label));
        d(sb, i5, 1, resources.getString(androidx.appcompat.R.string.abc_menu_shift_shortcut_label));
        d(sb, i5, 4, resources.getString(androidx.appcompat.R.string.abc_menu_sym_shortcut_label));
        d(sb, i5, 8, resources.getString(androidx.appcompat.R.string.abc_menu_function_shortcut_label));
        if (cG == '\b') {
            sb.append(resources.getString(androidx.appcompat.R.string.abc_menu_delete_shortcut_label));
        } else if (cG == '\n') {
            sb.append(resources.getString(androidx.appcompat.R.string.abc_menu_enter_shortcut_label));
        } else if (cG != ' ') {
            sb.append(cG);
        } else {
            sb.append(resources.getString(androidx.appcompat.R.string.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f524o != null;
    }

    public java.lang.CharSequence i(androidx.appcompat.view.menu.j.a aVar) {
        return (aVar == null || !aVar.c()) ? getTitle() : getTitleCondensed();
    }

    @Override // q.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f534y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f534y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f534y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        w.b bVar = this.B;
        if (bVar == null || !bVar.g()) {
            return (this.f534y & 8) == 0;
        }
        return (this.f534y & 8) == 0 && this.B.b();
    }

    public boolean j() {
        w.b bVar;
        if ((this.f535z & 8) == 0) {
            return false;
        }
        if (this.A == null && (bVar = this.B) != null) {
            this.A = bVar.d(this);
        }
        return this.A != null;
    }

    public boolean k() {
        android.view.MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f526q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        androidx.appcompat.view.menu.e eVar = this.f523n;
        if (eVar.h(eVar, this)) {
            return true;
        }
        java.lang.Runnable runnable = this.f525p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f516g != null) {
            try {
                this.f523n.u().startActivity(this.f516g);
                return true;
            } catch (android.content.ActivityNotFoundException e5) {
                android.util.Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e5);
            }
        }
        w.b bVar = this.B;
        return bVar != null && bVar.e();
    }

    public boolean l() {
        return (this.f534y & 32) == 32;
    }

    public boolean m() {
        return (this.f534y & 4) != 0;
    }

    public boolean n() {
        return (this.f535z & 1) == 1;
    }

    public boolean o() {
        return (this.f535z & 2) == 2;
    }

    @Override // q.b, android.view.MenuItem
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public q.b setActionView(int i5) {
        android.content.Context contextU = this.f523n.u();
        setActionView(android.view.LayoutInflater.from(contextU).inflate(i5, (android.view.ViewGroup) new android.widget.LinearLayout(contextU), false));
        return this;
    }

    @Override // q.b, android.view.MenuItem
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public q.b setActionView(android.view.View view) {
        int i5;
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1 && (i5 = this.f510a) > 0) {
            view.setId(i5);
        }
        this.f523n.I(this);
        return this;
    }

    public void r(boolean z4) {
        this.D = z4;
        this.f523n.K(false);
    }

    public void s(boolean z4) {
        int i5 = this.f534y;
        int i6 = (z4 ? 2 : 0) | (i5 & (-3));
        this.f534y = i6;
        if (i5 != i6) {
            this.f523n.K(false);
        }
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new java.lang.UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c5) {
        if (this.f519j == c5) {
            return this;
        }
        this.f519j = java.lang.Character.toLowerCase(c5);
        this.f523n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setCheckable(boolean z4) {
        int i5 = this.f534y;
        int i6 = (z4 ? 1 : 0) | (i5 & (-2));
        this.f534y = i6;
        if (i5 != i6) {
            this.f523n.K(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setChecked(boolean z4) {
        if ((this.f534y & 4) != 0) {
            this.f523n.T(this);
        } else {
            s(z4);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setEnabled(boolean z4) {
        if (z4) {
            this.f534y |= 16;
        } else {
            this.f534y &= -17;
        }
        this.f523n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(android.graphics.drawable.Drawable drawable) {
        this.f522m = 0;
        this.f521l = drawable;
        this.f533x = true;
        this.f523n.K(false);
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public android.view.MenuItem setIconTintList(android.content.res.ColorStateList colorStateList) {
        this.f529t = colorStateList;
        this.f531v = true;
        this.f533x = true;
        this.f523n.K(false);
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public android.view.MenuItem setIconTintMode(android.graphics.PorterDuff.Mode mode) {
        this.f530u = mode;
        this.f532w = true;
        this.f533x = true;
        this.f523n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIntent(android.content.Intent intent) {
        this.f516g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c5) {
        if (this.f517h == c5) {
            return this;
        }
        this.f517h = c5;
        this.f523n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnActionExpandListener(android.view.MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnMenuItemClickListener(android.view.MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f526q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setShortcut(char c5, char c6) {
        this.f517h = c5;
        this.f519j = java.lang.Character.toLowerCase(c6);
        this.f523n.K(false);
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public void setShowAsAction(int i5) {
        int i6 = i5 & 3;
        if (i6 != 0 && i6 != 1 && i6 != 2) {
            throw new java.lang.IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f535z = i5;
        this.f523n.I(this);
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(java.lang.CharSequence charSequence) {
        this.f514e = charSequence;
        this.f523n.K(false);
        androidx.appcompat.view.menu.l lVar = this.f524o;
        if (lVar != null) {
            lVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitleCondensed(java.lang.CharSequence charSequence) {
        this.f515f = charSequence;
        this.f523n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setVisible(boolean z4) {
        if (y(z4)) {
            this.f523n.J(this);
        }
        return this;
    }

    public void t(boolean z4) {
        this.f534y = (z4 ? 4 : 0) | (this.f534y & (-5));
    }

    public java.lang.String toString() {
        java.lang.CharSequence charSequence = this.f514e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public void u(boolean z4) {
        if (z4) {
            this.f534y |= 32;
        } else {
            this.f534y &= -33;
        }
    }

    public void v(android.view.ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    @Override // q.b, android.view.MenuItem
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public q.b setShowAsActionFlags(int i5) {
        setShowAsAction(i5);
        return this;
    }

    public void x(androidx.appcompat.view.menu.l lVar) {
        this.f524o = lVar;
        lVar.setHeaderTitle(getTitle());
    }

    public boolean y(boolean z4) {
        int i5 = this.f534y;
        int i6 = (z4 ? 0 : 8) | (i5 & (-9));
        this.f534y = i6;
        return i5 != i6;
    }

    public boolean z() {
        return this.f523n.A();
    }

    @Override // android.view.MenuItem
    public q.b setContentDescription(java.lang.CharSequence charSequence) {
        this.f527r = charSequence;
        this.f523n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public q.b setTooltipText(java.lang.CharSequence charSequence) {
        this.f528s = charSequence;
        this.f523n.K(false);
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c5, int i5) {
        if (this.f519j == c5 && this.f520k == i5) {
            return this;
        }
        this.f519j = java.lang.Character.toLowerCase(c5);
        this.f520k = android.view.KeyEvent.normalizeMetaState(i5);
        this.f523n.K(false);
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c5, int i5) {
        if (this.f517h == c5 && this.f518i == i5) {
            return this;
        }
        this.f517h = c5;
        this.f518i = android.view.KeyEvent.normalizeMetaState(i5);
        this.f523n.K(false);
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public android.view.MenuItem setShortcut(char c5, char c6, int i5, int i6) {
        this.f517h = c5;
        this.f518i = android.view.KeyEvent.normalizeMetaState(i5);
        this.f519j = java.lang.Character.toLowerCase(c6);
        this.f520k = android.view.KeyEvent.normalizeMetaState(i6);
        this.f523n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(int i5) {
        this.f521l = null;
        this.f522m = i5;
        this.f533x = true;
        this.f523n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(int i5) {
        return setTitle(this.f523n.u().getString(i5));
    }
}
