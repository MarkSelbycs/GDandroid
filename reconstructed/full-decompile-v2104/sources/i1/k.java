package i1;

/* JADX INFO: compiled from: MapToBeanCopier.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k<T> extends i1.b<java.util.Map<?, ?>, T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.reflect.Type f4657d;

    public k(java.util.Map<?, ?> map, T t5, java.lang.reflect.Type type, i1.i iVar) {
        super(map, t5, iVar);
        if ((map instanceof a2.j) && (((a2.j) map).x() instanceof a2.c)) {
            iVar.u(true);
        }
        this.f4657d = type;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(java.util.Map map, java.lang.Object obj, java.lang.Object obj2) {
        java.lang.String strF;
        h1.j jVarC;
        if (obj == null || (strF = this.f4636c.f(obj.toString())) == null || !this.f4636c.F(strF) || (jVarC = c(map, strF)) == null || !jVarC.m(this.f4636c.f4651h)) {
            return;
        }
        java.lang.String strE = jVarC.e();
        if (this.f4636c.H(jVarC.c(), obj2)) {
            java.lang.Object objH = this.f4636c.h(strE, this.f4636c.c(e2.d0.b(this.f4657d, jVarC.f()), obj2));
            T t5 = this.f4635b;
            i1.i iVar = this.f4636c;
            jVarC.o(t5, objH, iVar.f4645b, iVar.f4647d, iVar.f4652i);
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
        ((java.util.Map) this.f4634a).forEach(new java.util.function.BiConsumer() { // from class: i1.j
            @Override // java.util.function.BiConsumer
            public final void accept(java.lang.Object obj, java.lang.Object obj2) {
                this.f4655a.d(mapE, obj, obj2);
            }
        });
        return this.f4635b;
    }

    public final h1.j c(java.util.Map<java.lang.String, h1.j> map, java.lang.String str) {
        h1.j jVar = map.get(str);
        return jVar != null ? jVar : map.get(b2.c.U(str));
    }
}
