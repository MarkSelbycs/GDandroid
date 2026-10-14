package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class InflaterSource implements okio.Source {
    private int bufferBytesHeldByInflater;
    private boolean closed;
    private final java.util.zip.Inflater inflater;
    private final okio.BufferedSource source;

    public InflaterSource(okio.Source source, java.util.zip.Inflater inflater) {
        this(okio.Okio.buffer(source), inflater);
    }

    private void releaseInflatedBytes() throws java.io.IOException {
        int i5 = this.bufferBytesHeldByInflater;
        if (i5 == 0) {
            return;
        }
        int remaining = i5 - this.inflater.getRemaining();
        this.bufferBytesHeldByInflater -= remaining;
        this.source.skip(remaining);
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        if (this.closed) {
            return;
        }
        this.inflater.end();
        this.closed = true;
        this.source.close();
    }

    @Override // okio.Source
    public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
        boolean zRefill;
        if (j5 < 0) {
            throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
        }
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        if (j5 == 0) {
            return 0L;
        }
        do {
            zRefill = refill();
            try {
                okio.Segment segmentWritableSegment = buffer.writableSegment(1);
                java.util.zip.Inflater inflater = this.inflater;
                byte[] bArr = segmentWritableSegment.data;
                int i5 = segmentWritableSegment.limit;
                int iInflate = inflater.inflate(bArr, i5, 8192 - i5);
                if (iInflate > 0) {
                    segmentWritableSegment.limit += iInflate;
                    long j6 = iInflate;
                    buffer.size += j6;
                    return j6;
                }
                if (!this.inflater.finished() && !this.inflater.needsDictionary()) {
                }
                releaseInflatedBytes();
                if (segmentWritableSegment.pos != segmentWritableSegment.limit) {
                    return -1L;
                }
                buffer.head = segmentWritableSegment.pop();
                okio.SegmentPool.recycle(segmentWritableSegment);
                return -1L;
            } catch (java.util.zip.DataFormatException e5) {
                throw new java.io.IOException(e5);
            }
        } while (!zRefill);
        throw new java.io.EOFException("source exhausted prematurely");
    }

    public boolean refill() throws java.io.IOException {
        if (!this.inflater.needsInput()) {
            return false;
        }
        releaseInflatedBytes();
        if (this.inflater.getRemaining() != 0) {
            throw new java.lang.IllegalStateException("?");
        }
        if (this.source.exhausted()) {
            return true;
        }
        okio.Segment segment = this.source.buffer().head;
        int i5 = segment.limit;
        int i6 = segment.pos;
        int i7 = i5 - i6;
        this.bufferBytesHeldByInflater = i7;
        this.inflater.setInput(segment.data, i6, i7);
        return false;
    }

    @Override // okio.Source
    public okio.Timeout timeout() {
        return this.source.timeout();
    }

    public InflaterSource(okio.BufferedSource bufferedSource, java.util.zip.Inflater inflater) {
        if (bufferedSource == null) {
            throw new java.lang.IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new java.lang.IllegalArgumentException("inflater == null");
        }
        this.source = bufferedSource;
        this.inflater = inflater;
    }
}
