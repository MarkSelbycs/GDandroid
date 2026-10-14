package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class EnumSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.serializer.EnumSerializer instance = new com.alibaba.fastjson.serializer.EnumSerializer();
    private final java.lang.reflect.Member member;

    public EnumSerializer() {
        this.member = null;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        java.lang.reflect.Member member = this.member;
        if (member == null) {
            jSONSerializer.out.writeEnum((java.lang.Enum) obj);
            return;
        }
        try {
            jSONSerializer.write(member instanceof java.lang.reflect.Field ? ((java.lang.reflect.Field) member).get(obj) : ((java.lang.reflect.Method) member).invoke(obj, new java.lang.Object[0]));
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONException("getEnumValue error", e5);
        }
    }

    public EnumSerializer(java.lang.reflect.Member member) {
        this.member = member;
    }
}
