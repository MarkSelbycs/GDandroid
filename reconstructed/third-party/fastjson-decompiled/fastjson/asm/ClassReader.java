package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ClassReader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f3318b;
    public final int header;
    private final int[] items;
    private final int maxStringLength;
    private boolean readAnnotations;
    private final java.lang.String[] strings;

    public ClassReader(java.io.InputStream inputStream, boolean z4) throws java.io.IOException {
        int i5;
        this.readAnnotations = z4;
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i6 = inputStream.read(bArr);
            i5 = 0;
            if (i6 == -1) {
                break;
            } else if (i6 > 0) {
                byteArrayOutputStream.write(bArr, 0, i6);
            }
        }
        inputStream.close();
        this.f3318b = byteArrayOutputStream.toByteArray();
        int[] iArr = new int[readUnsignedShort(8)];
        this.items = iArr;
        int length = iArr.length;
        this.strings = new java.lang.String[length];
        int i7 = 10;
        int i8 = 1;
        while (i8 < length) {
            int i9 = i7 + 1;
            this.items[i8] = i9;
            byte b5 = this.f3318b[i7];
            int unsignedShort = 5;
            if (b5 == 1) {
                unsignedShort = readUnsignedShort(i9) + 3;
                if (unsignedShort > i5) {
                    i5 = unsignedShort;
                }
            } else if (b5 == 15) {
                unsignedShort = 4;
            } else if (b5 != 18 && b5 != 3 && b5 != 4) {
                if (b5 != 5 && b5 != 6) {
                    switch (b5) {
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                            break;
                        default:
                            unsignedShort = 3;
                            break;
                    }
                } else {
                    unsignedShort = 9;
                    i8++;
                }
            }
            i7 += unsignedShort;
            i8++;
        }
        this.maxStringLength = i5;
        this.header = i7;
    }

    private int getAttributes() {
        int i5 = this.header;
        int unsignedShort = i5 + 8 + (readUnsignedShort(i5 + 6) * 2);
        for (int unsignedShort2 = readUnsignedShort(unsignedShort); unsignedShort2 > 0; unsignedShort2--) {
            for (int unsignedShort3 = readUnsignedShort(unsignedShort + 8); unsignedShort3 > 0; unsignedShort3--) {
                unsignedShort += readInt(unsignedShort + 12) + 6;
            }
            unsignedShort += 8;
        }
        int i6 = unsignedShort + 2;
        for (int unsignedShort4 = readUnsignedShort(i6); unsignedShort4 > 0; unsignedShort4--) {
            for (int unsignedShort5 = readUnsignedShort(i6 + 8); unsignedShort5 > 0; unsignedShort5--) {
                i6 += readInt(i6 + 12) + 6;
            }
            i6 += 8;
        }
        return i6 + 2;
    }

    private int readInt(int i5) {
        byte[] bArr = this.f3318b;
        return (bArr[i5 + 3] & 255) | ((bArr[i5] & 255) << 24) | ((bArr[i5 + 1] & 255) << 16) | ((bArr[i5 + 2] & 255) << 8);
    }

    private int readMethod(com.alibaba.fastjson.asm.TypeCollector typeCollector, char[] cArr, int i5) {
        int unsignedShort = readUnsignedShort(i5);
        java.lang.String utf8 = readUTF8(i5 + 2, cArr);
        java.lang.String utf9 = readUTF8(i5 + 4, cArr);
        int i6 = i5 + 8;
        int i7 = 0;
        int i8 = 0;
        for (int unsignedShort2 = readUnsignedShort(i5 + 6); unsignedShort2 > 0; unsignedShort2--) {
            java.lang.String utf10 = readUTF8(i6, cArr);
            int i9 = readInt(i6 + 2);
            int i10 = i6 + 6;
            if (utf10.equals("Code")) {
                i8 = i10;
            }
            i6 = i10 + i9;
        }
        com.alibaba.fastjson.asm.MethodCollector methodCollectorVisitMethod = typeCollector.visitMethod(unsignedShort, utf8, utf9);
        if (methodCollectorVisitMethod != null && i8 != 0) {
            int i11 = i8 + 8 + readInt(i8 + 4);
            int i12 = i11 + 2;
            for (int unsignedShort3 = readUnsignedShort(i11); unsignedShort3 > 0; unsignedShort3--) {
                i12 += 8;
            }
            int i13 = i12 + 2;
            int i14 = 0;
            for (int unsignedShort4 = readUnsignedShort(i12); unsignedShort4 > 0; unsignedShort4--) {
                java.lang.String utf11 = readUTF8(i13, cArr);
                if (utf11.equals("LocalVariableTable")) {
                    i7 = i13 + 6;
                } else if (utf11.equals("LocalVariableTypeTable")) {
                    i14 = i13 + 6;
                }
                i13 += readInt(i13 + 2) + 6;
            }
            if (i7 != 0) {
                if (i14 != 0) {
                    int unsignedShort5 = readUnsignedShort(i14) * 3;
                    int i15 = i14 + 2;
                    int[] iArr = new int[unsignedShort5];
                    while (unsignedShort5 > 0) {
                        int i16 = unsignedShort5 - 1;
                        iArr[i16] = i15 + 6;
                        int i17 = i16 - 1;
                        iArr[i17] = readUnsignedShort(i15 + 8);
                        unsignedShort5 = i17 - 1;
                        iArr[unsignedShort5] = readUnsignedShort(i15);
                        i15 += 10;
                    }
                }
                int i18 = i7 + 2;
                for (int unsignedShort6 = readUnsignedShort(i7); unsignedShort6 > 0; unsignedShort6--) {
                    methodCollectorVisitMethod.visitLocalVariable(readUTF8(i18 + 4, cArr), readUnsignedShort(i18 + 8));
                    i18 += 10;
                }
            }
        }
        return i6;
    }

    private java.lang.String readUTF(int i5, int i6, char[] cArr) {
        int i7;
        int i8 = i6 + i5;
        byte[] bArr = this.f3318b;
        int i9 = 0;
        char c5 = 0;
        char c6 = 0;
        while (i5 < i8) {
            int i10 = i5 + 1;
            byte b5 = bArr[i5];
            if (c5 == 0) {
                int i11 = b5 & 255;
                if (i11 < 128) {
                    cArr[i9] = (char) i11;
                    i9++;
                } else if (i11 >= 224 || i11 <= 191) {
                    c6 = (char) (i11 & 15);
                    c5 = 2;
                } else {
                    i7 = i11 & 31;
                    c6 = (char) i7;
                    c5 = 1;
                }
            } else if (c5 == 1) {
                cArr[i9] = (char) ((b5 & 63) | (c6 << 6));
                i9++;
                c5 = 0;
            } else if (c5 == 2) {
                i7 = (b5 & 63) | (c6 << 6);
                c6 = (char) i7;
                c5 = 1;
            }
            i5 = i10;
        }
        return new java.lang.String(cArr, 0, i9);
    }

    private java.lang.String readUTF8(int i5, char[] cArr) {
        int unsignedShort = readUnsignedShort(i5);
        java.lang.String[] strArr = this.strings;
        java.lang.String str = strArr[unsignedShort];
        if (str != null) {
            return str;
        }
        int i6 = this.items[unsignedShort];
        java.lang.String utf = readUTF(i6 + 2, readUnsignedShort(i6), cArr);
        strArr[unsignedShort] = utf;
        return utf;
    }

    private int readUnsignedShort(int i5) {
        byte[] bArr = this.f3318b;
        return (bArr[i5 + 1] & 255) | ((bArr[i5] & 255) << 8);
    }

    public void accept(com.alibaba.fastjson.asm.TypeCollector typeCollector) {
        int i5;
        char[] cArr = new char[this.maxStringLength];
        if (!this.readAnnotations) {
            i5 = 0;
            break;
        }
        int attributes = getAttributes();
        int unsignedShort = readUnsignedShort(attributes);
        while (true) {
            if (unsignedShort <= 0) {
                i5 = 0;
                break;
            } else if ("RuntimeVisibleAnnotations".equals(readUTF8(attributes + 2, cArr))) {
                i5 = attributes + 8;
                break;
            } else {
                attributes += readInt(attributes + 4) + 6;
                unsignedShort--;
            }
        }
        int i6 = this.header;
        int unsignedShort2 = readUnsignedShort(i6 + 6);
        int i7 = i6 + 8;
        for (int i8 = 0; i8 < unsignedShort2; i8++) {
            i7 += 2;
        }
        int i9 = i7 + 2;
        int i10 = i9;
        for (int unsignedShort3 = readUnsignedShort(i7); unsignedShort3 > 0; unsignedShort3--) {
            i10 += 8;
            for (int unsignedShort4 = readUnsignedShort(i10 + 6); unsignedShort4 > 0; unsignedShort4--) {
                i10 += readInt(i10 + 2) + 6;
            }
        }
        int i11 = i10 + 2;
        for (int unsignedShort5 = readUnsignedShort(i10); unsignedShort5 > 0; unsignedShort5--) {
            i11 += 8;
            for (int unsignedShort6 = readUnsignedShort(i11 + 6); unsignedShort6 > 0; unsignedShort6--) {
                i11 += readInt(i11 + 2) + 6;
            }
        }
        int i12 = i11 + 2;
        for (int unsignedShort7 = readUnsignedShort(i11); unsignedShort7 > 0; unsignedShort7--) {
            i12 += readInt(i12 + 2) + 6;
        }
        if (i5 != 0) {
            int i13 = i5 + 2;
            for (int unsignedShort8 = readUnsignedShort(i5); unsignedShort8 > 0; unsignedShort8--) {
                typeCollector.visitAnnotation(readUTF8(i13, cArr));
            }
        }
        for (int unsignedShort9 = readUnsignedShort(i7); unsignedShort9 > 0; unsignedShort9--) {
            i9 += 8;
            for (int unsignedShort10 = readUnsignedShort(i9 + 6); unsignedShort10 > 0; unsignedShort10--) {
                i9 += readInt(i9 + 2) + 6;
            }
        }
        int method = i9 + 2;
        for (int unsignedShort11 = readUnsignedShort(i9); unsignedShort11 > 0; unsignedShort11--) {
            method = readMethod(typeCollector, cArr, method);
        }
    }
}
