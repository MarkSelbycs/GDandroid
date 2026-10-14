package y;

/* JADX INFO: compiled from: CursorFilter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends android.widget.Filter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public y.b.a f6840a;

    /* JADX INFO: compiled from: CursorFilter.java */
    public interface a {
        java.lang.CharSequence a(android.database.Cursor cursor);

        void b(android.database.Cursor cursor);

        android.database.Cursor c();

        android.database.Cursor d(java.lang.CharSequence charSequence);
    }

    public b(y.b.a aVar) {
        this.f6840a = aVar;
    }

    @Override // android.widget.Filter
    public java.lang.CharSequence convertResultToString(java.lang.Object obj) {
        return this.f6840a.a((android.database.Cursor) obj);
    }

    @Override // android.widget.Filter
    public android.widget.Filter.FilterResults performFiltering(java.lang.CharSequence charSequence) {
        android.database.Cursor cursorD = this.f6840a.d(charSequence);
        android.widget.Filter.FilterResults filterResults = new android.widget.Filter.FilterResults();
        if (cursorD != null) {
            filterResults.count = cursorD.getCount();
            filterResults.values = cursorD;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    public void publishResults(java.lang.CharSequence charSequence, android.widget.Filter.FilterResults filterResults) {
        android.database.Cursor cursorC = this.f6840a.c();
        java.lang.Object obj = filterResults.values;
        if (obj == null || obj == cursorC) {
            return;
        }
        this.f6840a.b((android.database.Cursor) obj);
    }
}
