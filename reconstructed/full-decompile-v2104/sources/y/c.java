package y;

/* JADX INFO: compiled from: ResourceCursorAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class c extends y.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6841i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f6842o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public android.view.LayoutInflater f6843p;

    @java.lang.Deprecated
    public c(android.content.Context context, int i5, android.database.Cursor cursor, boolean z4) {
        super(context, cursor, z4);
        this.f6842o = i5;
        this.f6841i = i5;
        this.f6843p = (android.view.LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // y.a
    public android.view.View g(android.content.Context context, android.database.Cursor cursor, android.view.ViewGroup viewGroup) {
        return this.f6843p.inflate(this.f6842o, viewGroup, false);
    }

    @Override // y.a
    public android.view.View h(android.content.Context context, android.database.Cursor cursor, android.view.ViewGroup viewGroup) {
        return this.f6843p.inflate(this.f6841i, viewGroup, false);
    }
}
