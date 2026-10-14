package x0;

/* JADX INFO: compiled from: ConstraintTracker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c1.b f6779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.Context f6780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Object f6781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.LinkedHashSet<v0.a<T>> f6782d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public T f6783e;

    public g(android.content.Context context, c1.b bVar) {
        m3.k.e(context, "context");
        m3.k.e(bVar, "taskExecutor");
        this.f6779a = bVar;
        android.content.Context origApplicationContext = com.stub.StubApp.getOrigApplicationContext(context.getApplicationContext());
        m3.k.d(origApplicationContext, "context.applicationContext");
        this.f6780b = origApplicationContext;
        this.f6781c = new java.lang.Object();
        this.f6782d = new java.util.LinkedHashSet<>();
    }

    public static final void b(java.util.List list, x0.g gVar) {
        m3.k.e(list, "$listenersList");
        m3.k.e(gVar, "this$0");
        java.util.Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ((v0.a) it.next()).a(gVar.f6783e);
        }
    }

    public final void c(v0.a<T> aVar) {
        m3.k.e(aVar, "listener");
        synchronized (this.f6781c) {
            if (this.f6782d.add(aVar)) {
                if (this.f6782d.size() == 1) {
                    this.f6783e = e();
                    q0.n.e().a(x0.h.f6784a, getClass().getSimpleName() + ": initial state = " + this.f6783e);
                    h();
                }
                aVar.a(this.f6783e);
            }
            a3.o oVar = a3.o.f122a;
        }
    }

    public final android.content.Context d() {
        return this.f6780b;
    }

    public abstract T e();

    public final void f(v0.a<T> aVar) {
        m3.k.e(aVar, "listener");
        synchronized (this.f6781c) {
            if (this.f6782d.remove(aVar) && this.f6782d.isEmpty()) {
                i();
            }
            a3.o oVar = a3.o.f122a;
        }
    }

    public final void g(T t5) {
        synchronized (this.f6781c) {
            T t6 = this.f6783e;
            if (t6 == null || !m3.k.a(t6, t5)) {
                this.f6783e = t5;
                final java.util.List listB = b3.w.B(this.f6782d);
                this.f6779a.b().execute(new java.lang.Runnable() { // from class: x0.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        x0.g.b(listB, this);
                    }
                });
                a3.o oVar = a3.o.f122a;
            }
        }
    }

    public abstract void h();

    public abstract void i();
}
