package com.alibaba.fastjson;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum PropertyNamingStrategy {
    CamelCase,
    PascalCase,
    SnakeCase,
    KebabCase,
    NoChange,
    NeverUseThisValueExceptDefaultValue;

    /* JADX INFO: renamed from: com.alibaba.fastjson.PropertyNamingStrategy$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;

        static {
            int[] iArr = new int[com.alibaba.fastjson.PropertyNamingStrategy.values().length];
            $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy = iArr;
            try {
                iArr[com.alibaba.fastjson.PropertyNamingStrategy.SnakeCase.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy[com.alibaba.fastjson.PropertyNamingStrategy.KebabCase.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy[com.alibaba.fastjson.PropertyNamingStrategy.PascalCase.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy[com.alibaba.fastjson.PropertyNamingStrategy.CamelCase.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy[com.alibaba.fastjson.PropertyNamingStrategy.NoChange.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy[com.alibaba.fastjson.PropertyNamingStrategy.NeverUseThisValueExceptDefaultValue.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
        }
    }

    public java.lang.String translate(java.lang.String str) {
        char cCharAt;
        int i5 = com.alibaba.fastjson.PropertyNamingStrategy.AnonymousClass1.$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy[ordinal()];
        int i6 = 0;
        if (i5 == 1) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            while (i6 < str.length()) {
                char cCharAt2 = str.charAt(i6);
                if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                    sb.append(cCharAt2);
                } else {
                    char c5 = (char) (cCharAt2 + ' ');
                    if (i6 > 0) {
                        sb.append('_');
                    }
                    sb.append(c5);
                }
                i6++;
            }
            return sb.toString();
        }
        if (i5 == 2) {
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            while (i6 < str.length()) {
                char cCharAt3 = str.charAt(i6);
                if (cCharAt3 < 'A' || cCharAt3 > 'Z') {
                    sb2.append(cCharAt3);
                } else {
                    char c6 = (char) (cCharAt3 + ' ');
                    if (i6 > 0) {
                        sb2.append('-');
                    }
                    sb2.append(c6);
                }
                i6++;
            }
            return sb2.toString();
        }
        if (i5 != 3) {
            if (i5 != 4 || (cCharAt = str.charAt(0)) < 'A' || cCharAt > 'Z') {
                return str;
            }
            char[] charArray = str.toCharArray();
            charArray[0] = (char) (charArray[0] + ' ');
            return new java.lang.String(charArray);
        }
        char cCharAt4 = str.charAt(0);
        if (cCharAt4 < 'a' || cCharAt4 > 'z') {
            return str;
        }
        char[] charArray2 = str.toCharArray();
        charArray2[0] = (char) (charArray2[0] - ' ');
        return new java.lang.String(charArray2);
    }
}
