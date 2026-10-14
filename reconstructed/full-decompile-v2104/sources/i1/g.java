package i1;

/* JADX INFO: compiled from: BeanToMapCopier.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g extends i1.b<java.lang.Object, java.util.Map> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.reflect.Type f4642d;

    public g(java.lang.Object obj, java.util.Map map, java.lang.reflect.Type type, i1.i iVar) {
        super(obj, map, iVar);
        this.f4642d = type;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(java.lang.String str, h1.j jVar) {
        java.lang.String strF;
        if (str == null || !jVar.j(this.f4636c.f4651h) || (strF = this.f4636c.f(str)) == null || !this.f4636c.F(strF)) {
            return;
        }
        java.lang.Object objG = jVar.g(this.f4634a);
        if (this.f4636c.H(jVar.c(), objG)) {
            java.lang.reflect.Type[] typeArrP = e2.d0.p(this.f4642d);
            if (typeArrP != null) {
                objG = this.f4636c.h(strF, this.f4636c.c(typeArrP[1], objG));
            }
            if (objG == null && this.f4636c.f4645b) {
                return;
            }
            ((java.util.Map) this.f4635b).put(strF, objG);
        }
    }

    @Override // w1.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public java.util.Map b() throws java.lang.Throwable {
        java.lang.Class<?> cls = this.f4634a.getClass();
        java.lang.Class<?> cls2 = this.f4636c.f4644a;
        if (cls2 != null) {
            v1.e.e(cls2.isInstance(this.f4634a), "Source class [{}] not assignable to Editable class [{}]", cls.getName(), this.f4636c.f4644a.getName());
            cls = this.f4636c.f4644a;
        }
        h1.h.f(cls).e(this.f4636c.f4648e).forEach(new java.util.function.BiConsumer() { // from class: i1.f
            @Override // java.util.function.BiConsumer
            public final void accept(java.lang.Object obj, java.lang.Object obj2) {
                this.f4641a.d((java.lang.String) obj, (h1.j) obj2);
            }
        });
        return (java.util.Map) this.f4635b;
    }
}
