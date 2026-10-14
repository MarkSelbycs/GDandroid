package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class TimeDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.parser.deserializer.TimeDeserializer instance = new com.alibaba.fastjson.parser.deserializer.TimeDeserializer();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        long timeInMillis;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 16) {
            jSONLexer.nextToken(4);
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            jSONLexer.nextTokenWithColon(2);
            if (jSONLexer.token() != 2) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            long jLongValue = jSONLexer.longValue();
            jSONLexer.nextToken(13);
            if (jSONLexer.token() != 13) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            jSONLexer.nextToken(16);
            return (T) new java.sql.Time(jLongValue);
        }
        T t5 = (T) defaultJSONParser.parse();
        if (t5 == 0) {
            return null;
        }
        if (t5 instanceof java.sql.Time) {
            return t5;
        }
        if (t5 instanceof java.math.BigDecimal) {
            return (T) new java.sql.Time(com.alibaba.fastjson.util.TypeUtils.longValue((java.math.BigDecimal) t5));
        }
        if (t5 instanceof java.lang.Number) {
            return (T) new java.sql.Time(((java.lang.Number) t5).longValue());
        }
        if (!(t5 instanceof java.lang.String)) {
            throw new com.alibaba.fastjson.JSONException("parse error");
        }
        java.lang.String str = (java.lang.String) t5;
        if (str.length() == 0) {
            return null;
        }
        com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
        if (jSONScanner.scanISO8601DateIfMatch()) {
            timeInMillis = jSONScanner.getCalendar().getTimeInMillis();
        } else {
            boolean z4 = false;
            int i5 = 0;
            while (true) {
                if (i5 >= str.length()) {
                    z4 = true;
                    break;
                }
                char cCharAt = str.charAt(i5);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                i5++;
            }
            if (!z4) {
                jSONScanner.close();
                return (T) java.sql.Time.valueOf(str);
            }
            timeInMillis = java.lang.Long.parseLong(str);
        }
        jSONScanner.close();
        return (T) new java.sql.Time(timeInMillis);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }
}
