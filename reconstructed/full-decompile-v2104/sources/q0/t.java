package q0;

/* JADX INFO: compiled from: PeriodicWorkRequest.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class t extends q0.b0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final q0.t.b f5721e = new q0.t.b(null);

    /* JADX INFO: compiled from: PeriodicWorkRequest.kt */
    public static final class a extends q0.b0.a<q0.t.a, q0.t> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(java.lang.Class<? extends androidx.work.c> cls, long j5, java.util.concurrent.TimeUnit timeUnit) {
            super(cls);
            m3.k.e(cls, "workerClass");
            m3.k.e(timeUnit, "repeatIntervalTimeUnit");
            g().p(timeUnit.toMillis(j5));
        }

        @Override // q0.b0.a
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public q0.t b() {
            if (!((c() && g().f7041j.h()) ? false : true)) {
                throw new java.lang.IllegalArgumentException("Cannot set backoff criteria on an idle mode job".toString());
            }
            if (!g().f7048q) {
                return new q0.t(this);
            }
            throw new java.lang.IllegalArgumentException("PeriodicWorkRequests cannot be expedited".toString());
        }

        @Override // q0.b0.a
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public q0.t.a f() {
            return this;
        }
    }

    /* JADX INFO: compiled from: PeriodicWorkRequest.kt */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(m3.g gVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(q0.t.a aVar) {
        super(aVar.d(), aVar.g(), aVar.e());
        m3.k.e(aVar, "builder");
    }
}
