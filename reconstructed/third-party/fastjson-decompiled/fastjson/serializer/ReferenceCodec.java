package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ReferenceCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.serializer.ReferenceCodec instance = new com.alibaba.fastjson.serializer.ReferenceCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type;
        java.lang.Object object = defaultJSONParser.parseObject(parameterizedType.getActualTypeArguments()[0]);
        java.lang.reflect.Type rawType = parameterizedType.getRawType();
        if (rawType == java.util.concurrent.atomic.AtomicReference.class) {
            return (T) new java.util.concurrent.atomic.AtomicReference(object);
        }
        if (rawType == java.lang.ref.WeakReference.class) {
            return (T) new java.lang.ref.WeakReference(object);
        }
        if (rawType == java.lang.ref.SoftReference.class) {
            return (T) new java.lang.ref.SoftReference(object);
        }
        throw new java.lang.UnsupportedOperationException(rawType.toString());
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        jSONSerializer.write(obj instanceof java.util.concurrent.atomic.AtomicReference ? ((java.util.concurrent.atomic.AtomicReference) obj).get() : ((java.lang.ref.Reference) obj).get());
    }
}
