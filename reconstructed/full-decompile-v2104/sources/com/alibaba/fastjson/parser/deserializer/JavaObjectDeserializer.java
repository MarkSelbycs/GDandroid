package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JavaObjectDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer instance = new com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        if (!(type instanceof java.lang.reflect.GenericArrayType)) {
            return (!(type instanceof java.lang.Class) || type == java.lang.Object.class || type == java.io.Serializable.class || type == java.lang.Cloneable.class || type == java.io.Closeable.class || type == java.lang.Comparable.class) ? (T) defaultJSONParser.parse(obj) : (T) defaultJSONParser.parseObject(type);
        }
        java.lang.reflect.Type genericComponentType = ((java.lang.reflect.GenericArrayType) type).getGenericComponentType();
        if (genericComponentType instanceof java.lang.reflect.TypeVariable) {
            genericComponentType = ((java.lang.reflect.TypeVariable) genericComponentType).getBounds()[0];
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        defaultJSONParser.parseArray(genericComponentType, arrayList);
        T t5 = (T) ((java.lang.Object[]) java.lang.reflect.Array.newInstance(com.alibaba.fastjson.util.TypeUtils.getRawClass(genericComponentType), arrayList.size()));
        arrayList.toArray((java.lang.Object[]) t5);
        return t5;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }
}
