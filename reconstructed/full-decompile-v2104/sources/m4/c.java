package m4;

/* JADX INFO: compiled from: CounterEvent.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c extends java.util.EventObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r4.j f5201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r4.u f5202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f5203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.lang.Object f5204d;

    public c(java.lang.Object obj, r4.j jVar) {
        super(obj);
        this.f5202b = new r4.c();
        this.f5203c = 1L;
        this.f5201a = jVar;
    }

    public r4.u b() {
        return this.f5202b;
    }

    public long c() {
        return this.f5203c;
    }

    public r4.j e() {
        return this.f5201a;
    }

    public void f(long j5) {
        this.f5203c = j5;
    }

    @Override // java.util.EventObject
    public java.lang.String toString() {
        return "CounterEvent{oid=" + this.f5201a + ", currentValue=" + this.f5202b + ", increment=" + this.f5203c + ", index=" + this.f5204d + "} " + super.toString();
    }

    public c(java.lang.Object obj, r4.j jVar, long j5) {
        this(obj, jVar);
        this.f5203c = j5;
    }

    public c(java.lang.Object obj, r4.j jVar, java.lang.Object obj2, long j5) {
        this(obj, jVar, j5);
        this.f5204d = obj2;
    }
}
