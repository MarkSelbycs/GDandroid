package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class BeforeFilter implements com.alibaba.fastjson.serializer.SerializeFilter {
    private static final java.lang.ThreadLocal<com.alibaba.fastjson.serializer.JSONSerializer> serializerLocal = new java.lang.ThreadLocal<>();
    private static final java.lang.ThreadLocal<java.lang.Character> seperatorLocal = new java.lang.ThreadLocal<>();
    private static final java.lang.Character COMMA = ',';

    public final char writeBefore(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, char c5) {
        java.lang.ThreadLocal<com.alibaba.fastjson.serializer.JSONSerializer> threadLocal = serializerLocal;
        com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer2 = threadLocal.get();
        threadLocal.set(jSONSerializer);
        java.lang.ThreadLocal<java.lang.Character> threadLocal2 = seperatorLocal;
        threadLocal2.set(java.lang.Character.valueOf(c5));
        writeBefore(obj);
        threadLocal.set(jSONSerializer2);
        return threadLocal2.get().charValue();
    }

    public abstract void writeBefore(java.lang.Object obj);

    public final void writeKeyValue(java.lang.String str, java.lang.Object obj) {
        com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = serializerLocal.get();
        java.lang.ThreadLocal<java.lang.Character> threadLocal = seperatorLocal;
        char cCharValue = threadLocal.get().charValue();
        boolean zContainsKey = jSONSerializer.references.containsKey(obj);
        jSONSerializer.writeKeyValue(cCharValue, str, obj);
        if (!zContainsKey) {
            jSONSerializer.references.remove(obj);
        }
        if (cCharValue != ',') {
            threadLocal.set(COMMA);
        }
    }
}
