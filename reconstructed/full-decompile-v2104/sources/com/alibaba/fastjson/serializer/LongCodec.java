package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class LongCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static com.alibaba.fastjson.serializer.LongCodec instance = new com.alibaba.fastjson.serializer.LongCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.lang.Object objCastToLong;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        try {
            int i5 = jSONLexer.token();
            if (i5 == 2) {
                long jLongValue = jSONLexer.longValue();
                jSONLexer.nextToken(16);
                objCastToLong = (T) java.lang.Long.valueOf(jLongValue);
            } else if (i5 == 3) {
                objCastToLong = (T) java.lang.Long.valueOf(com.alibaba.fastjson.util.TypeUtils.longValue(jSONLexer.decimalValue()));
                jSONLexer.nextToken(16);
            } else {
                if (i5 == 12) {
                    com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject(true);
                    defaultJSONParser.parseObject((java.util.Map) jSONObject);
                    objCastToLong = (T) com.alibaba.fastjson.util.TypeUtils.castToLong(jSONObject);
                } else {
                    objCastToLong = com.alibaba.fastjson.util.TypeUtils.castToLong(defaultJSONParser.parse());
                }
                if (objCastToLong == null) {
                    return null;
                }
            }
            return type == java.util.concurrent.atomic.AtomicLong.class ? (T) new java.util.concurrent.atomic.AtomicLong(((java.lang.Long) objCastToLong).longValue()) : (T) objCastToLong;
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONException("parseLong error, field : " + obj, e5);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        long jLongValue = ((java.lang.Long) obj).longValue();
        serializeWriter.writeLong(jLongValue);
        if (!serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) || jLongValue > 2147483647L || jLongValue < -2147483648L || type == java.lang.Long.class || type == java.lang.Long.TYPE) {
            return;
        }
        serializeWriter.write(76);
    }
}
