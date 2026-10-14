package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SerializeBeanInfo {
    public final java.lang.Class<?> beanType;
    public int features;
    public final com.alibaba.fastjson.util.FieldInfo[] fields;
    public final com.alibaba.fastjson.annotation.JSONType jsonType;
    public final com.alibaba.fastjson.util.FieldInfo[] sortedFields;
    public final java.lang.String typeKey;
    public final java.lang.String typeName;

    public SerializeBeanInfo(java.lang.Class<?> cls, com.alibaba.fastjson.annotation.JSONType jSONType, java.lang.String str, java.lang.String str2, int i5, com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr, com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr2) {
        this.beanType = cls;
        this.jsonType = jSONType;
        this.typeName = str;
        this.typeKey = str2;
        this.features = i5;
        this.fields = fieldInfoArr;
        this.sortedFields = fieldInfoArr2;
    }
}
