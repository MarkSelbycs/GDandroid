package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CharacterCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.serializer.CharacterCodec instance = new com.alibaba.fastjson.serializer.CharacterCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.lang.Object obj2 = defaultJSONParser.parse();
        if (obj2 == null) {
            return null;
        }
        return (T) com.alibaba.fastjson.util.TypeUtils.castToChar(obj2);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 4;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        java.lang.Character ch = (java.lang.Character) obj;
        if (ch == null) {
            serializeWriter.writeString("");
        } else if (ch.charValue() == 0) {
            serializeWriter.writeString("\u0000");
        } else {
            serializeWriter.writeString(ch.toString());
        }
    }
}
