package g4;

/* JADX INFO: compiled from: NameValueBlockReader.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final okio.InflaterSource f4514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4515b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final okio.BufferedSource f4516c;

    /* JADX INFO: compiled from: NameValueBlockReader.java */
    public class a extends okio.ForwardingSource {
        public a(okio.Source source) {
            super(source);
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
            if (g4.k.this.f4515b == 0) {
                return -1L;
            }
            long j6 = super.read(buffer, java.lang.Math.min(j5, g4.k.this.f4515b));
            if (j6 == -1) {
                return -1L;
            }
            g4.k kVar = g4.k.this;
            kVar.f4515b = (int) (((long) kVar.f4515b) - j6);
            return j6;
        }
    }

    /* JADX INFO: compiled from: NameValueBlockReader.java */
    public class b extends java.util.zip.Inflater {
        public b() {
        }

        @Override // java.util.zip.Inflater
        public int inflate(byte[] bArr, int i5, int i6) throws java.util.zip.DataFormatException {
            int iInflate = super.inflate(bArr, i5, i6);
            if (iInflate != 0 || !needsDictionary()) {
                return iInflate;
            }
            setDictionary(g4.o.f4527a);
            return super.inflate(bArr, i5, i6);
        }
    }

    public k(okio.BufferedSource bufferedSource) {
        okio.InflaterSource inflaterSource = new okio.InflaterSource(new g4.k.a(bufferedSource), new g4.k.b());
        this.f4514a = inflaterSource;
        this.f4516c = okio.Okio.buffer(inflaterSource);
    }

    public void c() throws java.io.IOException {
        this.f4516c.close();
    }

    public final void d() throws java.io.IOException {
        if (this.f4515b > 0) {
            this.f4514a.refill();
            if (this.f4515b == 0) {
                return;
            }
            throw new java.io.IOException("compressedLimit > 0: " + this.f4515b);
        }
    }

    public final okio.ByteString e() throws java.io.IOException {
        return this.f4516c.readByteString(this.f4516c.readInt());
    }

    public java.util.List<g4.f> f(int i5) throws java.io.IOException {
        this.f4515b += i5;
        int i6 = this.f4516c.readInt();
        if (i6 < 0) {
            throw new java.io.IOException("numberOfPairs < 0: " + i6);
        }
        if (i6 > 1024) {
            throw new java.io.IOException("numberOfPairs > 1024: " + i6);
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(i6);
        for (int i7 = 0; i7 < i6; i7++) {
            okio.ByteString asciiLowercase = e().toAsciiLowercase();
            okio.ByteString byteStringE = e();
            if (asciiLowercase.size() == 0) {
                throw new java.io.IOException("name.size == 0");
            }
            arrayList.add(new g4.f(asciiLowercase, byteStringE));
        }
        d();
        return arrayList;
    }
}
