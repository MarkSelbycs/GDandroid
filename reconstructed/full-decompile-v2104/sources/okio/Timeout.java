package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Timeout {
    public static final okio.Timeout NONE = new okio.Timeout() { // from class: okio.Timeout.1
        @Override // okio.Timeout
        public okio.Timeout deadlineNanoTime(long j5) {
            return this;
        }

        @Override // okio.Timeout
        public void throwIfReached() throws java.io.IOException {
        }

        @Override // okio.Timeout
        public okio.Timeout timeout(long j5, java.util.concurrent.TimeUnit timeUnit) {
            return this;
        }
    };
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    public okio.Timeout clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public okio.Timeout clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public final okio.Timeout deadline(long j5, java.util.concurrent.TimeUnit timeUnit) {
        if (j5 > 0) {
            if (timeUnit != null) {
                return deadlineNanoTime(java.lang.System.nanoTime() + timeUnit.toNanos(j5));
            }
            throw new java.lang.IllegalArgumentException("unit == null");
        }
        throw new java.lang.IllegalArgumentException("duration <= 0: " + j5);
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        throw new java.lang.IllegalStateException("No deadline");
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public void throwIfReached() throws java.io.IOException {
        if (java.lang.Thread.interrupted()) {
            throw new java.io.InterruptedIOException("thread interrupted");
        }
        if (this.hasDeadline && this.deadlineNanoTime - java.lang.System.nanoTime() <= 0) {
            throw new java.io.InterruptedIOException("deadline reached");
        }
    }

    public okio.Timeout timeout(long j5, java.util.concurrent.TimeUnit timeUnit) {
        if (j5 >= 0) {
            if (timeUnit == null) {
                throw new java.lang.IllegalArgumentException("unit == null");
            }
            this.timeoutNanos = timeUnit.toNanos(j5);
            return this;
        }
        throw new java.lang.IllegalArgumentException("timeout < 0: " + j5);
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    public final void waitUntilNotified(java.lang.Object obj) throws java.io.InterruptedIOException {
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                obj.wait();
                return;
            }
            long jNanoTime2 = java.lang.System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = java.lang.Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                long j5 = jTimeoutNanos / 1000000;
                obj.wait(j5, (int) (jTimeoutNanos - (1000000 * j5)));
                jNanoTime = java.lang.System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new java.io.InterruptedIOException("timeout");
            }
        } catch (java.lang.InterruptedException unused) {
            throw new java.io.InterruptedIOException("interrupted");
        }
    }

    public okio.Timeout deadlineNanoTime(long j5) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j5;
        return this;
    }
}
