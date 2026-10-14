package androidx.appcompat.view.menu;

/* JADX INFO: compiled from: BaseMenuPresenter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a implements androidx.appcompat.view.menu.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.content.Context f423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.content.Context f424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f425c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.view.LayoutInflater f426d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.view.LayoutInflater f427e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.appcompat.view.menu.i.a f428f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f429g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f430h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public androidx.appcompat.view.menu.j f431i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f432o;

    public a(android.content.Context context, int i5, int i6) {
        this.f423a = context;
        this.f426d = android.view.LayoutInflater.from(context);
        this.f429g = i5;
        this.f430h = i6;
    }

    @Override // androidx.appcompat.view.menu.i
    public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
        androidx.appcompat.view.menu.i.a aVar = this.f428f;
        if (aVar != null) {
            aVar.a(eVar, z4);
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public void d(android.content.Context context, androidx.appcompat.view.menu.e eVar) {
        this.f424b = context;
        this.f427e = android.view.LayoutInflater.from(context);
        this.f425c = eVar;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean e(androidx.appcompat.view.menu.e eVar, androidx.appcompat.view.menu.g gVar) {
        return false;
    }

    public void f(android.view.View view, int i5) {
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((android.view.ViewGroup) this.f431i).addView(view, i5);
    }

    public abstract void g(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.j.a aVar);

    @Override // androidx.appcompat.view.menu.i
    public boolean h(androidx.appcompat.view.menu.e eVar, androidx.appcompat.view.menu.g gVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public void i(androidx.appcompat.view.menu.i.a aVar) {
        this.f428f = aVar;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean j(androidx.appcompat.view.menu.l lVar) {
        androidx.appcompat.view.menu.i.a aVar = this.f428f;
        if (aVar != null) {
            return aVar.b(lVar);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.i
    public void k(boolean z4) {
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.f431i;
        if (viewGroup == null) {
            return;
        }
        androidx.appcompat.view.menu.e eVar = this.f425c;
        int i5 = 0;
        if (eVar != null) {
            eVar.r();
            java.util.ArrayList<androidx.appcompat.view.menu.g> arrayListE = this.f425c.E();
            int size = arrayListE.size();
            int i6 = 0;
            for (int i7 = 0; i7 < size; i7++) {
                androidx.appcompat.view.menu.g gVar = arrayListE.get(i7);
                if (r(i6, gVar)) {
                    android.view.View childAt = viewGroup.getChildAt(i6);
                    androidx.appcompat.view.menu.g itemData = childAt instanceof androidx.appcompat.view.menu.j.a ? ((androidx.appcompat.view.menu.j.a) childAt).getItemData() : null;
                    android.view.View viewO = o(gVar, childAt, viewGroup);
                    if (gVar != itemData) {
                        viewO.setPressed(false);
                        viewO.jumpDrawablesToCurrentState();
                    }
                    if (viewO != childAt) {
                        f(viewO, i6);
                    }
                    i6++;
                }
            }
            i5 = i6;
        }
        while (i5 < viewGroup.getChildCount()) {
            if (!m(viewGroup, i5)) {
                i5++;
            }
        }
    }

    public androidx.appcompat.view.menu.j.a l(android.view.ViewGroup viewGroup) {
        return (androidx.appcompat.view.menu.j.a) this.f426d.inflate(this.f430h, viewGroup, false);
    }

    public boolean m(android.view.ViewGroup viewGroup, int i5) {
        viewGroup.removeViewAt(i5);
        return true;
    }

    public androidx.appcompat.view.menu.i.a n() {
        return this.f428f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public android.view.View o(androidx.appcompat.view.menu.g gVar, android.view.View view, android.view.ViewGroup viewGroup) {
        androidx.appcompat.view.menu.j.a aVarL = view instanceof androidx.appcompat.view.menu.j.a ? (androidx.appcompat.view.menu.j.a) view : l(viewGroup);
        g(gVar, aVarL);
        return (android.view.View) aVarL;
    }

    public androidx.appcompat.view.menu.j p(android.view.ViewGroup viewGroup) {
        if (this.f431i == null) {
            androidx.appcompat.view.menu.j jVar = (androidx.appcompat.view.menu.j) this.f426d.inflate(this.f429g, viewGroup, false);
            this.f431i = jVar;
            jVar.b(this.f425c);
            k(true);
        }
        return this.f431i;
    }

    public void q(int i5) {
        this.f432o = i5;
    }

    public abstract boolean r(int i5, androidx.appcompat.view.menu.g gVar);
}
