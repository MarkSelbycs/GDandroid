package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class StackTraceElementDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.parser.deserializer.StackTraceElementDeserializer instance = new com.alibaba.fastjson.parser.deserializer.StackTraceElementDeserializer();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        }
        if (jSONLexer.token() != 12 && jSONLexer.token() != 16) {
            throw new com.alibaba.fastjson.JSONException("syntax error: " + com.alibaba.fastjson.parser.JSONToken.name(jSONLexer.token()));
        }
        int iIntValue = 0;
        java.lang.String strStringVal = null;
        java.lang.String strStringVal2 = null;
        java.lang.String strStringVal3 = null;
        while (true) {
            java.lang.String strScanSymbol = jSONLexer.scanSymbol(defaultJSONParser.getSymbolTable());
            if (strScanSymbol == null) {
                if (jSONLexer.token() == 13) {
                    jSONLexer.nextToken(16);
                    break;
                }
                if (jSONLexer.token() != 16 || !jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas)) {
                }
            }
            jSONLexer.nextTokenWithColon(4);
            if ("className".equals(strScanSymbol)) {
                if (jSONLexer.token() == 8) {
                    strStringVal = null;
                } else {
                    if (jSONLexer.token() != 4) {
                        throw new com.alibaba.fastjson.JSONException("syntax error");
                    }
                    strStringVal = jSONLexer.stringVal();
                }
            } else if ("methodName".equals(strScanSymbol)) {
                if (jSONLexer.token() == 8) {
                    strStringVal2 = null;
                } else {
                    if (jSONLexer.token() != 4) {
                        throw new com.alibaba.fastjson.JSONException("syntax error");
                    }
                    strStringVal2 = jSONLexer.stringVal();
                }
            } else if ("fileName".equals(strScanSymbol)) {
                if (jSONLexer.token() == 8) {
                    strStringVal3 = null;
                } else {
                    if (jSONLexer.token() != 4) {
                        throw new com.alibaba.fastjson.JSONException("syntax error");
                    }
                    strStringVal3 = jSONLexer.stringVal();
                }
            } else if ("lineNumber".equals(strScanSymbol)) {
                if (jSONLexer.token() == 8) {
                    iIntValue = 0;
                } else {
                    if (jSONLexer.token() != 2) {
                        throw new com.alibaba.fastjson.JSONException("syntax error");
                    }
                    iIntValue = jSONLexer.intValue();
                }
            } else if ("nativeMethod".equals(strScanSymbol)) {
                if (jSONLexer.token() != 8 && jSONLexer.token() != 6 && jSONLexer.token() != 7) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                jSONLexer.nextToken(16);
            } else if (strScanSymbol == com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY) {
                if (jSONLexer.token() == 4) {
                    java.lang.String strStringVal4 = jSONLexer.stringVal();
                    if (!strStringVal4.equals("java.lang.StackTraceElement")) {
                        throw new com.alibaba.fastjson.JSONException("syntax error : " + strStringVal4);
                    }
                } else if (jSONLexer.token() != 8) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
            } else if ("moduleName".equals(strScanSymbol)) {
                if (jSONLexer.token() != 8) {
                    if (jSONLexer.token() != 4) {
                        throw new com.alibaba.fastjson.JSONException("syntax error");
                    }
                    jSONLexer.stringVal();
                }
            } else if ("moduleVersion".equals(strScanSymbol)) {
                if (jSONLexer.token() != 8) {
                    if (jSONLexer.token() != 4) {
                        throw new com.alibaba.fastjson.JSONException("syntax error");
                    }
                    jSONLexer.stringVal();
                }
            } else {
                if (!"classLoaderName".equals(strScanSymbol)) {
                    throw new com.alibaba.fastjson.JSONException("syntax error : " + strScanSymbol);
                }
                if (jSONLexer.token() != 8) {
                    if (jSONLexer.token() != 4) {
                        throw new com.alibaba.fastjson.JSONException("syntax error");
                    }
                    jSONLexer.stringVal();
                }
            }
            if (jSONLexer.token() == 13) {
                jSONLexer.nextToken(16);
                break;
            }
        }
        return (T) new java.lang.StackTraceElement(strStringVal, strStringVal2, strStringVal3, iIntValue);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }
}
