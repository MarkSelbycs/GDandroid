package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
final class RealBufferedSink implements okio.BufferedSink {
    public final okio.Buffer buffer = new okio.Buffer();
    public boolean closed;
    public final okio.Sink sink;

    public RealBufferedSink(okio.Sink sink) {
        java.util.Objects.requireNonNull(sink, "sink == null");
        this.sink = sink;
    }

    @Override // okio.BufferedSink
    public okio.Buffer buffer() {
        return this.buffer;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.lang.Throwable {
        if (this.closed) {
            return;
        }
        java.lang.Throwable th = null;
        try {
            okio.Buffer buffer = this.buffer;
            long j5 = buffer.size;
            if (j5 > 0) {
                this.sink.write(buffer, j5);
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
        try {
            this.sink.close();
        } catch (java.lang.Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.closed = true;
        if (th != null) {
            okio.Util.sneakyRethrow(th);
        }
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink emit() throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        long size = this.buffer.size();
        if (size > 0) {
            this.sink.write(this.buffer, size);
        }
        return this;
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink emitCompleteSegments() throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        long jCompleteSegmentByteCount = this.buffer.completeSegmentByteCount();
        if (jCompleteSegmentByteCount > 0) {
            this.sink.write(this.buffer, jCompleteSegmentByteCount);
        }
        return this;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        okio.Buffer buffer = this.buffer;
        long j5 = buffer.size;
        if (j5 > 0) {
            this.sink.write(buffer, j5);
        }
        this.sink.flush();
    }

    @Override // okio.BufferedSink
    public java.io.OutputStream outputStream() {
        return new java.io.OutputStream() { // from class: okio.RealBufferedSink.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws java.lang.Throwable {
                okio.RealBufferedSink.this.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() throws java.io.IOException {
                okio.RealBufferedSink realBufferedSink = okio.RealBufferedSink.this;
                if (realBufferedSink.closed) {
                    return;
                }
                realBufferedSink.flush();
            }

            public java.lang.String toString() {
                return okio.RealBufferedSink.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i5) throws java.io.IOException {
                okio.RealBufferedSink realBufferedSink = okio.RealBufferedSink.this;
                if (realBufferedSink.closed) {
                    throw new java.io.IOException("closed");
                }
                realBufferedSink.buffer.writeByte((int) ((byte) i5));
                okio.RealBufferedSink.this.emitCompleteSegments();
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i5, int i6) throws java.io.IOException {
                okio.RealBufferedSink realBufferedSink = okio.RealBufferedSink.this;
                if (!realBufferedSink.closed) {
                    realBufferedSink.buffer.write(bArr, i5, i6);
                    okio.RealBufferedSink.this.emitCompleteSegments();
                    return;
                }
                throw new java.io.IOException("closed");
            }
        };
    }

    @Override // okio.Sink
    public okio.Timeout timeout() {
        return this.sink.timeout();
    }

    public java.lang.String toString() {
        return "buffer(" + this.sink + ")";
    }

    @Override // okio.Sink
    public void write(okio.Buffer buffer, long j5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.write(buffer, j5);
        emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public long writeAll(okio.Source source) throws java.io.IOException {
        if (source == null) {
            throw new java.lang.IllegalArgumentException("source == null");
        }
        long j5 = 0;
        while (true) {
            long j6 = source.read(this.buffer, 8192L);
            if (j6 == -1) {
                return j5;
            }
            j5 += j6;
            emitCompleteSegments();
        }
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeByte(int i5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeByte(i5);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeDecimalLong(long j5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeDecimalLong(j5);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeHexadecimalUnsignedLong(long j5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeHexadecimalUnsignedLong(j5);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeInt(int i5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeInt(i5);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeIntLe(int i5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeIntLe(i5);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeLong(long j5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeLong(j5);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeLongLe(long j5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeLongLe(j5);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeShort(int i5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeShort(i5);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeShortLe(int i5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeShortLe(i5);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeString(java.lang.String str, java.nio.charset.Charset charset) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeString(str, charset);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeUtf8(java.lang.String str) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeUtf8(str);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeUtf8CodePoint(int i5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        this.buffer.writeUtf8CodePoint(i5);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink write(okio.ByteString byteString) throws java.io.IOException {
        if (!this.closed) {
            this.buffer.write(byteString);
            return emitCompleteSegments();
        }
        throw new java.lang.IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeString(java.lang.String str, int i5, int i6, java.nio.charset.Charset charset) throws java.io.IOException {
        if (!this.closed) {
            this.buffer.writeString(str, i5, i6, charset);
            return emitCompleteSegments();
        }
        throw new java.lang.IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink writeUtf8(java.lang.String str, int i5, int i6) throws java.io.IOException {
        if (!this.closed) {
            this.buffer.writeUtf8(str, i5, i6);
            return emitCompleteSegments();
        }
        throw new java.lang.IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink write(byte[] bArr) throws java.io.IOException {
        if (!this.closed) {
            this.buffer.write(bArr);
            return emitCompleteSegments();
        }
        throw new java.lang.IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink write(byte[] bArr, int i5, int i6) throws java.io.IOException {
        if (!this.closed) {
            this.buffer.write(bArr, i5, i6);
            return emitCompleteSegments();
        }
        throw new java.lang.IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink write(okio.Source source, long j5) throws java.io.IOException {
        while (j5 > 0) {
            long j6 = source.read(this.buffer, j5);
            if (j6 != -1) {
                j5 -= j6;
                emitCompleteSegments();
            } else {
                throw new java.io.EOFException();
            }
        }
        return this;
    }
}
