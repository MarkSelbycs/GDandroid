package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class HashingSink extends okio.ForwardingSink {
    private final java.security.MessageDigest messageDigest;

    private HashingSink(okio.Sink sink, java.lang.String str) {
        super(sink);
        try {
            this.messageDigest = java.security.MessageDigest.getInstance(str);
        } catch (java.security.NoSuchAlgorithmException unused) {
            throw new java.lang.AssertionError();
        }
    }

    public static okio.HashingSink md5(okio.Sink sink) {
        return new okio.HashingSink(sink, "MD5");
    }

    public static okio.HashingSink sha1(okio.Sink sink) {
        return new okio.HashingSink(sink, "SHA-1");
    }

    public static okio.HashingSink sha256(okio.Sink sink) {
        return new okio.HashingSink(sink, "SHA-256");
    }

    public okio.ByteString hash() {
        return okio.ByteString.of(this.messageDigest.digest());
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(okio.Buffer buffer, long j5) throws java.io.IOException {
        okio.Util.checkOffsetAndCount(buffer.size, 0L, j5);
        okio.Segment segment = buffer.head;
        long j6 = 0;
        while (j6 < j5) {
            int iMin = (int) java.lang.Math.min(j5 - j6, segment.limit - segment.pos);
            this.messageDigest.update(segment.data, segment.pos, iMin);
            j6 += (long) iMin;
            segment = segment.next;
        }
        super.write(buffer, j5);
    }
}
