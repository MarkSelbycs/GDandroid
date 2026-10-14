package a3;

/* JADX INFO: compiled from: LazyJVM.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k<T> implements a3.d<T>, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l3.a<? extends T> f118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile java.lang.Object f119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Object f120c;

    public k(l3.a<? extends T> aVar, java.lang.Object obj) {
        m3.k.e(aVar, "initializer");
        this.f118a = aVar;
        this.f119b = a3.m.f121a;
        this.f120c = obj == null ? this : obj;
    }

    @Override // a3.d
    public boolean b() {
        return this.f119b != a3.m.f121a;
    }

    @Override // a3.d
    public T getValue() {
        T tC;
        T t5 = (T) this.f119b;
        a3.m mVar = a3.m.f121a;
        if (t5 != mVar) {
            return t5;
        }
        synchronized (this.f120c) {
            tC = (T) this.f119b;
            if (tC == mVar) {
                l3.a<? extends T> aVar = this.f118a;
                m3.k.b(aVar);
                tC = aVar.c();
                this.f119b = tC;
                this.f118a = null;
            }
        }
        return tC;
    }

    public java.lang.String toString() {
        return b() ? java.lang.String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    public /* synthetic */ k(l3.a aVar, java.lang.Object obj, int i5, m3.g gVar) {
        this(aVar, (i5 & 2) != 0 ? null : obj);
    }
}
