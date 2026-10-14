package g4;

/* JADX INFO: compiled from: Header.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final okio.ByteString f4452d = okio.ByteString.encodeUtf8(":status");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final okio.ByteString f4453e = okio.ByteString.encodeUtf8(":method");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final okio.ByteString f4454f = okio.ByteString.encodeUtf8(":path");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final okio.ByteString f4455g = okio.ByteString.encodeUtf8(":scheme");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final okio.ByteString f4456h = okio.ByteString.encodeUtf8(":authority");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final okio.ByteString f4457i = okio.ByteString.encodeUtf8(":host");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final okio.ByteString f4458j = okio.ByteString.encodeUtf8(":version");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final okio.ByteString f4459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final okio.ByteString f4460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4461c;

    public f(java.lang.String str, java.lang.String str2) {
        this(okio.ByteString.encodeUtf8(str), okio.ByteString.encodeUtf8(str2));
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof g4.f)) {
            return false;
        }
        g4.f fVar = (g4.f) obj;
        return this.f4459a.equals(fVar.f4459a) && this.f4460b.equals(fVar.f4460b);
    }

    public int hashCode() {
        return ((527 + this.f4459a.hashCode()) * 31) + this.f4460b.hashCode();
    }

    public java.lang.String toString() {
        return d4.c.l("%s: %s", this.f4459a.utf8(), this.f4460b.utf8());
    }

    public f(okio.ByteString byteString, java.lang.String str) {
        this(byteString, okio.ByteString.encodeUtf8(str));
    }

    public f(okio.ByteString byteString, okio.ByteString byteString2) {
        this.f4459a = byteString;
        this.f4460b = byteString2;
        this.f4461c = byteString.size() + 32 + byteString2.size();
    }
}
