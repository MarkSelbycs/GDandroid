package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class GuavaCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static com.alibaba.fastjson.serializer.GuavaCodec instance = new com.alibaba.fastjson.serializer.GuavaCodec();

    /* JADX WARN: Type inference failed for: r4v2, types: [T, com.google.common.collect.ArrayListMultimap] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        if (type instanceof java.lang.reflect.ParameterizedType) {
            type = ((java.lang.reflect.ParameterizedType) type).getRawType();
        }
        if (type != com.google.common.collect.ArrayListMultimap.class) {
            return null;
        }
        ?? r5 = (T) com.google.common.collect.ArrayListMultimap.create();
        for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : defaultJSONParser.parseObject().entrySet()) {
            java.lang.Object value = entry.getValue();
            if (value instanceof java.util.Collection) {
                r5.putAll(entry.getKey(), (java.util.List) value);
            } else {
                r5.put(entry.getKey(), value);
            }
        }
        return r5;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 0;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj instanceof com.google.common.collect.Multimap) {
            jSONSerializer.write(((com.google.common.collect.Multimap) obj).asMap());
        }
    }
}
