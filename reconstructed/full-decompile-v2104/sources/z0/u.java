package z0;

/* JADX INFO: compiled from: WorkSpec.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class u {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final z0.u.a f7029x = new z0.u.a(null);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final java.lang.String f7030y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final i.a<java.util.List<z0.u.c>, java.util.List<q0.y>> f7031z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f7032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public q0.y.c f7033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.String f7034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.lang.String f7035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.work.b f7036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.work.b f7037f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f7038g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f7039h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f7040i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public q0.d f7041j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7042k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public q0.a f7043l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f7044m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f7045n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f7046o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f7047p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f7048q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public q0.s f7049r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f7050s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f7051t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f7052u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f7053v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f7054w;

    /* JADX INFO: compiled from: WorkSpec.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public final long a(boolean z4, int i5, q0.a aVar, long j5, long j6, int i6, boolean z5, long j7, long j8, long j9, long j10) {
            m3.k.e(aVar, "backoffPolicy");
            if (j10 != Long.MAX_VALUE && z5) {
                return i6 == 0 ? j10 : p3.m.b(j10, 900000 + j6);
            }
            if (z4) {
                return j6 + p3.m.d(aVar == q0.a.LINEAR ? ((long) i5) * j5 : (long) java.lang.Math.scalb(j5, i5 - 1), 18000000L);
            }
            if (!z5) {
                if (j6 == -1) {
                    return Long.MAX_VALUE;
                }
                return j6 + j7;
            }
            long j11 = i6 == 0 ? j6 + j7 : j6 + j9;
            if ((j8 != j9) && i6 == 0) {
                j11 += j9 - j8;
            }
            return j11;
        }
    }

    /* JADX INFO: compiled from: WorkSpec.kt */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.String f7055a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public q0.y.c f7056b;

        public b(java.lang.String str, q0.y.c cVar) {
            m3.k.e(str, "id");
            m3.k.e(cVar, "state");
            this.f7055a = str;
            this.f7056b = cVar;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof z0.u.b)) {
                return false;
            }
            z0.u.b bVar = (z0.u.b) obj;
            return m3.k.a(this.f7055a, bVar.f7055a) && this.f7056b == bVar.f7056b;
        }

        public int hashCode() {
            return (this.f7055a.hashCode() * 31) + this.f7056b.hashCode();
        }

        public java.lang.String toString() {
            return "IdAndState(id=" + this.f7055a + ", state=" + this.f7056b + ')';
        }
    }

    /* JADX INFO: compiled from: WorkSpec.kt */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f7057a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final q0.y.c f7058b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final androidx.work.b f7059c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f7060d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f7061e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f7062f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final q0.d f7063g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7064h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public q0.a f7065i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f7066j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f7067k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f7068l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final int f7069m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long f7070n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final int f7071o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final java.util.List<java.lang.String> f7072p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final java.util.List<androidx.work.b> f7073q;

        public c(java.lang.String str, q0.y.c cVar, androidx.work.b bVar, long j5, long j6, long j7, q0.d dVar, int i5, q0.a aVar, long j8, long j9, int i6, int i7, long j10, int i8, java.util.List<java.lang.String> list, java.util.List<androidx.work.b> list2) {
            m3.k.e(str, "id");
            m3.k.e(cVar, "state");
            m3.k.e(bVar, "output");
            m3.k.e(dVar, "constraints");
            m3.k.e(aVar, "backoffPolicy");
            m3.k.e(list, "tags");
            m3.k.e(list2, "progress");
            this.f7057a = str;
            this.f7058b = cVar;
            this.f7059c = bVar;
            this.f7060d = j5;
            this.f7061e = j6;
            this.f7062f = j7;
            this.f7063g = dVar;
            this.f7064h = i5;
            this.f7065i = aVar;
            this.f7066j = j8;
            this.f7067k = j9;
            this.f7068l = i6;
            this.f7069m = i7;
            this.f7070n = j10;
            this.f7071o = i8;
            this.f7072p = list;
            this.f7073q = list2;
        }

        public final long a() {
            if (this.f7058b == q0.y.c.ENQUEUED) {
                return z0.u.f7029x.a(c(), this.f7064h, this.f7065i, this.f7066j, this.f7067k, this.f7068l, d(), this.f7060d, this.f7062f, this.f7061e, this.f7070n);
            }
            return Long.MAX_VALUE;
        }

        public final q0.y.b b() {
            long j5 = this.f7061e;
            if (j5 != 0) {
                return new q0.y.b(j5, this.f7062f);
            }
            return null;
        }

        public final boolean c() {
            return this.f7058b == q0.y.c.ENQUEUED && this.f7064h > 0;
        }

        public final boolean d() {
            return this.f7061e != 0;
        }

        public final q0.y e() {
            androidx.work.b bVar = this.f7073q.isEmpty() ^ true ? this.f7073q.get(0) : androidx.work.b.f2639c;
            java.util.UUID uuidFromString = java.util.UUID.fromString(this.f7057a);
            m3.k.d(uuidFromString, "fromString(id)");
            q0.y.c cVar = this.f7058b;
            java.util.HashSet hashSet = new java.util.HashSet(this.f7072p);
            androidx.work.b bVar2 = this.f7059c;
            m3.k.d(bVar, "progress");
            return new q0.y(uuidFromString, cVar, hashSet, bVar2, bVar, this.f7064h, this.f7069m, this.f7063g, this.f7060d, b(), a(), this.f7071o);
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof z0.u.c)) {
                return false;
            }
            z0.u.c cVar = (z0.u.c) obj;
            return m3.k.a(this.f7057a, cVar.f7057a) && this.f7058b == cVar.f7058b && m3.k.a(this.f7059c, cVar.f7059c) && this.f7060d == cVar.f7060d && this.f7061e == cVar.f7061e && this.f7062f == cVar.f7062f && m3.k.a(this.f7063g, cVar.f7063g) && this.f7064h == cVar.f7064h && this.f7065i == cVar.f7065i && this.f7066j == cVar.f7066j && this.f7067k == cVar.f7067k && this.f7068l == cVar.f7068l && this.f7069m == cVar.f7069m && this.f7070n == cVar.f7070n && this.f7071o == cVar.f7071o && m3.k.a(this.f7072p, cVar.f7072p) && m3.k.a(this.f7073q, cVar.f7073q);
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((((((this.f7057a.hashCode() * 31) + this.f7058b.hashCode()) * 31) + this.f7059c.hashCode()) * 31) + java.lang.Long.hashCode(this.f7060d)) * 31) + java.lang.Long.hashCode(this.f7061e)) * 31) + java.lang.Long.hashCode(this.f7062f)) * 31) + this.f7063g.hashCode()) * 31) + java.lang.Integer.hashCode(this.f7064h)) * 31) + this.f7065i.hashCode()) * 31) + java.lang.Long.hashCode(this.f7066j)) * 31) + java.lang.Long.hashCode(this.f7067k)) * 31) + java.lang.Integer.hashCode(this.f7068l)) * 31) + java.lang.Integer.hashCode(this.f7069m)) * 31) + java.lang.Long.hashCode(this.f7070n)) * 31) + java.lang.Integer.hashCode(this.f7071o)) * 31) + this.f7072p.hashCode()) * 31) + this.f7073q.hashCode();
        }

        public java.lang.String toString() {
            return "WorkInfoPojo(id=" + this.f7057a + ", state=" + this.f7058b + ", output=" + this.f7059c + ", initialDelay=" + this.f7060d + ", intervalDuration=" + this.f7061e + ", flexDuration=" + this.f7062f + ", constraints=" + this.f7063g + ", runAttemptCount=" + this.f7064h + ", backoffPolicy=" + this.f7065i + ", backoffDelayDuration=" + this.f7066j + ", lastEnqueueTime=" + this.f7067k + ", periodCount=" + this.f7068l + ", generation=" + this.f7069m + ", nextScheduleTimeOverride=" + this.f7070n + ", stopReason=" + this.f7071o + ", tags=" + this.f7072p + ", progress=" + this.f7073q + ')';
        }
    }

    static {
        java.lang.String strI = q0.n.i("WorkSpec");
        m3.k.d(strI, "tagWithPrefix(\"WorkSpec\")");
        f7030y = strI;
        f7031z = new i.a() { // from class: z0.t
            @Override // i.a
            public final java.lang.Object apply(java.lang.Object obj) {
                return z0.u.b((java.util.List) obj);
            }
        };
    }

    public u(java.lang.String str, q0.y.c cVar, java.lang.String str2, java.lang.String str3, androidx.work.b bVar, androidx.work.b bVar2, long j5, long j6, long j7, q0.d dVar, int i5, q0.a aVar, long j8, long j9, long j10, long j11, boolean z4, q0.s sVar, int i6, int i7, long j12, int i8, int i9) {
        m3.k.e(str, "id");
        m3.k.e(cVar, "state");
        m3.k.e(str2, "workerClassName");
        m3.k.e(str3, "inputMergerClassName");
        m3.k.e(bVar, "input");
        m3.k.e(bVar2, "output");
        m3.k.e(dVar, "constraints");
        m3.k.e(aVar, "backoffPolicy");
        m3.k.e(sVar, "outOfQuotaPolicy");
        this.f7032a = str;
        this.f7033b = cVar;
        this.f7034c = str2;
        this.f7035d = str3;
        this.f7036e = bVar;
        this.f7037f = bVar2;
        this.f7038g = j5;
        this.f7039h = j6;
        this.f7040i = j7;
        this.f7041j = dVar;
        this.f7042k = i5;
        this.f7043l = aVar;
        this.f7044m = j8;
        this.f7045n = j9;
        this.f7046o = j10;
        this.f7047p = j11;
        this.f7048q = z4;
        this.f7049r = sVar;
        this.f7050s = i6;
        this.f7051t = i7;
        this.f7052u = j12;
        this.f7053v = i8;
        this.f7054w = i9;
    }

    public static final java.util.List b(java.util.List list) {
        if (list == null) {
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(b3.p.l(list, 10));
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((z0.u.c) it.next()).e());
        }
        return arrayList;
    }

    public static /* synthetic */ z0.u e(z0.u uVar, java.lang.String str, q0.y.c cVar, java.lang.String str2, java.lang.String str3, androidx.work.b bVar, androidx.work.b bVar2, long j5, long j6, long j7, q0.d dVar, int i5, q0.a aVar, long j8, long j9, long j10, long j11, boolean z4, q0.s sVar, int i6, int i7, long j12, int i8, int i9, int i10, java.lang.Object obj) {
        java.lang.String str4 = (i10 & 1) != 0 ? uVar.f7032a : str;
        q0.y.c cVar2 = (i10 & 2) != 0 ? uVar.f7033b : cVar;
        java.lang.String str5 = (i10 & 4) != 0 ? uVar.f7034c : str2;
        java.lang.String str6 = (i10 & 8) != 0 ? uVar.f7035d : str3;
        androidx.work.b bVar3 = (i10 & 16) != 0 ? uVar.f7036e : bVar;
        androidx.work.b bVar4 = (i10 & 32) != 0 ? uVar.f7037f : bVar2;
        long j13 = (i10 & 64) != 0 ? uVar.f7038g : j5;
        long j14 = (i10 & com.alibaba.fastjson.asm.Opcodes.IOR) != 0 ? uVar.f7039h : j6;
        long j15 = (i10 & 256) != 0 ? uVar.f7040i : j7;
        q0.d dVar2 = (i10 & 512) != 0 ? uVar.f7041j : dVar;
        return uVar.d(str4, cVar2, str5, str6, bVar3, bVar4, j13, j14, j15, dVar2, (i10 & 1024) != 0 ? uVar.f7042k : i5, (i10 & 2048) != 0 ? uVar.f7043l : aVar, (i10 & 4096) != 0 ? uVar.f7044m : j8, (i10 & 8192) != 0 ? uVar.f7045n : j9, (i10 & 16384) != 0 ? uVar.f7046o : j10, (i10 & 32768) != 0 ? uVar.f7047p : j11, (i10 & 65536) != 0 ? uVar.f7048q : z4, (131072 & i10) != 0 ? uVar.f7049r : sVar, (i10 & 262144) != 0 ? uVar.f7050s : i6, (i10 & 524288) != 0 ? uVar.f7051t : i7, (i10 & 1048576) != 0 ? uVar.f7052u : j12, (i10 & 2097152) != 0 ? uVar.f7053v : i8, (i10 & 4194304) != 0 ? uVar.f7054w : i9);
    }

    public final long c() {
        return f7029x.a(l(), this.f7042k, this.f7043l, this.f7044m, this.f7045n, this.f7050s, m(), this.f7038g, this.f7040i, this.f7039h, this.f7052u);
    }

    public final z0.u d(java.lang.String str, q0.y.c cVar, java.lang.String str2, java.lang.String str3, androidx.work.b bVar, androidx.work.b bVar2, long j5, long j6, long j7, q0.d dVar, int i5, q0.a aVar, long j8, long j9, long j10, long j11, boolean z4, q0.s sVar, int i6, int i7, long j12, int i8, int i9) {
        m3.k.e(str, "id");
        m3.k.e(cVar, "state");
        m3.k.e(str2, "workerClassName");
        m3.k.e(str3, "inputMergerClassName");
        m3.k.e(bVar, "input");
        m3.k.e(bVar2, "output");
        m3.k.e(dVar, "constraints");
        m3.k.e(aVar, "backoffPolicy");
        m3.k.e(sVar, "outOfQuotaPolicy");
        return new z0.u(str, cVar, str2, str3, bVar, bVar2, j5, j6, j7, dVar, i5, aVar, j8, j9, j10, j11, z4, sVar, i6, i7, j12, i8, i9);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z0.u)) {
            return false;
        }
        z0.u uVar = (z0.u) obj;
        return m3.k.a(this.f7032a, uVar.f7032a) && this.f7033b == uVar.f7033b && m3.k.a(this.f7034c, uVar.f7034c) && m3.k.a(this.f7035d, uVar.f7035d) && m3.k.a(this.f7036e, uVar.f7036e) && m3.k.a(this.f7037f, uVar.f7037f) && this.f7038g == uVar.f7038g && this.f7039h == uVar.f7039h && this.f7040i == uVar.f7040i && m3.k.a(this.f7041j, uVar.f7041j) && this.f7042k == uVar.f7042k && this.f7043l == uVar.f7043l && this.f7044m == uVar.f7044m && this.f7045n == uVar.f7045n && this.f7046o == uVar.f7046o && this.f7047p == uVar.f7047p && this.f7048q == uVar.f7048q && this.f7049r == uVar.f7049r && this.f7050s == uVar.f7050s && this.f7051t == uVar.f7051t && this.f7052u == uVar.f7052u && this.f7053v == uVar.f7053v && this.f7054w == uVar.f7054w;
    }

    public final int f() {
        return this.f7051t;
    }

    public final long g() {
        return this.f7052u;
    }

    public final int h() {
        return this.f7053v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [int] */
    /* JADX WARN: Type inference failed for: r1v31, types: [int] */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v45 */
    public int hashCode() {
        int iHashCode = ((((((((((((((((((((((((((((((this.f7032a.hashCode() * 31) + this.f7033b.hashCode()) * 31) + this.f7034c.hashCode()) * 31) + this.f7035d.hashCode()) * 31) + this.f7036e.hashCode()) * 31) + this.f7037f.hashCode()) * 31) + java.lang.Long.hashCode(this.f7038g)) * 31) + java.lang.Long.hashCode(this.f7039h)) * 31) + java.lang.Long.hashCode(this.f7040i)) * 31) + this.f7041j.hashCode()) * 31) + java.lang.Integer.hashCode(this.f7042k)) * 31) + this.f7043l.hashCode()) * 31) + java.lang.Long.hashCode(this.f7044m)) * 31) + java.lang.Long.hashCode(this.f7045n)) * 31) + java.lang.Long.hashCode(this.f7046o)) * 31) + java.lang.Long.hashCode(this.f7047p)) * 31;
        boolean z4 = this.f7048q;
        ?? r5 = z4;
        if (z4) {
            r5 = 1;
        }
        return ((((((((((((iHashCode + r5) * 31) + this.f7049r.hashCode()) * 31) + java.lang.Integer.hashCode(this.f7050s)) * 31) + java.lang.Integer.hashCode(this.f7051t)) * 31) + java.lang.Long.hashCode(this.f7052u)) * 31) + java.lang.Integer.hashCode(this.f7053v)) * 31) + java.lang.Integer.hashCode(this.f7054w);
    }

    public final int i() {
        return this.f7050s;
    }

    public final int j() {
        return this.f7054w;
    }

    public final boolean k() {
        return !m3.k.a(q0.d.f5665j, this.f7041j);
    }

    public final boolean l() {
        return this.f7033b == q0.y.c.ENQUEUED && this.f7042k > 0;
    }

    public final boolean m() {
        return this.f7039h != 0;
    }

    public final void n(long j5) {
        this.f7052u = j5;
    }

    public final void o(int i5) {
        this.f7053v = i5;
    }

    public final void p(long j5) {
        if (j5 < 900000) {
            q0.n.e().k(f7030y, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        q(p3.m.b(j5, 900000L), p3.m.b(j5, 900000L));
    }

    public final void q(long j5, long j6) {
        if (j5 < 900000) {
            q0.n.e().k(f7030y, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        this.f7039h = p3.m.b(j5, 900000L);
        if (j6 < 300000) {
            q0.n.e().k(f7030y, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (j6 > this.f7039h) {
            q0.n.e().k(f7030y, "Flex duration greater than interval duration; Changed to " + j5);
        }
        this.f7040i = p3.m.f(j6, 300000L, this.f7039h);
    }

    public java.lang.String toString() {
        return "{WorkSpec: " + this.f7032a + '}';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ u(java.lang.String str, q0.y.c cVar, java.lang.String str2, java.lang.String str3, androidx.work.b bVar, androidx.work.b bVar2, long j5, long j6, long j7, q0.d dVar, int i5, q0.a aVar, long j8, long j9, long j10, long j11, boolean z4, q0.s sVar, int i6, int i7, long j12, int i8, int i9, int i10, m3.g gVar) {
        java.lang.String str4;
        androidx.work.b bVar3;
        androidx.work.b bVar4;
        q0.y.c cVar2 = (i10 & 2) != 0 ? q0.y.c.ENQUEUED : cVar;
        if ((i10 & 8) != 0) {
            java.lang.String name = androidx.work.OverwritingInputMerger.class.getName();
            m3.k.d(name, "OverwritingInputMerger::class.java.name");
            str4 = name;
        } else {
            str4 = str3;
        }
        if ((i10 & 16) != 0) {
            androidx.work.b bVar5 = androidx.work.b.f2639c;
            m3.k.d(bVar5, "EMPTY");
            bVar3 = bVar5;
        } else {
            bVar3 = bVar;
        }
        if ((i10 & 32) != 0) {
            androidx.work.b bVar6 = androidx.work.b.f2639c;
            m3.k.d(bVar6, "EMPTY");
            bVar4 = bVar6;
        } else {
            bVar4 = bVar2;
        }
        this(str, cVar2, str2, str4, bVar3, bVar4, (i10 & 64) != 0 ? 0L : j5, (i10 & com.alibaba.fastjson.asm.Opcodes.IOR) != 0 ? 0L : j6, (i10 & 256) != 0 ? 0L : j7, (i10 & 512) != 0 ? q0.d.f5665j : dVar, (i10 & 1024) != 0 ? 0 : i5, (i10 & 2048) != 0 ? q0.a.EXPONENTIAL : aVar, (i10 & 4096) != 0 ? 30000L : j8, (i10 & 8192) != 0 ? -1L : j9, (i10 & 16384) != 0 ? 0L : j10, (32768 & i10) != 0 ? -1L : j11, (65536 & i10) != 0 ? false : z4, (131072 & i10) != 0 ? q0.s.RUN_AS_NON_EXPEDITED_WORK_REQUEST : sVar, (262144 & i10) != 0 ? 0 : i6, (524288 & i10) != 0 ? 0 : i7, (1048576 & i10) != 0 ? Long.MAX_VALUE : j12, (2097152 & i10) != 0 ? 0 : i8, (i10 & 4194304) != 0 ? -256 : i9);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u(java.lang.String str, java.lang.String str2) {
        this(str, null, str2, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, 8388602, null);
        m3.k.e(str, "id");
        m3.k.e(str2, "workerClassName_");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u(java.lang.String str, z0.u uVar) {
        this(str, uVar.f7033b, uVar.f7034c, uVar.f7035d, new androidx.work.b(uVar.f7036e), new androidx.work.b(uVar.f7037f), uVar.f7038g, uVar.f7039h, uVar.f7040i, new q0.d(uVar.f7041j), uVar.f7042k, uVar.f7043l, uVar.f7044m, uVar.f7045n, uVar.f7046o, uVar.f7047p, uVar.f7048q, uVar.f7049r, uVar.f7050s, 0, uVar.f7052u, uVar.f7053v, uVar.f7054w, 524288, null);
        m3.k.e(str, "newId");
        m3.k.e(uVar, "other");
    }
}
