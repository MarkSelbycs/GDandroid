package i1;

/* JADX INFO: compiled from: BeanToBeanCopier.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e<S, T> extends i1.b<S, T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.reflect.Type f4640d;

    public e(S s5, T t5, java.lang.reflect.Type type, i1.i iVar) {
        super(s5, t5, iVar);
        this.f4640d = type;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(java.util.Map map, java.lang.String str, h1.j jVar) {
        java.lang.String strF;
        h1.j jVar2;
        if (str == null || !jVar.j(this.f4636c.f4651h) || (strF = this.f4636c.f(str)) == null || !this.f4636c.F(strF) || (jVar2 = (h1.j) map.get(strF)) == null || !jVar2.m(this.f4636c.f4651h)) {
            return;
        }
        java.lang.Object objG = jVar.g(this.f4634a);
        if (this.f4636c.H(jVar.c(), objG)) {
            java.lang.Object objH = this.f4636c.h(strF, this.f4636c.c(e2.d0.b(this.f4640d, jVar2.f()), objG));
            T t5 = this.f4635b;
            i1.i iVar = this.f4636c;
            jVar2.o(t5, objH, iVar.f4645b, iVar.f4647d, iVar.f4652i);
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
        final java.util.Map<java.lang.String, h1.j> mapE = h1.h.f(cls).e(this.f4636c.f4648e);
        h1.h.f(this.f4634a.getClass()).e(this.f4636c.f4648e).forEach(new java.util.function.BiConsumer() { // from class: i1.d
            @Override // java.util.function.BiConsumer
            public final void accept(java.lang.Object obj, java.lang.Object obj2) {
                this.f4638a.c(mapE, (java.lang.String) obj, (h1.j) obj2);
            }
        });
        return this.f4635b;
    }
}
