package androidx.appcompat.view.menu;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class ExpandedMenuView extends android.widget.ListView implements androidx.appcompat.view.menu.e.b, androidx.appcompat.view.menu.j, android.widget.AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f402c = {android.R.attr.background, android.R.attr.divider};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f404b;

    public ExpandedMenuView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.listViewStyle);
    }

    @Override // androidx.appcompat.view.menu.e.b
    public boolean a(androidx.appcompat.view.menu.g gVar) {
        return this.f403a.L(gVar, 0);
    }

    @Override // androidx.appcompat.view.menu.j
    public void b(androidx.appcompat.view.menu.e eVar) {
        this.f403a = eVar;
    }

    public int getWindowAnimations() {
        return this.f404b;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(android.widget.AdapterView adapterView, android.view.View view, int i5, long j5) {
        a((androidx.appcompat.view.menu.g) getAdapter().getItem(i5));
    }

    public ExpandedMenuView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(context, attributeSet, f402c, i5, 0);
        if (d0VarT.q(0)) {
            setBackgroundDrawable(d0VarT.f(0));
        }
        if (d0VarT.q(1)) {
            setDivider(d0VarT.f(1));
        }
        d0VarT.u();
    }
}
