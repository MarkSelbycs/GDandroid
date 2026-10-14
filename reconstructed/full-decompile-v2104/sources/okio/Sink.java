package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface Sink extends java.io.Closeable, java.io.Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws java.io.IOException;

    void flush() throws java.io.IOException;

    okio.Timeout timeout();

    void write(okio.Buffer buffer, long j5) throws java.io.IOException;
}
