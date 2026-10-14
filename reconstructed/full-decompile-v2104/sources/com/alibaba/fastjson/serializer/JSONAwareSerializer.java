package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JSONAwareSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static com.alibaba.fastjson.serializer.JSONAwareSerializer instance = new com.alibaba.fastjson.serializer.JSONAwareSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
        } else {
            serializeWriter.write(((com.alibaba.fastjson.JSONAware) obj).toJSONString());
        }
    }
}
