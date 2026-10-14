package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class Buffer implements okio.BufferedSource, okio.BufferedSink, java.lang.Cloneable {
    private static final byte[] DIGITS = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    public static final int REPLACEMENT_CHARACTER = 65533;
    public okio.Segment head;
    public long size;

    private okio.ByteString digest(java.lang.String str) {
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance(str);
            okio.Segment segment = this.head;
            byte[] bArr = segment.data;
            int i5 = segment.pos;
            messageDigest.update(bArr, i5, segment.limit - i5);
            okio.Segment segment2 = this.head;
            while (true) {
                segment2 = segment2.next;
                if (segment2 == this.head) {
                    return okio.ByteString.of(messageDigest.digest());
                }
                byte[] bArr2 = segment2.data;
                int i6 = segment2.pos;
                messageDigest.update(bArr2, i6, segment2.limit - i6);
            }
        } catch (java.security.NoSuchAlgorithmException unused) {
            throw new java.lang.AssertionError();
        }
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public okio.Buffer buffer() {
        return this;
    }

    public void clear() {
        try {
            skip(this.size);
        } catch (java.io.EOFException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public long completeSegmentByteCount() {
        long j5 = this.size;
        if (j5 == 0) {
            return 0L;
        }
        okio.Segment segment = this.head.prev;
        int i5 = segment.limit;
        return (i5 >= 8192 || !segment.owner) ? j5 : j5 - ((long) (i5 - segment.pos));
    }

    public okio.Buffer copyTo(java.io.OutputStream outputStream) throws java.io.IOException {
        return copyTo(outputStream, 0L, this.size);
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink emit() {
        return this;
    }

    @Override // okio.BufferedSink
    public okio.Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof okio.Buffer)) {
            return false;
        }
        okio.Buffer buffer = (okio.Buffer) obj;
        long j5 = this.size;
        if (j5 != buffer.size) {
            return false;
        }
        long j6 = 0;
        if (j5 == 0) {
            return true;
        }
        okio.Segment segment = this.head;
        okio.Segment segment2 = buffer.head;
        int i5 = segment.pos;
        int i6 = segment2.pos;
        while (j6 < this.size) {
            long jMin = java.lang.Math.min(segment.limit - i5, segment2.limit - i6);
            int i7 = 0;
            while (i7 < jMin) {
                int i8 = i5 + 1;
                int i9 = i6 + 1;
                if (segment.data[i5] != segment2.data[i6]) {
                    return false;
                }
                i7++;
                i5 = i8;
                i6 = i9;
            }
            if (i5 == segment.limit) {
                segment = segment.next;
                i5 = segment.pos;
            }
            if (i6 == segment2.limit) {
                segment2 = segment2.next;
                i6 = segment2.pos;
            }
            j6 += jMin;
        }
        return true;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.size == 0;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    public byte getByte(long j5) {
        okio.Util.checkOffsetAndCount(this.size, j5, 1L);
        okio.Segment segment = this.head;
        while (true) {
            int i5 = segment.limit;
            int i6 = segment.pos;
            long j6 = i5 - i6;
            if (j5 < j6) {
                return segment.data[i6 + ((int) j5)];
            }
            j5 -= j6;
            segment = segment.next;
        }
    }

    public int hashCode() {
        okio.Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i5 = 1;
        do {
            int i6 = segment.limit;
            for (int i7 = segment.pos; i7 < i6; i7++) {
                i5 = (i5 * 31) + segment.data[i7];
            }
            segment = segment.next;
        } while (segment != this.head);
        return i5;
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b5) {
        return indexOf(b5, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(okio.ByteString byteString) {
        return indexOfElement(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public java.io.InputStream inputStream() {
        return new java.io.InputStream() { // from class: okio.Buffer.2
            @Override // java.io.InputStream
            public int available() {
                return (int) java.lang.Math.min(okio.Buffer.this.size, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                okio.Buffer buffer = okio.Buffer.this;
                if (buffer.size > 0) {
                    return buffer.readByte() & 255;
                }
                return -1;
            }

            public java.lang.String toString() {
                return okio.Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i5, int i6) {
                return okio.Buffer.this.read(bArr, i5, i6);
            }
        };
    }

    public okio.ByteString md5() {
        return digest("MD5");
    }

    @Override // okio.BufferedSink
    public java.io.OutputStream outputStream() {
        return new java.io.OutputStream() { // from class: okio.Buffer.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            public java.lang.String toString() {
                return okio.Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i5) {
                okio.Buffer.this.writeByte((int) ((byte) i5));
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i5, int i6) {
                okio.Buffer.this.write(bArr, i5, i6);
            }
        };
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j5, okio.ByteString byteString) {
        return rangeEquals(j5, byteString, 0, byteString.size());
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSource
    public long readAll(okio.Sink sink) throws java.io.IOException {
        long j5 = this.size;
        if (j5 > 0) {
            sink.write(this, j5);
        }
        return j5;
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        long j5 = this.size;
        if (j5 == 0) {
            throw new java.lang.IllegalStateException("size == 0");
        }
        okio.Segment segment = this.head;
        int i5 = segment.pos;
        int i6 = segment.limit;
        int i7 = i5 + 1;
        byte b5 = segment.data[i5];
        this.size = j5 - 1;
        if (i7 == i6) {
            this.head = segment.pop();
            okio.SegmentPool.recycle(segment);
        } else {
            segment.pos = i7;
        }
        return b5;
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        try {
            return readByteArray(this.size);
        } catch (java.io.EOFException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }

    @Override // okio.BufferedSource
    public okio.ByteString readByteString() {
        return new okio.ByteString(readByteArray());
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() {
        byte b5;
        long j5 = 0;
        if (this.size == 0) {
            throw new java.lang.IllegalStateException("size == 0");
        }
        long j6 = com.alibaba.fastjson.parser.JSONLexerBase.MULTMIN_RADIX_TEN;
        long j7 = -7;
        int i5 = 0;
        boolean z4 = false;
        boolean z5 = false;
        loop0: while (true) {
            okio.Segment segment = this.head;
            byte[] bArr = segment.data;
            int i6 = segment.pos;
            int i7 = segment.limit;
            while (i6 < i7) {
                b5 = bArr[i6];
                if (b5 >= 48 && b5 <= 57) {
                    int i8 = 48 - b5;
                    if (j5 < j6 || (j5 == j6 && i8 < j7)) {
                        break loop0;
                    }
                    j5 = (j5 * 10) + ((long) i8);
                } else {
                    if (b5 != 45 || i5 != 0) {
                        if (i5 != 0) {
                            z5 = true;
                            break;
                        }
                        throw new java.lang.NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + java.lang.Integer.toHexString(b5));
                    }
                    j7--;
                    z4 = true;
                }
                i6++;
                i5++;
                j6 = com.alibaba.fastjson.parser.JSONLexerBase.MULTMIN_RADIX_TEN;
            }
            if (i6 == i7) {
                this.head = segment.pop();
                okio.SegmentPool.recycle(segment);
            } else {
                segment.pos = i6;
            }
            if (z5 || this.head == null) {
                this.size -= (long) i5;
                return z4 ? j5 : -j5;
            }
            j6 = com.alibaba.fastjson.parser.JSONLexerBase.MULTMIN_RADIX_TEN;
        }
        okio.Buffer bufferWriteByte = new okio.Buffer().writeDecimalLong(j5).writeByte((int) b5);
        if (!z4) {
            bufferWriteByte.readByte();
        }
        throw new java.lang.NumberFormatException("Number too large: " + bufferWriteByte.readUtf8());
    }

    public okio.Buffer readFrom(java.io.InputStream inputStream) throws java.io.IOException {
        readFrom(inputStream, Long.MAX_VALUE, true);
        return this;
    }

    @Override // okio.BufferedSource
    public void readFully(okio.Buffer buffer, long j5) throws java.io.EOFException {
        long j6 = this.size;
        if (j6 >= j5) {
            buffer.write(this, j5);
        } else {
            buffer.write(this, j6);
            throw new java.io.EOFException();
        }
    }

    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() {
        int i5;
        int i6;
        if (this.size == 0) {
            throw new java.lang.IllegalStateException("size == 0");
        }
        int i7 = 0;
        boolean z4 = false;
        long j5 = 0;
        do {
            okio.Segment segment = this.head;
            byte[] bArr = segment.data;
            int i8 = segment.pos;
            int i9 = segment.limit;
            while (i8 < i9) {
                byte b5 = bArr[i8];
                if (b5 < 48 || b5 > 57) {
                    if (b5 >= 97 && b5 <= 102) {
                        i5 = b5 - 97;
                    } else {
                        if (b5 < 65 || b5 > 70) {
                            if (i7 != 0) {
                                z4 = true;
                                break;
                            }
                            throw new java.lang.NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + java.lang.Integer.toHexString(b5));
                        }
                        i5 = b5 - 65;
                    }
                    i6 = i5 + 10;
                } else {
                    i6 = b5 - 48;
                }
                if (((-1152921504606846976L) & j5) != 0) {
                    throw new java.lang.NumberFormatException("Number too large: " + new okio.Buffer().writeHexadecimalUnsignedLong(j5).writeByte((int) b5).readUtf8());
                }
                j5 = (j5 << 4) | ((long) i6);
                i8++;
                i7++;
            }
            if (i8 == i9) {
                this.head = segment.pop();
                okio.SegmentPool.recycle(segment);
            } else {
                segment.pos = i8;
            }
            if (z4) {
                break;
            }
        } while (this.head != null);
        this.size -= (long) i7;
        return j5;
    }

    @Override // okio.BufferedSource
    public int readInt() {
        long j5 = this.size;
        if (j5 < 4) {
            throw new java.lang.IllegalStateException("size < 4: " + this.size);
        }
        okio.Segment segment = this.head;
        int i5 = segment.pos;
        int i6 = segment.limit;
        if (i6 - i5 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = segment.data;
        int i7 = i5 + 1;
        int i8 = i7 + 1;
        int i9 = ((bArr[i5] & 255) << 24) | ((bArr[i7] & 255) << 16);
        int i10 = i8 + 1;
        int i11 = i9 | ((bArr[i8] & 255) << 8);
        int i12 = i10 + 1;
        int i13 = i11 | (bArr[i10] & 255);
        this.size = j5 - 4;
        if (i12 == i6) {
            this.head = segment.pop();
            okio.SegmentPool.recycle(segment);
        } else {
            segment.pos = i12;
        }
        return i13;
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        return okio.Util.reverseBytesInt(readInt());
    }

    @Override // okio.BufferedSource
    public long readLong() {
        long j5 = this.size;
        if (j5 < 8) {
            throw new java.lang.IllegalStateException("size < 8: " + this.size);
        }
        okio.Segment segment = this.head;
        int i5 = segment.pos;
        int i6 = segment.limit;
        if (i6 - i5 < 8) {
            return ((((long) readInt()) & 4294967295L) << 32) | (4294967295L & ((long) readInt()));
        }
        byte[] bArr = segment.data;
        int i7 = i5 + 1;
        long j6 = (((long) bArr[i5]) & 255) << 56;
        int i8 = i7 + 1;
        long j7 = ((((long) bArr[i7]) & 255) << 48) | j6;
        int i9 = i8 + 1;
        long j8 = j7 | ((((long) bArr[i8]) & 255) << 40);
        int i10 = i9 + 1;
        int i11 = i10 + 1;
        long j9 = j8 | ((((long) bArr[i9]) & 255) << 32) | ((((long) bArr[i10]) & 255) << 24);
        int i12 = i11 + 1;
        long j10 = j9 | ((((long) bArr[i11]) & 255) << 16);
        int i13 = i12 + 1;
        long j11 = j10 | ((((long) bArr[i12]) & 255) << 8);
        int i14 = i13 + 1;
        long j12 = j11 | (((long) bArr[i13]) & 255);
        this.size = j5 - 8;
        if (i14 == i6) {
            this.head = segment.pop();
            okio.SegmentPool.recycle(segment);
        } else {
            segment.pos = i14;
        }
        return j12;
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        return okio.Util.reverseBytesLong(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() {
        long j5 = this.size;
        if (j5 < 2) {
            throw new java.lang.IllegalStateException("size < 2: " + this.size);
        }
        okio.Segment segment = this.head;
        int i5 = segment.pos;
        int i6 = segment.limit;
        if (i6 - i5 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = segment.data;
        int i7 = i5 + 1;
        int i8 = i7 + 1;
        int i9 = ((bArr[i5] & 255) << 8) | (bArr[i7] & 255);
        this.size = j5 - 2;
        if (i8 == i6) {
            this.head = segment.pop();
            okio.SegmentPool.recycle(segment);
        } else {
            segment.pos = i8;
        }
        return (short) i9;
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        return okio.Util.reverseBytesShort(readShort());
    }

    @Override // okio.BufferedSource
    public java.lang.String readString(java.nio.charset.Charset charset) {
        try {
            return readString(this.size, charset);
        } catch (java.io.EOFException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }

    @Override // okio.BufferedSource
    public java.lang.String readUtf8() {
        try {
            return readString(this.size, okio.Util.UTF_8);
        } catch (java.io.EOFException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws java.io.EOFException {
        int i5;
        int i6;
        int i7;
        if (this.size == 0) {
            throw new java.io.EOFException();
        }
        byte b5 = getByte(0L);
        if ((b5 & 128) == 0) {
            i5 = b5 & 127;
            i7 = 0;
            i6 = 1;
        } else if ((b5 & 224) == 192) {
            i5 = b5 & 31;
            i6 = 2;
            i7 = 128;
        } else if ((b5 & 240) == 224) {
            i5 = b5 & 15;
            i6 = 3;
            i7 = 2048;
        } else {
            if ((b5 & 248) != 240) {
                skip(1L);
                return REPLACEMENT_CHARACTER;
            }
            i5 = b5 & 7;
            i6 = 4;
            i7 = 65536;
        }
        long j5 = i6;
        if (this.size < j5) {
            throw new java.io.EOFException("size < " + i6 + ": " + this.size + " (to read code point prefixed 0x" + java.lang.Integer.toHexString(b5) + ")");
        }
        for (int i8 = 1; i8 < i6; i8++) {
            long j6 = i8;
            byte b6 = getByte(j6);
            if ((b6 & 192) != 128) {
                skip(j6);
                return REPLACEMENT_CHARACTER;
            }
            i5 = (i5 << 6) | (b6 & 63);
        }
        skip(j5);
        if (i5 > 1114111) {
            return REPLACEMENT_CHARACTER;
        }
        return ((i5 < 55296 || i5 > 57343) && i5 >= i7) ? i5 : REPLACEMENT_CHARACTER;
    }

    @Override // okio.BufferedSource
    public java.lang.String readUtf8Line() throws java.io.EOFException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return readUtf8Line(jIndexOf);
        }
        long j5 = this.size;
        if (j5 != 0) {
            return readUtf8(j5);
        }
        return null;
    }

    @Override // okio.BufferedSource
    public java.lang.String readUtf8LineStrict() throws java.io.EOFException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return readUtf8Line(jIndexOf);
        }
        okio.Buffer buffer = new okio.Buffer();
        copyTo(buffer, 0L, java.lang.Math.min(32L, this.size));
        throw new java.io.EOFException("\\n not found: size=" + size() + " content=" + buffer.readByteString().hex() + "…");
    }

    @Override // okio.BufferedSource
    public boolean request(long j5) {
        return this.size >= j5;
    }

    @Override // okio.BufferedSource
    public void require(long j5) throws java.io.EOFException {
        if (this.size < j5) {
            throw new java.io.EOFException();
        }
    }

    public java.util.List<java.lang.Integer> segmentSizes() {
        if (this.head == null) {
            return java.util.Collections.emptyList();
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        okio.Segment segment = this.head;
        arrayList.add(java.lang.Integer.valueOf(segment.limit - segment.pos));
        okio.Segment segment2 = this.head;
        while (true) {
            segment2 = segment2.next;
            if (segment2 == this.head) {
                return arrayList;
            }
            arrayList.add(java.lang.Integer.valueOf(segment2.limit - segment2.pos));
        }
    }

    @Override // okio.BufferedSource
    public int select(okio.Options options) {
        okio.Segment segment = this.head;
        if (segment == null) {
            return options.indexOf(okio.ByteString.EMPTY);
        }
        okio.ByteString[] byteStringArr = options.byteStrings;
        int length = byteStringArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            okio.ByteString byteString = byteStringArr[i5];
            if (this.size >= byteString.size() && rangeEquals(segment, segment.pos, byteString, 0, byteString.size())) {
                try {
                    skip(byteString.size());
                    return i5;
                } catch (java.io.EOFException e5) {
                    throw new java.lang.AssertionError(e5);
                }
            }
        }
        return -1;
    }

    public int selectPrefix(okio.Options options) {
        okio.Segment segment = this.head;
        okio.ByteString[] byteStringArr = options.byteStrings;
        int length = byteStringArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            okio.ByteString byteString = byteStringArr[i5];
            int iMin = (int) java.lang.Math.min(this.size, byteString.size());
            if (iMin == 0 || rangeEquals(segment, segment.pos, byteString, 0, iMin)) {
                return i5;
            }
        }
        return -1;
    }

    public okio.ByteString sha1() {
        return digest("SHA-1");
    }

    public okio.ByteString sha256() {
        return digest("SHA-256");
    }

    public long size() {
        return this.size;
    }

    @Override // okio.BufferedSource
    public void skip(long j5) throws java.io.EOFException {
        while (j5 > 0) {
            okio.Segment segment = this.head;
            if (segment == null) {
                throw new java.io.EOFException();
            }
            int iMin = (int) java.lang.Math.min(j5, segment.limit - segment.pos);
            long j6 = iMin;
            this.size -= j6;
            j5 -= j6;
            okio.Segment segment2 = this.head;
            int i5 = segment2.pos + iMin;
            segment2.pos = i5;
            if (i5 == segment2.limit) {
                this.head = segment2.pop();
                okio.SegmentPool.recycle(segment2);
            }
        }
    }

    public okio.ByteString snapshot() {
        long j5 = this.size;
        if (j5 <= 2147483647L) {
            return snapshot((int) j5);
        }
        throw new java.lang.IllegalArgumentException("size > Integer.MAX_VALUE: " + this.size);
    }

    @Override // okio.Source
    public okio.Timeout timeout() {
        return okio.Timeout.NONE;
    }

    public java.lang.String toString() {
        return snapshot().toString();
    }

    public okio.Segment writableSegment(int i5) {
        if (i5 < 1 || i5 > 8192) {
            throw new java.lang.IllegalArgumentException();
        }
        okio.Segment segment = this.head;
        if (segment != null) {
            okio.Segment segment2 = segment.prev;
            return (segment2.limit + i5 > 8192 || !segment2.owner) ? segment2.push(okio.SegmentPool.take()) : segment2;
        }
        okio.Segment segmentTake = okio.SegmentPool.take();
        this.head = segmentTake;
        segmentTake.prev = segmentTake;
        segmentTake.next = segmentTake;
        return segmentTake;
    }

    @Override // okio.BufferedSink
    public long writeAll(okio.Source source) throws java.io.IOException {
        if (source == null) {
            throw new java.lang.IllegalArgumentException("source == null");
        }
        long j5 = 0;
        while (true) {
            long j6 = source.read(this, 8192L);
            if (j6 == -1) {
                return j5;
            }
            j5 += j6;
        }
    }

    public okio.Buffer writeTo(java.io.OutputStream outputStream) throws java.io.IOException {
        return writeTo(outputStream, this.size);
    }

    public okio.Buffer clone() {
        okio.Buffer buffer = new okio.Buffer();
        if (this.size == 0) {
            return buffer;
        }
        okio.Segment segment = new okio.Segment(this.head);
        buffer.head = segment;
        segment.prev = segment;
        segment.next = segment;
        okio.Segment segment2 = this.head;
        while (true) {
            segment2 = segment2.next;
            if (segment2 == this.head) {
                buffer.size = this.size;
                return buffer;
            }
            buffer.head.prev.push(new okio.Segment(segment2));
        }
    }

    public okio.Buffer copyTo(java.io.OutputStream outputStream, long j5, long j6) throws java.io.IOException {
        if (outputStream == null) {
            throw new java.lang.IllegalArgumentException("out == null");
        }
        okio.Util.checkOffsetAndCount(this.size, j5, j6);
        if (j6 == 0) {
            return this;
        }
        okio.Segment segment = this.head;
        while (true) {
            int i5 = segment.limit;
            int i6 = segment.pos;
            if (j5 < i5 - i6) {
                break;
            }
            j5 -= (long) (i5 - i6);
            segment = segment.next;
        }
        while (j6 > 0) {
            int i7 = (int) (((long) segment.pos) + j5);
            int iMin = (int) java.lang.Math.min(segment.limit - i7, j6);
            outputStream.write(segment.data, i7, iMin);
            j6 -= (long) iMin;
            segment = segment.next;
            j5 = 0;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b5, long j5) {
        long j6 = 0;
        if (j5 < 0) {
            throw new java.lang.IllegalArgumentException("fromIndex < 0");
        }
        okio.Segment segment = this.head;
        if (segment == null) {
            return -1L;
        }
        long j7 = this.size;
        if (j7 - j5 < j5) {
            while (j7 > j5) {
                segment = segment.prev;
                j7 -= (long) (segment.limit - segment.pos);
            }
        } else {
            while (true) {
                long j8 = ((long) (segment.limit - segment.pos)) + j6;
                if (j8 >= j5) {
                    break;
                }
                segment = segment.next;
                j6 = j8;
            }
            j7 = j6;
        }
        while (j7 < this.size) {
            byte[] bArr = segment.data;
            int i5 = segment.limit;
            for (int i6 = (int) ((((long) segment.pos) + j5) - j7); i6 < i5; i6++) {
                if (bArr[i6] == b5) {
                    return ((long) (i6 - segment.pos)) + j7;
                }
            }
            j7 += (long) (segment.limit - segment.pos);
            segment = segment.next;
            j5 = j7;
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    public long indexOfElement(okio.ByteString byteString, long j5) {
        int i5;
        int i6;
        long j6 = 0;
        if (j5 < 0) {
            throw new java.lang.IllegalArgumentException("fromIndex < 0");
        }
        okio.Segment segment = this.head;
        if (segment == null) {
            return -1L;
        }
        long j7 = this.size;
        if (j7 - j5 < j5) {
            while (j7 > j5) {
                segment = segment.prev;
                j7 -= (long) (segment.limit - segment.pos);
            }
        } else {
            while (true) {
                long j8 = ((long) (segment.limit - segment.pos)) + j6;
                if (j8 >= j5) {
                    break;
                }
                segment = segment.next;
                j6 = j8;
            }
            j7 = j6;
        }
        if (byteString.size() == 2) {
            byte b5 = byteString.getByte(0);
            byte b6 = byteString.getByte(1);
            while (j7 < this.size) {
                byte[] bArr = segment.data;
                i5 = (int) ((((long) segment.pos) + j5) - j7);
                int i7 = segment.limit;
                while (i5 < i7) {
                    byte b7 = bArr[i5];
                    if (b7 == b5 || b7 == b6) {
                        i6 = segment.pos;
                        return ((long) (i5 - i6)) + j7;
                    }
                    i5++;
                }
                j7 += (long) (segment.limit - segment.pos);
                segment = segment.next;
                j5 = j7;
            }
            return -1L;
        }
        byte[] bArrInternalArray = byteString.internalArray();
        while (j7 < this.size) {
            byte[] bArr2 = segment.data;
            i5 = (int) ((((long) segment.pos) + j5) - j7);
            int i8 = segment.limit;
            while (i5 < i8) {
                byte b8 = bArr2[i5];
                for (byte b9 : bArrInternalArray) {
                    if (b8 == b9) {
                        i6 = segment.pos;
                        return ((long) (i5 - i6)) + j7;
                    }
                }
                i5++;
            }
            j7 += (long) (segment.limit - segment.pos);
            segment = segment.next;
            j5 = j7;
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j5, okio.ByteString byteString, int i5, int i6) {
        if (j5 < 0 || i5 < 0 || i6 < 0 || this.size - j5 < i6 || byteString.size() - i5 < i6) {
            return false;
        }
        for (int i7 = 0; i7 < i6; i7++) {
            if (getByte(((long) i7) + j5) != byteString.getByte(i5 + i7)) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr, int i5, int i6) {
        okio.Util.checkOffsetAndCount(bArr.length, i5, i6);
        okio.Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = java.lang.Math.min(i6, segment.limit - segment.pos);
        java.lang.System.arraycopy(segment.data, segment.pos, bArr, i5, iMin);
        int i7 = segment.pos + iMin;
        segment.pos = i7;
        this.size -= (long) iMin;
        if (i7 == segment.limit) {
            this.head = segment.pop();
            okio.SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @Override // okio.BufferedSource
    public okio.ByteString readByteString(long j5) throws java.io.EOFException {
        return new okio.ByteString(readByteArray(j5));
    }

    public okio.Buffer readFrom(java.io.InputStream inputStream, long j5) throws java.io.IOException {
        if (j5 >= 0) {
            readFrom(inputStream, j5, false);
            return this;
        }
        throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeByte(int i5) {
        okio.Segment segmentWritableSegment = writableSegment(1);
        byte[] bArr = segmentWritableSegment.data;
        int i6 = segmentWritableSegment.limit;
        segmentWritableSegment.limit = i6 + 1;
        bArr[i6] = (byte) i5;
        this.size++;
        return this;
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeDecimalLong(long j5) {
        if (j5 == 0) {
            return writeByte(48);
        }
        boolean z4 = false;
        int i5 = 1;
        if (j5 < 0) {
            j5 = -j5;
            if (j5 < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z4 = true;
        }
        if (j5 < 100000000) {
            if (j5 < 10000) {
                if (j5 >= 100) {
                    i5 = j5 < 1000 ? 3 : 4;
                } else if (j5 >= 10) {
                    i5 = 2;
                }
            } else if (j5 < 1000000) {
                i5 = j5 < 100000 ? 5 : 6;
            } else {
                i5 = j5 < 10000000 ? 7 : 8;
            }
        } else if (j5 < 1000000000000L) {
            if (j5 < 10000000000L) {
                i5 = j5 < 1000000000 ? 9 : 10;
            } else {
                i5 = j5 < 100000000000L ? 11 : 12;
            }
        } else if (j5 < 1000000000000000L) {
            if (j5 < 10000000000000L) {
                i5 = 13;
            } else {
                i5 = j5 < 100000000000000L ? 14 : 15;
            }
        } else if (j5 < 100000000000000000L) {
            i5 = j5 < 10000000000000000L ? 16 : 17;
        } else {
            i5 = j5 < 1000000000000000000L ? 18 : 19;
        }
        if (z4) {
            i5++;
        }
        okio.Segment segmentWritableSegment = writableSegment(i5);
        byte[] bArr = segmentWritableSegment.data;
        int i6 = segmentWritableSegment.limit + i5;
        while (j5 != 0) {
            i6--;
            bArr[i6] = DIGITS[(int) (j5 % 10)];
            j5 /= 10;
        }
        if (z4) {
            bArr[i6 - 1] = 45;
        }
        segmentWritableSegment.limit += i5;
        this.size += (long) i5;
        return this;
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeHexadecimalUnsignedLong(long j5) {
        if (j5 == 0) {
            return writeByte(48);
        }
        int iNumberOfTrailingZeros = (java.lang.Long.numberOfTrailingZeros(java.lang.Long.highestOneBit(j5)) / 4) + 1;
        okio.Segment segmentWritableSegment = writableSegment(iNumberOfTrailingZeros);
        byte[] bArr = segmentWritableSegment.data;
        int i5 = segmentWritableSegment.limit;
        for (int i6 = (i5 + iNumberOfTrailingZeros) - 1; i6 >= i5; i6--) {
            bArr[i6] = DIGITS[(int) (15 & j5)];
            j5 >>>= 4;
        }
        segmentWritableSegment.limit += iNumberOfTrailingZeros;
        this.size += (long) iNumberOfTrailingZeros;
        return this;
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeInt(int i5) {
        okio.Segment segmentWritableSegment = writableSegment(4);
        byte[] bArr = segmentWritableSegment.data;
        int i6 = segmentWritableSegment.limit;
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((i5 >>> 24) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((i5 >>> 16) & 255);
        int i9 = i8 + 1;
        bArr[i8] = (byte) ((i5 >>> 8) & 255);
        bArr[i9] = (byte) (i5 & 255);
        segmentWritableSegment.limit = i9 + 1;
        this.size += 4;
        return this;
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeIntLe(int i5) {
        return writeInt(okio.Util.reverseBytesInt(i5));
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeLong(long j5) {
        okio.Segment segmentWritableSegment = writableSegment(8);
        byte[] bArr = segmentWritableSegment.data;
        int i5 = segmentWritableSegment.limit;
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j5 >>> 56) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j5 >>> 48) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j5 >>> 40) & 255);
        int i9 = i8 + 1;
        bArr[i8] = (byte) ((j5 >>> 32) & 255);
        int i10 = i9 + 1;
        bArr[i9] = (byte) ((j5 >>> 24) & 255);
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((j5 >>> 16) & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((j5 >>> 8) & 255);
        bArr[i12] = (byte) (j5 & 255);
        segmentWritableSegment.limit = i12 + 1;
        this.size += 8;
        return this;
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeLongLe(long j5) {
        return writeLong(okio.Util.reverseBytesLong(j5));
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeShort(int i5) {
        okio.Segment segmentWritableSegment = writableSegment(2);
        byte[] bArr = segmentWritableSegment.data;
        int i6 = segmentWritableSegment.limit;
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((i5 >>> 8) & 255);
        bArr[i7] = (byte) (i5 & 255);
        segmentWritableSegment.limit = i7 + 1;
        this.size += 2;
        return this;
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeShortLe(int i5) {
        return writeShort((int) okio.Util.reverseBytesShort((short) i5));
    }

    public okio.Buffer writeTo(java.io.OutputStream outputStream, long j5) throws java.io.IOException {
        if (outputStream == null) {
            throw new java.lang.IllegalArgumentException("out == null");
        }
        okio.Util.checkOffsetAndCount(this.size, 0L, j5);
        okio.Segment segment = this.head;
        while (j5 > 0) {
            int iMin = (int) java.lang.Math.min(j5, segment.limit - segment.pos);
            outputStream.write(segment.data, segment.pos, iMin);
            int i5 = segment.pos + iMin;
            segment.pos = i5;
            long j6 = iMin;
            this.size -= j6;
            j5 -= j6;
            if (i5 == segment.limit) {
                okio.Segment segmentPop = segment.pop();
                this.head = segmentPop;
                okio.SegmentPool.recycle(segment);
                segment = segmentPop;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeUtf8CodePoint(int i5) {
        if (i5 < 128) {
            writeByte(i5);
        } else if (i5 < 2048) {
            writeByte((i5 >> 6) | com.alibaba.fastjson.asm.Opcodes.CHECKCAST);
            writeByte((i5 & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
        } else if (i5 < 65536) {
            if (i5 >= 55296 && i5 <= 57343) {
                throw new java.lang.IllegalArgumentException("Unexpected code point: " + java.lang.Integer.toHexString(i5));
            }
            writeByte((i5 >> 12) | 224);
            writeByte(((i5 >> 6) & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
            writeByte((i5 & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
        } else {
            if (i5 > 1114111) {
                throw new java.lang.IllegalArgumentException("Unexpected code point: " + java.lang.Integer.toHexString(i5));
            }
            writeByte((i5 >> 18) | 240);
            writeByte(((i5 >> 12) & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
            writeByte(((i5 >> 6) & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
            writeByte((i5 & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
        }
        return this;
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j5) throws java.io.EOFException {
        okio.Util.checkOffsetAndCount(this.size, 0L, j5);
        if (j5 <= 2147483647L) {
            byte[] bArr = new byte[(int) j5];
            readFully(bArr);
            return bArr;
        }
        throw new java.lang.IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j5);
    }

    @Override // okio.BufferedSource
    public java.lang.String readString(long j5, java.nio.charset.Charset charset) throws java.io.EOFException {
        okio.Util.checkOffsetAndCount(this.size, 0L, j5);
        if (charset == null) {
            throw new java.lang.IllegalArgumentException("charset == null");
        }
        if (j5 > 2147483647L) {
            throw new java.lang.IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j5);
        }
        if (j5 == 0) {
            return "";
        }
        okio.Segment segment = this.head;
        int i5 = segment.pos;
        if (((long) i5) + j5 > segment.limit) {
            return new java.lang.String(readByteArray(j5), charset);
        }
        java.lang.String str = new java.lang.String(segment.data, i5, (int) j5, charset);
        int i6 = (int) (((long) segment.pos) + j5);
        segment.pos = i6;
        this.size -= j5;
        if (i6 == segment.limit) {
            this.head = segment.pop();
            okio.SegmentPool.recycle(segment);
        }
        return str;
    }

    @Override // okio.BufferedSource
    public java.lang.String readUtf8(long j5) throws java.io.EOFException {
        return readString(j5, okio.Util.UTF_8);
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeString(java.lang.String str, java.nio.charset.Charset charset) {
        return writeString(str, 0, str.length(), charset);
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeUtf8(java.lang.String str) {
        return writeUtf8(str, 0, str.length());
    }

    private void readFrom(java.io.InputStream inputStream, long j5, boolean z4) throws java.io.IOException {
        if (inputStream == null) {
            throw new java.lang.IllegalArgumentException("in == null");
        }
        while (true) {
            if (j5 <= 0 && !z4) {
                return;
            }
            okio.Segment segmentWritableSegment = writableSegment(1);
            int i5 = inputStream.read(segmentWritableSegment.data, segmentWritableSegment.limit, (int) java.lang.Math.min(j5, 8192 - segmentWritableSegment.limit));
            if (i5 == -1) {
                if (!z4) {
                    throw new java.io.EOFException();
                }
                return;
            } else {
                segmentWritableSegment.limit += i5;
                long j6 = i5;
                this.size += j6;
                j5 -= j6;
            }
        }
    }

    public java.lang.String readUtf8Line(long j5) throws java.io.EOFException {
        if (j5 > 0) {
            long j6 = j5 - 1;
            if (getByte(j6) == 13) {
                java.lang.String utf8 = readUtf8(j6);
                skip(2L);
                return utf8;
            }
        }
        java.lang.String utf9 = readUtf8(j5);
        skip(1L);
        return utf9;
    }

    public okio.ByteString snapshot(int i5) {
        if (i5 == 0) {
            return okio.ByteString.EMPTY;
        }
        return new okio.SegmentedByteString(this, i5);
    }

    @Override // okio.BufferedSink
    public okio.Buffer write(okio.ByteString byteString) {
        if (byteString != null) {
            byteString.write(this);
            return this;
        }
        throw new java.lang.IllegalArgumentException("byteString == null");
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeString(java.lang.String str, int i5, int i6, java.nio.charset.Charset charset) {
        if (str == null) {
            throw new java.lang.IllegalArgumentException("string == null");
        }
        if (i5 < 0) {
            throw new java.lang.IllegalAccessError("beginIndex < 0: " + i5);
        }
        if (i6 >= i5) {
            if (i6 <= str.length()) {
                if (charset != null) {
                    if (charset.equals(okio.Util.UTF_8)) {
                        return writeUtf8(str);
                    }
                    byte[] bytes = str.substring(i5, i6).getBytes(charset);
                    return write(bytes, 0, bytes.length);
                }
                throw new java.lang.IllegalArgumentException("charset == null");
            }
            throw new java.lang.IllegalArgumentException("endIndex > string.length: " + i6 + " > " + str.length());
        }
        throw new java.lang.IllegalArgumentException("endIndex < beginIndex: " + i6 + " < " + i5);
    }

    @Override // okio.BufferedSink
    public okio.Buffer writeUtf8(java.lang.String str, int i5, int i6) {
        if (str == null) {
            throw new java.lang.IllegalArgumentException("string == null");
        }
        if (i5 < 0) {
            throw new java.lang.IllegalAccessError("beginIndex < 0: " + i5);
        }
        if (i6 >= i5) {
            if (i6 > str.length()) {
                throw new java.lang.IllegalArgumentException("endIndex > string.length: " + i6 + " > " + str.length());
            }
            while (i5 < i6) {
                char cCharAt = str.charAt(i5);
                if (cCharAt < 128) {
                    okio.Segment segmentWritableSegment = writableSegment(1);
                    byte[] bArr = segmentWritableSegment.data;
                    int i7 = segmentWritableSegment.limit - i5;
                    int iMin = java.lang.Math.min(i6, 8192 - i7);
                    int i8 = i5 + 1;
                    bArr[i5 + i7] = (byte) cCharAt;
                    while (i8 < iMin) {
                        char cCharAt2 = str.charAt(i8);
                        if (cCharAt2 >= 128) {
                            break;
                        }
                        bArr[i8 + i7] = (byte) cCharAt2;
                        i8++;
                    }
                    int i9 = segmentWritableSegment.limit;
                    int i10 = (i7 + i8) - i9;
                    segmentWritableSegment.limit = i9 + i10;
                    this.size += (long) i10;
                    i5 = i8;
                } else {
                    if (cCharAt < 2048) {
                        writeByte((cCharAt >> 6) | com.alibaba.fastjson.asm.Opcodes.CHECKCAST);
                        writeByte((cCharAt & '?') | com.alibaba.fastjson.asm.Opcodes.IOR);
                    } else if (cCharAt >= 55296 && cCharAt <= 57343) {
                        int i11 = i5 + 1;
                        char cCharAt3 = i11 < i6 ? str.charAt(i11) : (char) 0;
                        if (cCharAt <= 56319 && cCharAt3 >= 56320 && cCharAt3 <= 57343) {
                            int i12 = (((cCharAt & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                            writeByte((i12 >> 18) | 240);
                            writeByte(((i12 >> 12) & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
                            writeByte(((i12 >> 6) & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
                            writeByte((i12 & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
                            i5 += 2;
                        } else {
                            writeByte(63);
                            i5 = i11;
                        }
                    } else {
                        writeByte((cCharAt >> '\f') | 224);
                        writeByte(((cCharAt >> 6) & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
                        writeByte((cCharAt & '?') | com.alibaba.fastjson.asm.Opcodes.IOR);
                    }
                    i5++;
                }
            }
            return this;
        }
        throw new java.lang.IllegalArgumentException("endIndex < beginIndex: " + i6 + " < " + i5);
    }

    private boolean rangeEquals(okio.Segment segment, int i5, okio.ByteString byteString, int i6, int i7) {
        int i8 = segment.limit;
        byte[] bArr = segment.data;
        while (i6 < i7) {
            if (i5 == i8) {
                segment = segment.next;
                byte[] bArr2 = segment.data;
                bArr = bArr2;
                i5 = segment.pos;
                i8 = segment.limit;
            }
            if (bArr[i5] != byteString.getByte(i6)) {
                return false;
            }
            i5++;
            i6++;
        }
        return true;
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] bArr) throws java.io.EOFException {
        int i5 = 0;
        while (i5 < bArr.length) {
            int i6 = read(bArr, i5, bArr.length - i5);
            if (i6 == -1) {
                throw new java.io.EOFException();
            }
            i5 += i6;
        }
    }

    @Override // okio.BufferedSink
    public okio.Buffer write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new java.lang.IllegalArgumentException("source == null");
    }

    @Override // okio.BufferedSink
    public okio.Buffer write(byte[] bArr, int i5, int i6) {
        if (bArr != null) {
            long j5 = i6;
            okio.Util.checkOffsetAndCount(bArr.length, i5, j5);
            int i7 = i6 + i5;
            while (i5 < i7) {
                okio.Segment segmentWritableSegment = writableSegment(1);
                int iMin = java.lang.Math.min(i7 - i5, 8192 - segmentWritableSegment.limit);
                java.lang.System.arraycopy(bArr, i5, segmentWritableSegment.data, segmentWritableSegment.limit, iMin);
                i5 += iMin;
                segmentWritableSegment.limit += iMin;
            }
            this.size += j5;
            return this;
        }
        throw new java.lang.IllegalArgumentException("source == null");
    }

    public okio.Buffer copyTo(okio.Buffer buffer, long j5, long j6) {
        if (buffer != null) {
            okio.Util.checkOffsetAndCount(this.size, j5, j6);
            if (j6 == 0) {
                return this;
            }
            buffer.size += j6;
            okio.Segment segment = this.head;
            while (true) {
                int i5 = segment.limit;
                int i6 = segment.pos;
                if (j5 < i5 - i6) {
                    break;
                }
                j5 -= (long) (i5 - i6);
                segment = segment.next;
            }
            while (j6 > 0) {
                okio.Segment segment2 = new okio.Segment(segment);
                int i7 = (int) (((long) segment2.pos) + j5);
                segment2.pos = i7;
                segment2.limit = java.lang.Math.min(i7 + ((int) j6), segment2.limit);
                okio.Segment segment3 = buffer.head;
                if (segment3 == null) {
                    segment2.prev = segment2;
                    segment2.next = segment2;
                    buffer.head = segment2;
                } else {
                    segment3.prev.push(segment2);
                }
                j6 -= (long) (segment2.limit - segment2.pos);
                segment = segment.next;
                j5 = 0;
            }
            return this;
        }
        throw new java.lang.IllegalArgumentException("out == null");
    }

    @Override // okio.Source
    public long read(okio.Buffer buffer, long j5) {
        if (buffer == null) {
            throw new java.lang.IllegalArgumentException("sink == null");
        }
        if (j5 >= 0) {
            long j6 = this.size;
            if (j6 == 0) {
                return -1L;
            }
            if (j5 > j6) {
                j5 = j6;
            }
            buffer.write(this, j5);
            return j5;
        }
        throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
    }

    @Override // okio.BufferedSink
    public okio.BufferedSink write(okio.Source source, long j5) throws java.io.IOException {
        while (j5 > 0) {
            long j6 = source.read(this, j5);
            if (j6 == -1) {
                throw new java.io.EOFException();
            }
            j5 -= j6;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(okio.ByteString byteString) throws java.io.IOException {
        return indexOf(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOf(okio.ByteString byteString, long j5) throws java.io.IOException {
        if (byteString.size() == 0) {
            throw new java.lang.IllegalArgumentException("bytes is empty");
        }
        long j6 = 0;
        if (j5 >= 0) {
            okio.Segment segment = this.head;
            long j7 = -1;
            if (segment == null) {
                return -1L;
            }
            long j8 = this.size;
            if (j8 - j5 < j5) {
                while (j8 > j5) {
                    segment = segment.prev;
                    j8 -= (long) (segment.limit - segment.pos);
                }
            } else {
                while (true) {
                    long j9 = ((long) (segment.limit - segment.pos)) + j6;
                    if (j9 >= j5) {
                        break;
                    }
                    segment = segment.next;
                    j6 = j9;
                }
                j8 = j6;
            }
            byte b5 = byteString.getByte(0);
            int size = byteString.size();
            long j10 = 1 + (this.size - ((long) size));
            long j11 = j5;
            okio.Segment segment2 = segment;
            long j12 = j8;
            while (j12 < j10) {
                byte[] bArr = segment2.data;
                int iMin = (int) java.lang.Math.min(segment2.limit, (((long) segment2.pos) + j10) - j12);
                int i5 = (int) ((((long) segment2.pos) + j11) - j12);
                while (i5 < iMin) {
                    if (bArr[i5] == b5) {
                        if (rangeEquals(segment2, i5 + 1, byteString, 1, size)) {
                            return ((long) (i5 - segment2.pos)) + j12;
                        }
                    }
                    i5++;
                    bArr = bArr;
                }
                j12 += (long) (segment2.limit - segment2.pos);
                segment2 = segment2.next;
                j11 = j12;
                j7 = -1;
            }
            return j7;
        }
        throw new java.lang.IllegalArgumentException("fromIndex < 0");
    }

    @Override // okio.Sink
    public void write(okio.Buffer buffer, long j5) {
        if (buffer == null) {
            throw new java.lang.IllegalArgumentException("source == null");
        }
        if (buffer != this) {
            okio.Util.checkOffsetAndCount(buffer.size, 0L, j5);
            while (j5 > 0) {
                okio.Segment segment = buffer.head;
                if (j5 < segment.limit - segment.pos) {
                    okio.Segment segment2 = this.head;
                    okio.Segment segment3 = segment2 != null ? segment2.prev : null;
                    if (segment3 != null && segment3.owner) {
                        if ((((long) segment3.limit) + j5) - ((long) (segment3.shared ? 0 : segment3.pos)) <= 8192) {
                            segment.writeTo(segment3, (int) j5);
                            buffer.size -= j5;
                            this.size += j5;
                            return;
                        }
                    }
                    buffer.head = segment.split((int) j5);
                }
                okio.Segment segment4 = buffer.head;
                long j6 = segment4.limit - segment4.pos;
                buffer.head = segment4.pop();
                okio.Segment segment5 = this.head;
                if (segment5 == null) {
                    this.head = segment4;
                    segment4.prev = segment4;
                    segment4.next = segment4;
                } else {
                    segment5.prev.push(segment4).compact();
                }
                buffer.size -= j6;
                this.size += j6;
                j5 -= j6;
            }
            return;
        }
        throw new java.lang.IllegalArgumentException("source == this");
    }
}
