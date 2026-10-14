package f;

/* JADX INFO: compiled from: MenuWrapperICS.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h extends f.b<q.a> implements android.view.Menu {
    public h(android.content.Context context, q.a aVar) {
        super(context, aVar);
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(java.lang.CharSequence charSequence) {
        return c(((q.a) this.f4162a).add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i5, int i6, int i7, android.content.ComponentName componentName, android.content.Intent[] intentArr, android.content.Intent intent, int i8, android.view.MenuItem[] menuItemArr) {
        android.view.MenuItem[] menuItemArr2 = menuItemArr != null ? new android.view.MenuItem[menuItemArr.length] : null;
        int iAddIntentOptions = ((q.a) this.f4162a).addIntentOptions(i5, i6, i7, componentName, intentArr, intent, i8, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i9 = 0; i9 < length; i9++) {
                menuItemArr[i9] = c(menuItemArr2[i9]);
            }
        }
        return iAddIntentOptions;
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(java.lang.CharSequence charSequence) {
        return d(((q.a) this.f4162a).addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        e();
        ((q.a) this.f4162a).clear();
    }

    @Override // android.view.Menu
    public void close() {
        ((q.a) this.f4162a).close();
    }

    @Override // android.view.Menu
    public android.view.MenuItem findItem(int i5) {
        return c(((q.a) this.f4162a).findItem(i5));
    }

    @Override // android.view.Menu
    public android.view.MenuItem getItem(int i5) {
        return c(((q.a) this.f4162a).getItem(i5));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return ((q.a) this.f4162a).hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i5, android.view.KeyEvent keyEvent) {
        return ((q.a) this.f4162a).isShortcutKey(i5, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i5, int i6) {
        return ((q.a) this.f4162a).performIdentifierAction(i5, i6);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i5, android.view.KeyEvent keyEvent, int i6) {
        return ((q.a) this.f4162a).performShortcut(i5, keyEvent, i6);
    }

    @Override // android.view.Menu
    public void removeGroup(int i5) {
        f(i5);
        ((q.a) this.f4162a).removeGroup(i5);
    }

    @Override // android.view.Menu
    public void removeItem(int i5) {
        g(i5);
        ((q.a) this.f4162a).removeItem(i5);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i5, boolean z4, boolean z5) {
        ((q.a) this.f4162a).setGroupCheckable(i5, z4, z5);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i5, boolean z4) {
        ((q.a) this.f4162a).setGroupEnabled(i5, z4);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i5, boolean z4) {
        ((q.a) this.f4162a).setGroupVisible(i5, z4);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z4) {
        ((q.a) this.f4162a).setQwertyMode(z4);
    }

    @Override // android.view.Menu
    public int size() {
        return ((q.a) this.f4162a).size();
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i5) {
        return c(((q.a) this.f4162a).add(i5));
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i5) {
        return d(((q.a) this.f4162a).addSubMenu(i5));
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i5, int i6, int i7, java.lang.CharSequence charSequence) {
        return c(((q.a) this.f4162a).add(i5, i6, i7, charSequence));
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i5, int i6, int i7, java.lang.CharSequence charSequence) {
        return d(((q.a) this.f4162a).addSubMenu(i5, i6, i7, charSequence));
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i5, int i6, int i7, int i8) {
        return c(((q.a) this.f4162a).add(i5, i6, i7, i8));
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i5, int i6, int i7, int i8) {
        return d(((q.a) this.f4162a).addSubMenu(i5, i6, i7, i8));
    }
}
