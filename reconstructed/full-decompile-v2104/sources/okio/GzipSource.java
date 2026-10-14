package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class GzipSource implements okio.Source {
    private static final byte FCOMMENT = 4;
    private static final byte FEXTRA = 2;
    private static final byte FHCRC = 1;
    private static final byte FNAME = 3;
    private static final byte SECTION_BODY = 1;
    private static final byte SECTION_DONE = 3;
    private static final byte SECTION_HEADER = 0;
    private static final byte SECTION_TRAILER = 2;
    private final java.util.zip.Inflater inflater;
    private final okio.InflaterSource inflaterSource;
    private final okio.BufferedSource source;
    private int section = 0;
    private final java.util.zip.CRC32 crc = new java.util.zip.CRC32();

    public GzipSource(okio.Source source) {
        if (source == null) {
            throw new java.lang.IllegalArgumentException("source == null");
        }
        java.util.zip.Inflater inflater = new java.util.zip.Inflater(true);
        this.inflater = inflater;
        okio.BufferedSource bufferedSourceBuffer = okio.Okio.buffer(source);
        this.source = bufferedSourceBuffer;
        this.inflaterSource = new okio.InflaterSource(bufferedSourceBuffer, inflater);
    }

    private void checkEqual(java.lang.String str, int i5, int i6) throws java.io.IOException {
        if (i6 != i5) {
            throw new java.io.IOException(java.lang.String.format("%s: actual 0x%08x != expected 0x%08x", str, java.lang.Integer.valueOf(i6), java.lang.Integer.valueOf(i5)));
        }
    }

    private void consumeHeader() throws java.io.IOException {
        this.source.require(10L);
        byte b5 = this.source.buffer().getByte(3L);
        boolean z4 = ((b5 >> 1) & 1) == 1;
        if (z4) {
            updateCrc(this.source.buffer(), 0L, 10L);
        }
        checkEqual("ID1ID2", 8075, this.source.readShort());
        this.source.skip(8L);
        if (((b5 >> 2) & 1) == 1) {
            this.source.require(2L);
            if (z4) {
                updateCrc(this.source.buffer(), 0L, 2L);
            }
            long shortLe = this.source.buffer().readShortLe();
            this.source.require(shortLe);
            if (z4) {
                updateCrc(this.source.buffer(), 0L, shortLe);
            }
            this.source.skip(shortLe);
        }
        if (((b5 >> 3) & 1) == 1) {
            long jIndexOf = this.source.indexOf(SECTION_HEADER);
            if (jIndexOf == -1) {
                throw new java.io.EOFException();
            }
            if (z4) {
                updateCrc(this.source.buffer(), 0L, jIndexOf + 1);
            }
            this.source.skip(jIndexOf + 1);
        }
        if (((b5 >> FCOMMENT) & 1) == 1) {
            long jIndexOf2 = this.source.indexOf(SECTION_HEADER);
            if (jIndexOf2 == -1) {
                throw new java.io.EOFException();
            }
            if (z4) {
                updateCrc(this.source.buffer(), 0L, jIndexOf2 + 1);
            }
            this.source.skip(jIndexOf2 + 1);
        }
        if (z4) {
            checkEqual("FHCRC", this.source.readShortLe(), (short) this.crc.getValue());
            this.crc.reset();
        }
    }

    private void consumeTrailer() throws java.io.IOException {
        checkEqual("CRC", this.source.readIntLe(), (int) this.crc.getValue());
        checkEqual("ISIZE", this.source.readIntLe(), this.inflater.getTotalOut());
    }

    private void updateCrc(okio.Buffer buffer, long j5, long j6) {
        okio.Segment segment = buffer.head;
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
            this.crc.update(segment.data, i7, iMin);
            j6 -= (long) iMin;
            segment = segment.next;
            j5 = 0;
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.inflaterSource.close();
    }

    @Override // okio.Source
    public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
        if (j5 < 0) {
            throw new java.lang.IllegalArgumentException("byteCount < 0: " + j5);
        }
        if (j5 == 0) {
            return 0L;
        }
        if (this.section == 0) {
            consumeHeader();
            this.section = 1;
        }
        if (this.section == 1) {
            long j6 = buffer.size;
            long j7 = this.inflaterSource.read(buffer, j5);
            if (j7 != -1) {
                updateCrc(buffer, j6, j7);
                return j7;
            }
            this.section = 2;
        }
        if (this.section == 2) {
            consumeTrailer();
            this.section = 3;
            if (!this.source.exhausted()) {
                throw new java.io.IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // okio.Source
    public okio.Timeout timeout() {
        return this.source.timeout();
    }
}
