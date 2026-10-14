package q0;

/* JADX INFO: compiled from: WorkRequest.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final q0.b0.b f5651d = new q0.b0.b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.UUID f5652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final z0.u f5653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.Set<java.lang.String> f5654c;

    /* JADX INFO: compiled from: WorkRequest.kt */
    public static abstract class a<B extends q0.b0.a<B, ?>, W extends q0.b0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.Class<? extends androidx.work.c> f5655a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f5656b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.util.UUID f5657c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public z0.u f5658d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final java.util.Set<java.lang.String> f5659e;

        public a(java.lang.Class<? extends androidx.work.c> cls) {
            m3.k.e(cls, "workerClass");
            this.f5655a = cls;
            java.util.UUID uuidRandomUUID = java.util.UUID.randomUUID();
            m3.k.d(uuidRandomUUID, "randomUUID()");
            this.f5657c = uuidRandomUUID;
            java.lang.String string = this.f5657c.toString();
            m3.k.d(string, "id.toString()");
            java.lang.String name = cls.getName();
            m3.k.d(name, "workerClass.name");
            this.f5658d = new z0.u(string, name);
            java.lang.String name2 = cls.getName();
            m3.k.d(name2, "workerClass.name");
            this.f5659e = b3.j0.e(name2);
        }

        public final W a() {
            W w4 = (W) b();
            q0.d dVar = this.f5658d.f7041j;
            boolean z4 = dVar.e() || dVar.f() || dVar.g() || dVar.h();
            z0.u uVar = this.f5658d;
            if (uVar.f7048q) {
                if (!(!z4)) {
                    throw new java.lang.IllegalArgumentException("Expedited jobs only support network and storage constraints".toString());
                }
                if (!(uVar.f7038g <= 0)) {
                    throw new java.lang.IllegalArgumentException("Expedited jobs cannot be delayed".toString());
                }
            }
            java.util.UUID uuidRandomUUID = java.util.UUID.randomUUID();
            m3.k.d(uuidRandomUUID, "randomUUID()");
            h(uuidRandomUUID);
            return w4;
        }

        public abstract W b();

        public final boolean c() {
            return this.f5656b;
        }

        public final java.util.UUID d() {
            return this.f5657c;
        }

        public final java.util.Set<java.lang.String> e() {
            return this.f5659e;
        }

        public abstract B f();

        public final z0.u g() {
            return this.f5658d;
        }

        public final B h(java.util.UUID uuid) {
            m3.k.e(uuid, "id");
            this.f5657c = uuid;
            java.lang.String string = uuid.toString();
            m3.k.d(string, "id.toString()");
            this.f5658d = new z0.u(string, this.f5658d);
            return (B) f();
        }

        public B i(long j5, java.util.concurrent.TimeUnit timeUnit) {
            m3.k.e(timeUnit, "timeUnit");
            this.f5658d.f7038g = timeUnit.toMillis(j5);
            if (Long.MAX_VALUE - java.lang.System.currentTimeMillis() > this.f5658d.f7038g) {
                return (B) f();
            }
            throw new java.lang.IllegalArgumentException("The given initial delay is too large and will cause an overflow!".toString());
        }
    }

    /* JADX INFO: compiled from: WorkRequest.kt */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(m3.g gVar) {
            this();
        }
    }

    public b0(java.util.UUID uuid, z0.u uVar, java.util.Set<java.lang.String> set) {
        m3.k.e(uuid, "id");
        m3.k.e(uVar, "workSpec");
        m3.k.e(set, "tags");
        this.f5652a = uuid;
        this.f5653b = uVar;
        this.f5654c = set;
    }

    public java.util.UUID a() {
        return this.f5652a;
    }

    public final java.lang.String b() {
        java.lang.String string = a().toString();
        m3.k.d(string, "id.toString()");
        return string;
    }

    public final java.util.Set<java.lang.String> c() {
        return this.f5654c;
    }

    public final z0.u d() {
        return this.f5653b;
    }
}
