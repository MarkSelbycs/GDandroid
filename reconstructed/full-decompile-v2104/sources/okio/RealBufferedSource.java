package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
final class RealBufferedSource implements okio.BufferedSource {
    public final okio.Buffer buffer = new okio.Buffer();
    public boolean closed;
    public final okio.Source source;

    public RealBufferedSource(okio.Source source) {
        java.util.Objects.requireNonNull(source, "source == null");
        this.source = source;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public okio.Buffer buffer() {
        return this.buffer;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.source.close();
        this.buffer.clear();
    }

    @Override // okio.BufferedSource
    public boolean exhausted() throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        return this.buffer.exhausted() && this.source.read(this.buffer, 8192L) == -1;
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b5) throws java.io.IOException {
        return indexOf(b5, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(okio.ByteString byteString) throws java.io.IOException {
        return indexOfElement(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public java.io.InputStream inputStream() {
        return new java.io.InputStream() { // from class: okio.RealBufferedSource.1
            @Override // java.io.InputStream
            public int available() throws java.io.IOException {
                okio.RealBufferedSource realBufferedSource = okio.RealBufferedSource.this;
                if (realBufferedSource.closed) {
                    throw new java.io.IOException("closed");
                }
                return (int) java.lang.Math.min(realBufferedSource.buffer.size, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws java.io.IOException {
                okio.RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public int read() throws java.io.IOException {
                okio.RealBufferedSource realBufferedSource = okio.RealBufferedSource.this;
                if (realBufferedSource.closed) {
                    throw new java.io.IOException("closed");
                }
                okio.Buffer buffer = realBufferedSource.buffer;
                if (buffer.size == 0 && realBufferedSource.source.read(buffer, 8192L) == -1) {
                    return -1;
                }
                return okio.RealBufferedSource.this.buffer.readByte() & 255;
            }

            public java.lang.String toString() {
                return okio.RealBufferedSource.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i5, int i6) throws java.io.IOException {
                if (!okio.RealBufferedSource.this.closed) {
                    okio.Util.checkOffsetAndCount(bArr.length, i5, i6);
                    okio.RealBufferedSource realBufferedSource = okio.RealBufferedSource.this;
                    okio.Buffer buffer = realBufferedSource.buffer;
                    if (buffer.size == 0 && realBufferedSource.source.read(buffer, 8192L) == -1) {
                        return -1;
                    }
                    return okio.RealBufferedSource.this.buffer.read(bArr, i5, i6);
                }
                throw new java.io.IOException("closed");
            }
        };
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j5, okio.ByteString byteString) throws java.io.IOException {
        return rangeEquals(j5, byteString, 0, byteString.size());
    }

    @Override // okio.Source
    public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
        if (buffer == null) {
            throw new java.lang.IllegalArgumentException("sink == null");
        }
        if (j5 < 0) {
            throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
        }
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        okio.Buffer buffer2 = this.buffer;
        if (buffer2.size == 0 && this.source.read(buffer2, 8192L) == -1) {
            return -1L;
        }
        return this.buffer.read(buffer, java.lang.Math.min(j5, this.buffer.size));
    }

    @Override // okio.BufferedSource
    public long readAll(okio.Sink sink) throws java.io.IOException {
        if (sink == null) {
            throw new java.lang.IllegalArgumentException("sink == null");
        }
        long j5 = 0;
        while (this.source.read(this.buffer, 8192L) != -1) {
            long jCompleteSegmentByteCount = this.buffer.completeSegmentByteCount();
            if (jCompleteSegmentByteCount > 0) {
                j5 += jCompleteSegmentByteCount;
                sink.write(this.buffer, jCompleteSegmentByteCount);
            }
        }
        if (this.buffer.size() <= 0) {
            return j5;
        }
        long size = j5 + this.buffer.size();
        okio.Buffer buffer = this.buffer;
        sink.write(buffer, buffer.size());
        return size;
    }

    @Override // okio.BufferedSource
    public byte readByte() throws java.io.IOException {
        require(1L);
        return this.buffer.readByte();
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() throws java.io.IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteArray();
    }

    @Override // okio.BufferedSource
    public okio.ByteString readByteString() throws java.io.IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteString();
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() throws java.io.IOException {
        require(1L);
        int i5 = 0;
        while (true) {
            int i6 = i5 + 1;
            if (!request(i6)) {
                break;
            }
            byte b5 = this.buffer.getByte(i5);
            if ((b5 < 48 || b5 > 57) && !(i5 == 0 && b5 == 45)) {
                if (i5 != 0) {
                    break;
                }
                throw new java.lang.NumberFormatException(java.lang.String.format("Expected leading [0-9] or '-' character but was %#x", java.lang.Byte.valueOf(b5)));
            }
            i5 = i6;
        }
        return this.buffer.readDecimalLong();
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] bArr) throws java.io.IOException {
        try {
            require(bArr.length);
            this.buffer.readFully(bArr);
        } catch (java.io.EOFException e5) {
            int i5 = 0;
            while (true) {
                okio.Buffer buffer = this.buffer;
                long j5 = buffer.size;
                if (j5 <= 0) {
                    throw e5;
                }
                int i6 = buffer.read(bArr, i5, (int) j5);
                if (i6 == -1) {
                    throw new java.lang.AssertionError();
                }
                i5 += i6;
            }
        }
    }

    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() throws java.io.IOException {
        require(1L);
        int i5 = 0;
        while (true) {
            int i6 = i5 + 1;
            if (!request(i6)) {
                break;
            }
            byte b5 = this.buffer.getByte(i5);
            if ((b5 < 48 || b5 > 57) && ((b5 < 97 || b5 > 102) && (b5 < 65 || b5 > 70))) {
                if (i5 != 0) {
                    break;
                }
                throw new java.lang.NumberFormatException(java.lang.String.format("Expected leading [0-9a-fA-F] character but was %#x", java.lang.Byte.valueOf(b5)));
            }
            i5 = i6;
        }
        return this.buffer.readHexadecimalUnsignedLong();
    }

    @Override // okio.BufferedSource
    public int readInt() throws java.io.IOException {
        require(4L);
        return this.buffer.readInt();
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws java.io.IOException {
        require(4L);
        return this.buffer.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() throws java.io.IOException {
        require(8L);
        return this.buffer.readLong();
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws java.io.IOException {
        require(8L);
        return this.buffer.readLongLe();
    }

    @Override // okio.BufferedSource
    public short readShort() throws java.io.IOException {
        require(2L);
        return this.buffer.readShort();
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws java.io.IOException {
        require(2L);
        return this.buffer.readShortLe();
    }

    @Override // okio.BufferedSource
    public java.lang.String readString(java.nio.charset.Charset charset) throws java.io.IOException {
        if (charset == null) {
            throw new java.lang.IllegalArgumentException("charset == null");
        }
        this.buffer.writeAll(this.source);
        return this.buffer.readString(charset);
    }

    @Override // okio.BufferedSource
    public java.lang.String readUtf8() throws java.io.IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readUtf8();
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws java.io.IOException {
        require(1L);
        byte b5 = this.buffer.getByte(0L);
        if ((b5 & 224) == 192) {
            require(2L);
        } else if ((b5 & 240) == 224) {
            require(3L);
        } else if ((b5 & 248) == 240) {
            require(4L);
        }
        return this.buffer.readUtf8CodePoint();
    }

    @Override // okio.BufferedSource
    public java.lang.String readUtf8Line() throws java.io.IOException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return this.buffer.readUtf8Line(jIndexOf);
        }
        long j5 = this.buffer.size;
        if (j5 != 0) {
            return readUtf8(j5);
        }
        return null;
    }

    @Override // okio.BufferedSource
    public java.lang.String readUtf8LineStrict() throws java.io.IOException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return this.buffer.readUtf8Line(jIndexOf);
        }
        okio.Buffer buffer = new okio.Buffer();
        okio.Buffer buffer2 = this.buffer;
        buffer2.copyTo(buffer, 0L, java.lang.Math.min(32L, buffer2.size()));
        throw new java.io.EOFException("\\n not found: size=" + this.buffer.size() + " content=" + buffer.readByteString().hex() + "…");
    }

    @Override // okio.BufferedSource
    public boolean request(long j5) throws java.io.IOException {
        okio.Buffer buffer;
        if (j5 < 0) {
            throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
        }
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        do {
            buffer = this.buffer;
            if (buffer.size >= j5) {
                return true;
            }
        } while (this.source.read(buffer, 8192L) != -1);
        return false;
    }

    @Override // okio.BufferedSource
    public void require(long j5) throws java.io.IOException {
        if (!request(j5)) {
            throw new java.io.EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int select(okio.Options options) throws java.io.IOException {
        okio.Buffer buffer;
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        do {
            int iSelectPrefix = this.buffer.selectPrefix(options);
            if (iSelectPrefix == -1) {
                return -1;
            }
            long size = options.byteStrings[iSelectPrefix].size();
            buffer = this.buffer;
            if (size <= buffer.size) {
                buffer.skip(size);
                return iSelectPrefix;
            }
        } while (this.source.read(buffer, 8192L) != -1);
        return -1;
    }

    @Override // okio.BufferedSource
    public void skip(long j5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        while (j5 > 0) {
            okio.Buffer buffer = this.buffer;
            if (buffer.size == 0 && this.source.read(buffer, 8192L) == -1) {
                throw new java.io.EOFException();
            }
            long jMin = java.lang.Math.min(j5, this.buffer.size());
            this.buffer.skip(jMin);
            j5 -= jMin;
        }
    }

    @Override // okio.Source
    public okio.Timeout timeout() {
        return this.source.timeout();
    }

    public java.lang.String toString() {
        return "buffer(" + this.source + ")";
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b5, long j5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        while (true) {
            long jIndexOf = this.buffer.indexOf(b5, j5);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            okio.Buffer buffer = this.buffer;
            long j6 = buffer.size;
            if (this.source.read(buffer, 8192L) == -1) {
                return -1L;
            }
            j5 = java.lang.Math.max(j5, j6);
        }
    }

    @Override // okio.BufferedSource
    public long indexOfElement(okio.ByteString byteString, long j5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        while (true) {
            long jIndexOfElement = this.buffer.indexOfElement(byteString, j5);
            if (jIndexOfElement != -1) {
                return jIndexOfElement;
            }
            okio.Buffer buffer = this.buffer;
            long j6 = buffer.size;
            if (this.source.read(buffer, 8192L) == -1) {
                return -1L;
            }
            j5 = java.lang.Math.max(j5, j6);
        }
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j5, okio.ByteString byteString, int i5, int i6) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        if (j5 < 0 || i5 < 0 || i6 < 0 || byteString.size() - i5 < i6) {
            return false;
        }
        for (int i7 = 0; i7 < i6; i7++) {
            long j6 = ((long) i7) + j5;
            if (!request(1 + j6) || this.buffer.getByte(j6) != byteString.getByte(i5 + i7)) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j5) throws java.io.IOException {
        require(j5);
        return this.buffer.readByteArray(j5);
    }

    @Override // okio.BufferedSource
    public okio.ByteString readByteString(long j5) throws java.io.IOException {
        require(j5);
        return this.buffer.readByteString(j5);
    }

    @Override // okio.BufferedSource
    public java.lang.String readUtf8(long j5) throws java.io.IOException {
        require(j5);
        return this.buffer.readUtf8(j5);
    }

    @Override // okio.BufferedSource
    public java.lang.String readString(long j5, java.nio.charset.Charset charset) throws java.io.IOException {
        require(j5);
        if (charset != null) {
            return this.buffer.readString(j5, charset);
        }
        throw new java.lang.IllegalArgumentException("charset == null");
    }

    @Override // okio.BufferedSource
    public void readFully(okio.Buffer buffer, long j5) throws java.io.IOException {
        try {
            require(j5);
            this.buffer.readFully(buffer, j5);
        } catch (java.io.EOFException e5) {
            buffer.writeAll(this.buffer);
            throw e5;
        }
    }

    @Override // okio.BufferedSource
    public long indexOf(okio.ByteString byteString) throws java.io.IOException {
        return indexOf(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOf(okio.ByteString byteString, long j5) throws java.io.IOException {
        if (this.closed) {
            throw new java.lang.IllegalStateException("closed");
        }
        while (true) {
            long jIndexOf = this.buffer.indexOf(byteString, j5);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            okio.Buffer buffer = this.buffer;
            long j6 = buffer.size;
            if (this.source.read(buffer, 8192L) == -1) {
                return -1L;
            }
            j5 = java.lang.Math.max(j5, (j6 - ((long) byteString.size())) + 1);
        }
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr) throws java.io.IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr, int i5, int i6) throws java.io.IOException {
        long j5 = i6;
        okio.Util.checkOffsetAndCount(bArr.length, i5, j5);
        okio.Buffer buffer = this.buffer;
        if (buffer.size == 0 && this.source.read(buffer, 8192L) == -1) {
            return -1;
        }
        return this.buffer.read(bArr, i5, (int) java.lang.Math.min(j5, this.buffer.size));
    }
}
