package v2;

/* JADX INFO: compiled from: JsonAdapterAnnotationTypeAdapterFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d implements s2.t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u2.c f6462a;

    public d(u2.c cVar) {
        this.f6462a = cVar;
    }

    public static s2.s<?> b(u2.c cVar, s2.e eVar, x2.a<?> aVar, t2.b bVar) {
        s2.s<?> sVarA;
        java.lang.Class<?> clsValue = bVar.value();
        if (s2.s.class.isAssignableFrom(clsValue)) {
            sVarA = (s2.s) cVar.a(x2.a.a(clsValue)).a();
        } else {
            if (!s2.t.class.isAssignableFrom(clsValue)) {
                throw new java.lang.IllegalArgumentException("@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference.");
            }
            sVarA = ((s2.t) cVar.a(x2.a.a(clsValue)).a()).a(eVar, aVar);
        }
        return sVarA != null ? sVarA.a() : sVarA;
    }

    @Override // s2.t
    public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
        t2.b bVar = (t2.b) aVar.c().getAnnotation(t2.b.class);
        if (bVar == null) {
            return null;
        }
        return (s2.s<T>) b(this.f6462a, eVar, aVar, bVar);
    }
}
