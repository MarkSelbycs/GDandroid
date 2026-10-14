package t;

/* JADX INFO: compiled from: CallbackWithHandler.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t.g.c f6104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.os.Handler f6105b;

    /* JADX INFO: renamed from: t.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CallbackWithHandler.java */
    public class RunnableC0079a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ t.g.c f6106a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.graphics.Typeface f6107b;

        public RunnableC0079a(t.g.c cVar, android.graphics.Typeface typeface) {
            this.f6106a = cVar;
            this.f6107b = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6106a.b(this.f6107b);
        }
    }

    /* JADX INFO: compiled from: CallbackWithHandler.java */
    public class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ t.g.c f6109a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f6110b;

        public b(t.g.c cVar, int i5) {
            this.f6109a = cVar;
            this.f6110b = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6109a.a(this.f6110b);
        }
    }

    public a(t.g.c cVar, android.os.Handler handler) {
        this.f6104a = cVar;
        this.f6105b = handler;
    }

    public final void a(int i5) {
        this.f6105b.post(new t.a.b(this.f6104a, i5));
    }

    public void b(t.f.e eVar) {
        if (eVar.a()) {
            c(eVar.f6134a);
        } else {
            a(eVar.f6135b);
        }
    }

    public final void c(android.graphics.Typeface typeface) {
        this.f6105b.post(new t.a.RunnableC0079a(this.f6104a, typeface));
    }
}
