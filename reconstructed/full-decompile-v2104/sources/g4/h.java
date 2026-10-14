package g4;

/* JADX INFO: compiled from: Hpack.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g4.f[] f4467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.Map<okio.ByteString, java.lang.Integer> f4468b;

    /* JADX INFO: compiled from: Hpack.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.List<g4.f> f4469a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final okio.BufferedSource f4470b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f4471c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4472d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public g4.f[] f4473e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4474f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f4475g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f4476h;

        public a(int i5, okio.Source source) {
            this(i5, i5, source);
        }

        public final void a() {
            int i5 = this.f4472d;
            int i6 = this.f4476h;
            if (i5 < i6) {
                if (i5 == 0) {
                    b();
                } else {
                    d(i6 - i5);
                }
            }
        }

        public final void b() {
            this.f4469a.clear();
            java.util.Arrays.fill(this.f4473e, (java.lang.Object) null);
            this.f4474f = this.f4473e.length - 1;
            this.f4475g = 0;
            this.f4476h = 0;
        }

        public final int c(int i5) {
            return this.f4474f + 1 + i5;
        }

        public final int d(int i5) {
            int i6;
            int i7 = 0;
            if (i5 > 0) {
                int length = this.f4473e.length;
                while (true) {
                    length--;
                    i6 = this.f4474f;
                    if (length < i6 || i5 <= 0) {
                        break;
                    }
                    g4.f[] fVarArr = this.f4473e;
                    i5 -= fVarArr[length].f4461c;
                    this.f4476h -= fVarArr[length].f4461c;
                    this.f4475g--;
                    i7++;
                }
                g4.f[] fVarArr2 = this.f4473e;
                java.lang.System.arraycopy(fVarArr2, i6 + 1, fVarArr2, i6 + 1 + i7, this.f4475g);
                this.f4474f += i7;
            }
            return i7;
        }

        public java.util.List<g4.f> e() {
            java.util.ArrayList arrayList = new java.util.ArrayList(this.f4469a);
            this.f4469a.clear();
            return arrayList;
        }

        public final okio.ByteString f(int i5) {
            return h(i5) ? g4.h.f4467a[i5].f4459a : this.f4473e[c(i5 - g4.h.f4467a.length)].f4459a;
        }

        public final void g(int i5, g4.f fVar) {
            this.f4469a.add(fVar);
            int i6 = fVar.f4461c;
            if (i5 != -1) {
                i6 -= this.f4473e[c(i5)].f4461c;
            }
            int i7 = this.f4472d;
            if (i6 > i7) {
                b();
                return;
            }
            int iD = d((this.f4476h + i6) - i7);
            if (i5 == -1) {
                int i8 = this.f4475g + 1;
                g4.f[] fVarArr = this.f4473e;
                if (i8 > fVarArr.length) {
                    g4.f[] fVarArr2 = new g4.f[fVarArr.length * 2];
                    java.lang.System.arraycopy(fVarArr, 0, fVarArr2, fVarArr.length, fVarArr.length);
                    this.f4474f = this.f4473e.length - 1;
                    this.f4473e = fVarArr2;
                }
                int i9 = this.f4474f;
                this.f4474f = i9 - 1;
                this.f4473e[i9] = fVar;
                this.f4475g++;
            } else {
                this.f4473e[i5 + c(i5) + iD] = fVar;
            }
            this.f4476h += i6;
        }

        public final boolean h(int i5) {
            return i5 >= 0 && i5 <= g4.h.f4467a.length - 1;
        }

        public final int i() throws java.io.IOException {
            return this.f4470b.readByte() & 255;
        }

        public okio.ByteString j() throws java.io.IOException {
            int i5 = i();
            boolean z4 = (i5 & com.alibaba.fastjson.asm.Opcodes.IOR) == 128;
            int iM = m(i5, 127);
            return z4 ? okio.ByteString.of(g4.j.d().c(this.f4470b.readByteArray(iM))) : this.f4470b.readByteString(iM);
        }

        public void k() throws java.io.IOException {
            while (!this.f4470b.exhausted()) {
                int i5 = this.f4470b.readByte() & 255;
                if (i5 == 128) {
                    throw new java.io.IOException("index == 0");
                }
                if ((i5 & com.alibaba.fastjson.asm.Opcodes.IOR) == 128) {
                    l(m(i5, 127) - 1);
                } else if (i5 == 64) {
                    o();
                } else if ((i5 & 64) == 64) {
                    n(m(i5, 63) - 1);
                } else if ((i5 & 32) == 32) {
                    int iM = m(i5, 31);
                    this.f4472d = iM;
                    if (iM < 0 || iM > this.f4471c) {
                        throw new java.io.IOException("Invalid dynamic table size update " + this.f4472d);
                    }
                    a();
                } else if (i5 == 16 || i5 == 0) {
                    q();
                } else {
                    p(m(i5, 15) - 1);
                }
            }
        }

        public final void l(int i5) throws java.io.IOException {
            if (h(i5)) {
                this.f4469a.add(g4.h.f4467a[i5]);
                return;
            }
            int iC = c(i5 - g4.h.f4467a.length);
            if (iC >= 0) {
                g4.f[] fVarArr = this.f4473e;
                if (iC <= fVarArr.length - 1) {
                    this.f4469a.add(fVarArr[iC]);
                    return;
                }
            }
            throw new java.io.IOException("Header index too large " + (i5 + 1));
        }

        public int m(int i5, int i6) throws java.io.IOException {
            int i7 = i5 & i6;
            if (i7 < i6) {
                return i7;
            }
            int i8 = 0;
            while (true) {
                int i9 = i();
                if ((i9 & com.alibaba.fastjson.asm.Opcodes.IOR) == 0) {
                    return i6 + (i9 << i8);
                }
                i6 += (i9 & 127) << i8;
                i8 += 7;
            }
        }

        public final void n(int i5) throws java.io.IOException {
            g(-1, new g4.f(f(i5), j()));
        }

        public final void o() throws java.io.IOException {
            g(-1, new g4.f(g4.h.d(j()), j()));
        }

        public final void p(int i5) throws java.io.IOException {
            this.f4469a.add(new g4.f(f(i5), j()));
        }

        public final void q() throws java.io.IOException {
            this.f4469a.add(new g4.f(g4.h.d(j()), j()));
        }

        public a(int i5, int i6, okio.Source source) {
            this.f4469a = new java.util.ArrayList();
            g4.f[] fVarArr = new g4.f[8];
            this.f4473e = fVarArr;
            this.f4474f = fVarArr.length - 1;
            this.f4475g = 0;
            this.f4476h = 0;
            this.f4471c = i5;
            this.f4472d = i6;
            this.f4470b = okio.Okio.buffer(source);
        }
    }

    /* JADX INFO: compiled from: Hpack.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final okio.Buffer f4477a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4478b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f4479c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4480d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4481e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public g4.f[] f4482f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f4483g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f4484h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f4485i;

        public b(okio.Buffer buffer) {
            this(4096, buffer);
        }

        public final void a() {
            int i5 = this.f4481e;
            int i6 = this.f4485i;
            if (i5 < i6) {
                if (i5 == 0) {
                    b();
                } else {
                    c(i6 - i5);
                }
            }
        }

        public final void b() {
            java.util.Arrays.fill(this.f4482f, (java.lang.Object) null);
            this.f4483g = this.f4482f.length - 1;
            this.f4484h = 0;
            this.f4485i = 0;
        }

        public final int c(int i5) {
            int i6;
            int i7 = 0;
            if (i5 > 0) {
                int length = this.f4482f.length;
                while (true) {
                    length--;
                    i6 = this.f4483g;
                    if (length < i6 || i5 <= 0) {
                        break;
                    }
                    g4.f[] fVarArr = this.f4482f;
                    i5 -= fVarArr[length].f4461c;
                    this.f4485i -= fVarArr[length].f4461c;
                    this.f4484h--;
                    i7++;
                }
                g4.f[] fVarArr2 = this.f4482f;
                java.lang.System.arraycopy(fVarArr2, i6 + 1, fVarArr2, i6 + 1 + i7, this.f4484h);
                g4.f[] fVarArr3 = this.f4482f;
                int i8 = this.f4483g;
                java.util.Arrays.fill(fVarArr3, i8 + 1, i8 + 1 + i7, (java.lang.Object) null);
                this.f4483g += i7;
            }
            return i7;
        }

        public final void d(g4.f fVar) {
            int i5 = fVar.f4461c;
            int i6 = this.f4481e;
            if (i5 > i6) {
                b();
                return;
            }
            c((this.f4485i + i5) - i6);
            int i7 = this.f4484h + 1;
            g4.f[] fVarArr = this.f4482f;
            if (i7 > fVarArr.length) {
                g4.f[] fVarArr2 = new g4.f[fVarArr.length * 2];
                java.lang.System.arraycopy(fVarArr, 0, fVarArr2, fVarArr.length, fVarArr.length);
                this.f4483g = this.f4482f.length - 1;
                this.f4482f = fVarArr2;
            }
            int i8 = this.f4483g;
            this.f4483g = i8 - 1;
            this.f4482f[i8] = fVar;
            this.f4484h++;
            this.f4485i += i5;
        }

        public void e(int i5) {
            this.f4480d = i5;
            int iMin = java.lang.Math.min(i5, 16384);
            int i6 = this.f4481e;
            if (i6 == iMin) {
                return;
            }
            if (iMin < i6) {
                this.f4478b = java.lang.Math.min(this.f4478b, iMin);
            }
            this.f4479c = true;
            this.f4481e = iMin;
            a();
        }

        public void f(okio.ByteString byteString) throws java.io.IOException {
            h(byteString.size(), 127, 0);
            this.f4477a.write(byteString);
        }

        public void g(java.util.List<g4.f> list) throws java.io.IOException {
            if (this.f4479c) {
                int i5 = this.f4478b;
                if (i5 < this.f4481e) {
                    h(i5, 31, 32);
                }
                this.f4479c = false;
                this.f4478b = Integer.MAX_VALUE;
                h(this.f4481e, 31, 32);
            }
            int size = list.size();
            for (int i6 = 0; i6 < size; i6++) {
                g4.f fVar = list.get(i6);
                okio.ByteString asciiLowercase = fVar.f4459a.toAsciiLowercase();
                okio.ByteString byteString = fVar.f4460b;
                java.lang.Integer num = (java.lang.Integer) g4.h.f4468b.get(asciiLowercase);
                if (num != null) {
                    h(num.intValue() + 1, 15, 0);
                    f(byteString);
                } else {
                    int iP = d4.c.p(this.f4482f, fVar);
                    if (iP != -1) {
                        h((iP - this.f4483g) + g4.h.f4467a.length, 127, com.alibaba.fastjson.asm.Opcodes.IOR);
                    } else {
                        this.f4477a.writeByte(64);
                        f(asciiLowercase);
                        f(byteString);
                        d(fVar);
                    }
                }
            }
        }

        public void h(int i5, int i6, int i7) {
            if (i5 < i6) {
                this.f4477a.writeByte(i5 | i7);
                return;
            }
            this.f4477a.writeByte(i7 | i6);
            int i8 = i5 - i6;
            while (i8 >= 128) {
                this.f4477a.writeByte(128 | (i8 & 127));
                i8 >>>= 7;
            }
            this.f4477a.writeByte(i8);
        }

        public b(int i5, okio.Buffer buffer) {
            this.f4478b = Integer.MAX_VALUE;
            g4.f[] fVarArr = new g4.f[8];
            this.f4482f = fVarArr;
            this.f4483g = fVarArr.length - 1;
            this.f4484h = 0;
            this.f4485i = 0;
            this.f4480d = i5;
            this.f4481e = i5;
            this.f4477a = buffer;
        }
    }

    static {
        okio.ByteString byteString = g4.f.f4453e;
        okio.ByteString byteString2 = g4.f.f4454f;
        okio.ByteString byteString3 = g4.f.f4455g;
        okio.ByteString byteString4 = g4.f.f4452d;
        f4467a = new g4.f[]{new g4.f(g4.f.f4456h, ""), new g4.f(byteString, "GET"), new g4.f(byteString, "POST"), new g4.f(byteString2, "/"), new g4.f(byteString2, "/index.html"), new g4.f(byteString3, "http"), new g4.f(byteString3, "https"), new g4.f(byteString4, com.cndatacom.sdk.portal.entity.CdcErrCode.ALGO_EXPIRED), new g4.f(byteString4, "204"), new g4.f(byteString4, "206"), new g4.f(byteString4, "304"), new g4.f(byteString4, "400"), new g4.f(byteString4, "404"), new g4.f(byteString4, "500"), new g4.f("accept-charset", ""), new g4.f("accept-encoding", "gzip, deflate"), new g4.f("accept-language", ""), new g4.f("accept-ranges", ""), new g4.f("accept", ""), new g4.f("access-control-allow-origin", ""), new g4.f("age", ""), new g4.f("allow", ""), new g4.f("authorization", ""), new g4.f("cache-control", ""), new g4.f("content-disposition", ""), new g4.f("content-encoding", ""), new g4.f("content-language", ""), new g4.f("content-length", ""), new g4.f("content-location", ""), new g4.f("content-range", ""), new g4.f("content-type", ""), new g4.f("cookie", ""), new g4.f("date", ""), new g4.f("etag", ""), new g4.f("expect", ""), new g4.f("expires", ""), new g4.f("from", ""), new g4.f("host", ""), new g4.f("if-match", ""), new g4.f("if-modified-since", ""), new g4.f("if-none-match", ""), new g4.f("if-range", ""), new g4.f("if-unmodified-since", ""), new g4.f("last-modified", ""), new g4.f("link", ""), new g4.f("location", ""), new g4.f("max-forwards", ""), new g4.f("proxy-authenticate", ""), new g4.f("proxy-authorization", ""), new g4.f("range", ""), new g4.f("referer", ""), new g4.f("refresh", ""), new g4.f("retry-after", ""), new g4.f("server", ""), new g4.f("set-cookie", ""), new g4.f("strict-transport-security", ""), new g4.f("transfer-encoding", ""), new g4.f("user-agent", ""), new g4.f("vary", ""), new g4.f("via", ""), new g4.f("www-authenticate", "")};
        f4468b = e();
    }

    public static okio.ByteString d(okio.ByteString byteString) throws java.io.IOException {
        int size = byteString.size();
        for (int i5 = 0; i5 < size; i5++) {
            byte b5 = byteString.getByte(i5);
            if (b5 >= 65 && b5 <= 90) {
                throw new java.io.IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    public static java.util.Map<okio.ByteString, java.lang.Integer> e() {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap(f4467a.length);
        int i5 = 0;
        while (true) {
            g4.f[] fVarArr = f4467a;
            if (i5 >= fVarArr.length) {
                return java.util.Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(fVarArr[i5].f4459a)) {
                linkedHashMap.put(fVarArr[i5].f4459a, java.lang.Integer.valueOf(i5));
            }
            i5++;
        }
    }
}
