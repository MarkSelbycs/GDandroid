package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class DeflaterSink implements okio.Sink {
    private boolean closed;
    private final java.util.zip.Deflater deflater;
    private final okio.BufferedSink sink;

    public DeflaterSink(okio.Sink sink, java.util.zip.Deflater deflater) {
        this(okio.Okio.buffer(sink), deflater);
    }

    @org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
    private void deflate(boolean z4) throws java.io.IOException {
        okio.Segment segmentWritableSegment;
        int iDeflate;
        okio.Buffer buffer = this.sink.buffer();
        while (true) {
            segmentWritableSegment = buffer.writableSegment(1);
            if (z4) {
                java.util.zip.Deflater deflater = this.deflater;
                byte[] bArr = segmentWritableSegment.data;
                int i5 = segmentWritableSegment.limit;
                iDeflate = deflater.deflate(bArr, i5, 8192 - i5, 2);
            } else {
                java.util.zip.Deflater deflater2 = this.deflater;
                byte[] bArr2 = segmentWritableSegment.data;
                int i6 = segmentWritableSegment.limit;
                iDeflate = deflater2.deflate(bArr2, i6, 8192 - i6);
            }
            if (iDeflate > 0) {
                segmentWritableSegment.limit += iDeflate;
                buffer.size += (long) iDeflate;
                this.sink.emitCompleteSegments();
            } else if (this.deflater.needsInput()) {
                break;
            }
        }
        if (segmentWritableSegment.pos == segmentWritableSegment.limit) {
            buffer.head = segmentWritableSegment.pop();
            okio.SegmentPool.recycle(segmentWritableSegment);
        }
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.lang.Throwable {
        if (this.closed) {
            return;
        }
        java.lang.Throwable th = null;
        try {
            finishDeflate();
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
        try {
            this.deflater.end();
        } catch (java.lang.Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.sink.close();
        } catch (java.lang.Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.closed = true;
        if (th != null) {
            okio.Util.sneakyRethrow(th);
        }
    }

    public void finishDeflate() throws java.io.IOException {
        this.deflater.finish();
        deflate(false);
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws java.io.IOException {
        deflate(true);
        this.sink.flush();
    }

    @Override // okio.Sink
    public okio.Timeout timeout() {
        return this.sink.timeout();
    }

    public java.lang.String toString() {
        return "DeflaterSink(" + this.sink + ")";
    }

    @Override // okio.Sink
    public void write(okio.Buffer buffer, long j5) throws java.io.IOException {
        okio.Util.checkOffsetAndCount(buffer.size, 0L, j5);
        while (j5 > 0) {
            okio.Segment segment = buffer.head;
            int iMin = (int) java.lang.Math.min(j5, segment.limit - segment.pos);
            this.deflater.setInput(segment.data, segment.pos, iMin);
            deflate(false);
            long j6 = iMin;
            buffer.size -= j6;
            int i5 = segment.pos + iMin;
            segment.pos = i5;
            if (i5 == segment.limit) {
                buffer.head = segment.pop();
                okio.SegmentPool.recycle(segment);
            }
            j5 -= j6;
        }
    }

    public DeflaterSink(okio.BufferedSink bufferedSink, java.util.zip.Deflater deflater) {
        if (bufferedSink == null) {
            throw new java.lang.IllegalArgumentException("source == null");
        }
        if (deflater == null) {
            throw new java.lang.IllegalArgumentException("inflater == null");
        }
        this.sink = bufferedSink;
        this.deflater = deflater;
    }
}
