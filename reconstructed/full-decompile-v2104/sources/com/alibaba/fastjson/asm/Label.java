package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Label {
    public static final int FORWARD_REFERENCE_HANDLE_MASK = 268435455;
    public static final int FORWARD_REFERENCE_TYPE_MASK = -268435456;
    public static final int FORWARD_REFERENCE_TYPE_SHORT = 268435456;
    public static final int FORWARD_REFERENCE_TYPE_WIDE = 536870912;
    public int inputStackTop;
    public com.alibaba.fastjson.asm.Label next;
    public int outputStackMax;
    public int position;
    private int referenceCount;
    private int[] srcAndRefPositions;
    public int status;
    public com.alibaba.fastjson.asm.Label successor;

    private void addReference(int i5, int i6, int i7) {
        if (this.srcAndRefPositions == null) {
            this.srcAndRefPositions = new int[6];
        }
        int i8 = this.referenceCount;
        int[] iArr = this.srcAndRefPositions;
        if (i8 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            java.lang.System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.srcAndRefPositions = iArr2;
        }
        int[] iArr3 = this.srcAndRefPositions;
        int i9 = this.referenceCount;
        int i10 = i9 + 1;
        this.referenceCount = i10;
        iArr3[i9] = i5;
        this.referenceCount = i10 + 1;
        iArr3[i10] = i6 | i7;
    }

    public void put(com.alibaba.fastjson.asm.MethodWriter methodWriter, com.alibaba.fastjson.asm.ByteVector byteVector, int i5, boolean z4) {
        if ((this.status & 2) != 0) {
            if (z4) {
                byteVector.putInt(this.position - i5);
                return;
            } else {
                byteVector.putShort(this.position - i5);
                return;
            }
        }
        if (z4) {
            addReference(i5, byteVector.length, FORWARD_REFERENCE_TYPE_WIDE);
            byteVector.putInt(-1);
        } else {
            addReference(i5, byteVector.length, FORWARD_REFERENCE_TYPE_SHORT);
            byteVector.putShort(-1);
        }
    }

    public void resolve(com.alibaba.fastjson.asm.MethodWriter methodWriter, int i5, byte[] bArr) {
        this.status |= 2;
        this.position = i5;
        int i6 = 0;
        while (i6 < this.referenceCount) {
            int[] iArr = this.srcAndRefPositions;
            int i7 = i6 + 1;
            int i8 = iArr[i6];
            int i9 = i7 + 1;
            int i10 = iArr[i7];
            int i11 = 268435455 & i10;
            int i12 = i5 - i8;
            if ((i10 & FORWARD_REFERENCE_TYPE_MASK) == 268435456) {
                bArr[i11] = (byte) (i12 >>> 8);
                bArr[i11 + 1] = (byte) i12;
            } else {
                int i13 = i11 + 1;
                bArr[i11] = (byte) (i12 >>> 24);
                int i14 = i13 + 1;
                bArr[i13] = (byte) (i12 >>> 16);
                bArr[i14] = (byte) (i12 >>> 8);
                bArr[i14 + 1] = (byte) i12;
            }
            i6 = i9;
        }
    }
}
