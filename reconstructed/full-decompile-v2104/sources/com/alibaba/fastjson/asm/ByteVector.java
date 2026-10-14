package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ByteVector {
    public byte[] data;
    public int length;

    public ByteVector() {
        this.data = new byte[64];
    }

    private void enlarge(int i5) {
        byte[] bArr = this.data;
        int length = bArr.length * 2;
        int i6 = this.length;
        int i7 = i5 + i6;
        if (length <= i7) {
            length = i7;
        }
        byte[] bArr2 = new byte[length];
        java.lang.System.arraycopy(bArr, 0, bArr2, 0, i6);
        this.data = bArr2;
    }

    public com.alibaba.fastjson.asm.ByteVector put11(int i5, int i6) {
        int i7 = this.length;
        if (i7 + 2 > this.data.length) {
            enlarge(2);
        }
        byte[] bArr = this.data;
        int i8 = i7 + 1;
        bArr[i7] = (byte) i5;
        bArr[i8] = (byte) i6;
        this.length = i8 + 1;
        return this;
    }

    public com.alibaba.fastjson.asm.ByteVector put12(int i5, int i6) {
        int i7 = this.length;
        if (i7 + 3 > this.data.length) {
            enlarge(3);
        }
        byte[] bArr = this.data;
        int i8 = i7 + 1;
        bArr[i7] = (byte) i5;
        int i9 = i8 + 1;
        bArr[i8] = (byte) (i6 >>> 8);
        bArr[i9] = (byte) i6;
        this.length = i9 + 1;
        return this;
    }

    public com.alibaba.fastjson.asm.ByteVector putByte(int i5) {
        int i6 = this.length;
        int i7 = i6 + 1;
        if (i7 > this.data.length) {
            enlarge(1);
        }
        this.data[i6] = (byte) i5;
        this.length = i7;
        return this;
    }

    public com.alibaba.fastjson.asm.ByteVector putByteArray(byte[] bArr, int i5, int i6) {
        if (this.length + i6 > this.data.length) {
            enlarge(i6);
        }
        if (bArr != null) {
            java.lang.System.arraycopy(bArr, i5, this.data, this.length, i6);
        }
        this.length += i6;
        return this;
    }

    public com.alibaba.fastjson.asm.ByteVector putInt(int i5) {
        int i6 = this.length;
        if (i6 + 4 > this.data.length) {
            enlarge(4);
        }
        byte[] bArr = this.data;
        int i7 = i6 + 1;
        bArr[i6] = (byte) (i5 >>> 24);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (i5 >>> 16);
        int i9 = i8 + 1;
        bArr[i8] = (byte) (i5 >>> 8);
        bArr[i9] = (byte) i5;
        this.length = i9 + 1;
        return this;
    }

    public com.alibaba.fastjson.asm.ByteVector putShort(int i5) {
        int i6 = this.length;
        if (i6 + 2 > this.data.length) {
            enlarge(2);
        }
        byte[] bArr = this.data;
        int i7 = i6 + 1;
        bArr[i6] = (byte) (i5 >>> 8);
        bArr[i7] = (byte) i5;
        this.length = i7 + 1;
        return this;
    }

    public com.alibaba.fastjson.asm.ByteVector putUTF8(java.lang.String str) {
        int length = str.length();
        int i5 = this.length;
        if (i5 + 2 + length > this.data.length) {
            enlarge(length + 2);
        }
        byte[] bArr = this.data;
        int i6 = i5 + 1;
        bArr[i5] = (byte) (length >>> 8);
        int i7 = i6 + 1;
        bArr[i6] = (byte) length;
        int i8 = 0;
        while (i8 < length) {
            char cCharAt = str.charAt(i8);
            if ((cCharAt < 1 || cCharAt > 127) && (cCharAt < 19968 || cCharAt > 40959)) {
                throw new java.lang.UnsupportedOperationException();
            }
            bArr[i7] = (byte) cCharAt;
            i8++;
            i7++;
        }
        this.length = i7;
        return this;
    }

    public ByteVector(int i5) {
        this.data = new byte[i5];
    }
}
