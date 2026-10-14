package o4;

/* JADX INFO: compiled from: CounterSupport.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static o4.a f5326b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient java.util.Vector<m4.d> f5327a;

    public static o4.a b() {
        if (f5326b == null) {
            f5326b = new o4.a();
        }
        return f5326b;
    }

    public void a(m4.c cVar) {
        java.util.Vector<m4.d> vector = this.f5327a;
        if (vector != null) {
            java.util.Iterator<m4.d> it = vector.iterator();
            while (it.hasNext()) {
                it.next().b(cVar);
            }
        }
    }
}
