package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JSONSerializableSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static com.alibaba.fastjson.serializer.JSONSerializableSerializer instance = new com.alibaba.fastjson.serializer.JSONSerializableSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.JSONSerializable jSONSerializable = (com.alibaba.fastjson.serializer.JSONSerializable) obj;
        if (jSONSerializable == null) {
            jSONSerializer.writeNull();
        } else {
            jSONSerializable.write(jSONSerializer, obj2, type, i5);
        }
    }
}
