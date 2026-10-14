package f;

/* JADX INFO: compiled from: MenuPopup.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class f implements f.i, androidx.appcompat.view.menu.i, android.widget.AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.graphics.Rect f4171a;

    public static int o(android.widget.ListAdapter listAdapter, android.view.ViewGroup viewGroup, android.content.Context context, int i5) {
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i6 = 0;
        int i7 = 0;
        android.view.View view = null;
        for (int i8 = 0; i8 < count; i8++) {
            int itemViewType = listAdapter.getItemViewType(i8);
            if (itemViewType != i7) {
                view = null;
                i7 = itemViewType;
            }
            if (viewGroup == null) {
                viewGroup = new android.widget.FrameLayout(context);
            }
            view = listAdapter.getView(i8, view, viewGroup);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i5) {
                return i5;
            }
            if (measuredWidth > i6) {
                i6 = measuredWidth;
            }
        }
        return i6;
    }

    public static boolean x(androidx.appcompat.view.menu.e eVar) {
        int size = eVar.size();
        for (int i5 = 0; i5 < size; i5++) {
            android.view.MenuItem item = eVar.getItem(i5);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    public static androidx.appcompat.view.menu.d y(android.widget.ListAdapter listAdapter) {
        return listAdapter instanceof android.widget.HeaderViewListAdapter ? (androidx.appcompat.view.menu.d) ((android.widget.HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (androidx.appcompat.view.menu.d) listAdapter;
    }

    @Override // androidx.appcompat.view.menu.i
    public void d(android.content.Context context, androidx.appcompat.view.menu.e eVar) {
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean e(androidx.appcompat.view.menu.e eVar, androidx.appcompat.view.menu.g gVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean h(androidx.appcompat.view.menu.e eVar, androidx.appcompat.view.menu.g gVar) {
        return false;
    }

    public abstract void l(androidx.appcompat.view.menu.e eVar);

    public boolean m() {
        return true;
    }

    public android.graphics.Rect n() {
        return this.f4171a;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i5, long j5) {
        android.widget.ListAdapter listAdapter = (android.widget.ListAdapter) adapterView.getAdapter();
        y(listAdapter).f474a.M((android.view.MenuItem) listAdapter.getItem(i5), this, m() ? 0 : 4);
    }

    public abstract void p(android.view.View view);

    public void q(android.graphics.Rect rect) {
        this.f4171a = rect;
    }

    public abstract void r(boolean z4);

    public abstract void s(int i5);

    public abstract void t(int i5);

    public abstract void u(android.widget.PopupWindow.OnDismissListener onDismissListener);

    public abstract void v(boolean z4);

    public abstract void w(int i5);
}
