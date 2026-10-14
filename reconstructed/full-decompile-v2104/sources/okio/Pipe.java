package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class Pipe {
    public final long maxBufferSize;
    public boolean sinkClosed;
    public boolean sourceClosed;
    public final okio.Buffer buffer = new okio.Buffer();
    private final okio.Sink sink = new okio.Pipe.PipeSink();
    private final okio.Source source = new okio.Pipe.PipeSource();

    public final class PipeSink implements okio.Sink {
        public final okio.Timeout timeout = new okio.Timeout();

        public PipeSink() {
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            synchronized (okio.Pipe.this.buffer) {
                if (okio.Pipe.this.sinkClosed) {
                    return;
                }
                try {
                    flush();
                    okio.Pipe pipe = okio.Pipe.this;
                    pipe.sinkClosed = true;
                    pipe.buffer.notifyAll();
                } catch (java.lang.Throwable th) {
                    okio.Pipe.this.sinkClosed = true;
                    okio.Pipe.this.buffer.notifyAll();
                    throw th;
                }
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws java.io.IOException {
            synchronized (okio.Pipe.this.buffer) {
                if (okio.Pipe.this.sinkClosed) {
                    throw new java.lang.IllegalStateException("closed");
                }
                while (okio.Pipe.this.buffer.size() > 0) {
                    okio.Pipe pipe = okio.Pipe.this;
                    if (pipe.sourceClosed) {
                        throw new java.io.IOException("source is closed");
                    }
                    this.timeout.waitUntilNotified(pipe.buffer);
                }
            }
        }

        @Override // okio.Sink
        public okio.Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public void write(okio.Buffer buffer, long j5) throws java.io.IOException {
            synchronized (okio.Pipe.this.buffer) {
                if (okio.Pipe.this.sinkClosed) {
                    throw new java.lang.IllegalStateException("closed");
                }
                while (j5 > 0) {
                    okio.Pipe pipe = okio.Pipe.this;
                    if (pipe.sourceClosed) {
                        throw new java.io.IOException("source is closed");
                    }
                    long size = pipe.maxBufferSize - pipe.buffer.size();
                    if (size == 0) {
                        this.timeout.waitUntilNotified(okio.Pipe.this.buffer);
                    } else {
                        long jMin = java.lang.Math.min(size, j5);
                        okio.Pipe.this.buffer.write(buffer, jMin);
                        j5 -= jMin;
                        okio.Pipe.this.buffer.notifyAll();
                    }
                }
            }
        }
    }

    public final class PipeSource implements okio.Source {
        public final okio.Timeout timeout = new okio.Timeout();

        public PipeSource() {
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            synchronized (okio.Pipe.this.buffer) {
                okio.Pipe pipe = okio.Pipe.this;
                pipe.sourceClosed = true;
                pipe.buffer.notifyAll();
            }
        }

        @Override // okio.Source
        public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
            synchronized (okio.Pipe.this.buffer) {
                if (okio.Pipe.this.sourceClosed) {
                    throw new java.lang.IllegalStateException("closed");
                }
                while (okio.Pipe.this.buffer.size() == 0) {
                    okio.Pipe pipe = okio.Pipe.this;
                    if (pipe.sinkClosed) {
                        return -1L;
                    }
                    this.timeout.waitUntilNotified(pipe.buffer);
                }
                long j6 = okio.Pipe.this.buffer.read(buffer, j5);
                okio.Pipe.this.buffer.notifyAll();
                return j6;
            }
        }

        @Override // okio.Source
        public okio.Timeout timeout() {
            return this.timeout;
        }
    }

    public Pipe(long j5) {
        if (j5 >= 1) {
            this.maxBufferSize = j5;
            return;
        }
        throw new java.lang.IllegalArgumentException("maxBufferSize < 1: " + j5);
    }

    public okio.Sink sink() {
        return this.sink;
    }

    public okio.Source source() {
        return this.source;
    }
}
