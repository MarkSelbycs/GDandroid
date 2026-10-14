package c4;

/* JADX INFO: compiled from: ResponseBody.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b0 implements java.io.Closeable {

    /* JADX INFO: compiled from: ResponseBody.java */
    public static class a extends c4.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c4.t f3056a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ long f3057b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ okio.BufferedSource f3058c;

        public a(c4.t tVar, long j5, okio.BufferedSource bufferedSource) {
            this.f3056a = tVar;
            this.f3057b = j5;
            this.f3058c = bufferedSource;
        }

        @Override // c4.b0
        public long h() {
            return this.f3057b;
        }

        @Override // c4.b0
        public c4.t i() {
            return this.f3056a;
        }

        @Override // c4.b0
        public okio.BufferedSource n() {
            return this.f3058c;
        }
    }

    public static c4.b0 j(c4.t tVar, long j5, okio.BufferedSource bufferedSource) {
        java.util.Objects.requireNonNull(bufferedSource, "source == null");
        return new c4.b0.a(tVar, j5, bufferedSource);
    }

    public static c4.b0 l(c4.t tVar, byte[] bArr) {
        return j(tVar, bArr.length, new okio.Buffer().write(bArr));
    }

    public final java.io.InputStream c() {
        return n().inputStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        d4.c.c(n());
    }

    public final byte[] e() throws java.io.IOException {
        long jH = h();
        if (jH > 2147483647L) {
            throw new java.io.IOException("Cannot buffer entire body for content length: " + jH);
        }
        okio.BufferedSource bufferedSourceN = n();
        try {
            byte[] byteArray = bufferedSourceN.readByteArray();
            d4.c.c(bufferedSourceN);
            if (jH == -1 || jH == byteArray.length) {
                return byteArray;
            }
            throw new java.io.IOException("Content-Length and stream length disagree");
        } catch (java.lang.Throwable th) {
            d4.c.c(bufferedSourceN);
            throw th;
        }
    }

    public final java.nio.charset.Charset f() {
        c4.t tVarI = i();
        return tVarI != null ? tVarI.a(d4.c.f3967c) : d4.c.f3967c;
    }

    public abstract long h();

    public abstract c4.t i();

    public abstract okio.BufferedSource n();

    public final java.lang.String o() throws java.io.IOException {
        return new java.lang.String(e(), f().name());
    }
}
