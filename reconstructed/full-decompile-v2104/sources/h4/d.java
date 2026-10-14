package h4;

/* JADX INFO: compiled from: Http2xStream.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d implements h4.h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final okio.ByteString f4597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final okio.ByteString f4598f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final okio.ByteString f4599g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final okio.ByteString f4600h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final okio.ByteString f4601i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final okio.ByteString f4602j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final okio.ByteString f4603k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final okio.ByteString f4604l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final java.util.List<okio.ByteString> f4605m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final java.util.List<okio.ByteString> f4606n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final java.util.List<okio.ByteString> f4607o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final java.util.List<okio.ByteString> f4608p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.v f4609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f4.g f4610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g4.d f4611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public g4.e f4612d;

    /* JADX INFO: compiled from: Http2xStream.java */
    public class a extends okio.ForwardingSource {
        public a(okio.Source source) {
            super(source);
        }

        @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            h4.d.this.f4610b.n(false, h4.d.this);
            super.close();
        }
    }

    static {
        okio.ByteString byteStringEncodeUtf8 = okio.ByteString.encodeUtf8("connection");
        f4597e = byteStringEncodeUtf8;
        okio.ByteString byteStringEncodeUtf9 = okio.ByteString.encodeUtf8("host");
        f4598f = byteStringEncodeUtf9;
        okio.ByteString byteStringEncodeUtf10 = okio.ByteString.encodeUtf8("keep-alive");
        f4599g = byteStringEncodeUtf10;
        okio.ByteString byteStringEncodeUtf11 = okio.ByteString.encodeUtf8("proxy-connection");
        f4600h = byteStringEncodeUtf11;
        okio.ByteString byteStringEncodeUtf12 = okio.ByteString.encodeUtf8("transfer-encoding");
        f4601i = byteStringEncodeUtf12;
        okio.ByteString byteStringEncodeUtf13 = okio.ByteString.encodeUtf8("te");
        f4602j = byteStringEncodeUtf13;
        okio.ByteString byteStringEncodeUtf14 = okio.ByteString.encodeUtf8("encoding");
        f4603k = byteStringEncodeUtf14;
        okio.ByteString byteStringEncodeUtf15 = okio.ByteString.encodeUtf8("upgrade");
        f4604l = byteStringEncodeUtf15;
        okio.ByteString byteString = g4.f.f4453e;
        okio.ByteString byteString2 = g4.f.f4454f;
        okio.ByteString byteString3 = g4.f.f4455g;
        okio.ByteString byteString4 = g4.f.f4456h;
        okio.ByteString byteString5 = g4.f.f4457i;
        okio.ByteString byteString6 = g4.f.f4458j;
        f4605m = d4.c.o(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf12, byteString, byteString2, byteString3, byteString4, byteString5, byteString6);
        f4606n = d4.c.o(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf12);
        f4607o = d4.c.o(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf13, byteStringEncodeUtf12, byteStringEncodeUtf14, byteStringEncodeUtf15, byteString, byteString2, byteString3, byteString4, byteString5, byteString6);
        f4608p = d4.c.o(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf13, byteStringEncodeUtf12, byteStringEncodeUtf14, byteStringEncodeUtf15);
    }

    public d(c4.v vVar, f4.g gVar, g4.d dVar) {
        this.f4609a = vVar;
        this.f4610b = gVar;
        this.f4611c = dVar;
    }

    public static java.util.List<g4.f> g(c4.y yVar) {
        c4.q qVarI = yVar.i();
        java.util.ArrayList arrayList = new java.util.ArrayList(qVarI.g() + 4);
        arrayList.add(new g4.f(g4.f.f4453e, yVar.k()));
        arrayList.add(new g4.f(g4.f.f4454f, h4.k.c(yVar.m())));
        arrayList.add(new g4.f(g4.f.f4456h, d4.c.m(yVar.m(), false)));
        arrayList.add(new g4.f(g4.f.f4455g, yVar.m().E()));
        int iG = qVarI.g();
        for (int i5 = 0; i5 < iG; i5++) {
            okio.ByteString byteStringEncodeUtf8 = okio.ByteString.encodeUtf8(qVarI.d(i5).toLowerCase(java.util.Locale.US));
            if (!f4607o.contains(byteStringEncodeUtf8)) {
                arrayList.add(new g4.f(byteStringEncodeUtf8, qVarI.h(i5)));
            }
        }
        return arrayList;
    }

    public static java.lang.String h(java.lang.String str, java.lang.String str2) {
        return str + (char) 0 + str2;
    }

    public static c4.a0.b i(java.util.List<g4.f> list) throws java.io.IOException {
        c4.q.b bVar = new c4.q.b();
        int size = list.size();
        java.lang.String str = null;
        for (int i5 = 0; i5 < size; i5++) {
            okio.ByteString byteString = list.get(i5).f4459a;
            java.lang.String strUtf8 = list.get(i5).f4460b.utf8();
            if (byteString.equals(g4.f.f4452d)) {
                str = strUtf8;
            } else if (!f4608p.contains(byteString)) {
                d4.a.f3963a.b(bVar, byteString.utf8(), strUtf8);
            }
        }
        if (str == null) {
            throw new java.net.ProtocolException("Expected ':status' header not present");
        }
        h4.m mVarA = h4.m.a("HTTP/1.1 " + str);
        return new c4.a0.b().y(c4.w.HTTP_2).s(mVarA.f4631b).v(mVarA.f4632c).u(bVar.e());
    }

    public static c4.a0.b j(java.util.List<g4.f> list) throws java.io.IOException {
        c4.q.b bVar = new c4.q.b();
        int size = list.size();
        java.lang.String str = null;
        java.lang.String str2 = "HTTP/1.1";
        for (int i5 = 0; i5 < size; i5++) {
            okio.ByteString byteString = list.get(i5).f4459a;
            java.lang.String strUtf8 = list.get(i5).f4460b.utf8();
            int i6 = 0;
            while (i6 < strUtf8.length()) {
                int iIndexOf = strUtf8.indexOf(0, i6);
                if (iIndexOf == -1) {
                    iIndexOf = strUtf8.length();
                }
                java.lang.String strSubstring = strUtf8.substring(i6, iIndexOf);
                if (byteString.equals(g4.f.f4452d)) {
                    str = strSubstring;
                } else if (byteString.equals(g4.f.f4458j)) {
                    str2 = strSubstring;
                } else if (!f4606n.contains(byteString)) {
                    d4.a.f3963a.b(bVar, byteString.utf8(), strSubstring);
                }
                i6 = iIndexOf + 1;
            }
        }
        if (str == null) {
            throw new java.net.ProtocolException("Expected ':status' header not present");
        }
        h4.m mVarA = h4.m.a(str2 + " " + str);
        return new c4.a0.b().y(c4.w.SPDY_3).s(mVarA.f4631b).v(mVarA.f4632c).u(bVar.e());
    }

    public static java.util.List<g4.f> k(c4.y yVar) {
        c4.q qVarI = yVar.i();
        java.util.ArrayList arrayList = new java.util.ArrayList(qVarI.g() + 5);
        arrayList.add(new g4.f(g4.f.f4453e, yVar.k()));
        arrayList.add(new g4.f(g4.f.f4454f, h4.k.c(yVar.m())));
        arrayList.add(new g4.f(g4.f.f4458j, "HTTP/1.1"));
        arrayList.add(new g4.f(g4.f.f4457i, d4.c.m(yVar.m(), false)));
        arrayList.add(new g4.f(g4.f.f4455g, yVar.m().E()));
        java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
        int iG = qVarI.g();
        for (int i5 = 0; i5 < iG; i5++) {
            okio.ByteString byteStringEncodeUtf8 = okio.ByteString.encodeUtf8(qVarI.d(i5).toLowerCase(java.util.Locale.US));
            if (!f4605m.contains(byteStringEncodeUtf8)) {
                java.lang.String strH = qVarI.h(i5);
                if (linkedHashSet.add(byteStringEncodeUtf8)) {
                    arrayList.add(new g4.f(byteStringEncodeUtf8, strH));
                } else {
                    for (int i6 = 0; i6 < arrayList.size(); i6++) {
                        if (((g4.f) arrayList.get(i6)).f4459a.equals(byteStringEncodeUtf8)) {
                            arrayList.set(i6, new g4.f(byteStringEncodeUtf8, h(((g4.f) arrayList.get(i6)).f4460b.utf8(), strH)));
                            break;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // h4.h
    public okio.Sink a(c4.y yVar, long j5) {
        return this.f4612d.q();
    }

    @Override // h4.h
    public c4.b0 b(c4.a0 a0Var) throws java.io.IOException {
        return new h4.j(a0Var.I(), okio.Okio.buffer(new h4.d.a(this.f4612d.r())));
    }

    @Override // h4.h
    public void c() throws java.io.IOException {
        this.f4612d.q().close();
    }

    @Override // h4.h
    public void d(c4.y yVar) throws java.io.IOException {
        if (this.f4612d != null) {
            return;
        }
        g4.e eVarC0 = this.f4611c.c0(this.f4611c.X() == c4.w.HTTP_2 ? g(yVar) : k(yVar), h4.g.b(yVar.k()), true);
        this.f4612d = eVarC0;
        okio.Timeout timeoutU = eVarC0.u();
        long jF = this.f4609a.F();
        java.util.concurrent.TimeUnit timeUnit = java.util.concurrent.TimeUnit.MILLISECONDS;
        timeoutU.timeout(jF, timeUnit);
        this.f4612d.A().timeout(this.f4609a.M(), timeUnit);
    }

    @Override // h4.h
    public c4.a0.b e() throws java.io.IOException {
        return this.f4611c.X() == c4.w.HTTP_2 ? i(this.f4612d.p()) : j(this.f4612d.p());
    }
}
