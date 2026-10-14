package androidx.appcompat.view.menu;

/* JADX INFO: compiled from: MenuAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d extends android.widget.BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f475b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f477d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final android.view.LayoutInflater f478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f479f;

    public d(androidx.appcompat.view.menu.e eVar, android.view.LayoutInflater layoutInflater, boolean z4, int i5) {
        this.f477d = z4;
        this.f478e = layoutInflater;
        this.f474a = eVar;
        this.f479f = i5;
        a();
    }

    public void a() {
        androidx.appcompat.view.menu.g gVarV = this.f474a.v();
        if (gVarV != null) {
            java.util.ArrayList<androidx.appcompat.view.menu.g> arrayListZ = this.f474a.z();
            int size = arrayListZ.size();
            for (int i5 = 0; i5 < size; i5++) {
                if (arrayListZ.get(i5) == gVarV) {
                    this.f475b = i5;
                    return;
                }
            }
        }
        this.f475b = -1;
    }

    public androidx.appcompat.view.menu.e b() {
        return this.f474a;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.view.menu.g getItem(int i5) {
        java.util.ArrayList<androidx.appcompat.view.menu.g> arrayListZ = this.f477d ? this.f474a.z() : this.f474a.E();
        int i6 = this.f475b;
        if (i6 >= 0 && i5 >= i6) {
            i5++;
        }
        return arrayListZ.get(i5);
    }

    public void d(boolean z4) {
        this.f476c = z4;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        java.util.ArrayList<androidx.appcompat.view.menu.g> arrayListZ = this.f477d ? this.f474a.z() : this.f474a.E();
        return this.f475b < 0 ? arrayListZ.size() : arrayListZ.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i5) {
        return i5;
    }

    @Override // android.widget.Adapter
    public android.view.View getView(int i5, android.view.View view, android.view.ViewGroup viewGroup) {
        if (view == null) {
            view = this.f478e.inflate(this.f479f, viewGroup, false);
        }
        int groupId = getItem(i5).getGroupId();
        int i6 = i5 - 1;
        androidx.appcompat.view.menu.ListMenuItemView listMenuItemView = (androidx.appcompat.view.menu.ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f474a.F() && groupId != (i6 >= 0 ? getItem(i6).getGroupId() : groupId));
        androidx.appcompat.view.menu.j.a aVar = (androidx.appcompat.view.menu.j.a) view;
        if (this.f476c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.d(getItem(i5), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
