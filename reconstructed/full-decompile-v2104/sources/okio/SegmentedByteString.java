package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
final class SegmentedByteString extends okio.ByteString {
    public final transient int[] directory;
    public final transient byte[][] segments;

    public SegmentedByteString(okio.Buffer buffer, int i5) {
        super(null);
        okio.Util.checkOffsetAndCount(buffer.size, 0L, i5);
        okio.Segment segment = buffer.head;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i7 < i5) {
            int i9 = segment.limit;
            int i10 = segment.pos;
            if (i9 == i10) {
                throw new java.lang.AssertionError("s.limit == s.pos");
            }
            i7 += i9 - i10;
            i8++;
            segment = segment.next;
        }
        this.segments = new byte[i8][];
        this.directory = new int[i8 * 2];
        okio.Segment segment2 = buffer.head;
        int i11 = 0;
        while (i6 < i5) {
            byte[][] bArr = this.segments;
            bArr[i11] = segment2.data;
            int i12 = segment2.limit;
            int i13 = segment2.pos;
            i6 += i12 - i13;
            if (i6 > i5) {
                i6 = i5;
            }
            int[] iArr = this.directory;
            iArr[i11] = i6;
            iArr[bArr.length + i11] = i13;
            segment2.shared = true;
            i11++;
            segment2 = segment2.next;
        }
    }

    private int segment(int i5) {
        int iBinarySearch = java.util.Arrays.binarySearch(this.directory, 0, this.segments.length, i5 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    private okio.ByteString toByteString() {
        return new okio.ByteString(toByteArray());
    }

    private java.lang.Object writeReplace() {
        return toByteString();
    }

    @Override // okio.ByteString
    public java.nio.ByteBuffer asByteBuffer() {
        return java.nio.ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // okio.ByteString
    public java.lang.String base64() {
        return toByteString().base64();
    }

    @Override // okio.ByteString
    public java.lang.String base64Url() {
        return toByteString().base64Url();
    }

    @Override // okio.ByteString
    public boolean equals(java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof okio.ByteString) {
            okio.ByteString byteString = (okio.ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @Override // okio.ByteString
    public byte getByte(int i5) {
        okio.Util.checkOffsetAndCount(this.directory[this.segments.length - 1], i5, 1L);
        int iSegment = segment(i5);
        int i6 = iSegment == 0 ? 0 : this.directory[iSegment - 1];
        int[] iArr = this.directory;
        byte[][] bArr = this.segments;
        return bArr[iSegment][(i5 - i6) + iArr[bArr.length + iSegment]];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int i5 = this.hashCode;
        if (i5 != 0) {
            return i5;
        }
        int length = this.segments.length;
        int i6 = 0;
        int i7 = 1;
        int i8 = 0;
        while (i6 < length) {
            byte[] bArr = this.segments[i6];
            int[] iArr = this.directory;
            int i9 = iArr[length + i6];
            int i10 = iArr[i6];
            int i11 = (i10 - i8) + i9;
            while (i9 < i11) {
                i7 = (i7 * 31) + bArr[i9];
                i9++;
            }
            i6++;
            i8 = i10;
        }
        this.hashCode = i7;
        return i7;
    }

    @Override // okio.ByteString
    public java.lang.String hex() {
        return toByteString().hex();
    }

    @Override // okio.ByteString
    public int indexOf(byte[] bArr, int i5) {
        return toByteString().indexOf(bArr, i5);
    }

    @Override // okio.ByteString
    public byte[] internalArray() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public int lastIndexOf(byte[] bArr, int i5) {
        return toByteString().lastIndexOf(bArr, i5);
    }

    @Override // okio.ByteString
    public okio.ByteString md5() {
        return toByteString().md5();
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i5, okio.ByteString byteString, int i6, int i7) {
        if (i5 < 0 || i5 > size() - i7) {
            return false;
        }
        int iSegment = segment(i5);
        while (i7 > 0) {
            int i8 = iSegment == 0 ? 0 : this.directory[iSegment - 1];
            int iMin = java.lang.Math.min(i7, ((this.directory[iSegment] - i8) + i8) - i5);
            int[] iArr = this.directory;
            byte[][] bArr = this.segments;
            if (!byteString.rangeEquals(i6, bArr[iSegment], (i5 - i8) + iArr[bArr.length + iSegment], iMin)) {
                return false;
            }
            i5 += iMin;
            i6 += iMin;
            i7 -= iMin;
            iSegment++;
        }
        return true;
    }

    @Override // okio.ByteString
    public okio.ByteString sha256() {
        return toByteString().sha256();
    }

    @Override // okio.ByteString
    public int size() {
        return this.directory[this.segments.length - 1];
    }

    @Override // okio.ByteString
    public okio.ByteString substring(int i5) {
        return toByteString().substring(i5);
    }

    @Override // okio.ByteString
    public okio.ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // okio.ByteString
    public okio.ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // okio.ByteString
    public byte[] toByteArray() {
        int[] iArr = this.directory;
        byte[][] bArr = this.segments;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            int[] iArr2 = this.directory;
            int i7 = iArr2[length + i5];
            int i8 = iArr2[i5];
            java.lang.System.arraycopy(this.segments[i5], i7, bArr2, i6, i8 - i6);
            i5++;
            i6 = i8;
        }
        return bArr2;
    }

    @Override // okio.ByteString
    public java.lang.String toString() {
        return toByteString().toString();
    }

    @Override // okio.ByteString
    public java.lang.String utf8() {
        return toByteString().utf8();
    }

    @Override // okio.ByteString
    public void write(java.io.OutputStream outputStream) throws java.io.IOException {
        if (outputStream == null) {
            throw new java.lang.IllegalArgumentException("out == null");
        }
        int length = this.segments.length;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            int[] iArr = this.directory;
            int i7 = iArr[length + i5];
            int i8 = iArr[i5];
            outputStream.write(this.segments[i5], i7, i8 - i6);
            i5++;
            i6 = i8;
        }
    }

    @Override // okio.ByteString
    public okio.ByteString substring(int i5, int i6) {
        return toByteString().substring(i5, i6);
    }

    @Override // okio.ByteString
    public void write(okio.Buffer buffer) {
        int length = this.segments.length;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            int[] iArr = this.directory;
            int i7 = iArr[length + i5];
            int i8 = iArr[i5];
            okio.Segment segment = new okio.Segment(this.segments[i5], i7, (i7 + i8) - i6);
            okio.Segment segment2 = buffer.head;
            if (segment2 == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                segment2.prev.push(segment);
            }
            i5++;
            i6 = i8;
        }
        buffer.size += (long) i6;
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i5, byte[] bArr, int i6, int i7) {
        if (i5 < 0 || i5 > size() - i7 || i6 < 0 || i6 > bArr.length - i7) {
            return false;
        }
        int iSegment = segment(i5);
        while (i7 > 0) {
            int i8 = iSegment == 0 ? 0 : this.directory[iSegment - 1];
            int iMin = java.lang.Math.min(i7, ((this.directory[iSegment] - i8) + i8) - i5);
            int[] iArr = this.directory;
            byte[][] bArr2 = this.segments;
            if (!okio.Util.arrayRangeEquals(bArr2[iSegment], (i5 - i8) + iArr[bArr2.length + iSegment], bArr, i6, iMin)) {
                return false;
            }
            i5 += iMin;
            i6 += iMin;
            i7 -= iMin;
            iSegment++;
        }
        return true;
    }
}
