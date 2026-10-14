package g4;

/* JADX INFO: compiled from: FramedStream.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f4431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4432c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g4.d f4433d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.util.List<g4.f> f4434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.util.List<g4.f> f4435f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final g4.e.c f4436g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g4.e.b f4437h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f4430a = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final g4.e.d f4438i = new g4.e.d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final g4.e.d f4439j = new g4.e.d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public g4.a f4440k = null;

    /* JADX INFO: compiled from: FramedStream.java */
    public static /* synthetic */ class a {
    }

    /* JADX INFO: compiled from: FramedStream.java */
    public final class b implements okio.Sink {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.Buffer f4441a = new okio.Buffer();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f4442b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f4443c;

        public b() {
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            synchronized (g4.e.this) {
                if (this.f4442b) {
                    return;
                }
                if (!g4.e.this.f4437h.f4443c) {
                    if (this.f4441a.size() > 0) {
                        while (this.f4441a.size() > 0) {
                            h(true);
                        }
                    } else {
                        g4.e.this.f4433d.y0(g4.e.this.f4432c, true, null, 0L);
                    }
                }
                synchronized (g4.e.this) {
                    this.f4442b = true;
                }
                g4.e.this.f4433d.flush();
                g4.e.this.j();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws java.io.IOException {
            synchronized (g4.e.this) {
                g4.e.this.k();
            }
            while (this.f4441a.size() > 0) {
                h(false);
                g4.e.this.f4433d.flush();
            }
        }

        public final void h(boolean z4) throws java.io.IOException {
            long jMin;
            g4.e eVar;
            synchronized (g4.e.this) {
                g4.e.this.f4439j.enter();
                while (true) {
                    try {
                        g4.e eVar2 = g4.e.this;
                        if (eVar2.f4431b > 0 || this.f4443c || this.f4442b || eVar2.f4440k != null) {
                            break;
                        } else {
                            g4.e.this.z();
                        }
                    } catch (java.lang.Throwable th) {
                        g4.e.this.f4439j.a();
                        throw th;
                    }
                }
                g4.e.this.f4439j.a();
                g4.e.this.k();
                jMin = java.lang.Math.min(g4.e.this.f4431b, this.f4441a.size());
                eVar = g4.e.this;
                eVar.f4431b -= jMin;
            }
            eVar.f4439j.enter();
            try {
                g4.e.this.f4433d.y0(g4.e.this.f4432c, z4 && jMin == this.f4441a.size(), this.f4441a, jMin);
            } finally {
                g4.e.this.f4439j.a();
            }
        }

        @Override // okio.Sink
        public okio.Timeout timeout() {
            return g4.e.this.f4439j;
        }

        @Override // okio.Sink
        public void write(okio.Buffer buffer, long j5) throws java.io.IOException {
            this.f4441a.write(buffer, j5);
            while (this.f4441a.size() >= 16384) {
                h(false);
            }
        }
    }

    /* JADX INFO: compiled from: FramedStream.java */
    public final class c implements okio.Source {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.Buffer f4445a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final okio.Buffer f4446b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f4447c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f4448d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f4449e;

        public /* synthetic */ c(g4.e eVar, long j5, g4.e.a aVar) {
            this(j5);
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            synchronized (g4.e.this) {
                this.f4448d = true;
                this.f4446b.clear();
                g4.e.this.notifyAll();
            }
            g4.e.this.j();
        }

        public final void h() throws java.io.IOException {
            if (this.f4448d) {
                throw new java.io.IOException("stream closed");
            }
            if (g4.e.this.f4440k != null) {
                throw new g4.p(g4.e.this.f4440k);
            }
        }

        public void i(okio.BufferedSource bufferedSource, long j5) throws java.io.IOException {
            boolean z4;
            boolean z5;
            boolean z6;
            while (j5 > 0) {
                synchronized (g4.e.this) {
                    z4 = this.f4449e;
                    z5 = true;
                    z6 = this.f4446b.size() + j5 > this.f4447c;
                }
                if (z6) {
                    bufferedSource.skip(j5);
                    g4.e.this.n(g4.a.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z4) {
                    bufferedSource.skip(j5);
                    return;
                }
                long j6 = bufferedSource.read(this.f4445a, j5);
                if (j6 == -1) {
                    throw new java.io.EOFException();
                }
                j5 -= j6;
                synchronized (g4.e.this) {
                    if (this.f4446b.size() != 0) {
                        z5 = false;
                    }
                    this.f4446b.writeAll(this.f4445a);
                    if (z5) {
                        g4.e.this.notifyAll();
                    }
                }
            }
        }

        public final void j() throws java.io.IOException {
            g4.e.this.f4438i.enter();
            while (this.f4446b.size() == 0 && !this.f4449e && !this.f4448d && g4.e.this.f4440k == null) {
                try {
                    g4.e.this.z();
                } catch (java.lang.Throwable th) {
                    g4.e.this.f4438i.a();
                    throw th;
                }
            }
            g4.e.this.f4438i.a();
        }

        @Override // okio.Source
        public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
            if (j5 < 0) {
                throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
            }
            synchronized (g4.e.this) {
                j();
                h();
                if (this.f4446b.size() == 0) {
                    return -1L;
                }
                okio.Buffer buffer2 = this.f4446b;
                long j6 = buffer2.read(buffer, java.lang.Math.min(j5, buffer2.size()));
                g4.e eVar = g4.e.this;
                long j7 = eVar.f4430a + j6;
                eVar.f4430a = j7;
                if (j7 >= eVar.f4433d.f4381t.e(65536) / 2) {
                    g4.e.this.f4433d.D0(g4.e.this.f4432c, g4.e.this.f4430a);
                    g4.e.this.f4430a = 0L;
                }
                synchronized (g4.e.this.f4433d) {
                    g4.e.this.f4433d.f4379r += j6;
                    if (g4.e.this.f4433d.f4379r >= g4.e.this.f4433d.f4381t.e(65536) / 2) {
                        g4.e.this.f4433d.D0(0, g4.e.this.f4433d.f4379r);
                        g4.e.this.f4433d.f4379r = 0L;
                    }
                }
                return j6;
            }
        }

        @Override // okio.Source
        public okio.Timeout timeout() {
            return g4.e.this.f4438i;
        }

        public c(long j5) {
            this.f4445a = new okio.Buffer();
            this.f4446b = new okio.Buffer();
            this.f4447c = j5;
        }
    }

    /* JADX INFO: compiled from: FramedStream.java */
    public class d extends okio.AsyncTimeout {
        public d() {
        }

        public void a() throws java.io.IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override // okio.AsyncTimeout
        public java.io.IOException newTimeoutException(java.io.IOException iOException) {
            java.net.SocketTimeoutException socketTimeoutException = new java.net.SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // okio.AsyncTimeout
        public void timedOut() {
            g4.e.this.n(g4.a.CANCEL);
        }
    }

    public e(int i5, g4.d dVar, boolean z4, boolean z5, java.util.List<g4.f> list) {
        java.util.Objects.requireNonNull(dVar, "connection == null");
        java.util.Objects.requireNonNull(list, "requestHeaders == null");
        this.f4432c = i5;
        this.f4433d = dVar;
        this.f4431b = dVar.f4382u.e(65536);
        g4.e.c cVar = new g4.e.c(this, dVar.f4381t.e(65536), null);
        this.f4436g = cVar;
        g4.e.b bVar = new g4.e.b();
        this.f4437h = bVar;
        cVar.f4449e = z5;
        bVar.f4443c = z4;
        this.f4434e = list;
    }

    public okio.Timeout A() {
        return this.f4439j;
    }

    public void i(long j5) {
        this.f4431b += j5;
        if (j5 > 0) {
            notifyAll();
        }
    }

    public final void j() throws java.io.IOException {
        boolean z4;
        boolean zT;
        synchronized (this) {
            z4 = !this.f4436g.f4449e && this.f4436g.f4448d && (this.f4437h.f4443c || this.f4437h.f4442b);
            zT = t();
        }
        if (z4) {
            l(g4.a.CANCEL);
        } else {
            if (zT) {
                return;
            }
            this.f4433d.u0(this.f4432c);
        }
    }

    public final void k() throws java.io.IOException {
        if (this.f4437h.f4442b) {
            throw new java.io.IOException("stream closed");
        }
        if (this.f4437h.f4443c) {
            throw new java.io.IOException("stream finished");
        }
        if (this.f4440k != null) {
            throw new g4.p(this.f4440k);
        }
    }

    public void l(g4.a aVar) throws java.io.IOException {
        if (m(aVar)) {
            this.f4433d.B0(this.f4432c, aVar);
        }
    }

    public final boolean m(g4.a aVar) {
        synchronized (this) {
            if (this.f4440k != null) {
                return false;
            }
            if (this.f4436g.f4449e && this.f4437h.f4443c) {
                return false;
            }
            this.f4440k = aVar;
            notifyAll();
            this.f4433d.u0(this.f4432c);
            return true;
        }
    }

    public void n(g4.a aVar) {
        if (m(aVar)) {
            this.f4433d.C0(this.f4432c, aVar);
        }
    }

    public int o() {
        return this.f4432c;
    }

    public synchronized java.util.List<g4.f> p() throws java.io.IOException {
        java.util.List<g4.f> list;
        this.f4438i.enter();
        while (this.f4435f == null && this.f4440k == null) {
            try {
                z();
            } catch (java.lang.Throwable th) {
                this.f4438i.a();
                throw th;
            }
        }
        this.f4438i.a();
        list = this.f4435f;
        if (list == null) {
            throw new g4.p(this.f4440k);
        }
        return list;
    }

    public okio.Sink q() {
        synchronized (this) {
            if (this.f4435f == null && !s()) {
                throw new java.lang.IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f4437h;
    }

    public okio.Source r() {
        return this.f4436g;
    }

    public boolean s() {
        return this.f4433d.f4368b == ((this.f4432c & 1) == 1);
    }

    public synchronized boolean t() {
        if (this.f4440k != null) {
            return false;
        }
        return !(this.f4436g.f4449e || this.f4436g.f4448d) || !(this.f4437h.f4443c || this.f4437h.f4442b) || this.f4435f == null;
    }

    public okio.Timeout u() {
        return this.f4438i;
    }

    public void v(okio.BufferedSource bufferedSource, int i5) throws java.io.IOException {
        this.f4436g.i(bufferedSource, i5);
    }

    public void w() {
        boolean zT;
        synchronized (this) {
            this.f4436g.f4449e = true;
            zT = t();
            notifyAll();
        }
        if (zT) {
            return;
        }
        this.f4433d.u0(this.f4432c);
    }

    public void x(java.util.List<g4.f> list, g4.g gVar) {
        g4.a aVar = null;
        boolean zT = true;
        synchronized (this) {
            if (this.f4435f == null) {
                if (gVar.b()) {
                    aVar = g4.a.PROTOCOL_ERROR;
                } else {
                    this.f4435f = list;
                    zT = t();
                    notifyAll();
                }
            } else if (gVar.e()) {
                aVar = g4.a.STREAM_IN_USE;
            } else {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                arrayList.addAll(this.f4435f);
                arrayList.addAll(list);
                this.f4435f = arrayList;
            }
        }
        if (aVar != null) {
            n(aVar);
        } else {
            if (zT) {
                return;
            }
            this.f4433d.u0(this.f4432c);
        }
    }

    public synchronized void y(g4.a aVar) {
        if (this.f4440k == null) {
            this.f4440k = aVar;
            notifyAll();
        }
    }

    public final void z() throws java.io.InterruptedIOException {
        try {
            wait();
        } catch (java.lang.InterruptedException unused) {
            throw new java.io.InterruptedIOException();
        }
    }
}
