package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface BufferedSink extends okio.Sink {
    okio.Buffer buffer();

    okio.BufferedSink emit() throws java.io.IOException;

    okio.BufferedSink emitCompleteSegments() throws java.io.IOException;

    @Override // okio.Sink, java.io.Flushable
    void flush() throws java.io.IOException;

    java.io.OutputStream outputStream();

    okio.BufferedSink write(okio.ByteString byteString) throws java.io.IOException;

    okio.BufferedSink write(okio.Source source, long j5) throws java.io.IOException;

    okio.BufferedSink write(byte[] bArr) throws java.io.IOException;

    okio.BufferedSink write(byte[] bArr, int i5, int i6) throws java.io.IOException;

    long writeAll(okio.Source source) throws java.io.IOException;

    okio.BufferedSink writeByte(int i5) throws java.io.IOException;

    okio.BufferedSink writeDecimalLong(long j5) throws java.io.IOException;

    okio.BufferedSink writeHexadecimalUnsignedLong(long j5) throws java.io.IOException;

    okio.BufferedSink writeInt(int i5) throws java.io.IOException;

    okio.BufferedSink writeIntLe(int i5) throws java.io.IOException;

    okio.BufferedSink writeLong(long j5) throws java.io.IOException;

    okio.BufferedSink writeLongLe(long j5) throws java.io.IOException;

    okio.BufferedSink writeShort(int i5) throws java.io.IOException;

    okio.BufferedSink writeShortLe(int i5) throws java.io.IOException;

    okio.BufferedSink writeString(java.lang.String str, int i5, int i6, java.nio.charset.Charset charset) throws java.io.IOException;

    okio.BufferedSink writeString(java.lang.String str, java.nio.charset.Charset charset) throws java.io.IOException;

    okio.BufferedSink writeUtf8(java.lang.String str) throws java.io.IOException;

    okio.BufferedSink writeUtf8(java.lang.String str, int i5, int i6) throws java.io.IOException;

    okio.BufferedSink writeUtf8CodePoint(int i5) throws java.io.IOException;
}
