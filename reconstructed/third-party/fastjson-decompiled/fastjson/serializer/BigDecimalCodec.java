package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class BigDecimalCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final java.math.BigDecimal LOW = java.math.BigDecimal.valueOf(-9007199254740991L);
    public static final java.math.BigDecimal HIGH = java.math.BigDecimal.valueOf(9007199254740991L);
    public static final com.alibaba.fastjson.serializer.BigDecimalCodec instance = new com.alibaba.fastjson.serializer.BigDecimalCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        try {
            return (T) deserialze(defaultJSONParser);
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONException("parseDecimal error, field : " + obj, e5);
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
        java.math.BigDecimal bigDecimal = (java.math.BigDecimal) obj;
        int iScale = bigDecimal.scale();
        java.lang.String string = (!com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(i5, serializeWriter.features, com.alibaba.fastjson.serializer.SerializerFeature.WriteBigDecimalAsPlain) || iScale < -100 || iScale >= 100) ? bigDecimal.toString() : bigDecimal.toPlainString();
        if (iScale == 0 && string.length() >= 16 && com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(i5, serializeWriter.features, com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible) && (bigDecimal.compareTo(LOW) < 0 || bigDecimal.compareTo(HIGH) > 0)) {
            serializeWriter.writeString(string);
            return;
        }
        serializeWriter.write(string);
        if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) && type != java.math.BigDecimal.class && bigDecimal.scale() == 0) {
            serializeWriter.write(46);
        }
    }

    public static <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 2) {
            T t5 = (T) jSONLexer.decimalValue();
            jSONLexer.nextToken(16);
            return t5;
        }
        if (jSONLexer.token() == 3) {
            T t6 = (T) jSONLexer.decimalValue();
            jSONLexer.nextToken(16);
            return t6;
        }
        java.lang.Object obj = defaultJSONParser.parse();
        if (obj == null) {
            return null;
        }
        return (T) com.alibaba.fastjson.util.TypeUtils.castToBigDecimal(obj);
    }
}
