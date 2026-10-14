package i1;

/* JADX INFO: compiled from: MapToMapCopier.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m extends i1.b<java.util.Map, java.util.Map> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.reflect.Type f4659d;

    public m(java.util.Map map, java.util.Map map2, java.lang.reflect.Type type, i1.i iVar) {
        super(map, map2, iVar);
        this.f4659d = type;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.String strF;
        if (obj == null) {
            return;
        }
        i1.i iVar = this.f4636c;
        if ((true == iVar.f4645b && obj2 == null) || (strF = iVar.f(obj.toString())) == null || !this.f4636c.F(strF)) {
            return;
        }
        java.lang.Object obj3 = ((java.util.Map) this.f4635b).get(strF);
        if (this.f4636c.f4652i || obj3 == null) {
            java.lang.reflect.Type[] typeArrP = e2.d0.p(this.f4659d);
            if (typeArrP != null) {
                obj2 = this.f4636c.h(strF, this.f4636c.c(typeArrP[1], obj2));
            }
            ((java.util.Map) this.f4635b).put(strF, obj2);
        }
    }

    @Override // w1.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public java.util.Map b() {
        ((java.util.Map) this.f4634a).forEach(new java.util.function.BiConsumer() { // from class: i1.l
            @Override // java.util.function.BiConsumer
            public final void accept(java.lang.Object obj, java.lang.Object obj2) {
                this.f4658a.d(obj, obj2);
            }
        });
        return (java.util.Map) this.f4635b;
    }
}
