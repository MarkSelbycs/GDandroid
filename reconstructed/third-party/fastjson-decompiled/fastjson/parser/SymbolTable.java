package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SymbolTable {
    private final int indexMask;
    private final java.lang.String[] symbols;

    public SymbolTable(int i5) {
        this.indexMask = i5 - 1;
        this.symbols = new java.lang.String[i5];
        addSymbol("$ref", 0, 4, 1185263);
        java.lang.String str = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY;
        addSymbol(str, 0, str.length(), com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY.hashCode());
    }

    public static int hash(char[] cArr, int i5, int i6) {
        int i7 = 0;
        int i8 = 0;
        while (i7 < i6) {
            i8 = (i8 * 31) + cArr[i5];
            i7++;
            i5++;
        }
        return i8;
    }

    private static java.lang.String subString(java.lang.String str, int i5, int i6) {
        char[] cArr = new char[i6];
        str.getChars(i5, i6 + i5, cArr, 0);
        return new java.lang.String(cArr);
    }

    public java.lang.String addSymbol(char[] cArr, int i5, int i6) {
        return addSymbol(cArr, i5, i6, hash(cArr, i5, i6));
    }

    public java.lang.String addSymbol(char[] cArr, int i5, int i6, int i7) {
        int i8 = this.indexMask & i7;
        java.lang.String str = this.symbols[i8];
        if (str != null) {
            boolean z4 = false;
            if (i7 == str.hashCode() && i6 == str.length()) {
                for (int i9 = 0; i9 < i6; i9++) {
                    if (cArr[i5 + i9] == str.charAt(i9)) {
                    }
                }
                z4 = true;
            }
            return z4 ? str : new java.lang.String(cArr, i5, i6);
        }
        java.lang.String strIntern = new java.lang.String(cArr, i5, i6).intern();
        this.symbols[i8] = strIntern;
        return strIntern;
    }

    public java.lang.String addSymbol(java.lang.String str, int i5, int i6, int i7) {
        return addSymbol(str, i5, i6, i7, false);
    }

    public java.lang.String addSymbol(java.lang.String str, int i5, int i6, int i7, boolean z4) {
        int i8 = this.indexMask & i7;
        java.lang.String str2 = this.symbols[i8];
        if (str2 != null) {
            if (i7 == str2.hashCode() && i6 == str2.length() && str.startsWith(str2, i5)) {
                return str2;
            }
            java.lang.String strSubString = subString(str, i5, i6);
            if (z4) {
                this.symbols[i8] = strSubString;
            }
            return strSubString;
        }
        if (i6 != str.length()) {
            str = subString(str, i5, i6);
        }
        java.lang.String strIntern = str.intern();
        this.symbols[i8] = strIntern;
        return strIntern;
    }
}
