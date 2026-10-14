package f;

/* JADX INFO: compiled from: BaseMenuWrapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b<T> extends f.c<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.Context f4159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.util.Map<q.b, android.view.MenuItem> f4160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.util.Map<q.c, android.view.SubMenu> f4161d;

    public b(android.content.Context context, T t5) {
        super(t5);
        this.f4159b = context;
    }

    public final android.view.MenuItem c(android.view.MenuItem menuItem) {
        if (!(menuItem instanceof q.b)) {
            return menuItem;
        }
        q.b bVar = (q.b) menuItem;
        if (this.f4160c == null) {
            this.f4160c = new j.a();
        }
        android.view.MenuItem menuItem2 = this.f4160c.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        android.view.MenuItem menuItemB = f.g.b(this.f4159b, bVar);
        this.f4160c.put(bVar, menuItemB);
        return menuItemB;
    }

    public final android.view.SubMenu d(android.view.SubMenu subMenu) {
        if (!(subMenu instanceof q.c)) {
            return subMenu;
        }
        q.c cVar = (q.c) subMenu;
        if (this.f4161d == null) {
            this.f4161d = new j.a();
        }
        android.view.SubMenu subMenu2 = this.f4161d.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        android.view.SubMenu subMenuC = f.g.c(this.f4159b, cVar);
        this.f4161d.put(cVar, subMenuC);
        return subMenuC;
    }

    public final void e() {
        java.util.Map<q.b, android.view.MenuItem> map = this.f4160c;
        if (map != null) {
            map.clear();
        }
        java.util.Map<q.c, android.view.SubMenu> map2 = this.f4161d;
        if (map2 != null) {
            map2.clear();
        }
    }

    public final void f(int i5) {
        java.util.Map<q.b, android.view.MenuItem> map = this.f4160c;
        if (map == null) {
            return;
        }
        java.util.Iterator<q.b> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (i5 == it.next().getGroupId()) {
                it.remove();
            }
        }
    }

    public final void g(int i5) {
        java.util.Map<q.b, android.view.MenuItem> map = this.f4160c;
        if (map == null) {
            return;
        }
        java.util.Iterator<q.b> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (i5 == it.next().getItemId()) {
                it.remove();
                return;
            }
        }
    }
}
