package i1;

/* JADX INFO: compiled from: ValueProviderToBeanCopier.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p<T> extends i1.b<i1.n<java.lang.String>, T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.reflect.Type f4661d;

    public p(i1.n<java.lang.String> nVar, T t5, java.lang.reflect.Type type, i1.i iVar) {
        super(nVar, t5, iVar);
        this.f4661d = type;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(java.lang.String str, h1.j jVar) {
        java.lang.String strF;
        if (str != null && (strF = this.f4636c.f(str)) != null && ((i1.n) this.f4634a).containsKey(strF) && this.f4636c.F(strF) && jVar != null && jVar.m(this.f4636c.f4651h)) {
            java.lang.Object objA = ((i1.n) this.f4634a).a(strF, e2.d0.b(this.f4661d, jVar.f()));
            if (this.f4636c.H(jVar.c(), objA)) {
                java.lang.Object objH = this.f4636c.h(strF, objA);
                T t5 = this.f4635b;
                i1.i iVar = this.f4636c;
                jVar.o(t5, objH, iVar.f4645b, iVar.f4647d, iVar.f4652i);
            }
        }
    }

    @Override // w1.a
    public T b() throws java.lang.Throwable {
        java.lang.Class<?> cls = this.f4635b.getClass();
        java.lang.Class<?> cls2 = this.f4636c.f4644a;
        if (cls2 != null) {
            v1.e.e(cls2.isInstance(this.f4635b), "Target class [{}] not assignable to Editable class [{}]", cls.getName(), this.f4636c.f4644a.getName());
            cls = this.f4636c.f4644a;
        }
        h1.h.f(cls).e(this.f4636c.f4648e).forEach(new java.util.function.BiConsumer() { // from class: i1.o
            @Override // java.util.function.BiConsumer
            public final void accept(java.lang.Object obj, java.lang.Object obj2) {
                this.f4660a.c((java.lang.String) obj, (h1.j) obj2);
            }
        });
        return this.f4635b;
    }
}
