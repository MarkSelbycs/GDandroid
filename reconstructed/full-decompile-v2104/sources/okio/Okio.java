package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class Okio {
    public static final java.util.logging.Logger logger = java.util.logging.Logger.getLogger(okio.Okio.class.getName());

    private Okio() {
    }

    public static okio.Sink appendingSink(java.io.File file) throws java.io.FileNotFoundException {
        if (file != null) {
            return sink(new java.io.FileOutputStream(file, true));
        }
        throw new java.lang.IllegalArgumentException("file == null");
    }

    public static okio.BufferedSource buffer(okio.Source source) {
        return new okio.RealBufferedSource(source);
    }

    public static boolean isAndroidGetsocknameError(java.lang.AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static okio.Sink sink(java.io.OutputStream outputStream) {
        return sink(outputStream, new okio.Timeout());
    }

    public static okio.Source source(java.io.InputStream inputStream) {
        return source(inputStream, new okio.Timeout());
    }

    private static okio.AsyncTimeout timeout(final java.net.Socket socket) {
        return new okio.AsyncTimeout() { // from class: okio.Okio.3
            @Override // okio.AsyncTimeout
            public java.io.IOException newTimeoutException(java.io.IOException iOException) {
                java.net.SocketTimeoutException socketTimeoutException = new java.net.SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // okio.AsyncTimeout
            public void timedOut() {
                try {
                    socket.close();
                } catch (java.lang.AssertionError e5) {
                    if (!okio.Okio.isAndroidGetsocknameError(e5)) {
                        throw e5;
                    }
                    okio.Okio.logger.log(java.util.logging.Level.WARNING, "Failed to close timed out socket " + socket, (java.lang.Throwable) e5);
                } catch (java.lang.Exception e6) {
                    okio.Okio.logger.log(java.util.logging.Level.WARNING, "Failed to close timed out socket " + socket, (java.lang.Throwable) e6);
                }
            }
        };
    }

    public static okio.BufferedSink buffer(okio.Sink sink) {
        return new okio.RealBufferedSink(sink);
    }

    private static okio.Sink sink(final java.io.OutputStream outputStream, final okio.Timeout timeout) {
        if (outputStream == null) {
            throw new java.lang.IllegalArgumentException("out == null");
        }
        if (timeout != null) {
            return new okio.Sink() { // from class: okio.Okio.1
                @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws java.io.IOException {
                    outputStream.close();
                }

                @Override // okio.Sink, java.io.Flushable
                public void flush() throws java.io.IOException {
                    outputStream.flush();
                }

                @Override // okio.Sink
                public okio.Timeout timeout() {
                    return timeout;
                }

                public java.lang.String toString() {
                    return "sink(" + outputStream + ")";
                }

                @Override // okio.Sink
                public void write(okio.Buffer buffer, long j5) throws java.io.IOException {
                    okio.Util.checkOffsetAndCount(buffer.size, 0L, j5);
                    while (j5 > 0) {
                        timeout.throwIfReached();
                        okio.Segment segment = buffer.head;
                        int iMin = (int) java.lang.Math.min(j5, segment.limit - segment.pos);
                        outputStream.write(segment.data, segment.pos, iMin);
                        int i5 = segment.pos + iMin;
                        segment.pos = i5;
                        long j6 = iMin;
                        j5 -= j6;
                        buffer.size -= j6;
                        if (i5 == segment.limit) {
                            buffer.head = segment.pop();
                            okio.SegmentPool.recycle(segment);
                        }
                    }
                }
            };
        }
        throw new java.lang.IllegalArgumentException("timeout == null");
    }

    private static okio.Source source(final java.io.InputStream inputStream, final okio.Timeout timeout) {
        if (inputStream == null) {
            throw new java.lang.IllegalArgumentException("in == null");
        }
        if (timeout != null) {
            return new okio.Source() { // from class: okio.Okio.2
                @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws java.io.IOException {
                    inputStream.close();
                }

                @Override // okio.Source
                public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
                    if (j5 < 0) {
                        throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
                    }
                    if (j5 == 0) {
                        return 0L;
                    }
                    try {
                        timeout.throwIfReached();
                        okio.Segment segmentWritableSegment = buffer.writableSegment(1);
                        int i5 = inputStream.read(segmentWritableSegment.data, segmentWritableSegment.limit, (int) java.lang.Math.min(j5, 8192 - segmentWritableSegment.limit));
                        if (i5 == -1) {
                            return -1L;
                        }
                        segmentWritableSegment.limit += i5;
                        long j6 = i5;
                        buffer.size += j6;
                        return j6;
                    } catch (java.lang.AssertionError e5) {
                        if (okio.Okio.isAndroidGetsocknameError(e5)) {
                            throw new java.io.IOException(e5);
                        }
                        throw e5;
                    }
                }

                @Override // okio.Source
                public okio.Timeout timeout() {
                    return timeout;
                }

                public java.lang.String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        }
        throw new java.lang.IllegalArgumentException("timeout == null");
    }

    public static okio.Sink sink(java.net.Socket socket) throws java.io.IOException {
        if (socket != null) {
            okio.AsyncTimeout asyncTimeoutTimeout = timeout(socket);
            return asyncTimeoutTimeout.sink(sink(socket.getOutputStream(), asyncTimeoutTimeout));
        }
        throw new java.lang.IllegalArgumentException("socket == null");
    }

    public static okio.Source source(java.io.File file) throws java.io.FileNotFoundException {
        if (file != null) {
            return source(new java.io.FileInputStream(file));
        }
        throw new java.lang.IllegalArgumentException("file == null");
    }

    @org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
    public static okio.Source source(java.nio.file.Path path, java.nio.file.OpenOption... openOptionArr) throws java.io.IOException {
        if (path != null) {
            return source(java.nio.file.Files.newInputStream(path, openOptionArr));
        }
        throw new java.lang.IllegalArgumentException("path == null");
    }

    public static okio.Sink sink(java.io.File file) throws java.io.FileNotFoundException {
        if (file != null) {
            return sink(new java.io.FileOutputStream(file));
        }
        throw new java.lang.IllegalArgumentException("file == null");
    }

    public static okio.Source source(java.net.Socket socket) throws java.io.IOException {
        if (socket != null) {
            okio.AsyncTimeout asyncTimeoutTimeout = timeout(socket);
            return asyncTimeoutTimeout.source(source(socket.getInputStream(), asyncTimeoutTimeout));
        }
        throw new java.lang.IllegalArgumentException("socket == null");
    }

    @org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
    public static okio.Sink sink(java.nio.file.Path path, java.nio.file.OpenOption... openOptionArr) throws java.io.IOException {
        if (path != null) {
            return sink(java.nio.file.Files.newOutputStream(path, openOptionArr));
        }
        throw new java.lang.IllegalArgumentException("path == null");
    }
}
