package h1;

/* JADX INFO: compiled from: BeanDescCache.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum d {
    INSTANCE;


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a2.b0<java.lang.Class<?>, h1.b> f4563a = new a2.b0<>();

    d() {
    }

    public static /* synthetic */ h1.b f(x1.a aVar, java.lang.Class cls) {
        return (h1.b) aVar.t();
    }

    public h1.b e(java.lang.Class<?> cls, final x1.a<h1.b> aVar) {
        return this.f4563a.computeIfAbsent(cls, new java.util.function.Function() { // from class: h1.c
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return h1.d.f(aVar, (java.lang.Class) obj);
            }
        });
    }
}
