package androidx.core.widget;

/* JADX INFO: compiled from: ListViewCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i {

    /* JADX INFO: compiled from: ListViewCompat.java */
    public static class a {
        public static boolean a(android.widget.ListView listView, int i5) {
            return listView.canScrollList(i5);
        }

        public static void b(android.widget.ListView listView, int i5) {
            listView.scrollListBy(i5);
        }
    }

    public static boolean a(android.widget.ListView listView, int i5) {
        return androidx.core.widget.i.a.a(listView, i5);
    }

    public static void b(android.widget.ListView listView, int i5) {
        androidx.core.widget.i.a.b(listView, i5);
    }
}
