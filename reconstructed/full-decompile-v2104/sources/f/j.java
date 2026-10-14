package f;

/* JADX INFO: compiled from: SubMenuWrapperICS.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j extends f.h implements android.view.SubMenu {
    public j(android.content.Context context, q.c cVar) {
        super(context, cVar);
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        h().clearHeader();
    }

    @Override // android.view.SubMenu
    public android.view.MenuItem getItem() {
        return c(h().getItem());
    }

    public q.c h() {
        return (q.c) this.f4162a;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderIcon(int i5) {
        h().setHeaderIcon(i5);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderTitle(int i5) {
        h().setHeaderTitle(i5);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderView(android.view.View view) {
        h().setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setIcon(int i5) {
        h().setIcon(i5);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderIcon(android.graphics.drawable.Drawable drawable) {
        h().setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderTitle(java.lang.CharSequence charSequence) {
        h().setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setIcon(android.graphics.drawable.Drawable drawable) {
        h().setIcon(drawable);
        return this;
    }
}
