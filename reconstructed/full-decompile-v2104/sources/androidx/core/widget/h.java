package androidx.core.widget;

/* JADX INFO: compiled from: ListViewAutoScrollHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h extends androidx.core.widget.a {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final android.widget.ListView f1449x;

    public h(android.widget.ListView listView) {
        super(listView);
        this.f1449x = listView;
    }

    @Override // androidx.core.widget.a
    public boolean a(int i5) {
        return false;
    }

    @Override // androidx.core.widget.a
    public boolean b(int i5) {
        android.widget.ListView listView = this.f1449x;
        int count = listView.getCount();
        if (count == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int i6 = firstVisiblePosition + childCount;
        if (i5 > 0) {
            if (i6 >= count && listView.getChildAt(childCount - 1).getBottom() <= listView.getHeight()) {
                return false;
            }
        } else {
            if (i5 >= 0) {
                return false;
            }
            if (firstVisiblePosition <= 0 && listView.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.core.widget.a
    public void j(int i5, int i6) {
        androidx.core.widget.i.b(this.f1449x, i6);
    }
}
