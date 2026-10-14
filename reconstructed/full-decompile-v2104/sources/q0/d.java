package q0;

/* JADX INFO: compiled from: Constraints.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final q0.d.b f5664i = new q0.d.b(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final q0.d f5665j = new q0.d(null, false, false, false, 15, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q0.o f5666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5668c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f5669d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5670e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f5671f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f5672g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final java.util.Set<q0.d.c> f5673h;

    /* JADX INFO: compiled from: Constraints.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f5674a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f5675b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f5677d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f5678e;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public q0.o f5676c = q0.o.NOT_REQUIRED;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f5679f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f5680g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public java.util.Set<q0.d.c> f5681h = new java.util.LinkedHashSet();

        public final q0.d.a a(android.net.Uri uri, boolean z4) {
            m3.k.e(uri, "uri");
            this.f5681h.add(new q0.d.c(uri, z4));
            return this;
        }

        public final q0.d b() {
            java.util.Set setE = b3.w.E(this.f5681h);
            long j5 = this.f5679f;
            long j6 = this.f5680g;
            return new q0.d(this.f5676c, this.f5674a, this.f5675b, this.f5677d, this.f5678e, j5, j6, setE);
        }

        public final q0.d.a c(q0.o oVar) {
            m3.k.e(oVar, "networkType");
            this.f5676c = oVar;
            return this;
        }

        public final q0.d.a d(boolean z4) {
            this.f5677d = z4;
            return this;
        }

        public final q0.d.a e(boolean z4) {
            this.f5674a = z4;
            return this;
        }

        public final q0.d.a f(boolean z4) {
            this.f5675b = z4;
            return this;
        }

        public final q0.d.a g(boolean z4) {
            this.f5678e = z4;
            return this;
        }

        public final q0.d.a h(long j5, java.util.concurrent.TimeUnit timeUnit) {
            m3.k.e(timeUnit, "timeUnit");
            this.f5680g = timeUnit.toMillis(j5);
            return this;
        }

        public final q0.d.a i(long j5, java.util.concurrent.TimeUnit timeUnit) {
            m3.k.e(timeUnit, "timeUnit");
            this.f5679f = timeUnit.toMillis(j5);
            return this;
        }
    }

    /* JADX INFO: compiled from: Constraints.kt */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(m3.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: Constraints.kt */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.net.Uri f5682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f5683b;

        public c(android.net.Uri uri, boolean z4) {
            m3.k.e(uri, "uri");
            this.f5682a = uri;
            this.f5683b = z4;
        }

        public final android.net.Uri a() {
            return this.f5682a;
        }

        public final boolean b() {
            return this.f5683b;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!m3.k.a(q0.d.c.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            m3.k.c(obj, "null cannot be cast to non-null type androidx.work.Constraints.ContentUriTrigger");
            q0.d.c cVar = (q0.d.c) obj;
            return m3.k.a(this.f5682a, cVar.f5682a) && this.f5683b == cVar.f5683b;
        }

        public int hashCode() {
            return (this.f5682a.hashCode() * 31) + java.lang.Boolean.hashCode(this.f5683b);
        }
    }

    public /* synthetic */ d(q0.o oVar, boolean z4, boolean z5, boolean z6, int i5, m3.g gVar) {
        this((i5 & 1) != 0 ? q0.o.NOT_REQUIRED : oVar, (i5 & 2) != 0 ? false : z4, (i5 & 4) != 0 ? false : z5, (i5 & 8) != 0 ? false : z6);
    }

    public final long a() {
        return this.f5672g;
    }

    public final long b() {
        return this.f5671f;
    }

    public final java.util.Set<q0.d.c> c() {
        return this.f5673h;
    }

    public final q0.o d() {
        return this.f5666a;
    }

    public final boolean e() {
        return this.f5673h.isEmpty() ^ true;
    }

    @android.annotation.SuppressLint({"NewApi"})
    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !m3.k.a(q0.d.class, obj.getClass())) {
            return false;
        }
        q0.d dVar = (q0.d) obj;
        if (this.f5667b == dVar.f5667b && this.f5668c == dVar.f5668c && this.f5669d == dVar.f5669d && this.f5670e == dVar.f5670e && this.f5671f == dVar.f5671f && this.f5672g == dVar.f5672g && this.f5666a == dVar.f5666a) {
            return m3.k.a(this.f5673h, dVar.f5673h);
        }
        return false;
    }

    public final boolean f() {
        return this.f5669d;
    }

    public final boolean g() {
        return this.f5667b;
    }

    public final boolean h() {
        return this.f5668c;
    }

    @android.annotation.SuppressLint({"NewApi"})
    public int hashCode() {
        int iHashCode = ((((((((this.f5666a.hashCode() * 31) + (this.f5667b ? 1 : 0)) * 31) + (this.f5668c ? 1 : 0)) * 31) + (this.f5669d ? 1 : 0)) * 31) + (this.f5670e ? 1 : 0)) * 31;
        long j5 = this.f5671f;
        int i5 = (iHashCode + ((int) (j5 ^ (j5 >>> 32)))) * 31;
        long j6 = this.f5672g;
        return ((i5 + ((int) (j6 ^ (j6 >>> 32)))) * 31) + this.f5673h.hashCode();
    }

    public final boolean i() {
        return this.f5670e;
    }

    @android.annotation.SuppressLint({"NewApi"})
    public java.lang.String toString() {
        return "Constraints{requiredNetworkType=" + this.f5666a + ", requiresCharging=" + this.f5667b + ", requiresDeviceIdle=" + this.f5668c + ", requiresBatteryNotLow=" + this.f5669d + ", requiresStorageNotLow=" + this.f5670e + ", contentTriggerUpdateDelayMillis=" + this.f5671f + ", contentTriggerMaxDelayMillis=" + this.f5672g + ", contentUriTriggers=" + this.f5673h + ", }";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @android.annotation.SuppressLint({"NewApi"})
    public d(q0.o oVar, boolean z4, boolean z5, boolean z6) {
        this(oVar, z4, false, z5, z6);
        m3.k.e(oVar, "requiredNetworkType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @android.annotation.SuppressLint({"NewApi"})
    public d(q0.o oVar, boolean z4, boolean z5, boolean z6, boolean z7) {
        this(oVar, z4, z5, z6, z7, -1L, 0L, null, com.alibaba.fastjson.asm.Opcodes.CHECKCAST, null);
        m3.k.e(oVar, "requiredNetworkType");
    }

    public /* synthetic */ d(q0.o oVar, boolean z4, boolean z5, boolean z6, boolean z7, long j5, long j6, java.util.Set set, int i5, m3.g gVar) {
        this((i5 & 1) != 0 ? q0.o.NOT_REQUIRED : oVar, (i5 & 2) != 0 ? false : z4, (i5 & 4) != 0 ? false : z5, (i5 & 8) != 0 ? false : z6, (i5 & 16) == 0 ? z7 : false, (i5 & 32) != 0 ? -1L : j5, (i5 & 64) == 0 ? j6 : -1L, (i5 & com.alibaba.fastjson.asm.Opcodes.IOR) != 0 ? b3.j0.d() : set);
    }

    public d(q0.o oVar, boolean z4, boolean z5, boolean z6, boolean z7, long j5, long j6, java.util.Set<q0.d.c> set) {
        m3.k.e(oVar, "requiredNetworkType");
        m3.k.e(set, "contentUriTriggers");
        this.f5666a = oVar;
        this.f5667b = z4;
        this.f5668c = z5;
        this.f5669d = z6;
        this.f5670e = z7;
        this.f5671f = j5;
        this.f5672g = j6;
        this.f5673h = set;
    }

    @android.annotation.SuppressLint({"NewApi"})
    public d(q0.d dVar) {
        m3.k.e(dVar, "other");
        this.f5667b = dVar.f5667b;
        this.f5668c = dVar.f5668c;
        this.f5666a = dVar.f5666a;
        this.f5669d = dVar.f5669d;
        this.f5670e = dVar.f5670e;
        this.f5673h = dVar.f5673h;
        this.f5671f = dVar.f5671f;
        this.f5672g = dVar.f5672g;
    }
}
