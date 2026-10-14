package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class HashingSource extends okio.ForwardingSource {
    private final java.security.MessageDigest messageDigest;

    private HashingSource(okio.Source source, java.lang.String str) {
        super(source);
        try {
            this.messageDigest = java.security.MessageDigest.getInstance(str);
        } catch (java.security.NoSuchAlgorithmException unused) {
            throw new java.lang.AssertionError();
        }
    }

    public static okio.HashingSource md5(okio.Source source) {
        return new okio.HashingSource(source, "MD5");
    }

    public static okio.HashingSource sha1(okio.Source source) {
        return new okio.HashingSource(source, "SHA-1");
    }

    public static okio.HashingSource sha256(okio.Source source) {
        return new okio.HashingSource(source, "SHA-256");
    }

    public okio.ByteString hash() {
        return okio.ByteString.of(this.messageDigest.digest());
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
        long j6 = super.read(buffer, j5);
        if (j6 != -1) {
            long j7 = buffer.size;
            long j8 = j7 - j6;
            okio.Segment segment = buffer.head;
            while (j7 > j8) {
                segment = segment.prev;
                j7 -= (long) (segment.limit - segment.pos);
            }
            while (j7 < buffer.size) {
                int i5 = (int) ((((long) segment.pos) + j8) - j7);
                this.messageDigest.update(segment.data, i5, segment.limit - i5);
                j8 = ((long) (segment.limit - segment.pos)) + j7;
                segment = segment.next;
                j7 = j8;
            }
        }
        return j6;
    }
}
