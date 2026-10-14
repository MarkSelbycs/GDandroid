package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class EnumDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public final java.lang.Class<?> enumClass;
    public long[] enumNameHashCodes;
    public final java.lang.Enum[] enums;
    public final java.lang.Enum[] ordinalEnums;

    public EnumDeserializer(java.lang.Class<?> cls) {
        com.alibaba.fastjson.annotation.JSONField jSONField;
        this.enumClass = cls;
        this.ordinalEnums = (java.lang.Enum[]) cls.getEnumConstants();
        java.util.HashMap map = new java.util.HashMap();
        int i5 = 0;
        while (true) {
            java.lang.Enum[] enumArr = this.ordinalEnums;
            if (i5 >= enumArr.length) {
                break;
            }
            java.lang.Enum r5 = enumArr[i5];
            java.lang.String strName = r5.name();
            com.alibaba.fastjson.annotation.JSONField jSONField2 = null;
            try {
                jSONField = (com.alibaba.fastjson.annotation.JSONField) com.alibaba.fastjson.util.TypeUtils.getAnnotation(cls.getField(strName), com.alibaba.fastjson.annotation.JSONField.class);
                if (jSONField != null) {
                    try {
                        java.lang.String strName2 = jSONField.name();
                        if (strName2 != null && strName2.length() > 0) {
                            strName = strName2;
                        }
                    } catch (java.lang.Exception unused) {
                        jSONField2 = jSONField;
                        jSONField = jSONField2;
                    }
                }
            } catch (java.lang.Exception unused2) {
            }
            int i6 = 0;
            long j5 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
            long j6 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
            while (i6 < strName.length()) {
                int iCharAt = strName.charAt(i6);
                long j7 = ((long) iCharAt) ^ j5;
                if (iCharAt >= 65 && iCharAt <= 90) {
                    iCharAt += 32;
                }
                long j8 = j7 * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                j6 = (((long) iCharAt) ^ j6) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                i6++;
                j5 = j8;
            }
            map.put(java.lang.Long.valueOf(j5), r5);
            if (j5 != j6) {
                map.put(java.lang.Long.valueOf(j6), r5);
            }
            if (jSONField != null) {
                java.lang.String[] strArrAlternateNames = jSONField.alternateNames();
                int length = strArrAlternateNames.length;
                int i7 = 0;
                while (i7 < length) {
                    java.lang.String str = strArrAlternateNames[i7];
                    int i8 = 0;
                    long jCharAt = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
                    while (i8 < str.length()) {
                        jCharAt = (jCharAt ^ ((long) str.charAt(i8))) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                        i8++;
                        i5 = i5;
                    }
                    int i9 = i5;
                    if (jCharAt != j5 && jCharAt != j6) {
                        map.put(java.lang.Long.valueOf(jCharAt), r5);
                    }
                    i7++;
                    i5 = i9;
                }
            }
            i5++;
        }
        this.enumNameHashCodes = new long[map.size()];
        java.util.Iterator it = map.keySet().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            this.enumNameHashCodes[i10] = ((java.lang.Long) it.next()).longValue();
            i10++;
        }
        java.util.Arrays.sort(this.enumNameHashCodes);
        this.enums = new java.lang.Enum[this.enumNameHashCodes.length];
        int i11 = 0;
        while (true) {
            long[] jArr = this.enumNameHashCodes;
            if (i11 >= jArr.length) {
                return;
            }
            this.enums[i11] = (java.lang.Enum) map.get(java.lang.Long.valueOf(jArr[i11]));
            i11++;
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        try {
            com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
            int i5 = jSONLexer.token();
            if (i5 == 2) {
                int iIntValue = jSONLexer.intValue();
                jSONLexer.nextToken(16);
                if (iIntValue >= 0) {
                    java.lang.Object[] objArr = this.ordinalEnums;
                    if (iIntValue < objArr.length) {
                        return (T) objArr[iIntValue];
                    }
                }
                throw new com.alibaba.fastjson.JSONException("parse enum " + this.enumClass.getName() + " error, value : " + iIntValue);
            }
            if (i5 != 4) {
                if (i5 == 8) {
                    jSONLexer.nextToken(16);
                    return null;
                }
                throw new com.alibaba.fastjson.JSONException("parse enum " + this.enumClass.getName() + " error, value : " + defaultJSONParser.parse());
            }
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            if (strStringVal.length() == 0) {
                return null;
            }
            long j5 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
            long j6 = -3750763034362895579L;
            for (int i6 = 0; i6 < strStringVal.length(); i6++) {
                int iCharAt = strStringVal.charAt(i6);
                long j7 = j5 ^ ((long) iCharAt);
                if (iCharAt >= 65 && iCharAt <= 90) {
                    iCharAt += 32;
                }
                j5 = j7 * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                j6 = (j6 ^ ((long) iCharAt)) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
            }
            T t5 = (T) getEnumByHashCode(j5);
            if (t5 == null && j6 != j5) {
                t5 = (T) getEnumByHashCode(j6);
            }
            if (t5 == null && jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.ErrorOnEnumNotMatch)) {
                throw new com.alibaba.fastjson.JSONException("not match enum value, " + this.enumClass.getName() + " : " + strStringVal);
            }
            return t5;
        } catch (com.alibaba.fastjson.JSONException e5) {
            throw e5;
        } catch (java.lang.Exception e6) {
            throw new com.alibaba.fastjson.JSONException(e6.getMessage(), e6);
        }
    }

    public java.lang.Enum getEnumByHashCode(long j5) {
        int iBinarySearch;
        if (this.enums != null && (iBinarySearch = java.util.Arrays.binarySearch(this.enumNameHashCodes, j5)) >= 0) {
            return this.enums[iBinarySearch];
        }
        return null;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }

    public java.lang.Enum<?> valueOf(int i5) {
        return this.ordinalEnums[i5];
    }
}
