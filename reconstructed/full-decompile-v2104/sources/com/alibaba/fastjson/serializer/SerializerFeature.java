package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum SerializerFeature {
    QuoteFieldNames,
    UseSingleQuotes,
    WriteMapNullValue,
    WriteEnumUsingToString,
    WriteEnumUsingName,
    UseISO8601DateFormat,
    WriteNullListAsEmpty,
    WriteNullStringAsEmpty,
    WriteNullNumberAsZero,
    WriteNullBooleanAsFalse,
    SkipTransientField,
    SortField,
    WriteTabAsSpecial,
    PrettyFormat,
    WriteClassName,
    DisableCircularReferenceDetect,
    WriteSlashAsSpecial,
    BrowserCompatible,
    WriteDateUseDateFormat,
    NotWriteRootClassName,
    DisableCheckSpecialChar,
    BeanToArray,
    WriteNonStringKeyAsString,
    NotWriteDefaultValue,
    BrowserSecure,
    IgnoreNonFieldGetter,
    WriteNonStringValueAsString,
    IgnoreErrorGetter,
    WriteBigDecimalAsPlain,
    MapSortField;

    public static final com.alibaba.fastjson.serializer.SerializerFeature[] EMPTY;
    public static final int WRITE_MAP_NULL_FEATURES;
    public final int mask = 1 << ordinal();

    static {
        com.alibaba.fastjson.serializer.SerializerFeature serializerFeature = WriteMapNullValue;
        com.alibaba.fastjson.serializer.SerializerFeature serializerFeature2 = WriteNullListAsEmpty;
        com.alibaba.fastjson.serializer.SerializerFeature serializerFeature3 = WriteNullStringAsEmpty;
        com.alibaba.fastjson.serializer.SerializerFeature serializerFeature4 = WriteNullNumberAsZero;
        com.alibaba.fastjson.serializer.SerializerFeature serializerFeature5 = WriteNullBooleanAsFalse;
        EMPTY = new com.alibaba.fastjson.serializer.SerializerFeature[0];
        WRITE_MAP_NULL_FEATURES = serializerFeature.getMask() | serializerFeature5.getMask() | serializerFeature2.getMask() | serializerFeature4.getMask() | serializerFeature3.getMask();
    }

    SerializerFeature() {
    }

    public static int config(int i5, com.alibaba.fastjson.serializer.SerializerFeature serializerFeature, boolean z4) {
        return z4 ? i5 | serializerFeature.mask : i5 & (~serializerFeature.mask);
    }

    public static boolean isEnabled(int i5, com.alibaba.fastjson.serializer.SerializerFeature serializerFeature) {
        return (i5 & serializerFeature.mask) != 0;
    }

    public static int of(com.alibaba.fastjson.serializer.SerializerFeature[] serializerFeatureArr) {
        if (serializerFeatureArr == null) {
            return 0;
        }
        int i5 = 0;
        for (com.alibaba.fastjson.serializer.SerializerFeature serializerFeature : serializerFeatureArr) {
            i5 |= serializerFeature.mask;
        }
        return i5;
    }

    public final int getMask() {
        return this.mask;
    }

    public static boolean isEnabled(int i5, int i6, com.alibaba.fastjson.serializer.SerializerFeature serializerFeature) {
        int i7 = serializerFeature.mask;
        return ((i5 & i7) == 0 && (i6 & i7) == 0) ? false : true;
    }
}
