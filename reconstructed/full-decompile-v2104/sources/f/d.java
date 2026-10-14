package f;

/* JADX INFO: compiled from: MenuItemWrapperICS.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d extends f.b<q.b> implements android.view.MenuItem {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.lang.reflect.Method f4163e;

    /* JADX INFO: compiled from: MenuItemWrapperICS.java */
    public class a extends w.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final android.view.ActionProvider f4164d;

        public a(android.content.Context context, android.view.ActionProvider actionProvider) {
            super(context);
            this.f4164d = actionProvider;
        }

        @Override // w.b
        public boolean a() {
            return this.f4164d.hasSubMenu();
        }

        @Override // w.b
        public android.view.View c() {
            return this.f4164d.onCreateActionView();
        }

        @Override // w.b
        public boolean e() {
            return this.f4164d.onPerformDefaultAction();
        }

        @Override // w.b
        public void f(android.view.SubMenu subMenu) {
            this.f4164d.onPrepareSubMenu(f.d.this.d(subMenu));
        }
    }

    /* JADX INFO: compiled from: MenuItemWrapperICS.java */
    public static class b extends android.widget.FrameLayout implements e.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.view.CollapsibleActionView f4166a;

        /* JADX WARN: Multi-variable type inference failed */
        public b(android.view.View view) {
            super(view.getContext());
            this.f4166a = (android.view.CollapsibleActionView) view;
            addView(view);
        }

        public android.view.View a() {
            return (android.view.View) this.f4166a;
        }

        @Override // e.c
        public void c() {
            this.f4166a.onActionViewExpanded();
        }

        @Override // e.c
        public void d() {
            this.f4166a.onActionViewCollapsed();
        }
    }

    /* JADX INFO: compiled from: MenuItemWrapperICS.java */
    public class c extends f.c<android.view.MenuItem.OnActionExpandListener> implements android.view.MenuItem.OnActionExpandListener {
        public c(android.view.MenuItem.OnActionExpandListener onActionExpandListener) {
            super(onActionExpandListener);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(android.view.MenuItem menuItem) {
            return ((android.view.MenuItem.OnActionExpandListener) this.f4162a).onMenuItemActionCollapse(f.d.this.c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(android.view.MenuItem menuItem) {
            return ((android.view.MenuItem.OnActionExpandListener) this.f4162a).onMenuItemActionExpand(f.d.this.c(menuItem));
        }
    }

    /* JADX INFO: renamed from: f.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MenuItemWrapperICS.java */
    public class MenuItemOnMenuItemClickListenerC0047d extends f.c<android.view.MenuItem.OnMenuItemClickListener> implements android.view.MenuItem.OnMenuItemClickListener {
        public MenuItemOnMenuItemClickListenerC0047d(android.view.MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            super(onMenuItemClickListener);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(android.view.MenuItem menuItem) {
            return ((android.view.MenuItem.OnMenuItemClickListener) this.f4162a).onMenuItemClick(f.d.this.c(menuItem));
        }
    }

    public d(android.content.Context context, q.b bVar) {
        super(context, bVar);
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return ((q.b) this.f4162a).collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return ((q.b) this.f4162a).expandActionView();
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        w.b bVarB = ((q.b) this.f4162a).b();
        if (bVarB instanceof f.d.a) {
            return ((f.d.a) bVarB).f4164d;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public android.view.View getActionView() {
        android.view.View actionView = ((q.b) this.f4162a).getActionView();
        return actionView instanceof f.d.b ? ((f.d.b) actionView).a() : actionView;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return ((q.b) this.f4162a).getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return ((q.b) this.f4162a).getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getContentDescription() {
        return ((q.b) this.f4162a).getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return ((q.b) this.f4162a).getGroupId();
    }

    @Override // android.view.MenuItem
    public android.graphics.drawable.Drawable getIcon() {
        return ((q.b) this.f4162a).getIcon();
    }

    @Override // android.view.MenuItem
    public android.content.res.ColorStateList getIconTintList() {
        return ((q.b) this.f4162a).getIconTintList();
    }

    @Override // android.view.MenuItem
    public android.graphics.PorterDuff.Mode getIconTintMode() {
        return ((q.b) this.f4162a).getIconTintMode();
    }

    @Override // android.view.MenuItem
    public android.content.Intent getIntent() {
        return ((q.b) this.f4162a).getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return ((q.b) this.f4162a).getItemId();
    }

    @Override // android.view.MenuItem
    public android.view.ContextMenu.ContextMenuInfo getMenuInfo() {
        return ((q.b) this.f4162a).getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return ((q.b) this.f4162a).getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return ((q.b) this.f4162a).getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return ((q.b) this.f4162a).getOrder();
    }

    @Override // android.view.MenuItem
    public android.view.SubMenu getSubMenu() {
        return d(((q.b) this.f4162a).getSubMenu());
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTitle() {
        return ((q.b) this.f4162a).getTitle();
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTitleCondensed() {
        return ((q.b) this.f4162a).getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTooltipText() {
        return ((q.b) this.f4162a).getTooltipText();
    }

    public f.d.a h(android.view.ActionProvider actionProvider) {
        return new f.d.a(this.f4159b, actionProvider);
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return ((q.b) this.f4162a).hasSubMenu();
    }

    public void i(boolean z4) {
        try {
            if (this.f4163e == null) {
                this.f4163e = ((q.b) this.f4162a).getClass().getDeclaredMethod("setExclusiveCheckable", java.lang.Boolean.TYPE);
            }
            this.f4163e.invoke(this.f4162a, java.lang.Boolean.valueOf(z4));
        } catch (java.lang.Exception e5) {
            android.util.Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e5);
        }
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return ((q.b) this.f4162a).isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return ((q.b) this.f4162a).isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return ((q.b) this.f4162a).isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return ((q.b) this.f4162a).isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return ((q.b) this.f4162a).isVisible();
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        ((q.b) this.f4162a).a(actionProvider != null ? h(actionProvider) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setActionView(android.view.View view) {
        if (view instanceof android.view.CollapsibleActionView) {
            view = new f.d.b(view);
        }
        ((q.b) this.f4162a).setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c5) {
        ((q.b) this.f4162a).setAlphabeticShortcut(c5);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setCheckable(boolean z4) {
        ((q.b) this.f4162a).setCheckable(z4);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setChecked(boolean z4) {
        ((q.b) this.f4162a).setChecked(z4);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setContentDescription(java.lang.CharSequence charSequence) {
        ((q.b) this.f4162a).setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setEnabled(boolean z4) {
        ((q.b) this.f4162a).setEnabled(z4);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(android.graphics.drawable.Drawable drawable) {
        ((q.b) this.f4162a).setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIconTintList(android.content.res.ColorStateList colorStateList) {
        ((q.b) this.f4162a).setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIconTintMode(android.graphics.PorterDuff.Mode mode) {
        ((q.b) this.f4162a).setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIntent(android.content.Intent intent) {
        ((q.b) this.f4162a).setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c5) {
        ((q.b) this.f4162a).setNumericShortcut(c5);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnActionExpandListener(android.view.MenuItem.OnActionExpandListener onActionExpandListener) {
        ((q.b) this.f4162a).setOnActionExpandListener(onActionExpandListener != null ? new f.d.c(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnMenuItemClickListener(android.view.MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        ((q.b) this.f4162a).setOnMenuItemClickListener(onMenuItemClickListener != null ? new f.d.MenuItemOnMenuItemClickListenerC0047d(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setShortcut(char c5, char c6) {
        ((q.b) this.f4162a).setShortcut(c5, c6);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i5) {
        ((q.b) this.f4162a).setShowAsAction(i5);
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setShowAsActionFlags(int i5) {
        ((q.b) this.f4162a).setShowAsActionFlags(i5);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(java.lang.CharSequence charSequence) {
        ((q.b) this.f4162a).setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitleCondensed(java.lang.CharSequence charSequence) {
        ((q.b) this.f4162a).setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTooltipText(java.lang.CharSequence charSequence) {
        ((q.b) this.f4162a).setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setVisible(boolean z4) {
        return ((q.b) this.f4162a).setVisible(z4);
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c5, int i5) {
        ((q.b) this.f4162a).setAlphabeticShortcut(c5, i5);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(int i5) {
        ((q.b) this.f4162a).setIcon(i5);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c5, int i5) {
        ((q.b) this.f4162a).setNumericShortcut(c5, i5);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setShortcut(char c5, char c6, int i5, int i6) {
        ((q.b) this.f4162a).setShortcut(c5, c6, i5, i6);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(int i5) {
        ((q.b) this.f4162a).setTitle(i5);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setActionView(int i5) {
        ((q.b) this.f4162a).setActionView(i5);
        android.view.View actionView = ((q.b) this.f4162a).getActionView();
        if (actionView instanceof android.view.CollapsibleActionView) {
            ((q.b) this.f4162a).setActionView(new f.d.b(actionView));
        }
        return this;
    }
}
