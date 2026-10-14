package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum Feature {
    AutoCloseSource,
    AllowComment,
    AllowUnQuotedFieldNames,
    AllowSingleQuotes,
    InternFieldNames,
    AllowISO8601DateFormat,
    AllowArbitraryCommas,
    UseBigDecimal,
    IgnoreNotMatch,
    SortFeidFastMatch,
    DisableASM,
    DisableCircularReferenceDetect,
    InitStringFieldAsEmpty,
    SupportArrayToBean,
    OrderedField,
    DisableSpecialKeyDetect,
    UseObjectArray,
    SupportNonPublicField,
    IgnoreAutoType,
    DisableFieldSmartMatch,
    SupportAutoType,
    NonStringKeyAsString,
    CustomMapDeserializer,
    ErrorOnEnumNotMatch,
    SafeMode,
    TrimStringFieldValue,
    UseNativeJavaObject;

    public final int mask = 1 << ordinal();

    Feature() {
    }

    public static int config(int i5, com.alibaba.fastjson.parser.Feature feature, boolean z4) {
        return z4 ? i5 | feature.mask : i5 & (~feature.mask);
    }

    public static boolean isEnabled(int i5, com.alibaba.fastjson.parser.Feature feature) {
        return (i5 & feature.mask) != 0;
    }

    public static int of(com.alibaba.fastjson.parser.Feature[] featureArr) {
        if (featureArr == null) {
            return 0;
        }
        int i5 = 0;
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            i5 |= feature.mask;
        }
        return i5;
    }

    public final int getMask() {
        return this.mask;
    }
}
