package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface Source extends java.io.Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws java.io.IOException;

    long read(okio.Buffer buffer, long j5) throws java.io.IOException;

    okio.Timeout timeout();
}
