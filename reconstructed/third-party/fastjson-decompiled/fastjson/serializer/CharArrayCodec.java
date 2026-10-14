package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CharArrayCodec implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        boolean z4;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 4) {
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            return (T) strStringVal.toCharArray();
        }
        if (jSONLexer.token() == 2) {
            java.lang.Number numberIntegerValue = jSONLexer.integerValue();
            jSONLexer.nextToken(16);
            return (T) numberIntegerValue.toString().toCharArray();
        }
        java.lang.Object obj = defaultJSONParser.parse();
        if (obj instanceof java.lang.String) {
            return (T) ((java.lang.String) obj).toCharArray();
        }
        if (!(obj instanceof java.util.Collection)) {
            if (obj == null) {
                return null;
            }
            return (T) com.alibaba.fastjson.JSON.toJSONString(obj).toCharArray();
        }
        java.util.Collection collection = (java.util.Collection) obj;
        java.util.Iterator it = collection.iterator();
        while (true) {
            z4 = true;
            if (!it.hasNext()) {
                break;
            }
            java.lang.Object next = it.next();
            if ((next instanceof java.lang.String) && ((java.lang.String) next).length() != 1) {
                z4 = false;
                break;
            }
        }
        if (!z4) {
            throw new com.alibaba.fastjson.JSONException("can not cast to char[]");
        }
        char[] cArr = new char[collection.size()];
        java.util.Iterator it2 = collection.iterator();
        int i5 = 0;
        while (it2.hasNext()) {
            cArr[i5] = ((java.lang.String) it2.next()).charAt(0);
            i5++;
        }
        return cArr;
    }
}
