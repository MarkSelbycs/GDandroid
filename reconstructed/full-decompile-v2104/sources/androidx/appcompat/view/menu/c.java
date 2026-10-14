package androidx.appcompat.view.menu;

/* JADX INFO: compiled from: ListMenuPresenter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c implements androidx.appcompat.view.menu.i, android.widget.AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.content.Context f463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.view.LayoutInflater f464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f465c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.appcompat.view.menu.ExpandedMenuView f466d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f467e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f468f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f469g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public androidx.appcompat.view.menu.i.a f470h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public androidx.appcompat.view.menu.c.a f471i;

    /* JADX INFO: compiled from: ListMenuPresenter.java */
    public class a extends android.widget.BaseAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f472a = -1;

        public a() {
            a();
        }

        public void a() {
            androidx.appcompat.view.menu.g gVarV = androidx.appcompat.view.menu.c.this.f465c.v();
            if (gVarV != null) {
                java.util.ArrayList<androidx.appcompat.view.menu.g> arrayListZ = androidx.appcompat.view.menu.c.this.f465c.z();
                int size = arrayListZ.size();
                for (int i5 = 0; i5 < size; i5++) {
                    if (arrayListZ.get(i5) == gVarV) {
                        this.f472a = i5;
                        return;
                    }
                }
            }
            this.f472a = -1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.appcompat.view.menu.g getItem(int i5) {
            java.util.ArrayList<androidx.appcompat.view.menu.g> arrayListZ = androidx.appcompat.view.menu.c.this.f465c.z();
            int i6 = i5 + androidx.appcompat.view.menu.c.this.f467e;
            int i7 = this.f472a;
            if (i7 >= 0 && i6 >= i7) {
                i6++;
            }
            return arrayListZ.get(i6);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = androidx.appcompat.view.menu.c.this.f465c.z().size() - androidx.appcompat.view.menu.c.this.f467e;
            return this.f472a < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i5) {
            return i5;
        }

        @Override // android.widget.Adapter
        public android.view.View getView(int i5, android.view.View view, android.view.ViewGroup viewGroup) {
            if (view == null) {
                androidx.appcompat.view.menu.c cVar = androidx.appcompat.view.menu.c.this;
                view = cVar.f464b.inflate(cVar.f469g, viewGroup, false);
            }
            ((androidx.appcompat.view.menu.j.a) view).d(getItem(i5), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public c(android.content.Context context, int i5) {
        this(i5, 0);
        this.f463a = context;
        this.f464b = android.view.LayoutInflater.from(context);
    }

    @Override // androidx.appcompat.view.menu.i
    public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
        androidx.appcompat.view.menu.i.a aVar = this.f470h;
        if (aVar != null) {
            aVar.a(eVar, z4);
        }
    }

    public android.widget.ListAdapter b() {
        if (this.f471i == null) {
            this.f471i = new androidx.appcompat.view.menu.c.a();
        }
        return this.f471i;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public void d(android.content.Context context, androidx.appcompat.view.menu.e eVar) {
        if (this.f468f != 0) {
            android.view.ContextThemeWrapper contextThemeWrapper = new android.view.ContextThemeWrapper(context, this.f468f);
            this.f463a = contextThemeWrapper;
            this.f464b = android.view.LayoutInflater.from(contextThemeWrapper);
        } else if (this.f463a != null) {
            this.f463a = context;
            if (this.f464b == null) {
                this.f464b = android.view.LayoutInflater.from(context);
            }
        }
        this.f465c = eVar;
        androidx.appcompat.view.menu.c.a aVar = this.f471i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean e(androidx.appcompat.view.menu.e eVar, androidx.appcompat.view.menu.g gVar) {
        return false;
    }

    public androidx.appcompat.view.menu.j f(android.view.ViewGroup viewGroup) {
        if (this.f466d == null) {
            this.f466d = (androidx.appcompat.view.menu.ExpandedMenuView) this.f464b.inflate(androidx.appcompat.R.layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.f471i == null) {
                this.f471i = new androidx.appcompat.view.menu.c.a();
            }
            this.f466d.setAdapter((android.widget.ListAdapter) this.f471i);
            this.f466d.setOnItemClickListener(this);
        }
        return this.f466d;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean h(androidx.appcompat.view.menu.e eVar, androidx.appcompat.view.menu.g gVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public void i(androidx.appcompat.view.menu.i.a aVar) {
        this.f470h = aVar;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean j(androidx.appcompat.view.menu.l lVar) {
        if (!lVar.hasVisibleItems()) {
            return false;
        }
        new androidx.appcompat.view.menu.f(lVar).d(null);
        androidx.appcompat.view.menu.i.a aVar = this.f470h;
        if (aVar == null) {
            return true;
        }
        aVar.b(lVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.i
    public void k(boolean z4) {
        androidx.appcompat.view.menu.c.a aVar = this.f471i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i5, long j5) {
        this.f465c.M(this.f471i.getItem(i5), this, 0);
    }

    public c(int i5, int i6) {
        this.f469g = i5;
        this.f468f = i6;
    }
}
