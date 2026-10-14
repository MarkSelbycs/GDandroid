package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ByteString implements java.io.Serializable, java.lang.Comparable<okio.ByteString> {
    private static final long serialVersionUID = 1;
    public final byte[] data;
    public transient int hashCode;
    public transient java.lang.String utf8;
    public static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final okio.ByteString EMPTY = of(new byte[0]);

    public ByteString(byte[] bArr) {
        this.data = bArr;
    }

    public static int codePointIndexToCharIndex(java.lang.String str, int i5) {
        int length = str.length();
        int iCharCount = 0;
        int i6 = 0;
        while (iCharCount < length) {
            if (i6 == i5) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((java.lang.Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i6++;
            iCharCount += java.lang.Character.charCount(iCodePointAt);
        }
        return str.length();
    }

    public static okio.ByteString decodeBase64(java.lang.String str) {
        if (str == null) {
            throw new java.lang.IllegalArgumentException("base64 == null");
        }
        byte[] bArrDecode = okio.Base64.decode(str);
        if (bArrDecode != null) {
            return new okio.ByteString(bArrDecode);
        }
        return null;
    }

    public static okio.ByteString decodeHex(java.lang.String str) {
        if (str == null) {
            throw new java.lang.IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new java.lang.IllegalArgumentException("Unexpected hex string: " + str);
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i5 = 0; i5 < length; i5++) {
            int i6 = i5 * 2;
            bArr[i5] = (byte) ((decodeHexDigit(str.charAt(i6)) << 4) + decodeHexDigit(str.charAt(i6 + 1)));
        }
        return of(bArr);
    }

    private static int decodeHexDigit(char c5) {
        if (c5 >= '0' && c5 <= '9') {
            return c5 - '0';
        }
        char c6 = 'a';
        if (c5 < 'a' || c5 > 'f') {
            c6 = 'A';
            if (c5 < 'A' || c5 > 'F') {
                throw new java.lang.IllegalArgumentException("Unexpected hex digit: " + c5);
            }
        }
        return (c5 - c6) + 10;
    }

    private okio.ByteString digest(java.lang.String str) {
        try {
            return of(java.security.MessageDigest.getInstance(str).digest(this.data));
        } catch (java.security.NoSuchAlgorithmException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }

    public static okio.ByteString encodeUtf8(java.lang.String str) {
        if (str == null) {
            throw new java.lang.IllegalArgumentException("s == null");
        }
        okio.ByteString byteString = new okio.ByteString(str.getBytes(okio.Util.UTF_8));
        byteString.utf8 = str;
        return byteString;
    }

    public static okio.ByteString of(byte... bArr) {
        if (bArr != null) {
            return new okio.ByteString((byte[]) bArr.clone());
        }
        throw new java.lang.IllegalArgumentException("data == null");
    }

    public static okio.ByteString read(java.io.InputStream inputStream, int i5) throws java.io.IOException {
        if (inputStream == null) {
            throw new java.lang.IllegalArgumentException("in == null");
        }
        if (i5 < 0) {
            throw new java.lang.IllegalArgumentException("byteCount < 0: " + i5);
        }
        byte[] bArr = new byte[i5];
        int i6 = 0;
        while (i6 < i5) {
            int i7 = inputStream.read(bArr, i6, i5 - i6);
            if (i7 == -1) {
                throw new java.io.EOFException();
            }
            i6 += i7;
        }
        return new okio.ByteString(bArr);
    }

    private void readObject(java.io.ObjectInputStream objectInputStream) throws java.io.IOException {
        okio.ByteString byteString = read(objectInputStream, objectInputStream.readInt());
        try {
            java.lang.reflect.Field declaredField = okio.ByteString.class.getDeclaredField("data");
            declaredField.setAccessible(true);
            declaredField.set(this, byteString.data);
        } catch (java.lang.IllegalAccessException unused) {
            throw new java.lang.AssertionError();
        } catch (java.lang.NoSuchFieldException unused2) {
            throw new java.lang.AssertionError();
        }
    }

    private void writeObject(java.io.ObjectOutputStream objectOutputStream) throws java.io.IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    public java.nio.ByteBuffer asByteBuffer() {
        return java.nio.ByteBuffer.wrap(this.data).asReadOnlyBuffer();
    }

    public java.lang.String base64() {
        return okio.Base64.encode(this.data);
    }

    public java.lang.String base64Url() {
        return okio.Base64.encodeUrl(this.data);
    }

    public final boolean endsWith(okio.ByteString byteString) {
        return rangeEquals(size() - byteString.size(), byteString, 0, byteString.size());
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof okio.ByteString) {
            okio.ByteString byteString = (okio.ByteString) obj;
            int size = byteString.size();
            byte[] bArr = this.data;
            if (size == bArr.length && byteString.rangeEquals(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public byte getByte(int i5) {
        return this.data[i5];
    }

    public int hashCode() {
        int i5 = this.hashCode;
        if (i5 != 0) {
            return i5;
        }
        int iHashCode = java.util.Arrays.hashCode(this.data);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    public java.lang.String hex() {
        byte[] bArr = this.data;
        char[] cArr = new char[bArr.length * 2];
        int i5 = 0;
        for (byte b5 : bArr) {
            int i6 = i5 + 1;
            char[] cArr2 = HEX_DIGITS;
            cArr[i5] = cArr2[(b5 >> 4) & 15];
            i5 = i6 + 1;
            cArr[i6] = cArr2[b5 & 15];
        }
        return new java.lang.String(cArr);
    }

    public final int indexOf(okio.ByteString byteString) {
        return indexOf(byteString.internalArray(), 0);
    }

    public byte[] internalArray() {
        return this.data;
    }

    public final int lastIndexOf(okio.ByteString byteString) {
        return lastIndexOf(byteString.internalArray(), size());
    }

    public okio.ByteString md5() {
        return digest("MD5");
    }

    public boolean rangeEquals(int i5, okio.ByteString byteString, int i6, int i7) {
        return byteString.rangeEquals(i6, this.data, i5, i7);
    }

    public okio.ByteString sha1() {
        return digest("SHA-1");
    }

    public okio.ByteString sha256() {
        return digest("SHA-256");
    }

    public int size() {
        return this.data.length;
    }

    public final boolean startsWith(okio.ByteString byteString) {
        return rangeEquals(0, byteString, 0, byteString.size());
    }

    public okio.ByteString substring(int i5) {
        return substring(i5, this.data.length);
    }

    public okio.ByteString toAsciiLowercase() {
        int i5 = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i5 >= bArr.length) {
                return this;
            }
            byte b5 = bArr[i5];
            if (b5 >= 65 && b5 <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i5] = (byte) (b5 + 32);
                for (int i6 = i5 + 1; i6 < bArr2.length; i6++) {
                    byte b6 = bArr2[i6];
                    if (b6 >= 65 && b6 <= 90) {
                        bArr2[i6] = (byte) (b6 + 32);
                    }
                }
                return new okio.ByteString(bArr2);
            }
            i5++;
        }
    }

    public okio.ByteString toAsciiUppercase() {
        int i5 = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i5 >= bArr.length) {
                return this;
            }
            byte b5 = bArr[i5];
            if (b5 >= 97 && b5 <= 122) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i5] = (byte) (b5 - 32);
                for (int i6 = i5 + 1; i6 < bArr2.length; i6++) {
                    byte b6 = bArr2[i6];
                    if (b6 >= 97 && b6 <= 122) {
                        bArr2[i6] = (byte) (b6 - 32);
                    }
                }
                return new okio.ByteString(bArr2);
            }
            i5++;
        }
    }

    public byte[] toByteArray() {
        return (byte[]) this.data.clone();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb;
        if (this.data.length == 0) {
            return "[size=0]";
        }
        java.lang.String strUtf8 = utf8();
        int iCodePointIndexToCharIndex = codePointIndexToCharIndex(strUtf8, 64);
        if (iCodePointIndexToCharIndex == -1) {
            if (this.data.length <= 64) {
                return "[hex=" + hex() + "]";
            }
            return "[size=" + this.data.length + " hex=" + substring(0, 64).hex() + "…]";
        }
        java.lang.String strReplace = strUtf8.substring(0, iCodePointIndexToCharIndex).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iCodePointIndexToCharIndex < strUtf8.length()) {
            sb = new java.lang.StringBuilder();
            sb.append("[size=");
            sb.append(this.data.length);
            sb.append(" text=");
            sb.append(strReplace);
            sb.append("…]");
        } else {
            sb = new java.lang.StringBuilder();
            sb.append("[text=");
            sb.append(strReplace);
            sb.append("]");
        }
        return sb.toString();
    }

    public java.lang.String utf8() {
        java.lang.String str = this.utf8;
        if (str != null) {
            return str;
        }
        java.lang.String str2 = new java.lang.String(this.data, okio.Util.UTF_8);
        this.utf8 = str2;
        return str2;
    }

    public void write(java.io.OutputStream outputStream) throws java.io.IOException {
        if (outputStream == null) {
            throw new java.lang.IllegalArgumentException("out == null");
        }
        outputStream.write(this.data);
    }

    @Override // java.lang.Comparable
    public int compareTo(okio.ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        int iMin = java.lang.Math.min(size, size2);
        for (int i5 = 0; i5 < iMin; i5++) {
            int i6 = getByte(i5) & 255;
            int i7 = byteString.getByte(i5) & 255;
            if (i6 != i7) {
                return i6 < i7 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public final boolean endsWith(byte[] bArr) {
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    public final int indexOf(okio.ByteString byteString, int i5) {
        return indexOf(byteString.internalArray(), i5);
    }

    public final int lastIndexOf(okio.ByteString byteString, int i5) {
        return lastIndexOf(byteString.internalArray(), i5);
    }

    public boolean rangeEquals(int i5, byte[] bArr, int i6, int i7) {
        if (i5 >= 0) {
            byte[] bArr2 = this.data;
            if (i5 <= bArr2.length - i7 && i6 >= 0 && i6 <= bArr.length - i7 && okio.Util.arrayRangeEquals(bArr2, i5, bArr, i6, i7)) {
                return true;
            }
        }
        return false;
    }

    public final boolean startsWith(byte[] bArr) {
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    public okio.ByteString substring(int i5, int i6) {
        if (i5 < 0) {
            throw new java.lang.IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.data;
        if (i6 > bArr.length) {
            throw new java.lang.IllegalArgumentException("endIndex > length(" + this.data.length + ")");
        }
        int i7 = i6 - i5;
        if (i7 < 0) {
            throw new java.lang.IllegalArgumentException("endIndex < beginIndex");
        }
        if (i5 == 0 && i6 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i7];
        java.lang.System.arraycopy(bArr, i5, bArr2, 0, i7);
        return new okio.ByteString(bArr2);
    }

    public static okio.ByteString of(byte[] bArr, int i5, int i6) {
        if (bArr != null) {
            okio.Util.checkOffsetAndCount(bArr.length, i5, i6);
            byte[] bArr2 = new byte[i6];
            java.lang.System.arraycopy(bArr, i5, bArr2, 0, i6);
            return new okio.ByteString(bArr2);
        }
        throw new java.lang.IllegalArgumentException("data == null");
    }

    public final int indexOf(byte[] bArr) {
        return indexOf(bArr, 0);
    }

    public final int lastIndexOf(byte[] bArr) {
        return lastIndexOf(bArr, size());
    }

    public void write(okio.Buffer buffer) {
        byte[] bArr = this.data;
        buffer.write(bArr, 0, bArr.length);
    }

    public int indexOf(byte[] bArr, int i5) {
        int length = this.data.length - bArr.length;
        for (int iMax = java.lang.Math.max(i5, 0); iMax <= length; iMax++) {
            if (okio.Util.arrayRangeEquals(this.data, iMax, bArr, 0, bArr.length)) {
                return iMax;
            }
        }
        return -1;
    }

    public int lastIndexOf(byte[] bArr, int i5) {
        for (int iMin = java.lang.Math.min(i5, this.data.length - bArr.length); iMin >= 0; iMin--) {
            if (okio.Util.arrayRangeEquals(this.data, iMin, bArr, 0, bArr.length)) {
                return iMin;
            }
        }
        return -1;
    }
}
