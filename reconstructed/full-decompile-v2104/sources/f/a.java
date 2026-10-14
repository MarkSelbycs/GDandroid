package f;

/* JADX INFO: compiled from: ActionMenuItem.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a implements q.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.lang.CharSequence f4141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.lang.CharSequence f4142f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.content.Intent f4143g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public char f4144h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public char f4146j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public android.graphics.drawable.Drawable f4148l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public android.content.Context f4150n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public android.view.MenuItem.OnMenuItemClickListener f4151o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public java.lang.CharSequence f4152p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public java.lang.CharSequence f4153q;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4145i = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4147k = 4096;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4149m = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public android.content.res.ColorStateList f4154r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f4155s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f4156t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f4157u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f4158v = 16;

    public a(android.content.Context context, int i5, int i6, int i7, int i8, java.lang.CharSequence charSequence) {
        this.f4150n = context;
        this.f4137a = i6;
        this.f4138b = i5;
        this.f4139c = i7;
        this.f4140d = i8;
        this.f4141e = charSequence;
    }

    @Override // q.b
    public q.b a(w.b bVar) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // q.b
    public w.b b() {
        return null;
    }

    public final void c() {
        android.graphics.drawable.Drawable drawable = this.f4148l;
        if (drawable != null) {
            if (this.f4156t || this.f4157u) {
                android.graphics.drawable.Drawable drawableK = p.a.k(drawable);
                this.f4148l = drawableK;
                android.graphics.drawable.Drawable drawableMutate = drawableK.mutate();
                this.f4148l = drawableMutate;
                if (this.f4156t) {
                    p.a.h(drawableMutate, this.f4154r);
                }
                if (this.f4157u) {
                    p.a.i(this.f4148l, this.f4155s);
                }
            }
        }
    }

    @Override // q.b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // q.b, android.view.MenuItem
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public q.b setActionView(int i5) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // q.b, android.view.MenuItem
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public q.b setActionView(android.view.View view) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // q.b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // q.b, android.view.MenuItem
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public q.b setShowAsActionFlags(int i5) {
        setShowAsAction(i5);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // q.b, android.view.MenuItem
    public android.view.View getActionView() {
        return null;
    }

    @Override // q.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f4147k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f4146j;
    }

    @Override // q.b, android.view.MenuItem
    public java.lang.CharSequence getContentDescription() {
        return this.f4152p;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f4138b;
    }

    @Override // android.view.MenuItem
    public android.graphics.drawable.Drawable getIcon() {
        return this.f4148l;
    }

    @Override // q.b, android.view.MenuItem
    public android.content.res.ColorStateList getIconTintList() {
        return this.f4154r;
    }

    @Override // q.b, android.view.MenuItem
    public android.graphics.PorterDuff.Mode getIconTintMode() {
        return this.f4155s;
    }

    @Override // android.view.MenuItem
    public android.content.Intent getIntent() {
        return this.f4143g;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f4137a;
    }

    @Override // android.view.MenuItem
    public android.view.ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // q.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f4145i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f4144h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f4140d;
    }

    @Override // android.view.MenuItem
    public android.view.SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTitle() {
        return this.f4141e;
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTitleCondensed() {
        java.lang.CharSequence charSequence = this.f4142f;
        return charSequence != null ? charSequence : this.f4141e;
    }

    @Override // q.b, android.view.MenuItem
    public java.lang.CharSequence getTooltipText() {
        return this.f4153q;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // q.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f4158v & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f4158v & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f4158v & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f4158v & 8) == 0;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c5) {
        this.f4146j = java.lang.Character.toLowerCase(c5);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setCheckable(boolean z4) {
        this.f4158v = (z4 ? 1 : 0) | (this.f4158v & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setChecked(boolean z4) {
        this.f4158v = (z4 ? 2 : 0) | (this.f4158v & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setEnabled(boolean z4) {
        this.f4158v = (z4 ? 16 : 0) | (this.f4158v & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(android.graphics.drawable.Drawable drawable) {
        this.f4148l = drawable;
        this.f4149m = 0;
        c();
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public android.view.MenuItem setIconTintList(android.content.res.ColorStateList colorStateList) {
        this.f4154r = colorStateList;
        this.f4156t = true;
        c();
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public android.view.MenuItem setIconTintMode(android.graphics.PorterDuff.Mode mode) {
        this.f4155s = mode;
        this.f4157u = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIntent(android.content.Intent intent) {
        this.f4143g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c5) {
        this.f4144h = c5;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnActionExpandListener(android.view.MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnMenuItemClickListener(android.view.MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f4151o = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setShortcut(char c5, char c6) {
        this.f4144h = c5;
        this.f4146j = java.lang.Character.toLowerCase(c6);
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public void setShowAsAction(int i5) {
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(java.lang.CharSequence charSequence) {
        this.f4141e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitleCondensed(java.lang.CharSequence charSequence) {
        this.f4142f = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setVisible(boolean z4) {
        this.f4158v = (this.f4158v & 8) | (z4 ? 0 : 8);
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c5, int i5) {
        this.f4146j = java.lang.Character.toLowerCase(c5);
        this.f4147k = android.view.KeyEvent.normalizeMetaState(i5);
        return this;
    }

    @Override // android.view.MenuItem
    public q.b setContentDescription(java.lang.CharSequence charSequence) {
        this.f4152p = charSequence;
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c5, int i5) {
        this.f4144h = c5;
        this.f4145i = android.view.KeyEvent.normalizeMetaState(i5);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(int i5) {
        this.f4141e = this.f4150n.getResources().getString(i5);
        return this;
    }

    @Override // android.view.MenuItem
    public q.b setTooltipText(java.lang.CharSequence charSequence) {
        this.f4153q = charSequence;
        return this;
    }

    @Override // q.b, android.view.MenuItem
    public android.view.MenuItem setShortcut(char c5, char c6, int i5, int i6) {
        this.f4144h = c5;
        this.f4145i = android.view.KeyEvent.normalizeMetaState(i5);
        this.f4146j = java.lang.Character.toLowerCase(c6);
        this.f4147k = android.view.KeyEvent.normalizeMetaState(i6);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(int i5) {
        this.f4149m = i5;
        this.f4148l = androidx.core.content.a.b(this.f4150n, i5);
        c();
        return this;
    }
}
