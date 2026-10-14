package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class GzipSink implements okio.Sink {
    private boolean closed;
    private final java.util.zip.CRC32 crc = new java.util.zip.CRC32();
    private final java.util.zip.Deflater deflater;
    private final okio.DeflaterSink deflaterSink;
    private final okio.BufferedSink sink;

    public GzipSink(okio.Sink sink) {
        if (sink == null) {
            throw new java.lang.IllegalArgumentException("sink == null");
        }
        java.util.zip.Deflater deflater = new java.util.zip.Deflater(-1, true);
        this.deflater = deflater;
        okio.BufferedSink bufferedSinkBuffer = okio.Okio.buffer(sink);
        this.sink = bufferedSinkBuffer;
        this.deflaterSink = new okio.DeflaterSink(bufferedSinkBuffer, deflater);
        writeHeader();
    }

    private void updateCrc(okio.Buffer buffer, long j5) {
        okio.Segment segment = buffer.head;
        while (j5 > 0) {
            int iMin = (int) java.lang.Math.min(j5, segment.limit - segment.pos);
            this.crc.update(segment.data, segment.pos, iMin);
            j5 -= (long) iMin;
            segment = segment.next;
        }
    }

    private void writeFooter() throws java.io.IOException {
        this.sink.writeIntLe((int) this.crc.getValue());
        this.sink.writeIntLe(this.deflater.getTotalIn());
    }

    private void writeHeader() {
        okio.Buffer buffer = this.sink.buffer();
        buffer.writeShort(8075);
        buffer.writeByte(8);
        buffer.writeByte(0);
        buffer.writeInt(0);
        buffer.writeByte(0);
        buffer.writeByte(0);
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.lang.Throwable {
        if (this.closed) {
            return;
        }
        java.lang.Throwable th = null;
        try {
            this.deflaterSink.finishDeflate();
            writeFooter();
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

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws java.io.IOException {
        this.deflaterSink.flush();
    }

    @Override // okio.Sink
    public okio.Timeout timeout() {
        return this.sink.timeout();
    }

    @Override // okio.Sink
    public void write(okio.Buffer buffer, long j5) throws java.io.IOException {
        if (j5 < 0) {
            throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
        }
        if (j5 == 0) {
            return;
        }
        updateCrc(buffer, j5);
        this.deflaterSink.write(buffer, j5);
    }
}
