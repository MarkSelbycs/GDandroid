package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppendableSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.serializer.AppendableSerializer instance = new com.alibaba.fastjson.serializer.AppendableSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        if (obj == null) {
            jSONSerializer.out.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty);
        } else {
            jSONSerializer.write(obj.toString());
        }
    }
}
