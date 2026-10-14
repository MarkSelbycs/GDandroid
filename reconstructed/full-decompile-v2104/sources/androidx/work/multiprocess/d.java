package androidx.work.multiprocess;

/* JADX INFO: compiled from: RemoteClientUtils.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i.a<byte[], java.lang.Void> f2862a = new androidx.work.multiprocess.d.a();

    /* JADX INFO: compiled from: RemoteClientUtils.java */
    public class a implements i.a<byte[], java.lang.Void> {
        @Override // i.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public java.lang.Void apply(byte[] bArr) {
            return null;
        }
    }

    /* JADX INFO: compiled from: RemoteClientUtils.java */
    public class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ r2.a f2863a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ i.a f2864b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ b1.c f2865c;

        public b(r2.a aVar, i.a aVar2, b1.c cVar) {
            this.f2863a = aVar;
            this.f2864b = aVar2;
            this.f2865c = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f2865c.p(this.f2864b.apply(this.f2863a.get()));
            } catch (java.lang.Throwable th) {
                th = th;
                java.lang.Throwable cause = th.getCause();
                if (cause != null) {
                    th = cause;
                }
                this.f2865c.q(th);
            }
        }
    }

    public static <I, O> r2.a<O> a(r2.a<I> aVar, i.a<I, O> aVar2, java.util.concurrent.Executor executor) {
        b1.c cVarT = b1.c.t();
        aVar.a(new androidx.work.multiprocess.d.b(aVar, aVar2, cVarT), executor);
        return cVarT;
    }
}
