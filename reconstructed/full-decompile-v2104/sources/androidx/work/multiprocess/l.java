package androidx.work.multiprocess;

/* JADX INFO: compiled from: RemoteWorkerWrapper.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r2.a<androidx.work.c.a> f2875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.concurrent.atomic.AtomicInteger f2876b;

    public l(r2.a<androidx.work.c.a> aVar) {
        m3.k.e(aVar, "future");
        this.f2875a = aVar;
        this.f2876b = new java.util.concurrent.atomic.AtomicInteger(-256);
    }

    public final r2.a<androidx.work.c.a> a() {
        return this.f2875a;
    }

    public final java.util.concurrent.atomic.AtomicInteger b() {
        return this.f2876b;
    }

    public final void c(int i5) {
        this.f2876b.set(i5);
        this.f2875a.cancel(true);
    }
}
