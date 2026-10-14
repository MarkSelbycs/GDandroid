package c4;

/* JADX INFO: compiled from: RequestBody.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class z {

    /* JADX INFO: compiled from: RequestBody.java */
    public static class a extends c4.z {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c4.t f3311a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f3312b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ byte[] f3313c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f3314d;

        public a(c4.t tVar, int i5, byte[] bArr, int i6) {
            this.f3311a = tVar;
            this.f3312b = i5;
            this.f3313c = bArr;
            this.f3314d = i6;
        }

        @Override // c4.z
        public long a() {
            return this.f3312b;
        }

        @Override // c4.z
        public c4.t b() {
            return this.f3311a;
        }

        @Override // c4.z
        public void writeTo(okio.BufferedSink bufferedSink) throws java.io.IOException {
            bufferedSink.write(this.f3313c, this.f3314d, this.f3312b);
        }
    }

    /* JADX INFO: compiled from: RequestBody.java */
    public static class b extends c4.z {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c4.t f3315a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.io.File f3316b;

        public b(c4.t tVar, java.io.File file) {
            this.f3315a = tVar;
            this.f3316b = file;
        }

        @Override // c4.z
        public long a() {
            return this.f3316b.length();
        }

        @Override // c4.z
        public c4.t b() {
            return this.f3315a;
        }

        @Override // c4.z
        public void writeTo(okio.BufferedSink bufferedSink) throws java.io.IOException {
            okio.Source source = null;
            try {
                source = okio.Okio.source(this.f3316b);
                bufferedSink.writeAll(source);
            } finally {
                d4.c.c(source);
            }
        }
    }

    public static c4.z c(c4.t tVar, java.io.File file) {
        java.util.Objects.requireNonNull(file, "content == null");
        return new c4.z.b(tVar, file);
    }

    public static c4.z d(c4.t tVar, byte[] bArr) {
        return e(tVar, bArr, 0, bArr.length);
    }

    public static c4.z e(c4.t tVar, byte[] bArr, int i5, int i6) {
        java.util.Objects.requireNonNull(bArr, "content == null");
        d4.c.a(bArr.length, i5, i6);
        return new c4.z.a(tVar, i6, bArr, i5);
    }

    public long a() throws java.io.IOException {
        return -1L;
    }

    public abstract c4.t b();

    public abstract void writeTo(okio.BufferedSink bufferedSink) throws java.io.IOException;
}
