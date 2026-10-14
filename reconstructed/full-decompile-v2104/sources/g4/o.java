package g4;

/* JADX INFO: compiled from: Spdy3.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class o implements g4.q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f4527a;

    /* JADX INFO: compiled from: Spdy3.java */
    public static final class a implements g4.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.BufferedSource f4528a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f4529b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final g4.k f4530c;

        public a(okio.BufferedSource bufferedSource, boolean z4) {
            this.f4528a = bufferedSource;
            this.f4530c = new g4.k(bufferedSource);
            this.f4529b = z4;
        }

        public static java.io.IOException c(java.lang.String str, java.lang.Object... objArr) throws java.io.IOException {
            throw new java.io.IOException(d4.c.l(str, objArr));
        }

        @Override // g4.b
        public void N() {
        }

        @Override // g4.b
        public boolean W(g4.b.a aVar) throws java.io.IOException {
            try {
                int i5 = this.f4528a.readInt();
                int i6 = this.f4528a.readInt();
                int i7 = ((-16777216) & i6) >>> 24;
                int i8 = i6 & 16777215;
                if (!((Integer.MIN_VALUE & i5) != 0)) {
                    aVar.j((i7 & 1) != 0, i5 & Integer.MAX_VALUE, this.f4528a, i8);
                    return true;
                }
                int i9 = (2147418112 & i5) >>> 16;
                int i10 = i5 & 65535;
                if (i9 != 3) {
                    throw new java.net.ProtocolException("version != 3: " + i9);
                }
                switch (i10) {
                    case 1:
                        n(aVar, i7, i8);
                        return true;
                    case 2:
                        l(aVar, i7, i8);
                        return true;
                    case 3:
                        i(aVar, i7, i8);
                        return true;
                    case 4:
                        j(aVar, i7, i8);
                        return true;
                    case 5:
                    default:
                        this.f4528a.skip(i8);
                        return true;
                    case 6:
                        h(aVar, i7, i8);
                        return true;
                    case 7:
                        e(aVar, i7, i8);
                        return true;
                    case 8:
                        f(aVar, i7, i8);
                        return true;
                    case 9:
                        o(aVar, i7, i8);
                        return true;
                }
            } catch (java.io.IOException unused) {
                return false;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            this.f4530c.c();
        }

        public final void e(g4.b.a aVar, int i5, int i6) throws java.io.IOException {
            if (i6 != 8) {
                throw c("TYPE_GOAWAY length: %d != 8", java.lang.Integer.valueOf(i6));
            }
            int i7 = this.f4528a.readInt() & Integer.MAX_VALUE;
            int i8 = this.f4528a.readInt();
            g4.a aVarF = g4.a.f(i8);
            if (aVarF == null) {
                throw c("TYPE_GOAWAY unexpected error code: %d", java.lang.Integer.valueOf(i8));
            }
            aVar.h(i7, aVarF, okio.ByteString.EMPTY);
        }

        public final void f(g4.b.a aVar, int i5, int i6) throws java.io.IOException {
            aVar.m(false, false, this.f4528a.readInt() & Integer.MAX_VALUE, -1, this.f4530c.f(i6 - 4), g4.g.SPDY_HEADERS);
        }

        public final void h(g4.b.a aVar, int i5, int i6) throws java.io.IOException {
            if (i6 != 4) {
                throw c("TYPE_PING length: %d != 4", java.lang.Integer.valueOf(i6));
            }
            int i7 = this.f4528a.readInt();
            aVar.g(this.f4529b == ((i7 & 1) == 1), i7, 0);
        }

        public final void i(g4.b.a aVar, int i5, int i6) throws java.io.IOException {
            if (i6 != 8) {
                throw c("TYPE_RST_STREAM length: %d != 8", java.lang.Integer.valueOf(i6));
            }
            int i7 = this.f4528a.readInt() & Integer.MAX_VALUE;
            int i8 = this.f4528a.readInt();
            g4.a aVarE = g4.a.e(i8);
            if (aVarE == null) {
                throw c("TYPE_RST_STREAM unexpected error code: %d", java.lang.Integer.valueOf(i8));
            }
            aVar.a(i7, aVarE);
        }

        public final void j(g4.b.a aVar, int i5, int i6) throws java.io.IOException {
            int i7 = this.f4528a.readInt();
            if (i6 != (i7 * 8) + 4) {
                throw c("TYPE_SETTINGS length: %d != 4 + 8 * %d", java.lang.Integer.valueOf(i6), java.lang.Integer.valueOf(i7));
            }
            g4.n nVar = new g4.n();
            for (int i8 = 0; i8 < i7; i8++) {
                int i9 = this.f4528a.readInt();
                nVar.l(i9 & 16777215, ((-16777216) & i9) >>> 24, this.f4528a.readInt());
            }
            aVar.k((i5 & 1) != 0, nVar);
        }

        public final void l(g4.b.a aVar, int i5, int i6) throws java.io.IOException {
            aVar.m(false, (i5 & 1) != 0, this.f4528a.readInt() & Integer.MAX_VALUE, -1, this.f4530c.f(i6 - 4), g4.g.SPDY_REPLY);
        }

        public final void n(g4.b.a aVar, int i5, int i6) throws java.io.IOException {
            int i7 = this.f4528a.readInt() & Integer.MAX_VALUE;
            int i8 = this.f4528a.readInt() & Integer.MAX_VALUE;
            this.f4528a.readShort();
            aVar.m((i5 & 2) != 0, (i5 & 1) != 0, i7, i8, this.f4530c.f(i6 - 10), g4.g.SPDY_SYN_STREAM);
        }

        public final void o(g4.b.a aVar, int i5, int i6) throws java.io.IOException {
            if (i6 != 8) {
                throw c("TYPE_WINDOW_UPDATE length: %d != 8", java.lang.Integer.valueOf(i6));
            }
            int i7 = this.f4528a.readInt() & Integer.MAX_VALUE;
            long j5 = this.f4528a.readInt() & Integer.MAX_VALUE;
            if (j5 == 0) {
                throw c("windowSizeIncrement was 0", java.lang.Long.valueOf(j5));
            }
            aVar.b(i7, j5);
        }
    }

    /* JADX INFO: compiled from: Spdy3.java */
    public static final class b implements g4.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.BufferedSink f4531a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final okio.Buffer f4532b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final okio.BufferedSink f4533c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f4534d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f4535e;

        public b(okio.BufferedSink bufferedSink, boolean z4) {
            this.f4531a = bufferedSink;
            this.f4534d = z4;
            java.util.zip.Deflater deflater = new java.util.zip.Deflater();
            deflater.setDictionary(g4.o.f4527a);
            okio.Buffer buffer = new okio.Buffer();
            this.f4532b = buffer;
            this.f4533c = okio.Okio.buffer(new okio.DeflaterSink((okio.Sink) buffer, deflater));
        }

        @Override // g4.c
        public synchronized void A(int i5, g4.a aVar, byte[] bArr) throws java.io.IOException {
            if (this.f4535e) {
                throw new java.io.IOException("closed");
            }
            if (aVar.f4366c == -1) {
                throw new java.lang.IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
            }
            this.f4531a.writeInt(-2147287033);
            this.f4531a.writeInt(8);
            this.f4531a.writeInt(i5);
            this.f4531a.writeInt(aVar.f4366c);
            this.f4531a.flush();
        }

        @Override // g4.c
        public void L(g4.n nVar) {
        }

        @Override // g4.c
        public synchronized void a(int i5, g4.a aVar) throws java.io.IOException {
            if (this.f4535e) {
                throw new java.io.IOException("closed");
            }
            if (aVar.f4365b == -1) {
                throw new java.lang.IllegalArgumentException();
            }
            this.f4531a.writeInt(-2147287037);
            this.f4531a.writeInt(8);
            this.f4531a.writeInt(i5 & Integer.MAX_VALUE);
            this.f4531a.writeInt(aVar.f4365b);
            this.f4531a.flush();
        }

        @Override // g4.c
        public synchronized void b(int i5, long j5) throws java.io.IOException {
            if (this.f4535e) {
                throw new java.io.IOException("closed");
            }
            if (j5 == 0 || j5 > 2147483647L) {
                throw new java.lang.IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + j5);
            }
            this.f4531a.writeInt(-2147287031);
            this.f4531a.writeInt(8);
            this.f4531a.writeInt(i5);
            this.f4531a.writeInt((int) j5);
            this.f4531a.flush();
        }

        public void c(int i5, int i6, okio.Buffer buffer, int i7) throws java.io.IOException {
            if (this.f4535e) {
                throw new java.io.IOException("closed");
            }
            long j5 = i7;
            if (j5 > 16777215) {
                throw new java.lang.IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + i7);
            }
            this.f4531a.writeInt(i5 & Integer.MAX_VALUE);
            this.f4531a.writeInt(((i6 & 255) << 24) | (16777215 & i7));
            if (i7 > 0) {
                this.f4531a.write(buffer, j5);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws java.io.IOException {
            this.f4535e = true;
            d4.c.b(this.f4531a, this.f4533c);
        }

        @Override // g4.c
        public void d(int i5, int i6, java.util.List<g4.f> list) throws java.io.IOException {
        }

        public final void e(java.util.List<g4.f> list) throws java.io.IOException {
            this.f4533c.writeInt(list.size());
            int size = list.size();
            for (int i5 = 0; i5 < size; i5++) {
                okio.ByteString byteString = list.get(i5).f4459a;
                this.f4533c.writeInt(byteString.size());
                this.f4533c.write(byteString);
                okio.ByteString byteString2 = list.get(i5).f4460b;
                this.f4533c.writeInt(byteString2.size());
                this.f4533c.write(byteString2);
            }
            this.f4533c.flush();
        }

        @Override // g4.c
        public int e0() {
            return 16383;
        }

        @Override // g4.c
        public synchronized void f0(boolean z4, boolean z5, int i5, int i6, java.util.List<g4.f> list) throws java.io.IOException {
            if (this.f4535e) {
                throw new java.io.IOException("closed");
            }
            e(list);
            int size = (int) (this.f4532b.size() + 10);
            int i7 = (z4 ? 1 : 0) | (z5 ? 2 : 0);
            this.f4531a.writeInt(-2147287039);
            this.f4531a.writeInt(((i7 & 255) << 24) | (size & 16777215));
            this.f4531a.writeInt(i5 & Integer.MAX_VALUE);
            this.f4531a.writeInt(Integer.MAX_VALUE & i6);
            this.f4531a.writeShort(0);
            this.f4531a.writeAll(this.f4532b);
            this.f4531a.flush();
        }

        @Override // g4.c
        public synchronized void flush() throws java.io.IOException {
            if (this.f4535e) {
                throw new java.io.IOException("closed");
            }
            this.f4531a.flush();
        }

        @Override // g4.c
        public synchronized void g(boolean z4, int i5, int i6) throws java.io.IOException {
            if (this.f4535e) {
                throw new java.io.IOException("closed");
            }
            if (z4 != (this.f4534d != ((i5 & 1) == 1))) {
                throw new java.lang.IllegalArgumentException("payload != reply");
            }
            this.f4531a.writeInt(-2147287034);
            this.f4531a.writeInt(4);
            this.f4531a.writeInt(i5);
            this.f4531a.flush();
        }

        @Override // g4.c
        public synchronized void p(boolean z4, int i5, okio.Buffer buffer, int i6) throws java.io.IOException {
            c(i5, z4 ? 1 : 0, buffer, i6);
        }

        @Override // g4.c
        public synchronized void p0() {
        }

        @Override // g4.c
        public synchronized void t0(g4.n nVar) throws java.io.IOException {
            if (this.f4535e) {
                throw new java.io.IOException("closed");
            }
            int iM = nVar.m();
            this.f4531a.writeInt(-2147287036);
            this.f4531a.writeInt((((iM * 8) + 4) & 16777215) | 0);
            this.f4531a.writeInt(iM);
            for (int i5 = 0; i5 <= 10; i5++) {
                if (nVar.i(i5)) {
                    this.f4531a.writeInt(((nVar.b(i5) & 255) << 24) | (i5 & 16777215));
                    this.f4531a.writeInt(nVar.c(i5));
                }
            }
            this.f4531a.flush();
        }
    }

    static {
        try {
            f4527a = "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\fcontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\fcontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\bif-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\bif-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\blocation\u0000\u0000\u0000\fmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\bHTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(d4.c.f3967c.name());
        } catch (java.io.UnsupportedEncodingException unused) {
            throw new java.lang.AssertionError();
        }
    }

    @Override // g4.q
    public g4.b a(okio.BufferedSource bufferedSource, boolean z4) {
        return new g4.o.a(bufferedSource, z4);
    }

    @Override // g4.q
    public g4.c b(okio.BufferedSink bufferedSink, boolean z4) {
        return new g4.o.b(bufferedSink, z4);
    }
}
