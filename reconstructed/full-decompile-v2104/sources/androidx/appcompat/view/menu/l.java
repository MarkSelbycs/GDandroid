package androidx.appcompat.view.menu;

/* JADX INFO: compiled from: SubMenuBuilder.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l extends androidx.appcompat.view.menu.e implements android.view.SubMenu {
    public androidx.appcompat.view.menu.e B;
    public androidx.appcompat.view.menu.g C;

    public l(android.content.Context context, androidx.appcompat.view.menu.e eVar, androidx.appcompat.view.menu.g gVar) {
        super(context);
        this.B = eVar;
        this.C = gVar;
    }

    @Override // androidx.appcompat.view.menu.e
    public androidx.appcompat.view.menu.e D() {
        return this.B.D();
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean F() {
        return this.B.F();
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean G() {
        return this.B.G();
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean H() {
        return this.B.H();
    }

    @Override // androidx.appcompat.view.menu.e
    public void R(androidx.appcompat.view.menu.e.a aVar) {
        this.B.R(aVar);
    }

    public android.view.Menu e0() {
        return this.B;
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean f(androidx.appcompat.view.menu.g gVar) {
        return this.B.f(gVar);
    }

    @Override // android.view.SubMenu
    public android.view.MenuItem getItem() {
        return this.C;
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean h(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem) {
        return super.h(eVar, menuItem) || this.B.h(eVar, menuItem);
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean k(androidx.appcompat.view.menu.g gVar) {
        return this.B.k(gVar);
    }

    @Override // androidx.appcompat.view.menu.e, android.view.Menu
    public void setGroupDividerEnabled(boolean z4) {
        this.B.setGroupDividerEnabled(z4);
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderIcon(android.graphics.drawable.Drawable drawable) {
        return (android.view.SubMenu) super.V(drawable);
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderTitle(java.lang.CharSequence charSequence) {
        return (android.view.SubMenu) super.Y(charSequence);
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderView(android.view.View view) {
        return (android.view.SubMenu) super.Z(view);
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setIcon(android.graphics.drawable.Drawable drawable) {
        this.C.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.e, android.view.Menu
    public void setQwertyMode(boolean z4) {
        this.B.setQwertyMode(z4);
    }

    @Override // androidx.appcompat.view.menu.e
    public java.lang.String t() {
        androidx.appcompat.view.menu.g gVar = this.C;
        int itemId = gVar != null ? gVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.t() + ":" + itemId;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderIcon(int i5) {
        return (android.view.SubMenu) super.U(i5);
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderTitle(int i5) {
        return (android.view.SubMenu) super.X(i5);
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setIcon(int i5) {
        this.C.setIcon(i5);
        return this;
    }
}
