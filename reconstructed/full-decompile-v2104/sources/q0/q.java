package q0;

/* JADX INFO: compiled from: OneTimeWorkRequest.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class q extends q0.b0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final q0.q.b f5714e = new q0.q.b(null);

    /* JADX INFO: compiled from: OneTimeWorkRequest.kt */
    public static final class a extends q0.b0.a<q0.q.a, q0.q> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(java.lang.Class<? extends androidx.work.c> cls) {
            super(cls);
            m3.k.e(cls, "workerClass");
        }

        @Override // q0.b0.a
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public q0.q b() {
            if ((c() && g().f7041j.h()) ? false : true) {
                return new q0.q(this);
            }
            throw new java.lang.IllegalArgumentException("Cannot set backoff criteria on an idle mode job".toString());
        }

        @Override // q0.b0.a
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public q0.q.a f() {
            return this;
        }
    }

    /* JADX INFO: compiled from: OneTimeWorkRequest.kt */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(m3.g gVar) {
            this();
        }

        public final q0.q a(java.lang.Class<? extends androidx.work.c> cls) {
            m3.k.e(cls, "workerClass");
            return new q0.q.a(cls).a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(q0.q.a aVar) {
        super(aVar.d(), aVar.g(), aVar.e());
        m3.k.e(aVar, "builder");
    }

    public static final q0.q e(java.lang.Class<? extends androidx.work.c> cls) {
        return f5714e.a(cls);
    }
}
