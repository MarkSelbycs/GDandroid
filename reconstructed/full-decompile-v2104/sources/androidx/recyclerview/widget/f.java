package androidx.recyclerview.widget;

/* JADX INFO: compiled from: LayoutState.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2157e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2160h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2161i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2153a = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2158f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2159g = 0;

    public boolean a(androidx.recyclerview.widget.RecyclerView.y yVar) {
        int i5 = this.f2155c;
        return i5 >= 0 && i5 < yVar.b();
    }

    public android.view.View b(androidx.recyclerview.widget.RecyclerView.v vVar) {
        android.view.View viewO = vVar.o(this.f2155c);
        this.f2155c += this.f2156d;
        return viewO;
    }

    public java.lang.String toString() {
        return "LayoutState{mAvailable=" + this.f2154b + ", mCurrentPosition=" + this.f2155c + ", mItemDirection=" + this.f2156d + ", mLayoutDirection=" + this.f2157e + ", mStartLine=" + this.f2158f + ", mEndLine=" + this.f2159g + '}';
    }
}
