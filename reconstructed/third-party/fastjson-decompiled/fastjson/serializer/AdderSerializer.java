package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AdderSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.serializer.AdderSerializer instance = new com.alibaba.fastjson.serializer.AdderSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj instanceof java.util.concurrent.atomic.LongAdder) {
            serializeWriter.writeFieldValue('{', "value", ((java.util.concurrent.atomic.LongAdder) obj).longValue());
            serializeWriter.write(125);
        } else if (obj instanceof java.util.concurrent.atomic.DoubleAdder) {
            serializeWriter.writeFieldValue('{', "value", ((java.util.concurrent.atomic.DoubleAdder) obj).doubleValue());
            serializeWriter.write(125);
        }
    }
}
