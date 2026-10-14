package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class StringCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static com.alibaba.fastjson.serializer.StringCodec instance = new com.alibaba.fastjson.serializer.StringCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        if (type == java.lang.StringBuffer.class) {
            com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
            if (jSONLexer.token() == 4) {
                java.lang.String strStringVal = jSONLexer.stringVal();
                jSONLexer.nextToken(16);
                return (T) new java.lang.StringBuffer(strStringVal);
            }
            java.lang.Object obj2 = defaultJSONParser.parse();
            if (obj2 == null) {
                return null;
            }
            return (T) new java.lang.StringBuffer(obj2.toString());
        }
        if (type != java.lang.StringBuilder.class) {
            return (T) deserialze(defaultJSONParser);
        }
        com.alibaba.fastjson.parser.JSONLexer jSONLexer2 = defaultJSONParser.lexer;
        if (jSONLexer2.token() == 4) {
            java.lang.String strStringVal2 = jSONLexer2.stringVal();
            jSONLexer2.nextToken(16);
            return (T) new java.lang.StringBuilder(strStringVal2);
        }
        java.lang.Object obj3 = defaultJSONParser.parse();
        if (obj3 == null) {
            return null;
        }
        return (T) new java.lang.StringBuilder(obj3.toString());
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 4;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        write(jSONSerializer, (java.lang.String) obj);
    }

    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.String str) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (str == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty);
        } else {
            serializeWriter.writeString(str);
        }
    }

    public static <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        com.alibaba.fastjson.parser.JSONLexer lexer = defaultJSONParser.getLexer();
        if (lexer.token() == 4) {
            T t5 = (T) lexer.stringVal();
            lexer.nextToken(16);
            return t5;
        }
        if (lexer.token() == 2) {
            T t6 = (T) lexer.numberString();
            lexer.nextToken(16);
            return t6;
        }
        java.lang.Object obj = defaultJSONParser.parse();
        if (obj == null) {
            return null;
        }
        return (T) obj.toString();
    }
}
