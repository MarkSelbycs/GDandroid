package androidx.lifecycle;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
class CompositeGeneratedAdaptersObserver implements androidx.lifecycle.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.c[] f1744a;

    @Override // androidx.lifecycle.e
    public void d(androidx.lifecycle.g gVar, androidx.lifecycle.d.b bVar) {
        androidx.lifecycle.j jVar = new androidx.lifecycle.j();
        for (androidx.lifecycle.c cVar : this.f1744a) {
            cVar.a(gVar, bVar, false, jVar);
        }
        for (androidx.lifecycle.c cVar2 : this.f1744a) {
            cVar2.a(gVar, bVar, true, jVar);
        }
    }
}
