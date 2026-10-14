package e;

/* JADX INFO: compiled from: SupportActionModeWrapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f extends android.view.ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f3987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e.b f3988b;

    /* JADX INFO: compiled from: SupportActionModeWrapper.java */
    public static class a implements e.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.view.ActionMode.Callback f3989a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final android.content.Context f3990b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.util.ArrayList<e.f> f3991c = new java.util.ArrayList<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final j.g<android.view.Menu, android.view.Menu> f3992d = new j.g<>();

        public a(android.content.Context context, android.view.ActionMode.Callback callback) {
            this.f3990b = context;
            this.f3989a = callback;
        }

        @Override // e.b.a
        public boolean a(e.b bVar, android.view.Menu menu) {
            return this.f3989a.onPrepareActionMode(e(bVar), f(menu));
        }

        @Override // e.b.a
        public boolean b(e.b bVar, android.view.Menu menu) {
            return this.f3989a.onCreateActionMode(e(bVar), f(menu));
        }

        @Override // e.b.a
        public void c(e.b bVar) {
            this.f3989a.onDestroyActionMode(e(bVar));
        }

        @Override // e.b.a
        public boolean d(e.b bVar, android.view.MenuItem menuItem) {
            return this.f3989a.onActionItemClicked(e(bVar), f.g.b(this.f3990b, (q.b) menuItem));
        }

        public android.view.ActionMode e(e.b bVar) {
            int size = this.f3991c.size();
            for (int i5 = 0; i5 < size; i5++) {
                e.f fVar = this.f3991c.get(i5);
                if (fVar != null && fVar.f3988b == bVar) {
                    return fVar;
                }
            }
            e.f fVar2 = new e.f(this.f3990b, bVar);
            this.f3991c.add(fVar2);
            return fVar2;
        }

        public final android.view.Menu f(android.view.Menu menu) {
            android.view.Menu menu2 = this.f3992d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            android.view.Menu menuA = f.g.a(this.f3990b, (q.a) menu);
            this.f3992d.put(menu, menuA);
            return menuA;
        }
    }

    public f(android.content.Context context, e.b bVar) {
        this.f3987a = context;
        this.f3988b = bVar;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f3988b.c();
    }

    @Override // android.view.ActionMode
    public android.view.View getCustomView() {
        return this.f3988b.d();
    }

    @Override // android.view.ActionMode
    public android.view.Menu getMenu() {
        return f.g.a(this.f3987a, (q.a) this.f3988b.e());
    }

    @Override // android.view.ActionMode
    public android.view.MenuInflater getMenuInflater() {
        return this.f3988b.f();
    }

    @Override // android.view.ActionMode
    public java.lang.CharSequence getSubtitle() {
        return this.f3988b.g();
    }

    @Override // android.view.ActionMode
    public java.lang.Object getTag() {
        return this.f3988b.h();
    }

    @Override // android.view.ActionMode
    public java.lang.CharSequence getTitle() {
        return this.f3988b.i();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f3988b.j();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f3988b.k();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f3988b.l();
    }

    @Override // android.view.ActionMode
    public void setCustomView(android.view.View view) {
        this.f3988b.m(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(java.lang.CharSequence charSequence) {
        this.f3988b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(java.lang.Object obj) {
        this.f3988b.p(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(java.lang.CharSequence charSequence) {
        this.f3988b.r(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z4) {
        this.f3988b.s(z4);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i5) {
        this.f3988b.n(i5);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i5) {
        this.f3988b.q(i5);
    }
}
