package s4;

/* JADX INFO: compiled from: AbstractTransportMapping.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a<A extends r4.b> implements k4.s<A> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.List<s4.c> f6090a = new java.util.ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6091b = 65535;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6092c = true;

    @Override // k4.s
    public int d() {
        return this.f6091b;
    }

    @Override // k4.s
    public synchronized void e(s4.c cVar) {
        if (!this.f6090a.contains(cVar)) {
            java.util.ArrayList arrayList = new java.util.ArrayList(this.f6090a);
            arrayList.add(cVar);
            this.f6090a = arrayList;
        }
    }

    public void g(r4.b bVar, java.nio.ByteBuffer byteBuffer, k4.t tVar) {
        java.util.List<s4.c> list = this.f6090a;
        if (list != null) {
            java.util.Iterator<s4.c> it = list.iterator();
            while (it.hasNext()) {
                it.next().a(this, bVar, byteBuffer, tVar);
            }
        }
    }

    public boolean h() {
        return this.f6092c;
    }
}
