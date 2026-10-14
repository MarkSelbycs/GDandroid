package c4;

/* JADX INFO: compiled from: MultipartBody.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class u extends c4.z {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c4.t f3227f = c4.t.b("multipart/mixed");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c4.t f3228g = c4.t.b("multipart/alternative");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final c4.t f3229h = c4.t.b("multipart/digest");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final c4.t f3230i = c4.t.b("multipart/parallel");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final c4.t f3231j = c4.t.b("multipart/form-data");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final byte[] f3232k = {58, 32};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final byte[] f3233l = {13, 10};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final byte[] f3234m = {45, 45};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final okio.ByteString f3235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c4.t f3236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c4.t f3237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.List<c4.u.b> f3238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3239e = -1;

    /* JADX INFO: compiled from: MultipartBody.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.ByteString f3240a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public c4.t f3241b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.util.List<c4.u.b> f3242c;

        public a() {
            this(java.util.UUID.randomUUID().toString());
        }

        public c4.u.a a(java.lang.String str, java.lang.String str2, c4.z zVar) {
            return b(c4.u.b.d(str, str2, zVar));
        }

        public c4.u.a b(c4.u.b bVar) {
            java.util.Objects.requireNonNull(bVar, "part == null");
            this.f3242c.add(bVar);
            return this;
        }

        public c4.u c() {
            if (this.f3242c.isEmpty()) {
                throw new java.lang.IllegalStateException("Multipart body must have at least one part.");
            }
            return new c4.u(this.f3240a, this.f3241b, this.f3242c);
        }

        public c4.u.a d(c4.t tVar) {
            java.util.Objects.requireNonNull(tVar, "type == null");
            if (tVar.c().equals("multipart")) {
                this.f3241b = tVar;
                return this;
            }
            throw new java.lang.IllegalArgumentException("multipart != " + tVar);
        }

        public a(java.lang.String str) {
            this.f3241b = c4.u.f3227f;
            this.f3242c = new java.util.ArrayList();
            this.f3240a = okio.ByteString.encodeUtf8(str);
        }
    }

    /* JADX INFO: compiled from: MultipartBody.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c4.q f3243a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final c4.z f3244b;

        public b(c4.q qVar, c4.z zVar) {
            this.f3243a = qVar;
            this.f3244b = zVar;
        }

        public static c4.u.b c(c4.q qVar, c4.z zVar) {
            java.util.Objects.requireNonNull(zVar, "body == null");
            if (qVar != null && qVar.a("Content-Type") != null) {
                throw new java.lang.IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (qVar == null || qVar.a("Content-Length") == null) {
                return new c4.u.b(qVar, zVar);
            }
            throw new java.lang.IllegalArgumentException("Unexpected header: Content-Length");
        }

        public static c4.u.b d(java.lang.String str, java.lang.String str2, c4.z zVar) {
            java.util.Objects.requireNonNull(str, "name == null");
            java.lang.StringBuilder sb = new java.lang.StringBuilder("form-data; name=");
            c4.u.f(sb, str);
            if (str2 != null) {
                sb.append("; filename=");
                c4.u.f(sb, str2);
            }
            return c(c4.q.f("Content-Disposition", sb.toString()), zVar);
        }
    }

    public u(okio.ByteString byteString, c4.t tVar, java.util.List<c4.u.b> list) {
        this.f3235a = byteString;
        this.f3236b = tVar;
        this.f3237c = c4.t.b(tVar + "; boundary=" + byteString.utf8());
        this.f3238d = d4.c.n(list);
    }

    public static java.lang.StringBuilder f(java.lang.StringBuilder sb, java.lang.String str) {
        sb.append('\"');
        int length = str.length();
        for (int i5 = 0; i5 < length; i5++) {
            char cCharAt = str.charAt(i5);
            if (cCharAt == '\n') {
                sb.append("%0A");
            } else if (cCharAt == '\r') {
                sb.append("%0D");
            } else if (cCharAt != '\"') {
                sb.append(cCharAt);
            } else {
                sb.append("%22");
            }
        }
        sb.append('\"');
        return sb;
    }

    @Override // c4.z
    public long a() throws java.io.IOException {
        long j5 = this.f3239e;
        if (j5 != -1) {
            return j5;
        }
        long jG = g(null, true);
        this.f3239e = jG;
        return jG;
    }

    @Override // c4.z
    public c4.t b() {
        return this.f3237c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long g(okio.BufferedSink bufferedSink, boolean z4) throws java.io.IOException {
        okio.Buffer buffer;
        if (z4) {
            bufferedSink = new okio.Buffer();
            buffer = bufferedSink;
        } else {
            buffer = 0;
        }
        int size = this.f3238d.size();
        long j5 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            c4.u.b bVar = this.f3238d.get(i5);
            c4.q qVar = bVar.f3243a;
            c4.z zVar = bVar.f3244b;
            bufferedSink.write(f3234m);
            bufferedSink.write(this.f3235a);
            bufferedSink.write(f3233l);
            if (qVar != null) {
                int iG = qVar.g();
                for (int i6 = 0; i6 < iG; i6++) {
                    bufferedSink.writeUtf8(qVar.d(i6)).write(f3232k).writeUtf8(qVar.h(i6)).write(f3233l);
                }
            }
            c4.t tVarB = zVar.b();
            if (tVarB != null) {
                bufferedSink.writeUtf8("Content-Type: ").writeUtf8(tVarB.toString()).write(f3233l);
            }
            long jA = zVar.a();
            if (jA != -1) {
                bufferedSink.writeUtf8("Content-Length: ").writeDecimalLong(jA).write(f3233l);
            } else if (z4) {
                buffer.clear();
                return -1L;
            }
            byte[] bArr = f3233l;
            bufferedSink.write(bArr);
            if (z4) {
                j5 += jA;
            } else {
                zVar.writeTo(bufferedSink);
            }
            bufferedSink.write(bArr);
        }
        byte[] bArr2 = f3234m;
        bufferedSink.write(bArr2);
        bufferedSink.write(this.f3235a);
        bufferedSink.write(bArr2);
        bufferedSink.write(f3233l);
        if (!z4) {
            return j5;
        }
        long size2 = j5 + buffer.size();
        buffer.clear();
        return size2;
    }

    @Override // c4.z
    public void writeTo(okio.BufferedSink bufferedSink) throws java.io.IOException {
        g(bufferedSink, false);
    }
}
