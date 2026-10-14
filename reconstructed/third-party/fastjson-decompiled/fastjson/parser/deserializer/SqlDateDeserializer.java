package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SqlDateDeserializer extends com.alibaba.fastjson.parser.deserializer.AbstractDateDeserializer {
    public static final com.alibaba.fastjson.parser.deserializer.SqlDateDeserializer instance = new com.alibaba.fastjson.parser.deserializer.SqlDateDeserializer();
    public static final com.alibaba.fastjson.parser.deserializer.SqlDateDeserializer instance_timestamp = new com.alibaba.fastjson.parser.deserializer.SqlDateDeserializer(true);
    private boolean timestamp = false;

    public SqlDateDeserializer() {
    }

    @Override // com.alibaba.fastjson.parser.deserializer.AbstractDateDeserializer
    public <T> T cast(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.Object obj2) {
        long timeInMillis;
        if (this.timestamp) {
            return (T) castTimestamp(defaultJSONParser, type, obj, obj2);
        }
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof java.util.Date) {
            return (T) new java.sql.Date(((java.util.Date) obj2).getTime());
        }
        if (obj2 instanceof java.math.BigDecimal) {
            return (T) new java.sql.Date(com.alibaba.fastjson.util.TypeUtils.longValue((java.math.BigDecimal) obj2));
        }
        if (obj2 instanceof java.lang.Number) {
            return (T) new java.sql.Date(((java.lang.Number) obj2).longValue());
        }
        if (!(obj2 instanceof java.lang.String)) {
            throw new com.alibaba.fastjson.JSONException("parse error : " + obj2);
        }
        java.lang.String str = (java.lang.String) obj2;
        if (str.length() == 0) {
            return null;
        }
        com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
        try {
            if (jSONScanner.scanISO8601DateIfMatch()) {
                timeInMillis = jSONScanner.getCalendar().getTimeInMillis();
            } else {
                try {
                    T t5 = (T) new java.sql.Date(defaultJSONParser.getDateFormat().parse(str).getTime());
                    jSONScanner.close();
                    return t5;
                } catch (java.text.ParseException unused) {
                    timeInMillis = java.lang.Long.parseLong(str);
                }
            }
            jSONScanner.close();
            return (T) new java.sql.Date(timeInMillis);
        } catch (java.lang.Throwable th) {
            jSONScanner.close();
            throw th;
        }
    }

    public <T> T castTimestamp(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.Object obj2) {
        long timeInMillis;
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof java.util.Date) {
            return (T) new java.sql.Timestamp(((java.util.Date) obj2).getTime());
        }
        if (obj2 instanceof java.math.BigDecimal) {
            return (T) new java.sql.Timestamp(com.alibaba.fastjson.util.TypeUtils.longValue((java.math.BigDecimal) obj2));
        }
        if (obj2 instanceof java.lang.Number) {
            return (T) new java.sql.Timestamp(((java.lang.Number) obj2).longValue());
        }
        if (!(obj2 instanceof java.lang.String)) {
            throw new com.alibaba.fastjson.JSONException("parse error");
        }
        java.lang.String str = (java.lang.String) obj2;
        if (str.length() == 0) {
            return null;
        }
        com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
        try {
            if (str.length() > 19 && str.charAt(4) == '-' && str.charAt(7) == '-' && str.charAt(10) == ' ' && str.charAt(13) == ':' && str.charAt(16) == ':' && str.charAt(19) == '.') {
                java.lang.String dateFomartPattern = defaultJSONParser.getDateFomartPattern();
                if (dateFomartPattern.length() != str.length() && dateFomartPattern == com.alibaba.fastjson.JSON.DEFFAULT_DATE_FORMAT) {
                    T t5 = (T) java.sql.Timestamp.valueOf(str);
                    jSONScanner.close();
                    return t5;
                }
            }
            if (jSONScanner.scanISO8601DateIfMatch(false)) {
                timeInMillis = jSONScanner.getCalendar().getTimeInMillis();
            } else {
                try {
                    T t6 = (T) new java.sql.Timestamp(defaultJSONParser.getDateFormat().parse(str).getTime());
                    jSONScanner.close();
                    return t6;
                } catch (java.text.ParseException unused) {
                    timeInMillis = java.lang.Long.parseLong(str);
                }
            }
            jSONScanner.close();
            return (T) new java.sql.Timestamp(timeInMillis);
        } catch (java.lang.Throwable th) {
            jSONScanner.close();
            throw th;
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }

    public SqlDateDeserializer(boolean z4) {
    }
}
