package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class IntegerCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static com.alibaba.fastjson.serializer.IntegerCodec instance = new com.alibaba.fastjson.serializer.IntegerCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.lang.Object obj2;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i5 = jSONLexer.token();
        if (i5 == 8) {
            jSONLexer.nextToken(16);
            return null;
        }
        try {
            if (i5 == 2) {
                int iIntValue = jSONLexer.intValue();
                jSONLexer.nextToken(16);
                obj2 = (T) java.lang.Integer.valueOf(iIntValue);
            } else if (i5 == 3) {
                obj2 = (T) java.lang.Integer.valueOf(com.alibaba.fastjson.util.TypeUtils.intValue(jSONLexer.decimalValue()));
                jSONLexer.nextToken(16);
            } else if (i5 == 12) {
                com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject(true);
                defaultJSONParser.parseObject((java.util.Map) jSONObject);
                obj2 = (T) com.alibaba.fastjson.util.TypeUtils.castToInt(jSONObject);
            } else {
                obj2 = (T) com.alibaba.fastjson.util.TypeUtils.castToInt(defaultJSONParser.parse());
            }
            obj = java.util.concurrent.atomic.AtomicInteger.class;
            return type == obj ? (T) new java.util.concurrent.atomic.AtomicInteger(((java.lang.Integer) obj2).intValue()) : (T) obj2;
        } catch (java.lang.Exception e5) {
            java.lang.String str = "parseInt error";
            if (obj != null) {
                str = "parseInt error, field : " + obj;
            }
            throw new com.alibaba.fastjson.JSONException(str, e5);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        java.lang.Number number = (java.lang.Number) obj;
        if (number == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        if (obj instanceof java.lang.Long) {
            serializeWriter.writeLong(number.longValue());
        } else {
            serializeWriter.writeInt(number.intValue());
        }
        if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
            java.lang.Class<?> cls = number.getClass();
            if (cls == java.lang.Byte.class) {
                serializeWriter.write(66);
            } else if (cls == java.lang.Short.class) {
                serializeWriter.write(83);
            }
        }
    }
}
