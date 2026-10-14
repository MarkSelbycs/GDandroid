package t4;

/* JADX INFO: compiled from: DefaultThreadFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b implements t4.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f6264a = k4.m.g();

    /* JADX INFO: compiled from: DefaultThreadFactory.java */
    public class a implements t4.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.Thread f6265a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public t4.k f6266b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f6267c = false;

        public a(java.lang.String str, t4.k kVar) {
            this.f6265a = new java.lang.Thread(kVar, str);
            this.f6266b = kVar;
        }

        @Override // t4.k
        public void interrupt() {
            this.f6266b.interrupt();
            this.f6265a.interrupt();
        }

        @Override // t4.k
        public void join() throws java.lang.InterruptedException {
            this.f6266b.join();
            this.f6265a.join(t4.b.this.f6264a);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6267c) {
                this.f6265a.run();
            } else {
                this.f6267c = true;
                this.f6265a.start();
            }
        }

        @Override // t4.k
        public void terminate() {
            this.f6266b.terminate();
        }
    }

    @Override // t4.h
    public t4.k a(java.lang.String str, t4.k kVar, boolean z4) {
        t4.b.a aVar = new t4.b.a(str, kVar);
        aVar.f6265a.setDaemon(z4);
        return aVar;
    }
}
