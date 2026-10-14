package y;

/* JADX INFO: compiled from: CursorAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a extends android.widget.BaseAdapter implements android.widget.Filterable, y.b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f6830a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f6831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.database.Cursor f6832c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.content.Context f6833d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6834e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public y.a.C0107a f6835f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.database.DataSetObserver f6836g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public y.b f6837h;

    /* JADX INFO: renamed from: y.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CursorAdapter.java */
    public class C0107a extends android.database.ContentObserver {
        public C0107a() {
            super(new android.os.Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z4) {
            y.a.this.i();
        }
    }

    /* JADX INFO: compiled from: CursorAdapter.java */
    public class b extends android.database.DataSetObserver {
        public b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            y.a aVar = y.a.this;
            aVar.f6830a = true;
            aVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            y.a aVar = y.a.this;
            aVar.f6830a = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(android.content.Context context, android.database.Cursor cursor, boolean z4) {
        f(context, cursor, z4 ? 1 : 2);
    }

    public abstract java.lang.CharSequence a(android.database.Cursor cursor);

    public void b(android.database.Cursor cursor) {
        android.database.Cursor cursorJ = j(cursor);
        if (cursorJ != null) {
            cursorJ.close();
        }
    }

    @Override // y.b.a
    public android.database.Cursor c() {
        return this.f6832c;
    }

    public abstract void e(android.view.View view, android.content.Context context, android.database.Cursor cursor);

    public void f(android.content.Context context, android.database.Cursor cursor, int i5) {
        if ((i5 & 1) == 1) {
            i5 |= 2;
            this.f6831b = true;
        } else {
            this.f6831b = false;
        }
        boolean z4 = cursor != null;
        this.f6832c = cursor;
        this.f6830a = z4;
        this.f6833d = context;
        this.f6834e = z4 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i5 & 2) == 2) {
            this.f6835f = new y.a.C0107a();
            this.f6836g = new y.a.b();
        } else {
            this.f6835f = null;
            this.f6836g = null;
        }
        if (z4) {
            y.a.C0107a c0107a = this.f6835f;
            if (c0107a != null) {
                cursor.registerContentObserver(c0107a);
            }
            android.database.DataSetObserver dataSetObserver = this.f6836g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract android.view.View g(android.content.Context context, android.database.Cursor cursor, android.view.ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        android.database.Cursor cursor;
        if (!this.f6830a || (cursor = this.f6832c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public android.view.View getDropDownView(int i5, android.view.View view, android.view.ViewGroup viewGroup) {
        if (!this.f6830a) {
            return null;
        }
        this.f6832c.moveToPosition(i5);
        if (view == null) {
            view = g(this.f6833d, this.f6832c, viewGroup);
        }
        e(view, this.f6833d, this.f6832c);
        return view;
    }

    @Override // android.widget.Filterable
    public android.widget.Filter getFilter() {
        if (this.f6837h == null) {
            this.f6837h = new y.b(this);
        }
        return this.f6837h;
    }

    @Override // android.widget.Adapter
    public java.lang.Object getItem(int i5) {
        android.database.Cursor cursor;
        if (!this.f6830a || (cursor = this.f6832c) == null) {
            return null;
        }
        cursor.moveToPosition(i5);
        return this.f6832c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i5) {
        android.database.Cursor cursor;
        if (this.f6830a && (cursor = this.f6832c) != null && cursor.moveToPosition(i5)) {
            return this.f6832c.getLong(this.f6834e);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public android.view.View getView(int i5, android.view.View view, android.view.ViewGroup viewGroup) {
        if (!this.f6830a) {
            throw new java.lang.IllegalStateException("this should only be called when the cursor is valid");
        }
        if (this.f6832c.moveToPosition(i5)) {
            if (view == null) {
                view = h(this.f6833d, this.f6832c, viewGroup);
            }
            e(view, this.f6833d, this.f6832c);
            return view;
        }
        throw new java.lang.IllegalStateException("couldn't move cursor to position " + i5);
    }

    public abstract android.view.View h(android.content.Context context, android.database.Cursor cursor, android.view.ViewGroup viewGroup);

    public void i() {
        android.database.Cursor cursor;
        if (!this.f6831b || (cursor = this.f6832c) == null || cursor.isClosed()) {
            return;
        }
        this.f6830a = this.f6832c.requery();
    }

    public android.database.Cursor j(android.database.Cursor cursor) {
        android.database.Cursor cursor2 = this.f6832c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            y.a.C0107a c0107a = this.f6835f;
            if (c0107a != null) {
                cursor2.unregisterContentObserver(c0107a);
            }
            android.database.DataSetObserver dataSetObserver = this.f6836g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f6832c = cursor;
        if (cursor != null) {
            y.a.C0107a c0107a2 = this.f6835f;
            if (c0107a2 != null) {
                cursor.registerContentObserver(c0107a2);
            }
            android.database.DataSetObserver dataSetObserver2 = this.f6836g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f6834e = cursor.getColumnIndexOrThrow("_id");
            this.f6830a = true;
            notifyDataSetChanged();
        } else {
            this.f6834e = -1;
            this.f6830a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }
}
