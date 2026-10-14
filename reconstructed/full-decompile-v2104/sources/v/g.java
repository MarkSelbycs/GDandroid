package v;

/* JADX INFO: compiled from: Pools.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g<T> extends v.f<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Object f6383c;

    public g(int i5) {
        super(i5);
        this.f6383c = new java.lang.Object();
    }

    @Override // v.f, v.e
    public boolean a(T t5) {
        boolean zA;
        synchronized (this.f6383c) {
            zA = super.a(t5);
        }
        return zA;
    }

    @Override // v.f, v.e
    public T b() {
        T t5;
        synchronized (this.f6383c) {
            t5 = (T) super.b();
        }
        return t5;
    }
}
