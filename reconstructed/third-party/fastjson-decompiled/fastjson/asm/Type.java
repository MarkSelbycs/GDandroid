package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Type {
    private final char[] buf;
    private final int len;
    private final int off;
    public final int sort;
    public static final com.alibaba.fastjson.asm.Type VOID_TYPE = new com.alibaba.fastjson.asm.Type(0, null, 1443168256, 1);
    public static final com.alibaba.fastjson.asm.Type BOOLEAN_TYPE = new com.alibaba.fastjson.asm.Type(1, null, 1509950721, 1);
    public static final com.alibaba.fastjson.asm.Type CHAR_TYPE = new com.alibaba.fastjson.asm.Type(2, null, 1124075009, 1);
    public static final com.alibaba.fastjson.asm.Type BYTE_TYPE = new com.alibaba.fastjson.asm.Type(3, null, 1107297537, 1);
    public static final com.alibaba.fastjson.asm.Type SHORT_TYPE = new com.alibaba.fastjson.asm.Type(4, null, 1392510721, 1);
    public static final com.alibaba.fastjson.asm.Type INT_TYPE = new com.alibaba.fastjson.asm.Type(5, null, 1224736769, 1);
    public static final com.alibaba.fastjson.asm.Type FLOAT_TYPE = new com.alibaba.fastjson.asm.Type(6, null, 1174536705, 1);
    public static final com.alibaba.fastjson.asm.Type LONG_TYPE = new com.alibaba.fastjson.asm.Type(7, null, 1241579778, 1);
    public static final com.alibaba.fastjson.asm.Type DOUBLE_TYPE = new com.alibaba.fastjson.asm.Type(8, null, 1141048066, 1);

    private Type(int i5, char[] cArr, int i6, int i7) {
        this.sort = i5;
        this.buf = cArr;
        this.off = i6;
        this.len = i7;
    }

    public static com.alibaba.fastjson.asm.Type[] getArgumentTypes(java.lang.String str) {
        char[] charArray = str.toCharArray();
        int i5 = 1;
        int i6 = 0;
        int i7 = 1;
        while (true) {
            int i8 = i7 + 1;
            char c5 = charArray[i7];
            if (c5 == ')') {
                break;
            }
            if (c5 == 'L') {
                while (true) {
                    i7 = i8 + 1;
                    if (charArray[i8] == ';') {
                        break;
                    }
                    i8 = i7;
                }
                i6++;
            } else {
                if (c5 != '[') {
                    i6++;
                }
                i7 = i8;
            }
        }
        com.alibaba.fastjson.asm.Type[] typeArr = new com.alibaba.fastjson.asm.Type[i6];
        int i9 = 0;
        while (charArray[i5] != ')') {
            typeArr[i9] = getType(charArray, i5);
            i5 += typeArr[i9].len + (typeArr[i9].sort == 10 ? 2 : 0);
            i9++;
        }
        return typeArr;
    }

    public static int getArgumentsAndReturnSizes(java.lang.String str) {
        int i5;
        int i6 = 1;
        int i7 = 1;
        int i8 = 1;
        while (true) {
            i5 = i7 + 1;
            char cCharAt = str.charAt(i7);
            if (cCharAt == ')') {
                break;
            }
            if (cCharAt == 'L') {
                while (true) {
                    i7 = i5 + 1;
                    if (str.charAt(i5) == ';') {
                        break;
                    }
                    i5 = i7;
                }
                i8++;
            } else {
                i8 = (cCharAt == 'D' || cCharAt == 'J') ? i8 + 2 : i8 + 1;
                i7 = i5;
            }
        }
        char cCharAt2 = str.charAt(i5);
        int i9 = i8 << 2;
        if (cCharAt2 == 'V') {
            i6 = 0;
        } else if (cCharAt2 == 'D' || cCharAt2 == 'J') {
            i6 = 2;
        }
        return i9 | i6;
    }

    private int getDimensions() {
        int i5 = 1;
        while (this.buf[this.off + i5] == '[') {
            i5++;
        }
        return i5;
    }

    public static com.alibaba.fastjson.asm.Type getType(java.lang.String str) {
        return getType(str.toCharArray(), 0);
    }

    public java.lang.String getClassName() {
        switch (this.sort) {
            case 0:
                return "void";
            case 1:
                return "boolean";
            case 2:
                return "char";
            case 3:
                return "byte";
            case 4:
                return "short";
            case 5:
                return "int";
            case 6:
                return "float";
            case 7:
                return "long";
            case 8:
                return "double";
            case 9:
                java.lang.StringBuilder sb = new java.lang.StringBuilder(getType(this.buf, this.off + getDimensions()).getClassName());
                for (int dimensions = getDimensions(); dimensions > 0; dimensions--) {
                    sb.append("[]");
                }
                return sb.toString();
            default:
                return new java.lang.String(this.buf, this.off, this.len).replace('/', '.');
        }
    }

    public java.lang.String getDescriptor() {
        return new java.lang.String(this.buf, this.off, this.len);
    }

    public java.lang.String getInternalName() {
        return new java.lang.String(this.buf, this.off, this.len);
    }

    private static com.alibaba.fastjson.asm.Type getType(char[] cArr, int i5) {
        int i6;
        char c5 = cArr[i5];
        if (c5 == 'F') {
            return FLOAT_TYPE;
        }
        if (c5 == 'S') {
            return SHORT_TYPE;
        }
        if (c5 == 'V') {
            return VOID_TYPE;
        }
        if (c5 == 'I') {
            return INT_TYPE;
        }
        if (c5 == 'J') {
            return LONG_TYPE;
        }
        if (c5 == 'Z') {
            return BOOLEAN_TYPE;
        }
        if (c5 != '[') {
            switch (c5) {
                case 'B':
                    return BYTE_TYPE;
                case 'C':
                    return CHAR_TYPE;
                case 'D':
                    return DOUBLE_TYPE;
                default:
                    int i7 = 1;
                    while (cArr[i5 + i7] != ';') {
                        i7++;
                    }
                    return new com.alibaba.fastjson.asm.Type(10, cArr, i5 + 1, i7 - 1);
            }
        }
        int i8 = 1;
        while (true) {
            i6 = i5 + i8;
            if (cArr[i6] != '[') {
                break;
            }
            i8++;
        }
        if (cArr[i6] == 'L') {
            do {
                i8++;
            } while (cArr[i5 + i8] != ';');
        }
        return new com.alibaba.fastjson.asm.Type(9, cArr, i5, i8 + 1);
    }
}
