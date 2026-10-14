package q;

/* JADX INFO: compiled from: SupportMenuItem.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface b extends android.view.MenuItem {
    q.b a(w.b bVar);

    w.b b();

    @Override // android.view.MenuItem
    boolean collapseActionView();

    @Override // android.view.MenuItem
    boolean expandActionView();

    @Override // android.view.MenuItem
    android.view.View getActionView();

    @Override // android.view.MenuItem
    int getAlphabeticModifiers();

    @Override // android.view.MenuItem
    java.lang.CharSequence getContentDescription();

    @Override // android.view.MenuItem
    android.content.res.ColorStateList getIconTintList();

    @Override // android.view.MenuItem
    android.graphics.PorterDuff.Mode getIconTintMode();

    @Override // android.view.MenuItem
    int getNumericModifiers();

    @Override // android.view.MenuItem
    java.lang.CharSequence getTooltipText();

    @Override // android.view.MenuItem
    boolean isActionViewExpanded();

    @Override // android.view.MenuItem
    android.view.MenuItem setActionView(int i5);

    @Override // android.view.MenuItem
    android.view.MenuItem setActionView(android.view.View view);

    @Override // android.view.MenuItem
    android.view.MenuItem setAlphabeticShortcut(char c5, int i5);

    @Override // android.view.MenuItem
    q.b setContentDescription(java.lang.CharSequence charSequence);

    @Override // android.view.MenuItem
    android.view.MenuItem setIconTintList(android.content.res.ColorStateList colorStateList);

    @Override // android.view.MenuItem
    android.view.MenuItem setIconTintMode(android.graphics.PorterDuff.Mode mode);

    @Override // android.view.MenuItem
    android.view.MenuItem setNumericShortcut(char c5, int i5);

    @Override // android.view.MenuItem
    android.view.MenuItem setShortcut(char c5, char c6, int i5, int i6);

    @Override // android.view.MenuItem
    void setShowAsAction(int i5);

    @Override // android.view.MenuItem
    android.view.MenuItem setShowAsActionFlags(int i5);

    @Override // android.view.MenuItem
    q.b setTooltipText(java.lang.CharSequence charSequence);
}
