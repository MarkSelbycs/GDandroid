package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CollectionCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.serializer.CollectionCodec instance = new com.alibaba.fastjson.serializer.CollectionCodec();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [T, com.alibaba.fastjson.JSONArray, java.util.Collection] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.util.Collection collection;
        if (defaultJSONParser.lexer.token() == 8) {
            defaultJSONParser.lexer.nextToken(16);
            return null;
        }
        if (type == com.alibaba.fastjson.JSONArray.class) {
            ?? r5 = (T) new com.alibaba.fastjson.JSONArray();
            defaultJSONParser.parseArray((java.util.Collection) r5);
            return r5;
        }
        if (defaultJSONParser.lexer.token() == 21) {
            defaultJSONParser.lexer.nextToken();
            collection = (T) com.alibaba.fastjson.util.TypeUtils.createSet(type);
        } else {
            collection = (T) com.alibaba.fastjson.util.TypeUtils.createCollection(type);
        }
        defaultJSONParser.parseArray(com.alibaba.fastjson.util.TypeUtils.getCollectionItemType(type), collection, obj);
        return (T) collection;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 14;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        com.alibaba.fastjson.serializer.SerializerFeature serializerFeature = com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName;
        java.lang.reflect.Type collectionItemType = (serializeWriter.isEnabled(serializerFeature) || com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(i5, serializerFeature)) ? com.alibaba.fastjson.util.TypeUtils.getCollectionItemType(type) : null;
        java.util.Collection collection = (java.util.Collection) obj;
        com.alibaba.fastjson.serializer.SerialContext serialContext = jSONSerializer.context;
        int i6 = 0;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        if (serializeWriter.isEnabled(serializerFeature)) {
            if (java.util.HashSet.class.isAssignableFrom(collection.getClass())) {
                serializeWriter.append((java.lang.CharSequence) "Set");
            } else if (java.util.TreeSet.class == collection.getClass()) {
                serializeWriter.append((java.lang.CharSequence) "TreeSet");
            }
        }
        try {
            serializeWriter.append('[');
            for (java.lang.Object obj3 : collection) {
                int i7 = i6 + 1;
                if (i6 != 0) {
                    serializeWriter.append(',');
                }
                if (obj3 == null) {
                    serializeWriter.writeNull();
                } else {
                    java.lang.Class<?> cls = obj3.getClass();
                    if (cls == java.lang.Integer.class) {
                        serializeWriter.writeInt(((java.lang.Integer) obj3).intValue());
                    } else if (cls == java.lang.Long.class) {
                        serializeWriter.writeLong(((java.lang.Long) obj3).longValue());
                        if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
                            serializeWriter.write(76);
                        }
                    } else {
                        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = jSONSerializer.getObjectWriter(cls);
                        if (com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(i5, com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) && (objectWriter instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer)) {
                            ((com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter).writeNoneASM(jSONSerializer, obj3, java.lang.Integer.valueOf(i7 - 1), collectionItemType, i5);
                        } else {
                            objectWriter.write(jSONSerializer, obj3, java.lang.Integer.valueOf(i7 - 1), collectionItemType, i5);
                        }
                    }
                }
                i6 = i7;
            }
            serializeWriter.append(']');
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
