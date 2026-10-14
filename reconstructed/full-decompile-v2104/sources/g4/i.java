package g4;

/* JADX INFO: compiled from: Http2.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i implements g4.q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.logging.Logger f4486a = java.util.logging.Logger.getLogger(g4.i.b.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final okio.ByteString f4487b = okio.ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* JADX INFO: compiled from: Http2.java */
    public static final class a implements okio.Source {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.BufferedSource f4488a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4489b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte f4490c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4491d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4492e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public short f4493f;

        public a(okio.BufferedSource bufferedSource) {
            this.f4488a = bufferedSource;
        }

        public final void c() throws java.io.IOException {
            int i5 = this.f4491d;
            int iM = g4.i.m(this.f4488a);
            this.f4492e = iM;
            this.f4489b = iM;
            byte b5 = (byte) (this.f4488a.readByte() & 255);
            this.f4490c = (byte) (this.f4488a.readByte() & 255);
            if (g4.i.f4486a.isLoggable(java.util.logging.Level.FINE)) {
                g4.i.f4486a.fine(g4.i.b.b(true, this.f4491d, this.f4489b, b5, this.f4490c));
            }
            int i6 = this.f4488a.readInt() & Integer.MAX_VALUE;
            this.f4491d = i6;
            if (b5 != 9) {
                throw g4.i.k("%s != TYPE_CONTINUATION", java.lang.Byte.valueOf(b5));
            }
            if (i6 != i5) {
                throw g4.i.k("TYPE_CONTINUATION streamId changed", new java.lang.Object[0]);
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
        }

        @Override // okio.Source
        public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
            while (true) {
                int i5 = this.f4492e;
                if (i5 != 0) {
                    long j6 = this.f4488a.read(buffer, java.lang.Math.min(j5, i5));
                    if (j6 == -1) {
                        return -1L;
                    }
                    this.f4492e = (int) (((long) this.f4492e) - j6);
                    return j6;
                }
                this.f4488a.skip(this.f4493f);
                this.f4493f = (short) 0;
                if ((this.f4490c & 4) != 0) {
                    return -1L;
                }
                c();
            }
        }

        @Override // okio.Source
        public okio.Timeout timeout() {
            return this.f4488a.timeout();
        }
    }

    /* JADX INFO: compiled from: Http2.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final java.lang.String[] f4494a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final java.lang.String[] f4495b = new java.lang.String[64];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final java.lang.String[] f4496c = new java.lang.String[256];

        static {
            int i5 = 0;
            int i6 = 0;
            while (true) {
                java.lang.String[] strArr = f4496c;
                if (i6 >= strArr.length) {
                    break;
                }
                strArr[i6] = d4.c.l("%8s", java.lang.Integer.toBinaryString(i6)).replace(' ', '0');
                i6++;
            }
            java.lang.String[] strArr2 = f4495b;
            strArr2[0] = "";
            strArr2[1] = "END_STREAM";
            int[] iArr = {1};
            strArr2[8] = "PADDED";
            for (int i7 = 0; i7 < 1; i7++) {
                int i8 = iArr[i7];
                java.lang.String[] strArr3 = f4495b;
                strArr3[i8 | 8] = strArr3[i8] + "|PADDED";
            }
            java.lang.String[] strArr4 = f4495b;
            strArr4[4] = "END_HEADERS";
            strArr4[32] = "PRIORITY";
            strArr4[36] = "END_HEADERS|PRIORITY";
            int[] iArr2 = {4, 32, 36};
            for (int i9 = 0; i9 < 3; i9++) {
                int i10 = iArr2[i9];
                for (int i11 = 0; i11 < 1; i11++) {
                    int i12 = iArr[i11];
                    java.lang.String[] strArr5 = f4495b;
                    int i13 = i12 | i10;
                    strArr5[i13] = strArr5[i12] + '|' + strArr5[i10];
                    strArr5[i13 | 8] = strArr5[i12] + '|' + strArr5[i10] + "|PADDED";
                }
            }
            while (true) {
                java.lang.String[] strArr6 = f4495b;
                if (i5 >= strArr6.length) {
                    return;
                }
                if (strArr6[i5] == null) {
                    strArr6[i5] = f4496c[i5];
                }
                i5++;
            }
        }

        public static java.lang.String a(byte b5, byte b6) {
            if (b6 == 0) {
                return "";
            }
            if (b5 != 2 && b5 != 3) {
                if (b5 == 4 || b5 == 6) {
                    return b6 == 1 ? "ACK" : f4496c[b6];
                }
                if (b5 != 7 && b5 != 8) {
                    java.lang.String[] strArr = f4495b;
                    java.lang.String str = b6 < strArr.length ? strArr[b6] : f4496c[b6];
                    if (b5 != 5 || (b6 & 4) == 0) {
                        return (b5 != 0 || (b6 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                    }
                    return str.replace("HEADERS", "PUSH_PROMISE");
                }
            }
            return f4496c[b6];
        }

        public static java.lang.String b(boolean z4, int i5, int i6, byte b5, byte b6) {
            java.lang.String[] strArr = f4494a;
            java.lang.String strL = b5 < strArr.length ? strArr[b5] : d4.c.l("0x%02x", java.lang.Byte.valueOf(b5));
            java.lang.String strA = a(b5, b6);
            java.lang.Object[] objArr = new java.lang.Object[5];
            objArr[0] = z4 ? "<<" : ">>";
            objArr[1] = java.lang.Integer.valueOf(i5);
            objArr[2] = java.lang.Integer.valueOf(i6);
            objArr[3] = strL;
            objArr[4] = strA;
            return d4.c.l("%s 0x%08x %5d %-13s %s", objArr);
        }
    }

    /* JADX INFO: compiled from: Http2.java */
    public static final class c implements g4.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.BufferedSource f4497a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final g4.i.a f4498b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f4499c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final g4.h.a f4500d;

        public c(okio.BufferedSource bufferedSource, int i5, boolean z4) {
            this.f4497a = bufferedSource;
            this.f4499c = z4;
            g4.i.a aVar = new g4.i.a(bufferedSource);
            this.f4498b = aVar;
            this.f4500d = new g4.h.a(i5, aVar);
        }

        @Override // g4.b
        public void N() throws java.io.IOException {
            if (this.f4499c) {
                return;
            }
            okio.ByteString byteString = this.f4497a.readByteString(g4.i.f4487b.size());
            if (g4.i.f4486a.isLoggable(java.util.logging.Level.FINE)) {
                g4.i.f4486a.fine(d4.c.l("<< CONNECTION %s", byteString.hex()));
            }
            if (!g4.i.f4487b.equals(byteString)) {
                throw g4.i.k("Expected a connection header but was %s", byteString.utf8());
            }
        }

        @Override // g4.b
        public boolean W(g4.b.a aVar) throws java.io.IOException {
            try {
                this.f4497a.require(9L);
                int iM = g4.i.m(this.f4497a);
                if (iM < 0 || iM > 16384) {
                    throw g4.i.k("FRAME_SIZE_ERROR: %s", java.lang.Integer.valueOf(iM));
                }
                byte b5 = (byte) (this.f4497a.readByte() & 255);
                byte b6 = (byte) (this.f4497a.readByte() & 255);
                int i5 = this.f4497a.readInt() & Integer.MAX_VALUE;
                if (g4.i.f4486a.isLoggable(java.util.logging.Level.FINE)) {
                    g4.i.f4486a.fine(g4.i.b.b(true, i5, iM, b5, b6));
                }
                switch (b5) {
                    case 0:
                        c(aVar, iM, b6, i5);
                        return true;
                    case 1:
                        h(aVar, iM, b6, i5);
                        return true;
                    case 2:
                        l(aVar, iM, b6, i5);
                        return true;
                    case 3:
                        o(aVar, iM, b6, i5);
                        return true;
                    case 4:
                        q(aVar, iM, b6, i5);
                        return true;
                    case 5:
                        n(aVar, iM, b6, i5);
                        return true;
                    case 6:
                        i(aVar, iM, b6, i5);
                        return true;
                    case 7:
                        e(aVar, iM, b6, i5);
                        return true;
                    case 8:
                        r(aVar, iM, b6, i5);
                        return true;
                    default:
                        this.f4497a.skip(iM);
                        return true;
                }
            } catch (java.io.IOException unused) {
                return false;
            }
        }

        public final void c(g4.b.a aVar, int i5, byte b5, int i6) throws java.io.IOException {
            boolean z4 = (b5 & 1) != 0;
            if ((b5 & 32) != 0) {
                throw g4.i.k("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new java.lang.Object[0]);
            }
            short s5 = (b5 & 8) != 0 ? (short) (this.f4497a.readByte() & 255) : (short) 0;
            aVar.j(z4, i6, this.f4497a, g4.i.l(i5, b5, s5));
            this.f4497a.skip(s5);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            this.f4497a.close();
        }

        public final void e(g4.b.a aVar, int i5, byte b5, int i6) throws java.io.IOException {
            if (i5 < 8) {
                throw g4.i.k("TYPE_GOAWAY length < 8: %s", java.lang.Integer.valueOf(i5));
            }
            if (i6 != 0) {
                throw g4.i.k("TYPE_GOAWAY streamId != 0", new java.lang.Object[0]);
            }
            int i7 = this.f4497a.readInt();
            int i8 = this.f4497a.readInt();
            int i9 = i5 - 8;
            g4.a aVarB = g4.a.b(i8);
            if (aVarB == null) {
                throw g4.i.k("TYPE_GOAWAY unexpected error code: %d", java.lang.Integer.valueOf(i8));
            }
            okio.ByteString byteString = okio.ByteString.EMPTY;
            if (i9 > 0) {
                byteString = this.f4497a.readByteString(i9);
            }
            aVar.h(i7, aVarB, byteString);
        }

        public final java.util.List<g4.f> f(int i5, short s5, byte b5, int i6) throws java.io.IOException {
            g4.i.a aVar = this.f4498b;
            aVar.f4492e = i5;
            aVar.f4489b = i5;
            aVar.f4493f = s5;
            aVar.f4490c = b5;
            aVar.f4491d = i6;
            this.f4500d.k();
            return this.f4500d.e();
        }

        public final void h(g4.b.a aVar, int i5, byte b5, int i6) throws java.io.IOException {
            if (i6 == 0) {
                throw g4.i.k("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new java.lang.Object[0]);
            }
            boolean z4 = (b5 & 1) != 0;
            short s5 = (b5 & 8) != 0 ? (short) (this.f4497a.readByte() & 255) : (short) 0;
            if ((b5 & 32) != 0) {
                j(aVar, i6);
                i5 -= 5;
            }
            aVar.m(false, z4, i6, -1, f(g4.i.l(i5, b5, s5), s5, b5, i6), g4.g.HTTP_20_HEADERS);
        }

        public final void i(g4.b.a aVar, int i5, byte b5, int i6) throws java.io.IOException {
            if (i5 != 8) {
                throw g4.i.k("TYPE_PING length != 8: %s", java.lang.Integer.valueOf(i5));
            }
            if (i6 != 0) {
                throw g4.i.k("TYPE_PING streamId != 0", new java.lang.Object[0]);
            }
            aVar.g((b5 & 1) != 0, this.f4497a.readInt(), this.f4497a.readInt());
        }

        public final void j(g4.b.a aVar, int i5) throws java.io.IOException {
            int i6 = this.f4497a.readInt();
            aVar.l(i5, i6 & Integer.MAX_VALUE, (this.f4497a.readByte() & 255) + 1, (Integer.MIN_VALUE & i6) != 0);
        }

        public final void l(g4.b.a aVar, int i5, byte b5, int i6) throws java.io.IOException {
            if (i5 != 5) {
                throw g4.i.k("TYPE_PRIORITY length: %d != 5", java.lang.Integer.valueOf(i5));
            }
            if (i6 == 0) {
                throw g4.i.k("TYPE_PRIORITY streamId == 0", new java.lang.Object[0]);
            }
            j(aVar, i6);
        }

        public final void n(g4.b.a aVar, int i5, byte b5, int i6) throws java.io.IOException {
            if (i6 == 0) {
                throw g4.i.k("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new java.lang.Object[0]);
            }
            short s5 = (b5 & 8) != 0 ? (short) (this.f4497a.readByte() & 255) : (short) 0;
            aVar.d(i6, this.f4497a.readInt() & Integer.MAX_VALUE, f(g4.i.l(i5 - 4, b5, s5), s5, b5, i6));
        }

        public final void o(g4.b.a aVar, int i5, byte b5, int i6) throws java.io.IOException {
            if (i5 != 4) {
                throw g4.i.k("TYPE_RST_STREAM length: %d != 4", java.lang.Integer.valueOf(i5));
            }
            if (i6 == 0) {
                throw g4.i.k("TYPE_RST_STREAM streamId == 0", new java.lang.Object[0]);
            }
            int i7 = this.f4497a.readInt();
            g4.a aVarB = g4.a.b(i7);
            if (aVarB == null) {
                throw g4.i.k("TYPE_RST_STREAM unexpected error code: %d", java.lang.Integer.valueOf(i7));
            }
            aVar.a(i6, aVarB);
        }

        public final void q(g4.b.a aVar, int i5, byte b5, int i6) throws java.io.IOException {
            if (i6 != 0) {
                throw g4.i.k("TYPE_SETTINGS streamId != 0", new java.lang.Object[0]);
            }
            if ((b5 & 1) != 0) {
                if (i5 != 0) {
                    throw g4.i.k("FRAME_SIZE_ERROR ack frame should be empty!", new java.lang.Object[0]);
                }
                aVar.i();
                return;
            }
            if (i5 % 6 != 0) {
                throw g4.i.k("TYPE_SETTINGS length %% 6 != 0: %s", java.lang.Integer.valueOf(i5));
            }
            g4.n nVar = new g4.n();
            for (int i7 = 0; i7 < i5; i7 += 6) {
                short s5 = this.f4497a.readShort();
                int i8 = this.f4497a.readInt();
                if (s5 == 2) {
                    if (i8 != 0 && i8 != 1) {
                        throw g4.i.k("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new java.lang.Object[0]);
                    }
                } else if (s5 == 3) {
                    s5 = 4;
                } else if (s5 == 4) {
                    s5 = 7;
                    if (i8 < 0) {
                        throw g4.i.k("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new java.lang.Object[0]);
                    }
                } else if (s5 == 5 && (i8 < 16384 || i8 > 16777215)) {
                    throw g4.i.k("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", java.lang.Integer.valueOf(i8));
                }
                nVar.l(s5, 0, i8);
            }
            aVar.k(false, nVar);
        }

        public final void r(g4.b.a aVar, int i5, byte b5, int i6) throws java.io.IOException {
            if (i5 != 4) {
                throw g4.i.k("TYPE_WINDOW_UPDATE length !=4: %s", java.lang.Integer.valueOf(i5));
            }
            long j5 = ((long) this.f4497a.readInt()) & 2147483647L;
            if (j5 == 0) {
                throw g4.i.k("windowSizeIncrement was 0", java.lang.Long.valueOf(j5));
            }
            aVar.b(i6, j5);
        }
    }

    /* JADX INFO: compiled from: Http2.java */
    public static final class d implements g4.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.BufferedSink f4501a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f4502b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final okio.Buffer f4503c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4504d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f4505e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final g4.h.b f4506f;

        public d(okio.BufferedSink bufferedSink, boolean z4) {
            this.f4501a = bufferedSink;
            this.f4502b = z4;
            okio.Buffer buffer = new okio.Buffer();
            this.f4503c = buffer;
            this.f4506f = new g4.h.b(buffer);
            this.f4504d = 16384;
        }

        @Override // g4.c
        public synchronized void A(int i5, g4.a aVar, byte[] bArr) throws java.io.IOException {
            if (this.f4505e) {
                throw new java.io.IOException("closed");
            }
            if (aVar.f4364a == -1) {
                throw g4.i.j("errorCode.httpCode == -1", new java.lang.Object[0]);
            }
            e(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.f4501a.writeInt(i5);
            this.f4501a.writeInt(aVar.f4364a);
            if (bArr.length > 0) {
                this.f4501a.write(bArr);
            }
            this.f4501a.flush();
        }

        @Override // g4.c
        public synchronized void L(g4.n nVar) throws java.io.IOException {
            if (this.f4505e) {
                throw new java.io.IOException("closed");
            }
            this.f4504d = nVar.g(this.f4504d);
            if (nVar.d() > -1) {
                this.f4506f.e(nVar.d());
            }
            e(0, 0, (byte) 4, (byte) 1);
            this.f4501a.flush();
        }

        @Override // g4.c
        public synchronized void a(int i5, g4.a aVar) throws java.io.IOException {
            if (this.f4505e) {
                throw new java.io.IOException("closed");
            }
            if (aVar.f4364a == -1) {
                throw new java.lang.IllegalArgumentException();
            }
            e(i5, 4, (byte) 3, (byte) 0);
            this.f4501a.writeInt(aVar.f4364a);
            this.f4501a.flush();
        }

        @Override // g4.c
        public synchronized void b(int i5, long j5) throws java.io.IOException {
            if (this.f4505e) {
                throw new java.io.IOException("closed");
            }
            if (j5 == 0 || j5 > 2147483647L) {
                throw g4.i.j("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", java.lang.Long.valueOf(j5));
            }
            e(i5, 4, (byte) 8, (byte) 0);
            this.f4501a.writeInt((int) j5);
            this.f4501a.flush();
        }

        public void c(int i5, byte b5, okio.Buffer buffer, int i6) throws java.io.IOException {
            e(i5, i6, (byte) 0, b5);
            if (i6 > 0) {
                this.f4501a.write(buffer, i6);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws java.io.IOException {
            this.f4505e = true;
            this.f4501a.close();
        }

        @Override // g4.c
        public synchronized void d(int i5, int i6, java.util.List<g4.f> list) throws java.io.IOException {
            if (this.f4505e) {
                throw new java.io.IOException("closed");
            }
            this.f4506f.g(list);
            long size = this.f4503c.size();
            int iMin = (int) java.lang.Math.min(this.f4504d - 4, size);
            long j5 = iMin;
            e(i5, iMin + 4, (byte) 5, size == j5 ? (byte) 4 : (byte) 0);
            this.f4501a.writeInt(i6 & Integer.MAX_VALUE);
            this.f4501a.write(this.f4503c, j5);
            if (size > j5) {
                h(i5, size - j5);
            }
        }

        public void e(int i5, int i6, byte b5, byte b6) throws java.io.IOException {
            if (g4.i.f4486a.isLoggable(java.util.logging.Level.FINE)) {
                g4.i.f4486a.fine(g4.i.b.b(false, i5, i6, b5, b6));
            }
            int i7 = this.f4504d;
            if (i6 > i7) {
                throw g4.i.j("FRAME_SIZE_ERROR length > %d: %d", java.lang.Integer.valueOf(i7), java.lang.Integer.valueOf(i6));
            }
            if ((Integer.MIN_VALUE & i5) != 0) {
                throw g4.i.j("reserved bit set: %s", java.lang.Integer.valueOf(i5));
            }
            g4.i.n(this.f4501a, i6);
            this.f4501a.writeByte(b5 & 255);
            this.f4501a.writeByte(b6 & 255);
            this.f4501a.writeInt(i5 & Integer.MAX_VALUE);
        }

        @Override // g4.c
        public int e0() {
            return this.f4504d;
        }

        public void f(boolean z4, int i5, java.util.List<g4.f> list) throws java.io.IOException {
            if (this.f4505e) {
                throw new java.io.IOException("closed");
            }
            this.f4506f.g(list);
            long size = this.f4503c.size();
            int iMin = (int) java.lang.Math.min(this.f4504d, size);
            long j5 = iMin;
            byte b5 = size == j5 ? (byte) 4 : (byte) 0;
            if (z4) {
                b5 = (byte) (b5 | 1);
            }
            e(i5, iMin, (byte) 1, b5);
            this.f4501a.write(this.f4503c, j5);
            if (size > j5) {
                h(i5, size - j5);
            }
        }

        @Override // g4.c
        public synchronized void f0(boolean z4, boolean z5, int i5, int i6, java.util.List<g4.f> list) throws java.io.IOException {
            try {
                if (z5) {
                    throw new java.lang.UnsupportedOperationException();
                }
                if (this.f4505e) {
                    throw new java.io.IOException("closed");
                }
                f(z4, i5, list);
            } catch (java.lang.Throwable th) {
                throw th;
            }
        }

        @Override // g4.c
        public synchronized void flush() throws java.io.IOException {
            if (this.f4505e) {
                throw new java.io.IOException("closed");
            }
            this.f4501a.flush();
        }

        @Override // g4.c
        public synchronized void g(boolean z4, int i5, int i6) throws java.io.IOException {
            if (this.f4505e) {
                throw new java.io.IOException("closed");
            }
            e(0, 8, (byte) 6, z4 ? (byte) 1 : (byte) 0);
            this.f4501a.writeInt(i5);
            this.f4501a.writeInt(i6);
            this.f4501a.flush();
        }

        public final void h(int i5, long j5) throws java.io.IOException {
            while (j5 > 0) {
                int iMin = (int) java.lang.Math.min(this.f4504d, j5);
                long j6 = iMin;
                j5 -= j6;
                e(i5, iMin, (byte) 9, j5 == 0 ? (byte) 4 : (byte) 0);
                this.f4501a.write(this.f4503c, j6);
            }
        }

        @Override // g4.c
        public synchronized void p(boolean z4, int i5, okio.Buffer buffer, int i6) throws java.io.IOException {
            if (this.f4505e) {
                throw new java.io.IOException("closed");
            }
            c(i5, z4 ? (byte) 1 : (byte) 0, buffer, i6);
        }

        @Override // g4.c
        public synchronized void p0() throws java.io.IOException {
            if (this.f4505e) {
                throw new java.io.IOException("closed");
            }
            if (this.f4502b) {
                if (g4.i.f4486a.isLoggable(java.util.logging.Level.FINE)) {
                    g4.i.f4486a.fine(d4.c.l(">> CONNECTION %s", g4.i.f4487b.hex()));
                }
                this.f4501a.write(g4.i.f4487b.toByteArray());
                this.f4501a.flush();
            }
        }

        @Override // g4.c
        public synchronized void t0(g4.n nVar) throws java.io.IOException {
            int i5;
            if (this.f4505e) {
                throw new java.io.IOException("closed");
            }
            int i6 = 0;
            e(0, nVar.m() * 6, (byte) 4, (byte) 0);
            while (i6 < 10) {
                if (nVar.i(i6)) {
                    if (i6 == 4) {
                        i5 = 3;
                    } else {
                        i5 = i6 == 7 ? 4 : i6;
                    }
                    this.f4501a.writeShort(i5);
                    this.f4501a.writeInt(nVar.c(i6));
                }
                i6++;
            }
            this.f4501a.flush();
        }
    }

    public static java.lang.IllegalArgumentException j(java.lang.String str, java.lang.Object... objArr) {
        throw new java.lang.IllegalArgumentException(d4.c.l(str, objArr));
    }

    public static java.io.IOException k(java.lang.String str, java.lang.Object... objArr) throws java.io.IOException {
        throw new java.io.IOException(d4.c.l(str, objArr));
    }

    public static int l(int i5, byte b5, short s5) throws java.io.IOException {
        if ((b5 & 8) != 0) {
            i5--;
        }
        if (s5 <= i5) {
            return (short) (i5 - s5);
        }
        throw k("PROTOCOL_ERROR padding %s > remaining length %s", java.lang.Short.valueOf(s5), java.lang.Integer.valueOf(i5));
    }

    public static int m(okio.BufferedSource bufferedSource) throws java.io.IOException {
        return (bufferedSource.readByte() & 255) | ((bufferedSource.readByte() & 255) << 16) | ((bufferedSource.readByte() & 255) << 8);
    }

    public static void n(okio.BufferedSink bufferedSink, int i5) throws java.io.IOException {
        bufferedSink.writeByte((i5 >>> 16) & 255);
        bufferedSink.writeByte((i5 >>> 8) & 255);
        bufferedSink.writeByte(i5 & 255);
    }

    @Override // g4.q
    public g4.b a(okio.BufferedSource bufferedSource, boolean z4) {
        return new g4.i.c(bufferedSource, 4096, z4);
    }

    @Override // g4.q
    public g4.c b(okio.BufferedSink bufferedSink, boolean z4) {
        return new g4.i.d(bufferedSink, z4);
    }
}
