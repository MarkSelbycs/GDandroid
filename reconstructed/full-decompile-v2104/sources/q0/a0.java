package q0;

/* JADX INFO: compiled from: WorkQuery.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.List<java.util.UUID> f5643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.List<java.lang.String> f5644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.List<java.lang.String> f5645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.List<q0.y.c> f5646d;

    /* JADX INFO: compiled from: WorkQuery.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.util.List<java.util.UUID> f5647a = new java.util.ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.util.List<java.lang.String> f5648b = new java.util.ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.util.List<java.lang.String> f5649c = new java.util.ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.util.List<q0.y.c> f5650d = new java.util.ArrayList();

        @android.annotation.SuppressLint({"BuilderSetStyle"})
        public static q0.a0.a f(java.util.List<java.util.UUID> list) {
            q0.a0.a aVar = new q0.a0.a();
            aVar.a(list);
            return aVar;
        }

        public q0.a0.a a(java.util.List<java.util.UUID> list) {
            this.f5647a.addAll(list);
            return this;
        }

        public q0.a0.a b(java.util.List<q0.y.c> list) {
            this.f5650d.addAll(list);
            return this;
        }

        public q0.a0.a c(java.util.List<java.lang.String> list) {
            this.f5649c.addAll(list);
            return this;
        }

        public q0.a0.a d(java.util.List<java.lang.String> list) {
            this.f5648b.addAll(list);
            return this;
        }

        public q0.a0 e() {
            if (this.f5647a.isEmpty() && this.f5648b.isEmpty() && this.f5649c.isEmpty() && this.f5650d.isEmpty()) {
                throw new java.lang.IllegalArgumentException("Must specify ids, uniqueNames, tags or states when building a WorkQuery");
            }
            return new q0.a0(this);
        }
    }

    public a0(q0.a0.a aVar) {
        this.f5643a = aVar.f5647a;
        this.f5644b = aVar.f5648b;
        this.f5645c = aVar.f5649c;
        this.f5646d = aVar.f5650d;
    }

    public java.util.List<java.util.UUID> a() {
        return this.f5643a;
    }

    public java.util.List<q0.y.c> b() {
        return this.f5646d;
    }

    public java.util.List<java.lang.String> c() {
        return this.f5645c;
    }

    public java.util.List<java.lang.String> d() {
        return this.f5644b;
    }
}
