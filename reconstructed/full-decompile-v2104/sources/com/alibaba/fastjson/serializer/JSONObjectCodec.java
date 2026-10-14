package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JSONObjectCodec implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.serializer.JSONObjectCodec instance = new com.alibaba.fastjson.serializer.JSONObjectCodec();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        com.alibaba.fastjson.serializer.MapSerializer mapSerializer = com.alibaba.fastjson.serializer.MapSerializer.instance;
        try {
            java.lang.reflect.Field declaredField = obj.getClass().getDeclaredField("map");
            if (java.lang.reflect.Modifier.isPrivate(declaredField.getModifiers())) {
                declaredField.setAccessible(true);
            }
            mapSerializer.write(jSONSerializer, declaredField.get(obj), obj2, type, i5);
        } catch (java.lang.Exception unused) {
            serializeWriter.writeNull();
        }
    }
}
