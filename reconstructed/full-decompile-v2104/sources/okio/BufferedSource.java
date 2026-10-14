package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface BufferedSource extends okio.Source {
    okio.Buffer buffer();

    boolean exhausted() throws java.io.IOException;

    long indexOf(byte b5) throws java.io.IOException;

    long indexOf(byte b5, long j5) throws java.io.IOException;

    long indexOf(okio.ByteString byteString) throws java.io.IOException;

    long indexOf(okio.ByteString byteString, long j5) throws java.io.IOException;

    long indexOfElement(okio.ByteString byteString) throws java.io.IOException;

    long indexOfElement(okio.ByteString byteString, long j5) throws java.io.IOException;

    java.io.InputStream inputStream();

    boolean rangeEquals(long j5, okio.ByteString byteString) throws java.io.IOException;

    boolean rangeEquals(long j5, okio.ByteString byteString, int i5, int i6) throws java.io.IOException;

    int read(byte[] bArr) throws java.io.IOException;

    int read(byte[] bArr, int i5, int i6) throws java.io.IOException;

    long readAll(okio.Sink sink) throws java.io.IOException;

    byte readByte() throws java.io.IOException;

    byte[] readByteArray() throws java.io.IOException;

    byte[] readByteArray(long j5) throws java.io.IOException;

    okio.ByteString readByteString() throws java.io.IOException;

    okio.ByteString readByteString(long j5) throws java.io.IOException;

    long readDecimalLong() throws java.io.IOException;

    void readFully(okio.Buffer buffer, long j5) throws java.io.IOException;

    void readFully(byte[] bArr) throws java.io.IOException;

    long readHexadecimalUnsignedLong() throws java.io.IOException;

    int readInt() throws java.io.IOException;

    int readIntLe() throws java.io.IOException;

    long readLong() throws java.io.IOException;

    long readLongLe() throws java.io.IOException;

    short readShort() throws java.io.IOException;

    short readShortLe() throws java.io.IOException;

    java.lang.String readString(long j5, java.nio.charset.Charset charset) throws java.io.IOException;

    java.lang.String readString(java.nio.charset.Charset charset) throws java.io.IOException;

    java.lang.String readUtf8() throws java.io.IOException;

    java.lang.String readUtf8(long j5) throws java.io.IOException;

    int readUtf8CodePoint() throws java.io.IOException;

    java.lang.String readUtf8Line() throws java.io.IOException;

    java.lang.String readUtf8LineStrict() throws java.io.IOException;

    boolean request(long j5) throws java.io.IOException;

    void require(long j5) throws java.io.IOException;

    int select(okio.Options options) throws java.io.IOException;

    void skip(long j5) throws java.io.IOException;
}
