package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AsyncTimeout extends okio.Timeout {
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static okio.AsyncTimeout head;
    private boolean inQueue;
    private okio.AsyncTimeout next;
    private long timeoutAt;

    public static final class Watchdog extends java.lang.Thread {
        public Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    okio.AsyncTimeout asyncTimeoutAwaitTimeout = okio.AsyncTimeout.awaitTimeout();
                    if (asyncTimeoutAwaitTimeout != null) {
                        asyncTimeoutAwaitTimeout.timedOut();
                    }
                } catch (java.lang.InterruptedException unused) {
                }
            }
        }
    }

    public static synchronized okio.AsyncTimeout awaitTimeout() throws java.lang.InterruptedException {
        okio.AsyncTimeout asyncTimeout = head.next;
        if (asyncTimeout == null) {
            okio.AsyncTimeout.class.wait();
            return null;
        }
        long jRemainingNanos = asyncTimeout.remainingNanos(java.lang.System.nanoTime());
        if (jRemainingNanos > 0) {
            long j5 = jRemainingNanos / 1000000;
            okio.AsyncTimeout.class.wait(j5, (int) (jRemainingNanos - (1000000 * j5)));
            return null;
        }
        head.next = asyncTimeout.next;
        asyncTimeout.next = null;
        return asyncTimeout;
    }

    private static synchronized boolean cancelScheduledTimeout(okio.AsyncTimeout asyncTimeout) {
        okio.AsyncTimeout asyncTimeout2 = head;
        while (asyncTimeout2 != null) {
            okio.AsyncTimeout asyncTimeout3 = asyncTimeout2.next;
            if (asyncTimeout3 == asyncTimeout) {
                asyncTimeout2.next = asyncTimeout.next;
                asyncTimeout.next = null;
                return false;
            }
            asyncTimeout2 = asyncTimeout3;
        }
        return true;
    }

    private long remainingNanos(long j5) {
        return this.timeoutAt - j5;
    }

    private static synchronized void scheduleTimeout(okio.AsyncTimeout asyncTimeout, long j5, boolean z4) {
        if (head == null) {
            head = new okio.AsyncTimeout();
            new okio.AsyncTimeout.Watchdog().start();
        }
        long jNanoTime = java.lang.System.nanoTime();
        if (j5 != 0 && z4) {
            asyncTimeout.timeoutAt = java.lang.Math.min(j5, asyncTimeout.deadlineNanoTime() - jNanoTime) + jNanoTime;
        } else if (j5 != 0) {
            asyncTimeout.timeoutAt = j5 + jNanoTime;
        } else {
            if (!z4) {
                throw new java.lang.AssertionError();
            }
            asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
        }
        long jRemainingNanos = asyncTimeout.remainingNanos(jNanoTime);
        okio.AsyncTimeout asyncTimeout2 = head;
        while (true) {
            okio.AsyncTimeout asyncTimeout3 = asyncTimeout2.next;
            if (asyncTimeout3 == null || jRemainingNanos < asyncTimeout3.remainingNanos(jNanoTime)) {
                break;
                break;
            }
            asyncTimeout2 = asyncTimeout2.next;
        }
        asyncTimeout.next = asyncTimeout2.next;
        asyncTimeout2.next = asyncTimeout;
        if (asyncTimeout2 == head) {
            okio.AsyncTimeout.class.notify();
        }
    }

    public final void enter() {
        if (this.inQueue) {
            throw new java.lang.IllegalStateException("Unbalanced enter/exit");
        }
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            this.inQueue = true;
            scheduleTimeout(this, jTimeoutNanos, zHasDeadline);
        }
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return cancelScheduledTimeout(this);
    }

    public java.io.IOException newTimeoutException(java.io.IOException iOException) {
        java.io.InterruptedIOException interruptedIOException = new java.io.InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final okio.Sink sink(final okio.Sink sink) {
        return new okio.Sink() { // from class: okio.AsyncTimeout.1
            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws java.io.IOException {
                okio.AsyncTimeout.this.enter();
                try {
                    try {
                        sink.close();
                        okio.AsyncTimeout.this.exit(true);
                    } catch (java.io.IOException e5) {
                        throw okio.AsyncTimeout.this.exit(e5);
                    }
                } catch (java.lang.Throwable th) {
                    okio.AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() throws java.io.IOException {
                okio.AsyncTimeout.this.enter();
                try {
                    try {
                        sink.flush();
                        okio.AsyncTimeout.this.exit(true);
                    } catch (java.io.IOException e5) {
                        throw okio.AsyncTimeout.this.exit(e5);
                    }
                } catch (java.lang.Throwable th) {
                    okio.AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Sink
            public okio.Timeout timeout() {
                return okio.AsyncTimeout.this;
            }

            public java.lang.String toString() {
                return "AsyncTimeout.sink(" + sink + ")";
            }

            @Override // okio.Sink
            public void write(okio.Buffer buffer, long j5) throws java.io.IOException {
                okio.Util.checkOffsetAndCount(buffer.size, 0L, j5);
                while (true) {
                    long j6 = 0;
                    if (j5 <= 0) {
                        return;
                    }
                    okio.Segment segment = buffer.head;
                    while (j6 < okio.SegmentPool.MAX_SIZE) {
                        okio.Segment segment2 = buffer.head;
                        j6 += (long) (segment2.limit - segment2.pos);
                        if (j6 >= j5) {
                            j6 = j5;
                            break;
                        }
                        segment = segment.next;
                    }
                    okio.AsyncTimeout.this.enter();
                    try {
                        try {
                            sink.write(buffer, j6);
                            j5 -= j6;
                            okio.AsyncTimeout.this.exit(true);
                        } catch (java.io.IOException e5) {
                            throw okio.AsyncTimeout.this.exit(e5);
                        }
                    } catch (java.lang.Throwable th) {
                        okio.AsyncTimeout.this.exit(false);
                        throw th;
                    }
                }
            }
        };
    }

    public final okio.Source source(final okio.Source source) {
        return new okio.Source() { // from class: okio.AsyncTimeout.2
            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws java.io.IOException {
                try {
                    try {
                        source.close();
                        okio.AsyncTimeout.this.exit(true);
                    } catch (java.io.IOException e5) {
                        throw okio.AsyncTimeout.this.exit(e5);
                    }
                } catch (java.lang.Throwable th) {
                    okio.AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Source
            public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
                okio.AsyncTimeout.this.enter();
                try {
                    try {
                        long j6 = source.read(buffer, j5);
                        okio.AsyncTimeout.this.exit(true);
                        return j6;
                    } catch (java.io.IOException e5) {
                        throw okio.AsyncTimeout.this.exit(e5);
                    }
                } catch (java.lang.Throwable th) {
                    okio.AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Source
            public okio.Timeout timeout() {
                return okio.AsyncTimeout.this;
            }

            public java.lang.String toString() {
                return "AsyncTimeout.source(" + source + ")";
            }
        };
    }

    public void timedOut() {
    }

    public final void exit(boolean z4) throws java.io.IOException {
        if (exit() && z4) {
            throw newTimeoutException(null);
        }
    }

    public final java.io.IOException exit(java.io.IOException iOException) throws java.io.IOException {
        return !exit() ? iOException : newTimeoutException(iOException);
    }
}
