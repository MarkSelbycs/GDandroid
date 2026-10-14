package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class AbstractDateDeserializer extends com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer {
    public abstract <T> T cast(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.Object obj2);

    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, null, 0);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.String str, int i5) {
        java.lang.Object obj2;
        java.lang.Object time;
        java.text.SimpleDateFormat simpleDateFormat;
        java.lang.Object obj3;
        java.text.SimpleDateFormat simpleDateFormat2;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        java.lang.Object objValueOf = null;
        objValueOf = null;
        objValueOf = null;
        objValueOf = null;
        objValueOf = null;
        if (jSONLexer.token() == 2) {
            long jLongValue = jSONLexer.longValue();
            jSONLexer.nextToken(16);
            if ("unixtime".equals(str)) {
                jLongValue *= 1000;
            }
            objValueOf = java.lang.Long.valueOf(jLongValue);
        } else if (jSONLexer.token() == 4) {
            java.lang.String strStringVal = jSONLexer.stringVal();
            if (str != null) {
                if ("yyyy-MM-dd HH:mm:ss.SSSSSSSSS".equals(str) && (type instanceof java.lang.Class) && ((java.lang.Class) type).getName().equals("java.sql.Timestamp")) {
                    return (T) com.alibaba.fastjson.util.TypeUtils.castToTimestamp(strStringVal);
                }
                try {
                    simpleDateFormat = new java.text.SimpleDateFormat(str, defaultJSONParser.lexer.getLocale());
                } catch (java.lang.IllegalArgumentException e5) {
                    if (str.contains("T")) {
                        try {
                            simpleDateFormat = new java.text.SimpleDateFormat(str.replaceAll("T", "'T'"), defaultJSONParser.lexer.getLocale());
                        } catch (java.lang.IllegalArgumentException unused) {
                            throw e5;
                        }
                    } else {
                        simpleDateFormat = null;
                    }
                }
                if (com.alibaba.fastjson.JSON.defaultTimeZone != null) {
                    simpleDateFormat.setTimeZone(defaultJSONParser.lexer.getTimeZone());
                }
                try {
                    obj3 = simpleDateFormat.parse(strStringVal);
                } catch (java.text.ParseException unused2) {
                    obj3 = null;
                }
                if (obj3 == null && com.alibaba.fastjson.JSON.defaultLocale == java.util.Locale.CHINA) {
                    try {
                        simpleDateFormat2 = new java.text.SimpleDateFormat(str, java.util.Locale.US);
                    } catch (java.lang.IllegalArgumentException e6) {
                        simpleDateFormat2 = simpleDateFormat;
                        if (str.contains("T")) {
                            try {
                                simpleDateFormat2 = new java.text.SimpleDateFormat(str.replaceAll("T", "'T'"), defaultJSONParser.lexer.getLocale());
                            } catch (java.lang.IllegalArgumentException unused3) {
                                throw e6;
                            }
                        }
                    }
                    simpleDateFormat2.setTimeZone(defaultJSONParser.lexer.getTimeZone());
                    try {
                        obj3 = simpleDateFormat2.parse(strStringVal);
                    } catch (java.text.ParseException unused4) {
                        obj3 = null;
                    }
                }
                if (obj3 != null) {
                    objValueOf = obj3;
                } else if (str.equals("yyyy-MM-dd'T'HH:mm:ss.SSS") && strStringVal.length() == 19) {
                    try {
                        java.text.SimpleDateFormat simpleDateFormat3 = new java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", com.alibaba.fastjson.JSON.defaultLocale);
                        simpleDateFormat3.setTimeZone(com.alibaba.fastjson.JSON.defaultTimeZone);
                        objValueOf = simpleDateFormat3.parse(strStringVal);
                    } catch (java.text.ParseException unused5) {
                    }
                }
            }
            if (objValueOf == null) {
                jSONLexer.nextToken(16);
                if (jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.AllowISO8601DateFormat)) {
                    com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strStringVal);
                    if (jSONScanner.scanISO8601DateIfMatch()) {
                        obj2 = strStringVal;
                        time = strStringVal;
                        time = jSONScanner.getCalendar().getTime();
                    }
                    obj2 = strStringVal;
                    time = strStringVal;
                    jSONScanner.close();
                    obj2 = time;
                }
                obj2 = strStringVal;
                objValueOf = obj2;
            }
        } else if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
        } else if (jSONLexer.token() == 12) {
            jSONLexer.nextToken();
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            if (com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY.equals(jSONLexer.stringVal())) {
                jSONLexer.nextToken();
                defaultJSONParser.accept(17);
                java.lang.reflect.Type typeCheckAutoType = defaultJSONParser.getConfig().checkAutoType(jSONLexer.stringVal(), null, jSONLexer.getFeatures());
                if (typeCheckAutoType != null) {
                    type = typeCheckAutoType;
                }
                defaultJSONParser.accept(4);
                defaultJSONParser.accept(16);
            }
            jSONLexer.nextTokenWithColon(2);
            if (jSONLexer.token() != 2) {
                throw new com.alibaba.fastjson.JSONException("syntax error : " + jSONLexer.tokenName());
            }
            long jLongValue2 = jSONLexer.longValue();
            jSONLexer.nextToken();
            objValueOf = java.lang.Long.valueOf(jLongValue2);
            defaultJSONParser.accept(13);
        } else if (defaultJSONParser.getResolveStatus() == 2) {
            defaultJSONParser.setResolveStatus(0);
            defaultJSONParser.accept(16);
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            if (!"val".equals(jSONLexer.stringVal())) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            jSONLexer.nextToken();
            defaultJSONParser.accept(17);
            objValueOf = defaultJSONParser.parse();
            defaultJSONParser.accept(13);
        } else {
            objValueOf = defaultJSONParser.parse();
        }
        return (T) cast(defaultJSONParser, type, obj, objValueOf);
    }
}
