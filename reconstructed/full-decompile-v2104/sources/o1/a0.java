package o1;

/* JADX INFO: compiled from: MapConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a0 extends n1.a<java.util.Map<?, ?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.reflect.Type f5288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.reflect.Type f5289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.reflect.Type f5290c;

    public a0(java.lang.reflect.Type type) {
        this(type, e2.d0.o(type, 0), e2.d0.o(type, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(n1.g gVar, java.util.Map map, java.lang.Object obj, java.lang.Object obj2) {
        if (!e2.d0.r(this.f5289b)) {
            obj = gVar.c(this.f5289b, obj);
        }
        if (!e2.d0.r(this.f5290c)) {
            obj2 = gVar.c(this.f5290c, obj2);
        }
        map.put(obj, obj2);
    }

    @Override // n1.a
    public java.lang.Class<java.util.Map<?, ?>> f() {
        return e2.d0.e(this.f5288a);
    }

    @Override // n1.a
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public java.util.Map<?, ?> c(java.lang.Object obj) {
        java.lang.reflect.Type[] typeArrP;
        if (!(obj instanceof java.util.Map)) {
            if (h1.h.j(obj.getClass())) {
                return c(h1.h.e(obj, new java.lang.String[0]));
            }
            throw new java.lang.UnsupportedOperationException(b2.c.i("Unsupport toMap value type: {}", obj.getClass().getName()));
        }
        java.lang.Class<?> cls = obj.getClass();
        if (cls.equals(this.f5288a) && (typeArrP = e2.d0.p(cls)) != null && 2 == typeArrP.length && java.util.Objects.equals(this.f5289b, typeArrP[0]) && java.util.Objects.equals(this.f5290c, typeArrP[1])) {
            return (java.util.Map) obj;
        }
        java.util.Map<?, ?> mapB = a2.i.b(e2.d0.e(this.f5288a));
        q((java.util.Map) obj, mapB);
        return mapB;
    }

    public final void q(java.util.Map<?, ?> map, final java.util.Map<java.lang.Object, java.lang.Object> map2) {
        final n1.g gVarY = n1.g.y();
        map.forEach(new java.util.function.BiConsumer() { // from class: o1.z
            @Override // java.util.function.BiConsumer
            public final void accept(java.lang.Object obj, java.lang.Object obj2) {
                this.f5319a.u(gVarY, map2, obj, obj2);
            }
        });
    }

    public a0(java.lang.reflect.Type type, java.lang.reflect.Type type2, java.lang.reflect.Type type3) {
        this.f5288a = type;
        this.f5289b = type2;
        this.f5290c = type3;
    }
}
