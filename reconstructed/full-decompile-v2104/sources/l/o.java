package l;

/* JADX INFO: compiled from: ResolutionNode.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.HashSet<l.o> f5107a = new java.util.HashSet<>(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5108b = 0;

    public void a(l.o oVar) {
        this.f5107a.add(oVar);
    }

    public void b() {
        this.f5108b = 1;
        java.util.Iterator<l.o> it = this.f5107a.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
    }

    public void c() {
        this.f5108b = 0;
        java.util.Iterator<l.o> it = this.f5107a.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    public boolean d() {
        return this.f5108b == 1;
    }

    public void e() {
        this.f5108b = 0;
        this.f5107a.clear();
    }

    public void f() {
    }
}
