package i1;

/* JADX INFO: compiled from: AbsCopier.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b<S, T> implements w1.a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final S f4634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final T f4635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i1.i f4636c;

    public b(S s5, T t5, i1.i iVar) {
        this.f4634a = s5;
        this.f4635b = t5;
        this.f4636c = (i1.i) e2.p.d(iVar, new java.util.function.Supplier() { // from class: i1.a
            @Override // java.util.function.Supplier
            public final java.lang.Object get() {
                return i1.i.e();
            }
        });
    }
}
