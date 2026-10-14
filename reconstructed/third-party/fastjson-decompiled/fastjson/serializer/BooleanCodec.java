package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class BooleanCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.serializer.BooleanCodec instance = new com.alibaba.fastjson.serializer.BooleanCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.lang.Object obj2;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        try {
            if (jSONLexer.token() == 6) {
                jSONLexer.nextToken(16);
                obj2 = (T) java.lang.Boolean.TRUE;
            } else if (jSONLexer.token() == 7) {
                jSONLexer.nextToken(16);
                obj2 = (T) java.lang.Boolean.FALSE;
            } else if (jSONLexer.token() == 2) {
                int iIntValue = jSONLexer.intValue();
                jSONLexer.nextToken(16);
                obj2 = iIntValue == 1 ? (T) java.lang.Boolean.TRUE : (T) java.lang.Boolean.FALSE;
            } else {
                java.lang.Object obj3 = defaultJSONParser.parse();
                if (obj3 == null) {
                    return null;
                }
                obj2 = (T) com.alibaba.fastjson.util.TypeUtils.castToBoolean(obj3);
            }
            return type == java.util.concurrent.atomic.AtomicBoolean.class ? (T) new java.util.concurrent.atomic.AtomicBoolean(((java.lang.Boolean) obj2).booleanValue()) : (T) obj2;
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONException("parseBoolean error, field : " + obj, e5);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 6;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        java.lang.Boolean bool = (java.lang.Boolean) obj;
        if (bool == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullBooleanAsFalse);
        } else if (bool.booleanValue()) {
            serializeWriter.write("true");
        } else {
            serializeWriter.write("false");
        }
    }
}
