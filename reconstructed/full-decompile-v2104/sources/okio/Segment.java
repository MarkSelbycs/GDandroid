package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
final class Segment {
    public static final int SHARE_MINIMUM = 1024;
    public static final int SIZE = 8192;
    public final byte[] data;
    public int limit;
    public okio.Segment next;
    public boolean owner;
    public int pos;
    public okio.Segment prev;
    public boolean shared;

    public Segment() {
        this.data = new byte[8192];
        this.owner = true;
        this.shared = false;
    }

    public void compact() {
        okio.Segment segment = this.prev;
        if (segment == this) {
            throw new java.lang.IllegalStateException();
        }
        if (segment.owner) {
            int i5 = this.limit - this.pos;
            if (i5 > (8192 - segment.limit) + (segment.shared ? 0 : segment.pos)) {
                return;
            }
            writeTo(segment, i5);
            pop();
            okio.SegmentPool.recycle(this);
        }
    }

    public okio.Segment pop() {
        okio.Segment segment = this.next;
        okio.Segment segment2 = segment != this ? segment : null;
        okio.Segment segment3 = this.prev;
        segment3.next = segment;
        this.next.prev = segment3;
        this.next = null;
        this.prev = null;
        return segment2;
    }

    public okio.Segment push(okio.Segment segment) {
        segment.prev = this;
        segment.next = this.next;
        this.next.prev = segment;
        this.next = segment;
        return segment;
    }

    public okio.Segment split(int i5) {
        okio.Segment segmentTake;
        if (i5 <= 0 || i5 > this.limit - this.pos) {
            throw new java.lang.IllegalArgumentException();
        }
        if (i5 >= 1024) {
            segmentTake = new okio.Segment(this);
        } else {
            segmentTake = okio.SegmentPool.take();
            java.lang.System.arraycopy(this.data, this.pos, segmentTake.data, 0, i5);
        }
        segmentTake.limit = segmentTake.pos + i5;
        this.pos += i5;
        this.prev.push(segmentTake);
        return segmentTake;
    }

    public void writeTo(okio.Segment segment, int i5) {
        if (!segment.owner) {
            throw new java.lang.IllegalArgumentException();
        }
        int i6 = segment.limit;
        if (i6 + i5 > 8192) {
            if (segment.shared) {
                throw new java.lang.IllegalArgumentException();
            }
            int i7 = segment.pos;
            if ((i6 + i5) - i7 > 8192) {
                throw new java.lang.IllegalArgumentException();
            }
            byte[] bArr = segment.data;
            java.lang.System.arraycopy(bArr, i7, bArr, 0, i6 - i7);
            segment.limit -= segment.pos;
            segment.pos = 0;
        }
        java.lang.System.arraycopy(this.data, this.pos, segment.data, segment.limit, i5);
        segment.limit += i5;
        this.pos += i5;
    }

    public Segment(okio.Segment segment) {
        this(segment.data, segment.pos, segment.limit);
        segment.shared = true;
    }

    public Segment(byte[] bArr, int i5, int i6) {
        this.data = bArr;
        this.pos = i5;
        this.limit = i6;
        this.owner = false;
        this.shared = true;
    }
}
