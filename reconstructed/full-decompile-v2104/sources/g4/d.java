package g4;

/* JADX INFO: compiled from: FramedConnection.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d implements java.io.Closeable {
    public static final java.util.concurrent.ExecutorService B = new java.util.concurrent.ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, java.util.concurrent.TimeUnit.SECONDS, new java.util.concurrent.SynchronousQueue(), d4.c.y("OkHttp FramedConnection", true));
    public final java.util.Set<java.lang.Integer> A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.w f4367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g4.d.i f4369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.Map<java.lang.Integer, g4.e> f4370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.String f4371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4372f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4373g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4374h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final java.util.concurrent.ExecutorService f4375i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public java.util.Map<java.lang.Integer, g4.l> f4376o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final g4.m f4377p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4378q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f4379r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f4380s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public g4.n f4381t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final g4.n f4382u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f4383v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final g4.q f4384w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final java.net.Socket f4385x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final g4.c f4386y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final g4.d.j f4387z;

    /* JADX INFO: compiled from: FramedConnection.java */
    public class a extends d4.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f4388b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ g4.a f4389c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(java.lang.String str, java.lang.Object[] objArr, int i5, g4.a aVar) {
            super(str, objArr);
            this.f4388b = i5;
            this.f4389c = aVar;
        }

        @Override // d4.b
        public void c() {
            try {
                g4.d.this.B0(this.f4388b, this.f4389c);
            } catch (java.io.IOException unused) {
            }
        }
    }

    /* JADX INFO: compiled from: FramedConnection.java */
    public class b extends d4.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f4391b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ long f4392c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(java.lang.String str, java.lang.Object[] objArr, int i5, long j5) {
            super(str, objArr);
            this.f4391b = i5;
            this.f4392c = j5;
        }

        @Override // d4.b
        public void c() {
            try {
                g4.d.this.f4386y.b(this.f4391b, this.f4392c);
            } catch (java.io.IOException unused) {
            }
        }
    }

    /* JADX INFO: compiled from: FramedConnection.java */
    public class c extends d4.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f4394b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f4395c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f4396d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ g4.l f4397e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(java.lang.String str, java.lang.Object[] objArr, boolean z4, int i5, int i6, g4.l lVar) {
            super(str, objArr);
            this.f4394b = z4;
            this.f4395c = i5;
            this.f4396d = i6;
            this.f4397e = lVar;
        }

        @Override // d4.b
        public void c() {
            try {
                g4.d.this.z0(this.f4394b, this.f4395c, this.f4396d, this.f4397e);
            } catch (java.io.IOException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: g4.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FramedConnection.java */
    public class C0056d extends d4.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f4399b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.util.List f4400c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0056d(java.lang.String str, java.lang.Object[] objArr, int i5, java.util.List list) {
            super(str, objArr);
            this.f4399b = i5;
            this.f4400c = list;
        }

        @Override // d4.b
        public void c() {
            if (g4.d.this.f4377p.a(this.f4399b, this.f4400c)) {
                try {
                    g4.d.this.f4386y.a(this.f4399b, g4.a.CANCEL);
                    synchronized (g4.d.this) {
                        g4.d.this.A.remove(java.lang.Integer.valueOf(this.f4399b));
                    }
                } catch (java.io.IOException unused) {
                }
            }
        }
    }

    /* JADX INFO: compiled from: FramedConnection.java */
    public class e extends d4.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f4402b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.util.List f4403c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ boolean f4404d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(java.lang.String str, java.lang.Object[] objArr, int i5, java.util.List list, boolean z4) {
            super(str, objArr);
            this.f4402b = i5;
            this.f4403c = list;
            this.f4404d = z4;
        }

        @Override // d4.b
        public void c() {
            boolean zB = g4.d.this.f4377p.b(this.f4402b, this.f4403c, this.f4404d);
            if (zB) {
                try {
                    g4.d.this.f4386y.a(this.f4402b, g4.a.CANCEL);
                } catch (java.io.IOException unused) {
                    return;
                }
            }
            if (zB || this.f4404d) {
                synchronized (g4.d.this) {
                    g4.d.this.A.remove(java.lang.Integer.valueOf(this.f4402b));
                }
            }
        }
    }

    /* JADX INFO: compiled from: FramedConnection.java */
    public class f extends d4.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f4406b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ okio.Buffer f4407c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f4408d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ boolean f4409e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(java.lang.String str, java.lang.Object[] objArr, int i5, okio.Buffer buffer, int i6, boolean z4) {
            super(str, objArr);
            this.f4406b = i5;
            this.f4407c = buffer;
            this.f4408d = i6;
            this.f4409e = z4;
        }

        @Override // d4.b
        public void c() {
            try {
                boolean zD = g4.d.this.f4377p.d(this.f4406b, this.f4407c, this.f4408d, this.f4409e);
                if (zD) {
                    g4.d.this.f4386y.a(this.f4406b, g4.a.CANCEL);
                }
                if (zD || this.f4409e) {
                    synchronized (g4.d.this) {
                        try {
                            g4.d.this.A.remove(java.lang.Integer.valueOf(this.f4406b));
                        } catch (java.lang.Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (java.io.IOException unused) {
            }
        }
    }

    /* JADX INFO: compiled from: FramedConnection.java */
    public class g extends d4.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f4411b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ g4.a f4412c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(java.lang.String str, java.lang.Object[] objArr, int i5, g4.a aVar) {
            super(str, objArr);
            this.f4411b = i5;
            this.f4412c = aVar;
        }

        @Override // d4.b
        public void c() {
            g4.d.this.f4377p.c(this.f4411b, this.f4412c);
            synchronized (g4.d.this) {
                g4.d.this.A.remove(java.lang.Integer.valueOf(this.f4411b));
            }
        }
    }

    /* JADX INFO: compiled from: FramedConnection.java */
    public static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.net.Socket f4414a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.lang.String f4415b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public okio.BufferedSource f4416c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public okio.BufferedSink f4417d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public g4.d.i f4418e = g4.d.i.f4422a;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public c4.w f4419f = c4.w.SPDY_3;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public g4.m f4420g = g4.m.f4522a;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f4421h;

        public h(boolean z4) {
            this.f4421h = z4;
        }

        public g4.d i() throws java.io.IOException {
            return new g4.d(this, null);
        }

        public g4.d.h j(g4.d.i iVar) {
            this.f4418e = iVar;
            return this;
        }

        public g4.d.h k(c4.w wVar) {
            this.f4419f = wVar;
            return this;
        }

        public g4.d.h l(java.net.Socket socket, java.lang.String str, okio.BufferedSource bufferedSource, okio.BufferedSink bufferedSink) {
            this.f4414a = socket;
            this.f4415b = str;
            this.f4416c = bufferedSource;
            this.f4417d = bufferedSink;
            return this;
        }
    }

    /* JADX INFO: compiled from: FramedConnection.java */
    public static abstract class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g4.d.i f4422a = new g4.d.i.a();

        /* JADX INFO: compiled from: FramedConnection.java */
        public static class a extends g4.d.i {
            @Override // g4.d.i
            public void c(g4.e eVar) throws java.io.IOException {
                eVar.l(g4.a.REFUSED_STREAM);
            }
        }

        public void b(g4.d dVar) {
        }

        public abstract void c(g4.e eVar) throws java.io.IOException;
    }

    /* JADX INFO: compiled from: FramedConnection.java */
    public class j extends d4.b implements g4.b.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final g4.b f4423b;

        /* JADX INFO: compiled from: FramedConnection.java */
        public class a extends d4.b {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g4.e f4425b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(java.lang.String str, java.lang.Object[] objArr, g4.e eVar) {
                super(str, objArr);
                this.f4425b = eVar;
            }

            @Override // d4.b
            public void c() {
                try {
                    g4.d.this.f4369c.c(this.f4425b);
                } catch (java.io.IOException e5) {
                    i4.e.h().k(4, "FramedConnection.Listener failure for " + g4.d.this.f4371e, e5);
                    try {
                        this.f4425b.l(g4.a.PROTOCOL_ERROR);
                    } catch (java.io.IOException unused) {
                    }
                }
            }
        }

        /* JADX INFO: compiled from: FramedConnection.java */
        public class b extends d4.b {
            public b(java.lang.String str, java.lang.Object... objArr) {
                super(str, objArr);
            }

            @Override // d4.b
            public void c() {
                g4.d.this.f4369c.b(g4.d.this);
            }
        }

        /* JADX INFO: compiled from: FramedConnection.java */
        public class c extends d4.b {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g4.n f4428b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(java.lang.String str, java.lang.Object[] objArr, g4.n nVar) {
                super(str, objArr);
                this.f4428b = nVar;
            }

            @Override // d4.b
            public void c() {
                try {
                    g4.d.this.f4386y.L(this.f4428b);
                } catch (java.io.IOException unused) {
                }
            }
        }

        public /* synthetic */ j(g4.d dVar, g4.b bVar, g4.d.a aVar) {
            this(bVar);
        }

        @Override // g4.b.a
        public void a(int i5, g4.a aVar) {
            if (g4.d.this.m0(i5)) {
                g4.d.this.k0(i5, aVar);
                return;
            }
            g4.e eVarU0 = g4.d.this.u0(i5);
            if (eVarU0 != null) {
                eVarU0.y(aVar);
            }
        }

        @Override // g4.b.a
        public void b(int i5, long j5) {
            if (i5 == 0) {
                synchronized (g4.d.this) {
                    g4.d dVar = g4.d.this;
                    dVar.f4380s += j5;
                    dVar.notifyAll();
                }
                return;
            }
            g4.e eVarY = g4.d.this.Y(i5);
            if (eVarY != null) {
                synchronized (eVarY) {
                    eVarY.i(j5);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // d4.b
        public void c() throws java.lang.Throwable {
            g4.a aVar;
            java.lang.Object obj;
            g4.a aVar2 = g4.a.INTERNAL_ERROR;
            try {
                try {
                    try {
                        if (!g4.d.this.f4368b) {
                            this.f4423b.N();
                        }
                        while (this.f4423b.W(this)) {
                        }
                        g4.a aVar3 = g4.a.NO_ERROR;
                        try {
                            aVar2 = g4.a.CANCEL;
                            g4.d.this.V(aVar3, aVar2);
                            obj = aVar3;
                        } catch (java.io.IOException unused) {
                            aVar2 = g4.a.PROTOCOL_ERROR;
                            g4.d dVar = g4.d.this;
                            dVar.V(aVar2, aVar2);
                            obj = dVar;
                        }
                    } catch (java.lang.Throwable th) {
                        aVar = obj;
                        th = th;
                        try {
                            g4.d.this.V(aVar, aVar2);
                        } catch (java.io.IOException unused2) {
                        }
                        d4.c.c(this.f4423b);
                        throw th;
                    }
                } catch (java.io.IOException unused3) {
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    aVar = aVar2;
                    g4.d.this.V(aVar, aVar2);
                    d4.c.c(this.f4423b);
                    throw th;
                }
            } catch (java.io.IOException unused4) {
            }
            d4.c.c(this.f4423b);
        }

        @Override // g4.b.a
        public void d(int i5, int i6, java.util.List<g4.f> list) {
            g4.d.this.j0(i6, list);
        }

        public final void e(g4.n nVar) {
            g4.d.B.execute(new g4.d.j.c("OkHttp %s ACK Settings", new java.lang.Object[]{g4.d.this.f4371e}, nVar));
        }

        @Override // g4.b.a
        public void g(boolean z4, int i5, int i6) {
            if (!z4) {
                g4.d.this.A0(true, i5, i6, null);
                return;
            }
            g4.l lVarR0 = g4.d.this.r0(i5);
            if (lVarR0 != null) {
                lVarR0.b();
            }
        }

        @Override // g4.b.a
        public void h(int i5, g4.a aVar, okio.ByteString byteString) {
            g4.e[] eVarArr;
            byteString.size();
            synchronized (g4.d.this) {
                eVarArr = (g4.e[]) g4.d.this.f4370d.values().toArray(new g4.e[g4.d.this.f4370d.size()]);
                g4.d.this.f4374h = true;
            }
            for (g4.e eVar : eVarArr) {
                if (eVar.o() > i5 && eVar.s()) {
                    eVar.y(g4.a.REFUSED_STREAM);
                    g4.d.this.u0(eVar.o());
                }
            }
        }

        @Override // g4.b.a
        public void i() {
        }

        @Override // g4.b.a
        public void j(boolean z4, int i5, okio.BufferedSource bufferedSource, int i6) throws java.io.IOException {
            if (g4.d.this.m0(i5)) {
                g4.d.this.h0(i5, bufferedSource, i6, z4);
                return;
            }
            g4.e eVarY = g4.d.this.Y(i5);
            if (eVarY == null) {
                g4.d.this.C0(i5, g4.a.INVALID_STREAM);
                bufferedSource.skip(i6);
            } else {
                eVarY.v(bufferedSource, i6);
                if (z4) {
                    eVarY.w();
                }
            }
        }

        @Override // g4.b.a
        public void k(boolean z4, g4.n nVar) {
            g4.e[] eVarArr;
            long j5;
            int i5;
            synchronized (g4.d.this) {
                int iE = g4.d.this.f4382u.e(65536);
                if (z4) {
                    g4.d.this.f4382u.a();
                }
                g4.d.this.f4382u.j(nVar);
                if (g4.d.this.X() == c4.w.HTTP_2) {
                    e(nVar);
                }
                int iE2 = g4.d.this.f4382u.e(65536);
                eVarArr = null;
                if (iE2 == -1 || iE2 == iE) {
                    j5 = 0;
                } else {
                    j5 = iE2 - iE;
                    if (!g4.d.this.f4383v) {
                        g4.d.this.R(j5);
                        g4.d.this.f4383v = true;
                    }
                    if (!g4.d.this.f4370d.isEmpty()) {
                        eVarArr = (g4.e[]) g4.d.this.f4370d.values().toArray(new g4.e[g4.d.this.f4370d.size()]);
                    }
                }
                g4.d.B.execute(new g4.d.j.b("OkHttp %s settings", g4.d.this.f4371e));
            }
            if (eVarArr == null || j5 == 0) {
                return;
            }
            for (g4.e eVar : eVarArr) {
                synchronized (eVar) {
                    eVar.i(j5);
                }
            }
        }

        @Override // g4.b.a
        public void l(int i5, int i6, int i7, boolean z4) {
        }

        @Override // g4.b.a
        public void m(boolean z4, boolean z5, int i5, int i6, java.util.List<g4.f> list, g4.g gVar) {
            if (g4.d.this.m0(i5)) {
                g4.d.this.i0(i5, list, z5);
                return;
            }
            synchronized (g4.d.this) {
                if (g4.d.this.f4374h) {
                    return;
                }
                g4.e eVarY = g4.d.this.Y(i5);
                if (eVarY != null) {
                    if (gVar.h()) {
                        eVarY.n(g4.a.PROTOCOL_ERROR);
                        g4.d.this.u0(i5);
                        return;
                    } else {
                        eVarY.x(list, gVar);
                        if (z5) {
                            eVarY.w();
                            return;
                        }
                        return;
                    }
                }
                if (gVar.f()) {
                    g4.d.this.C0(i5, g4.a.INVALID_STREAM);
                    return;
                }
                if (i5 <= g4.d.this.f4372f) {
                    return;
                }
                if (i5 % 2 == g4.d.this.f4373g % 2) {
                    return;
                }
                g4.e eVar = new g4.e(i5, g4.d.this, z4, z5, list);
                g4.d.this.f4372f = i5;
                g4.d.this.f4370d.put(java.lang.Integer.valueOf(i5), eVar);
                g4.d.B.execute(new g4.d.j.a("OkHttp %s stream %d", new java.lang.Object[]{g4.d.this.f4371e, java.lang.Integer.valueOf(i5)}, eVar));
            }
        }

        public j(g4.b bVar) {
            super("OkHttp %s", g4.d.this.f4371e);
            this.f4423b = bVar;
        }
    }

    public /* synthetic */ d(g4.d.h hVar, g4.d.a aVar) {
        this(hVar);
    }

    public final void A0(boolean z4, int i5, int i6, g4.l lVar) {
        B.execute(new g4.d.c("OkHttp %s ping %08x%08x", new java.lang.Object[]{this.f4371e, java.lang.Integer.valueOf(i5), java.lang.Integer.valueOf(i6)}, z4, i5, i6, lVar));
    }

    public void B0(int i5, g4.a aVar) throws java.io.IOException {
        this.f4386y.a(i5, aVar);
    }

    public void C0(int i5, g4.a aVar) {
        B.submit(new g4.d.a("OkHttp %s stream %d", new java.lang.Object[]{this.f4371e, java.lang.Integer.valueOf(i5)}, i5, aVar));
    }

    public void D0(int i5, long j5) {
        B.execute(new g4.d.b("OkHttp Window Update %s stream %d", new java.lang.Object[]{this.f4371e, java.lang.Integer.valueOf(i5)}, i5, j5));
    }

    public void R(long j5) {
        this.f4380s += j5;
        if (j5 > 0) {
            notifyAll();
        }
    }

    public final void V(g4.a aVar, g4.a aVar2) throws java.io.IOException {
        g4.e[] eVarArr;
        g4.l[] lVarArr = null;
        try {
            v0(aVar);
            e = null;
        } catch (java.io.IOException e5) {
            e = e5;
        }
        synchronized (this) {
            if (this.f4370d.isEmpty()) {
                eVarArr = null;
            } else {
                eVarArr = (g4.e[]) this.f4370d.values().toArray(new g4.e[this.f4370d.size()]);
                this.f4370d.clear();
            }
            java.util.Map<java.lang.Integer, g4.l> map = this.f4376o;
            if (map != null) {
                g4.l[] lVarArr2 = (g4.l[]) map.values().toArray(new g4.l[this.f4376o.size()]);
                this.f4376o = null;
                lVarArr = lVarArr2;
            }
        }
        if (eVarArr != null) {
            for (g4.e eVar : eVarArr) {
                try {
                    eVar.l(aVar2);
                } catch (java.io.IOException e6) {
                    if (e != null) {
                        e = e6;
                    }
                }
            }
        }
        if (lVarArr != null) {
            for (g4.l lVar : lVarArr) {
                lVar.a();
            }
        }
        try {
            this.f4386y.close();
        } catch (java.io.IOException e7) {
            if (e == null) {
                e = e7;
            }
        }
        try {
            this.f4385x.close();
        } catch (java.io.IOException e8) {
            e = e8;
        }
        if (e != null) {
            throw e;
        }
    }

    public c4.w X() {
        return this.f4367a;
    }

    public synchronized g4.e Y(int i5) {
        return this.f4370d.get(java.lang.Integer.valueOf(i5));
    }

    public synchronized int Z() {
        return this.f4382u.f(Integer.MAX_VALUE);
    }

    public final g4.e b0(int i5, java.util.List<g4.f> list, boolean z4, boolean z5) throws java.io.IOException {
        int i6;
        g4.e eVar;
        boolean z6 = !z4;
        boolean z7 = true;
        boolean z8 = !z5;
        synchronized (this.f4386y) {
            synchronized (this) {
                if (this.f4374h) {
                    throw new java.io.IOException("shutdown");
                }
                i6 = this.f4373g;
                this.f4373g = i6 + 2;
                eVar = new g4.e(i6, this, z6, z8, list);
                if (z4 && this.f4380s != 0 && eVar.f4431b != 0) {
                    z7 = false;
                }
                if (eVar.t()) {
                    this.f4370d.put(java.lang.Integer.valueOf(i6), eVar);
                }
            }
            if (i5 == 0) {
                this.f4386y.f0(z6, z8, i6, i5, list);
            } else {
                if (this.f4368b) {
                    throw new java.lang.IllegalArgumentException("client streams shouldn't have associated stream IDs");
                }
                this.f4386y.d(i5, i6, list);
            }
        }
        if (z7) {
            this.f4386y.flush();
        }
        return eVar;
    }

    public g4.e c0(java.util.List<g4.f> list, boolean z4, boolean z5) throws java.io.IOException {
        return b0(0, list, z4, z5);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        V(g4.a.NO_ERROR, g4.a.CANCEL);
    }

    public void flush() throws java.io.IOException {
        this.f4386y.flush();
    }

    public final void h0(int i5, okio.BufferedSource bufferedSource, int i6, boolean z4) throws java.io.IOException {
        okio.Buffer buffer = new okio.Buffer();
        long j5 = i6;
        bufferedSource.require(j5);
        bufferedSource.read(buffer, j5);
        if (buffer.size() == j5) {
            this.f4375i.execute(new g4.d.f("OkHttp %s Push Data[%s]", new java.lang.Object[]{this.f4371e, java.lang.Integer.valueOf(i5)}, i5, buffer, i6, z4));
            return;
        }
        throw new java.io.IOException(buffer.size() + " != " + i6);
    }

    public final void i0(int i5, java.util.List<g4.f> list, boolean z4) {
        this.f4375i.execute(new g4.d.e("OkHttp %s Push Headers[%s]", new java.lang.Object[]{this.f4371e, java.lang.Integer.valueOf(i5)}, i5, list, z4));
    }

    public final void j0(int i5, java.util.List<g4.f> list) {
        synchronized (this) {
            if (this.A.contains(java.lang.Integer.valueOf(i5))) {
                C0(i5, g4.a.PROTOCOL_ERROR);
            } else {
                this.A.add(java.lang.Integer.valueOf(i5));
                this.f4375i.execute(new g4.d.C0056d("OkHttp %s Push Request[%s]", new java.lang.Object[]{this.f4371e, java.lang.Integer.valueOf(i5)}, i5, list));
            }
        }
    }

    public final void k0(int i5, g4.a aVar) {
        this.f4375i.execute(new g4.d.g("OkHttp %s Push Reset[%s]", new java.lang.Object[]{this.f4371e, java.lang.Integer.valueOf(i5)}, i5, aVar));
    }

    public final boolean m0(int i5) {
        return this.f4367a == c4.w.HTTP_2 && i5 != 0 && (i5 & 1) == 0;
    }

    public final synchronized g4.l r0(int i5) {
        java.util.Map<java.lang.Integer, g4.l> map;
        map = this.f4376o;
        return map != null ? map.remove(java.lang.Integer.valueOf(i5)) : null;
    }

    public synchronized g4.e u0(int i5) {
        g4.e eVarRemove;
        eVarRemove = this.f4370d.remove(java.lang.Integer.valueOf(i5));
        notifyAll();
        return eVarRemove;
    }

    public void v0(g4.a aVar) throws java.io.IOException {
        synchronized (this.f4386y) {
            synchronized (this) {
                if (this.f4374h) {
                    return;
                }
                this.f4374h = true;
                this.f4386y.A(this.f4372f, aVar, d4.c.f3965a);
            }
        }
    }

    public void w0() throws java.io.IOException {
        x0(true);
    }

    public void x0(boolean z4) throws java.io.IOException {
        if (z4) {
            this.f4386y.p0();
            this.f4386y.t0(this.f4381t);
            int iE = this.f4381t.e(65536);
            if (iE != 65536) {
                this.f4386y.b(0, iE - 65536);
            }
        }
        new java.lang.Thread(this.f4387z).start();
    }

    public void y0(int i5, boolean z4, okio.Buffer buffer, long j5) throws java.io.IOException {
        long j6;
        int iMin;
        long j7;
        if (j5 == 0) {
            this.f4386y.p(z4, i5, buffer, 0);
            return;
        }
        while (j5 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        j6 = this.f4380s;
                        if (j6 <= 0) {
                            if (!this.f4370d.containsKey(java.lang.Integer.valueOf(i5))) {
                                throw new java.io.IOException("stream closed");
                            }
                            wait();
                        }
                    } catch (java.lang.InterruptedException unused) {
                        throw new java.io.InterruptedIOException();
                    }
                }
                iMin = java.lang.Math.min((int) java.lang.Math.min(j5, j6), this.f4386y.e0());
                j7 = iMin;
                this.f4380s -= j7;
            }
            j5 -= j7;
            this.f4386y.p(z4 && j5 == 0, i5, buffer, iMin);
        }
    }

    public final void z0(boolean z4, int i5, int i6, g4.l lVar) throws java.io.IOException {
        synchronized (this.f4386y) {
            if (lVar != null) {
                lVar.c();
                this.f4386y.g(z4, i5, i6);
            } else {
                this.f4386y.g(z4, i5, i6);
            }
            throw th;
        }
    }

    public d(g4.d.h hVar) {
        this.f4370d = new java.util.HashMap();
        this.f4379r = 0L;
        this.f4381t = new g4.n();
        g4.n nVar = new g4.n();
        this.f4382u = nVar;
        this.f4383v = false;
        this.A = new java.util.LinkedHashSet();
        c4.w wVar = hVar.f4419f;
        this.f4367a = wVar;
        this.f4377p = hVar.f4420g;
        boolean z4 = hVar.f4421h;
        this.f4368b = z4;
        this.f4369c = hVar.f4418e;
        this.f4373g = hVar.f4421h ? 1 : 2;
        if (hVar.f4421h && wVar == c4.w.HTTP_2) {
            this.f4373g += 2;
        }
        this.f4378q = hVar.f4421h ? 1 : 2;
        if (hVar.f4421h) {
            this.f4381t.l(7, 0, 16777216);
        }
        java.lang.String str = hVar.f4415b;
        this.f4371e = str;
        g4.d.a aVar = null;
        if (wVar == c4.w.HTTP_2) {
            this.f4384w = new g4.i();
            this.f4375i = new java.util.concurrent.ThreadPoolExecutor(0, 1, 60L, java.util.concurrent.TimeUnit.SECONDS, new java.util.concurrent.LinkedBlockingQueue(), d4.c.y(d4.c.l("OkHttp %s Push Observer", str), true));
            nVar.l(7, 0, 65535);
            nVar.l(5, 0, 16384);
        } else {
            if (wVar != c4.w.SPDY_3) {
                throw new java.lang.AssertionError(wVar);
            }
            this.f4384w = new g4.o();
            this.f4375i = null;
        }
        this.f4380s = nVar.e(65536);
        this.f4385x = hVar.f4414a;
        this.f4386y = this.f4384w.b(hVar.f4417d, z4);
        this.f4387z = new g4.d.j(this, this.f4384w.a(hVar.f4416c, z4), aVar);
    }
}
