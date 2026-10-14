package c4;

/* JADX INFO: compiled from: RealCall.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class x implements c4.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h4.l f3296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f3297b;
    private final c4.v client;
    public c4.y originalRequest;

    /* JADX INFO: compiled from: RealCall.java */
    public final class a extends d4.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final c4.f f3298b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ c4.x f3299c;

        @Override // d4.b
        public void c() {
            java.io.IOException e5;
            boolean z4 = true;
            try {
                try {
                    c4.a0 a0VarF = this.f3299c.f();
                    try {
                        if (this.f3299c.f3296a.d()) {
                            this.f3298b.a(this.f3299c, new java.io.IOException("Canceled"));
                        } else {
                            this.f3298b.b(this.f3299c, a0VarF);
                        }
                    } catch (java.io.IOException e6) {
                        e5 = e6;
                        if (z4) {
                            i4.e.h().k(4, "Callback failure for " + this.f3299c.h(), e5);
                        } else {
                            this.f3298b.a(this.f3299c, e5);
                        }
                    }
                } catch (java.io.IOException e7) {
                    e5 = e7;
                    z4 = false;
                }
            } finally {
                this.f3299c.client.k().c(this);
            }
        }

        public java.lang.String e() {
            return this.f3299c.originalRequest.m().o();
        }
    }

    public x(c4.v vVar, c4.y yVar) {
        this.client = vVar;
        this.originalRequest = yVar;
        this.f3296a = new h4.l(vVar);
    }

    @Override // c4.e
    public c4.a0 a() throws java.io.IOException {
        synchronized (this) {
            if (this.f3297b) {
                throw new java.lang.IllegalStateException("Already Executed");
            }
            this.f3297b = true;
        }
        try {
            this.client.k().a(this);
            c4.a0 a0VarF = f();
            if (a0VarF == null) {
                throw new java.io.IOException("Canceled");
            }
            this.client.k().d(this);
            return a0VarF;
        } catch (java.lang.Throwable th) {
            this.client.k().d(this);
            throw th;
        }
    }

    public final c4.a0 f() throws java.io.IOException {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.addAll(this.client.v());
        arrayList.add(this.f3296a);
        arrayList.add(new h4.a(this.client.j()));
        arrayList.add(new e4.a(this.client.w()));
        arrayList.add(new f4.a(this.client));
        if (!this.f3296a.e()) {
            arrayList.addAll(this.client.x());
        }
        arrayList.add(new h4.b(this.f3296a.e()));
        return new h4.i(arrayList, null, null, null, 0, this.originalRequest).a(this.originalRequest);
    }

    public c4.r g() {
        return this.originalRequest.m().D("/...");
    }

    public final java.lang.String h() {
        return (this.f3296a.d() ? "canceled call" : "call") + " to " + g();
    }
}
