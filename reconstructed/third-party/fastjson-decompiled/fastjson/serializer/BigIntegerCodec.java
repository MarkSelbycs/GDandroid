package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class BigIntegerCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    private static final java.math.BigInteger LOW = java.math.BigInteger.valueOf(-9007199254740991L);
    private static final java.math.BigInteger HIGH = java.math.BigInteger.valueOf(9007199254740991L);
    public static final com.alibaba.fastjson.serializer.BigIntegerCodec instance = new com.alibaba.fastjson.serializer.BigIntegerCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser);
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
        java.math.BigInteger bigInteger = (java.math.BigInteger) obj;
        java.lang.String string = bigInteger.toString();
        if (string.length() < 16 || !com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(i5, serializeWriter.features, com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible) || (bigInteger.compareTo(LOW) >= 0 && bigInteger.compareTo(HIGH) <= 0)) {
            serializeWriter.write(string);
        } else {
            serializeWriter.writeString(string);
        }
    }

    public static <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() != 2) {
            java.lang.Object obj = defaultJSONParser.parse();
            if (obj == null) {
                return null;
            }
            return (T) com.alibaba.fastjson.util.TypeUtils.castToBigInteger(obj);
        }
        java.lang.String strNumberString = jSONLexer.numberString();
        jSONLexer.nextToken(16);
        if (strNumberString.length() <= 65535) {
            return (T) new java.math.BigInteger(strNumberString);
        }
        throw new com.alibaba.fastjson.JSONException("decimal overflow");
    }
}
