package androidx.lifecycle;

/* JADX INFO: compiled from: ServiceLifecycleDispatcher.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.h f1792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.os.Handler f1793b = new android.os.Handler();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.lifecycle.n.a f1794c;

    /* JADX INFO: compiled from: ServiceLifecycleDispatcher.java */
    public static class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.lifecycle.h f1795a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.lifecycle.d.b f1796b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1797c = false;

        public a(androidx.lifecycle.h hVar, androidx.lifecycle.d.b bVar) {
            this.f1795a = hVar;
            this.f1796b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1797c) {
                return;
            }
            this.f1795a.f(this.f1796b);
            this.f1797c = true;
        }
    }

    public n(androidx.lifecycle.g gVar) {
        this.f1792a = new androidx.lifecycle.h(gVar);
    }

    public androidx.lifecycle.d a() {
        return this.f1792a;
    }

    public void b() {
        f(androidx.lifecycle.d.b.ON_START);
    }

    public void c() {
        f(androidx.lifecycle.d.b.ON_CREATE);
    }

    public void d() {
        f(androidx.lifecycle.d.b.ON_STOP);
        f(androidx.lifecycle.d.b.ON_DESTROY);
    }

    public void e() {
        f(androidx.lifecycle.d.b.ON_START);
    }

    public final void f(androidx.lifecycle.d.b bVar) {
        androidx.lifecycle.n.a aVar = this.f1794c;
        if (aVar != null) {
            aVar.run();
        }
        androidx.lifecycle.n.a aVar2 = new androidx.lifecycle.n.a(this.f1792a, bVar);
        this.f1794c = aVar2;
        this.f1793b.postAtFrontOfQueue(aVar2);
    }
}
