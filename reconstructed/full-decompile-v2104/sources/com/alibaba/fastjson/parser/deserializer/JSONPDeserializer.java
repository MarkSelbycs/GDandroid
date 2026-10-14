package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JSONPDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.parser.deserializer.JSONPDeserializer instance = new com.alibaba.fastjson.parser.deserializer.JSONPDeserializer();

    /* JADX WARN: Type inference failed for: r1v1, types: [T, com.alibaba.fastjson.JSONPObject] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        int i5;
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase = (com.alibaba.fastjson.parser.JSONLexerBase) defaultJSONParser.getLexer();
        java.lang.String strScanSymbolUnQuoted = jSONLexerBase.scanSymbolUnQuoted(defaultJSONParser.getSymbolTable());
        jSONLexerBase.nextToken();
        int i6 = jSONLexerBase.token();
        if (i6 == 25) {
            java.lang.String str = strScanSymbolUnQuoted + ".";
            strScanSymbolUnQuoted = str + jSONLexerBase.scanSymbolUnQuoted(defaultJSONParser.getSymbolTable());
            jSONLexerBase.nextToken();
            i6 = jSONLexerBase.token();
        }
        ?? r5 = (T) new com.alibaba.fastjson.JSONPObject(strScanSymbolUnQuoted);
        if (i6 != 10) {
            throw new com.alibaba.fastjson.JSONException("illegal jsonp : " + jSONLexerBase.info());
        }
        jSONLexerBase.nextToken();
        while (true) {
            r5.addParameter(defaultJSONParser.parse());
            i5 = jSONLexerBase.token();
            if (i5 != 16) {
                break;
            }
            jSONLexerBase.nextToken();
        }
        if (i5 == 11) {
            jSONLexerBase.nextToken();
            if (jSONLexerBase.token() == 24) {
                jSONLexerBase.nextToken();
            }
            return r5;
        }
        throw new com.alibaba.fastjson.JSONException("illegal jsonp : " + jSONLexerBase.info());
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 0;
    }
}
