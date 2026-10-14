package n0;

/* JADX INFO: compiled from: PagerAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.database.DataSetObservable f5233a = new android.database.DataSetObservable();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.database.DataSetObserver f5234b;

    @java.lang.Deprecated
    public void a(android.view.View view, int i5, java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void b(android.view.ViewGroup viewGroup, int i5, java.lang.Object obj) {
        a(viewGroup, i5, obj);
    }

    @java.lang.Deprecated
    public void c(android.view.View view) {
    }

    public void d(android.view.ViewGroup viewGroup) {
        c(viewGroup);
    }

    public abstract int e();

    public int f(java.lang.Object obj) {
        return -1;
    }

    public java.lang.CharSequence g(int i5) {
        return null;
    }

    public float h(int i5) {
        return 1.0f;
    }

    @java.lang.Deprecated
    public java.lang.Object i(android.view.View view, int i5) {
        throw new java.lang.UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public java.lang.Object j(android.view.ViewGroup viewGroup, int i5) {
        return i(viewGroup, i5);
    }

    public abstract boolean k(android.view.View view, java.lang.Object obj);

    public void l(android.database.DataSetObserver dataSetObserver) {
        this.f5233a.registerObserver(dataSetObserver);
    }

    public void m(android.os.Parcelable parcelable, java.lang.ClassLoader classLoader) {
    }

    public android.os.Parcelable n() {
        return null;
    }

    @java.lang.Deprecated
    public void o(android.view.View view, int i5, java.lang.Object obj) {
    }

    public void p(android.view.ViewGroup viewGroup, int i5, java.lang.Object obj) {
        o(viewGroup, i5, obj);
    }

    public void q(android.database.DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f5234b = dataSetObserver;
        }
    }

    @java.lang.Deprecated
    public void r(android.view.View view) {
    }

    public void s(android.view.ViewGroup viewGroup) {
        r(viewGroup);
    }

    public void t(android.database.DataSetObserver dataSetObserver) {
        this.f5233a.unregisterObserver(dataSetObserver);
    }
}
