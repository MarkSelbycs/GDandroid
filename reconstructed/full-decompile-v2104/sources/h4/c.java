package h4;

/* JADX INFO: compiled from: Http1xStream.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c implements h4.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.v f4574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f4.g f4575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final okio.BufferedSource f4576c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final okio.BufferedSink f4577d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4578e = 0;

    /* JADX INFO: compiled from: Http1xStream.java */
    public static /* synthetic */ class a {
    }

    /* JADX INFO: compiled from: Http1xStream.java */
    public class d extends h4.c.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final c4.r f4585d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f4586e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f4587f;

        public d(c4.r rVar) {
            super(h4.c.this, null);
            this.f4586e = -1L;
            this.f4587f = true;
            this.f4585d = rVar;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            if (this.f4580b) {
                return;
            }
            if (this.f4587f && !d4.c.i(this, 100, java.util.concurrent.TimeUnit.MILLISECONDS)) {
                c(false);
            }
            this.f4580b = true;
        }

        public final void e() throws java.io.IOException {
            if (this.f4586e != -1) {
                h4.c.this.f4576c.readUtf8LineStrict();
            }
            try {
                this.f4586e = h4.c.this.f4576c.readHexadecimalUnsignedLong();
                java.lang.String strTrim = h4.c.this.f4576c.readUtf8LineStrict().trim();
                if (this.f4586e < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new java.net.ProtocolException("expected chunk size and optional extensions but was \"" + this.f4586e + strTrim + "\"");
                }
                if (this.f4586e == 0) {
                    this.f4587f = false;
                    h4.f.e(h4.c.this.f4574a.j(), this.f4585d, h4.c.this.t());
                    c(true);
                }
            } catch (java.lang.NumberFormatException e5) {
                throw new java.net.ProtocolException(e5.getMessage());
            }
        }

        @Override // okio.Source
        public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
            if (j5 < 0) {
                throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
            }
            if (this.f4580b) {
                throw new java.lang.IllegalStateException("closed");
            }
            if (!this.f4587f) {
                return -1L;
            }
            long j6 = this.f4586e;
            if (j6 == 0 || j6 == -1) {
                e();
                if (!this.f4587f) {
                    return -1L;
                }
            }
            long j7 = h4.c.this.f4576c.read(buffer, java.lang.Math.min(j5, this.f4586e));
            if (j7 != -1) {
                this.f4586e -= j7;
                return j7;
            }
            c(false);
            throw new java.net.ProtocolException("unexpected end of stream");
        }
    }

    /* JADX INFO: compiled from: Http1xStream.java */
    public final class e implements okio.Sink {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.ForwardingTimeout f4589a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f4590b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f4591c;

        public /* synthetic */ e(h4.c cVar, long j5, h4.c.a aVar) {
            this(j5);
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            if (this.f4590b) {
                return;
            }
            this.f4590b = true;
            if (this.f4591c > 0) {
                throw new java.net.ProtocolException("unexpected end of stream");
            }
            h4.c.this.m(this.f4589a);
            h4.c.this.f4578e = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws java.io.IOException {
            if (this.f4590b) {
                return;
            }
            h4.c.this.f4577d.flush();
        }

        @Override // okio.Sink
        public okio.Timeout timeout() {
            return this.f4589a;
        }

        @Override // okio.Sink
        public void write(okio.Buffer buffer, long j5) throws java.io.IOException {
            if (this.f4590b) {
                throw new java.lang.IllegalStateException("closed");
            }
            d4.c.a(buffer.size(), 0L, j5);
            if (j5 <= this.f4591c) {
                h4.c.this.f4577d.write(buffer, j5);
                this.f4591c -= j5;
                return;
            }
            throw new java.net.ProtocolException("expected " + this.f4591c + " bytes but received " + j5);
        }

        public e(long j5) {
            this.f4589a = new okio.ForwardingTimeout(h4.c.this.f4577d.timeout());
            this.f4591c = j5;
        }
    }

    /* JADX INFO: compiled from: Http1xStream.java */
    public class f extends h4.c.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f4593d;

        public f(long j5) throws java.io.IOException {
            super(h4.c.this, null);
            this.f4593d = j5;
            if (j5 == 0) {
                c(true);
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            if (this.f4580b) {
                return;
            }
            if (this.f4593d != 0 && !d4.c.i(this, 100, java.util.concurrent.TimeUnit.MILLISECONDS)) {
                c(false);
            }
            this.f4580b = true;
        }

        @Override // okio.Source
        public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
            if (j5 < 0) {
                throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
            }
            if (this.f4580b) {
                throw new java.lang.IllegalStateException("closed");
            }
            if (this.f4593d == 0) {
                return -1L;
            }
            long j6 = h4.c.this.f4576c.read(buffer, java.lang.Math.min(this.f4593d, j5));
            if (j6 == -1) {
                c(false);
                throw new java.net.ProtocolException("unexpected end of stream");
            }
            long j7 = this.f4593d - j6;
            this.f4593d = j7;
            if (j7 == 0) {
                c(true);
            }
            return j6;
        }
    }

    /* JADX INFO: compiled from: Http1xStream.java */
    public class g extends h4.c.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f4595d;

        public g() {
            super(h4.c.this, null);
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            if (this.f4580b) {
                return;
            }
            if (!this.f4595d) {
                c(false);
            }
            this.f4580b = true;
        }

        @Override // okio.Source
        public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
            if (j5 < 0) {
                throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
            }
            if (this.f4580b) {
                throw new java.lang.IllegalStateException("closed");
            }
            if (this.f4595d) {
                return -1L;
            }
            long j6 = h4.c.this.f4576c.read(buffer, j5);
            if (j6 != -1) {
                return j6;
            }
            this.f4595d = true;
            c(true);
            return -1L;
        }

        public /* synthetic */ g(h4.c cVar, h4.c.a aVar) {
            this();
        }
    }

    public c(c4.v vVar, f4.g gVar, okio.BufferedSource bufferedSource, okio.BufferedSink bufferedSink) {
        this.f4574a = vVar;
        this.f4575b = gVar;
        this.f4576c = bufferedSource;
        this.f4577d = bufferedSink;
    }

    @Override // h4.h
    public okio.Sink a(c4.y yVar, long j5) {
        if ("chunked".equalsIgnoreCase(yVar.h("Transfer-Encoding"))) {
            return o();
        }
        if (j5 != -1) {
            return q(j5);
        }
        throw new java.lang.IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // h4.h
    public c4.b0 b(c4.a0 a0Var) throws java.io.IOException {
        return new h4.j(a0Var.I(), okio.Okio.buffer(n(a0Var)));
    }

    @Override // h4.h
    public void c() throws java.io.IOException {
        this.f4577d.flush();
    }

    @Override // h4.h
    public void d(c4.y yVar) throws java.io.IOException {
        v(yVar.i(), h4.k.a(yVar, this.f4575b.b().a().b().type()));
    }

    @Override // h4.h
    public c4.a0.b e() throws java.io.IOException {
        return u();
    }

    public final void m(okio.ForwardingTimeout forwardingTimeout) {
        okio.Timeout timeoutDelegate = forwardingTimeout.delegate();
        forwardingTimeout.setDelegate(okio.Timeout.NONE);
        timeoutDelegate.clearDeadline();
        timeoutDelegate.clearTimeout();
    }

    public final okio.Source n(c4.a0 a0Var) throws java.io.IOException {
        if (!h4.f.c(a0Var)) {
            return r(0L);
        }
        if ("chunked".equalsIgnoreCase(a0Var.C("Transfer-Encoding"))) {
            return p(a0Var.P().m());
        }
        long jB = h4.f.b(a0Var);
        return jB != -1 ? r(jB) : s();
    }

    public okio.Sink o() {
        if (this.f4578e == 1) {
            this.f4578e = 2;
            return new h4.c.C0060c(this, null);
        }
        throw new java.lang.IllegalStateException("state: " + this.f4578e);
    }

    public okio.Source p(c4.r rVar) throws java.io.IOException {
        if (this.f4578e == 4) {
            this.f4578e = 5;
            return new h4.c.d(rVar);
        }
        throw new java.lang.IllegalStateException("state: " + this.f4578e);
    }

    public okio.Sink q(long j5) {
        if (this.f4578e == 1) {
            this.f4578e = 2;
            return new h4.c.e(this, j5, null);
        }
        throw new java.lang.IllegalStateException("state: " + this.f4578e);
    }

    public okio.Source r(long j5) throws java.io.IOException {
        if (this.f4578e == 4) {
            this.f4578e = 5;
            return new h4.c.f(j5);
        }
        throw new java.lang.IllegalStateException("state: " + this.f4578e);
    }

    public okio.Source s() throws java.io.IOException {
        if (this.f4578e != 4) {
            throw new java.lang.IllegalStateException("state: " + this.f4578e);
        }
        f4.g gVar = this.f4575b;
        if (gVar == null) {
            throw new java.lang.IllegalStateException("streamAllocation == null");
        }
        this.f4578e = 5;
        gVar.h();
        return new h4.c.g(this, null);
    }

    public c4.q t() throws java.io.IOException {
        c4.q.b bVar = new c4.q.b();
        while (true) {
            java.lang.String utf8LineStrict = this.f4576c.readUtf8LineStrict();
            if (utf8LineStrict.length() == 0) {
                return bVar.e();
            }
            d4.a.f3963a.a(bVar, utf8LineStrict);
        }
    }

    public c4.a0.b u() throws java.io.IOException {
        h4.m mVarA;
        c4.a0.b bVarU;
        int i5 = this.f4578e;
        if (i5 != 1 && i5 != 3) {
            throw new java.lang.IllegalStateException("state: " + this.f4578e);
        }
        do {
            try {
                mVarA = h4.m.a(this.f4576c.readUtf8LineStrict());
                bVarU = new c4.a0.b().y(mVarA.f4630a).s(mVarA.f4631b).v(mVarA.f4632c).u(t());
            } catch (java.io.EOFException e5) {
                java.io.IOException iOException = new java.io.IOException("unexpected end of stream on " + this.f4575b);
                iOException.initCause(e5);
                throw iOException;
            }
        } while (mVarA.f4631b == 100);
        this.f4578e = 4;
        return bVarU;
    }

    public void v(c4.q qVar, java.lang.String str) throws java.io.IOException {
        if (this.f4578e != 0) {
            throw new java.lang.IllegalStateException("state: " + this.f4578e);
        }
        this.f4577d.writeUtf8(str).writeUtf8("\r\n");
        int iG = qVar.g();
        for (int i5 = 0; i5 < iG; i5++) {
            this.f4577d.writeUtf8(qVar.d(i5)).writeUtf8(": ").writeUtf8(qVar.h(i5)).writeUtf8("\r\n");
        }
        this.f4577d.writeUtf8("\r\n");
        this.f4578e = 1;
    }

    /* JADX INFO: compiled from: Http1xStream.java */
    public abstract class b implements okio.Source {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.ForwardingTimeout f4579a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f4580b;

        public b() {
            this.f4579a = new okio.ForwardingTimeout(h4.c.this.f4576c.timeout());
        }

        public final void c(boolean z4) throws java.io.IOException {
            if (h4.c.this.f4578e == 6) {
                return;
            }
            if (h4.c.this.f4578e != 5) {
                throw new java.lang.IllegalStateException("state: " + h4.c.this.f4578e);
            }
            h4.c.this.m(this.f4579a);
            h4.c.this.f4578e = 6;
            if (h4.c.this.f4575b != null) {
                h4.c.this.f4575b.n(!z4, h4.c.this);
            }
        }

        @Override // okio.Source
        public okio.Timeout timeout() {
            return this.f4579a;
        }

        public /* synthetic */ b(h4.c cVar, h4.c.a aVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: h4.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Http1xStream.java */
    public final class C0060c implements okio.Sink {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.ForwardingTimeout f4582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f4583b;

        public C0060c() {
            this.f4582a = new okio.ForwardingTimeout(h4.c.this.f4577d.timeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws java.io.IOException {
            if (this.f4583b) {
                return;
            }
            this.f4583b = true;
            h4.c.this.f4577d.writeUtf8("0\r\n\r\n");
            h4.c.this.m(this.f4582a);
            h4.c.this.f4578e = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public synchronized void flush() throws java.io.IOException {
            if (this.f4583b) {
                return;
            }
            h4.c.this.f4577d.flush();
        }

        @Override // okio.Sink
        public okio.Timeout timeout() {
            return this.f4582a;
        }

        @Override // okio.Sink
        public void write(okio.Buffer buffer, long j5) throws java.io.IOException {
            if (this.f4583b) {
                throw new java.lang.IllegalStateException("closed");
            }
            if (j5 == 0) {
                return;
            }
            h4.c.this.f4577d.writeHexadecimalUnsignedLong(j5);
            h4.c.this.f4577d.writeUtf8("\r\n");
            h4.c.this.f4577d.write(buffer, j5);
            h4.c.this.f4577d.writeUtf8("\r\n");
        }

        public /* synthetic */ C0060c(h4.c cVar, h4.c.a aVar) {
            this();
        }
    }
}
