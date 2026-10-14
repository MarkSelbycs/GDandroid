package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JodaCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.serializer.ContextObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    private static final java.lang.String formatter_iso8601_pattern_23 = "yyyy-MM-dd'T'HH:mm:ss.SSS";
    private static final java.lang.String formatter_iso8601_pattern_29 = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS";
    public static final com.alibaba.fastjson.serializer.JodaCodec instance = new com.alibaba.fastjson.serializer.JodaCodec();
    private static final java.lang.String defaultPatttern = "yyyy-MM-dd HH:mm:ss";
    private static final org.joda.time.format.DateTimeFormatter defaultFormatter = org.joda.time.format.DateTimeFormat.forPattern(defaultPatttern);
    private static final org.joda.time.format.DateTimeFormatter defaultFormatter_23 = org.joda.time.format.DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss.SSS");
    private static final org.joda.time.format.DateTimeFormatter formatter_dt19_tw = org.joda.time.format.DateTimeFormat.forPattern("yyyy/MM/dd HH:mm:ss");
    private static final org.joda.time.format.DateTimeFormatter formatter_dt19_cn = org.joda.time.format.DateTimeFormat.forPattern("yyyy年M月d日 HH:mm:ss");
    private static final org.joda.time.format.DateTimeFormatter formatter_dt19_cn_1 = org.joda.time.format.DateTimeFormat.forPattern("yyyy年M月d日 H时m分s秒");
    private static final org.joda.time.format.DateTimeFormatter formatter_dt19_kr = org.joda.time.format.DateTimeFormat.forPattern("yyyy년M월d일 HH:mm:ss");
    private static final org.joda.time.format.DateTimeFormatter formatter_dt19_us = org.joda.time.format.DateTimeFormat.forPattern("MM/dd/yyyy HH:mm:ss");
    private static final org.joda.time.format.DateTimeFormatter formatter_dt19_eur = org.joda.time.format.DateTimeFormat.forPattern("dd/MM/yyyy HH:mm:ss");
    private static final org.joda.time.format.DateTimeFormatter formatter_dt19_de = org.joda.time.format.DateTimeFormat.forPattern("dd.MM.yyyy HH:mm:ss");
    private static final org.joda.time.format.DateTimeFormatter formatter_dt19_in = org.joda.time.format.DateTimeFormat.forPattern("dd-MM-yyyy HH:mm:ss");
    private static final org.joda.time.format.DateTimeFormatter formatter_d8 = org.joda.time.format.DateTimeFormat.forPattern("yyyyMMdd");
    private static final org.joda.time.format.DateTimeFormatter formatter_d10_tw = org.joda.time.format.DateTimeFormat.forPattern("yyyy/MM/dd");
    private static final org.joda.time.format.DateTimeFormatter formatter_d10_cn = org.joda.time.format.DateTimeFormat.forPattern("yyyy年M月d日");
    private static final org.joda.time.format.DateTimeFormatter formatter_d10_kr = org.joda.time.format.DateTimeFormat.forPattern("yyyy년M월d일");
    private static final org.joda.time.format.DateTimeFormatter formatter_d10_us = org.joda.time.format.DateTimeFormat.forPattern("MM/dd/yyyy");
    private static final org.joda.time.format.DateTimeFormatter formatter_d10_eur = org.joda.time.format.DateTimeFormat.forPattern("dd/MM/yyyy");
    private static final org.joda.time.format.DateTimeFormatter formatter_d10_de = org.joda.time.format.DateTimeFormat.forPattern("dd.MM.yyyy");
    private static final org.joda.time.format.DateTimeFormatter formatter_d10_in = org.joda.time.format.DateTimeFormat.forPattern("dd-MM-yyyy");
    private static final org.joda.time.format.DateTimeFormatter ISO_FIXED_FORMAT = org.joda.time.format.DateTimeFormat.forPattern(defaultPatttern).withZone(org.joda.time.DateTimeZone.getDefault());
    private static final java.lang.String formatter_iso8601_pattern = "yyyy-MM-dd'T'HH:mm:ss";
    private static final org.joda.time.format.DateTimeFormatter formatter_iso8601 = org.joda.time.format.DateTimeFormat.forPattern(formatter_iso8601_pattern);

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, null, 0);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 4;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00e8  */
    public org.joda.time.LocalDateTime parseDateTime(java.lang.String str, org.joda.time.format.DateTimeFormatter dateTimeFormatter) {
        org.joda.time.format.DateTimeFormatter dateTimeFormatter2;
        if (dateTimeFormatter == null) {
            boolean z4 = false;
            if (str.length() == 19) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                char cCharAt3 = str.charAt(10);
                char cCharAt4 = str.charAt(13);
                char cCharAt5 = str.charAt(16);
                if (cCharAt4 != ':' || cCharAt5 != ':') {
                    dateTimeFormatter2 = dateTimeFormatter;
                } else if (cCharAt == '-' && cCharAt2 == '-') {
                    if (cCharAt3 == 'T') {
                        dateTimeFormatter2 = formatter_iso8601;
                    } else if (cCharAt3 == ' ') {
                        dateTimeFormatter2 = defaultFormatter;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                } else if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter2 = formatter_dt19_tw;
                } else {
                    char cCharAt6 = str.charAt(0);
                    char cCharAt7 = str.charAt(1);
                    char cCharAt8 = str.charAt(2);
                    char cCharAt9 = str.charAt(3);
                    char cCharAt10 = str.charAt(5);
                    if (cCharAt8 == '/' && cCharAt10 == '/') {
                        int i5 = ((cCharAt9 - '0') * 10) + (cCharAt - '0');
                        if (((cCharAt6 - '0') * 10) + (cCharAt7 - '0') > 12) {
                            dateTimeFormatter2 = formatter_dt19_eur;
                        } else if (i5 > 12) {
                            dateTimeFormatter2 = formatter_dt19_us;
                        } else {
                            java.lang.String country = java.util.Locale.getDefault().getCountry();
                            if (country.equals("US")) {
                                dateTimeFormatter2 = formatter_dt19_us;
                            } else if (country.equals("BR") || country.equals("AU")) {
                                dateTimeFormatter2 = formatter_dt19_eur;
                            } else {
                                dateTimeFormatter2 = dateTimeFormatter;
                            }
                        }
                    } else if (cCharAt8 == '.' && cCharAt10 == '.') {
                        dateTimeFormatter2 = formatter_dt19_de;
                    } else if (cCharAt8 == '-' && cCharAt10 == '-') {
                        dateTimeFormatter2 = formatter_dt19_in;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                }
            } else if (str.length() == 23) {
                char cCharAt11 = str.charAt(4);
                char cCharAt12 = str.charAt(7);
                char cCharAt13 = str.charAt(10);
                char cCharAt14 = str.charAt(13);
                char cCharAt15 = str.charAt(16);
                char cCharAt16 = str.charAt(19);
                if (cCharAt14 == ':' && cCharAt15 == ':' && cCharAt11 == '-' && cCharAt12 == '-' && cCharAt13 == ' ' && cCharAt16 == '.') {
                    dateTimeFormatter2 = defaultFormatter_23;
                } else {
                    dateTimeFormatter2 = dateTimeFormatter;
                }
            } else {
                dateTimeFormatter2 = dateTimeFormatter;
            }
            if (str.length() >= 17) {
                char cCharAt17 = str.charAt(4);
                if (cCharAt17 == 24180) {
                    dateTimeFormatter2 = str.charAt(str.length() - 1) == 31186 ? formatter_dt19_cn_1 : formatter_dt19_cn;
                } else if (cCharAt17 == 45380) {
                    dateTimeFormatter2 = formatter_dt19_kr;
                }
            }
            int i6 = 0;
            while (true) {
                if (i6 >= str.length()) {
                    z4 = true;
                    break;
                }
                char cCharAt18 = str.charAt(i6);
                if (cCharAt18 < '0' || cCharAt18 > '9') {
                    break;
                }
                i6++;
            }
            if (z4 && str.length() > 8 && str.length() < 19) {
                return new org.joda.time.LocalDateTime(java.lang.Long.parseLong(str), org.joda.time.DateTimeZone.forTimeZone(com.alibaba.fastjson.JSON.defaultTimeZone));
            }
        } else {
            dateTimeFormatter2 = dateTimeFormatter;
        }
        return dateTimeFormatter2 == null ? org.joda.time.LocalDateTime.parse(str) : org.joda.time.LocalDateTime.parse(str, dateTimeFormatter2);
    }

    public org.joda.time.LocalDate parseLocalDate(java.lang.String str, java.lang.String str2, org.joda.time.format.DateTimeFormatter dateTimeFormatter) {
        org.joda.time.format.DateTimeFormatter dateTimeFormatter2;
        org.joda.time.format.DateTimeFormatter dateTimeFormatter3;
        if (dateTimeFormatter == null) {
            if (str.length() == 8) {
                dateTimeFormatter = formatter_d8;
            }
            boolean z4 = false;
            if (str.length() == 10) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter = formatter_d10_tw;
                }
                char cCharAt3 = str.charAt(0);
                char cCharAt4 = str.charAt(1);
                char cCharAt5 = str.charAt(2);
                char cCharAt6 = str.charAt(3);
                char cCharAt7 = str.charAt(5);
                if (cCharAt5 == '/' && cCharAt7 == '/') {
                    int i5 = ((cCharAt6 - '0') * 10) + (cCharAt - '0');
                    if (((cCharAt3 - '0') * 10) + (cCharAt4 - '0') > 12) {
                        dateTimeFormatter3 = formatter_d10_eur;
                    } else if (i5 > 12) {
                        dateTimeFormatter3 = formatter_d10_us;
                    } else {
                        java.lang.String country = java.util.Locale.getDefault().getCountry();
                        if (country.equals("US")) {
                            dateTimeFormatter3 = formatter_d10_us;
                        } else if (country.equals("BR") || country.equals("AU")) {
                            dateTimeFormatter3 = formatter_d10_eur;
                        }
                    }
                    dateTimeFormatter = dateTimeFormatter3;
                } else if (cCharAt5 == '.' && cCharAt7 == '.') {
                    dateTimeFormatter = formatter_d10_de;
                } else if (cCharAt5 == '-' && cCharAt7 == '-') {
                    dateTimeFormatter = formatter_d10_in;
                }
            }
            if (str.length() >= 9) {
                char cCharAt8 = str.charAt(4);
                if (cCharAt8 == 24180) {
                    dateTimeFormatter2 = formatter_d10_cn;
                } else if (cCharAt8 == 45380) {
                    dateTimeFormatter2 = formatter_d10_kr;
                }
                dateTimeFormatter = dateTimeFormatter2;
            }
            int i6 = 0;
            while (true) {
                if (i6 >= str.length()) {
                    z4 = true;
                    break;
                }
                char cCharAt9 = str.charAt(i6);
                if (cCharAt9 < '0' || cCharAt9 > '9') {
                    break;
                }
                i6++;
            }
            if (z4 && str.length() > 8 && str.length() < 19) {
                return new org.joda.time.LocalDateTime(java.lang.Long.parseLong(str), org.joda.time.DateTimeZone.forTimeZone(com.alibaba.fastjson.JSON.defaultTimeZone)).toLocalDate();
            }
        }
        return dateTimeFormatter == null ? org.joda.time.LocalDate.parse(str) : org.joda.time.LocalDate.parse(str, dateTimeFormatter);
    }

    public org.joda.time.DateTime parseZonedDateTime(java.lang.String str, org.joda.time.format.DateTimeFormatter dateTimeFormatter) {
        if (dateTimeFormatter == null) {
            if (str.length() == 19) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                char cCharAt3 = str.charAt(10);
                char cCharAt4 = str.charAt(13);
                char cCharAt5 = str.charAt(16);
                if (cCharAt4 == ':' && cCharAt5 == ':') {
                    if (cCharAt == '-' && cCharAt2 == '-') {
                        if (cCharAt3 == 'T') {
                            dateTimeFormatter = formatter_iso8601;
                        } else if (cCharAt3 == ' ') {
                            dateTimeFormatter = defaultFormatter;
                        }
                    } else if (cCharAt == '/' && cCharAt2 == '/') {
                        dateTimeFormatter = formatter_dt19_tw;
                    } else {
                        char cCharAt6 = str.charAt(0);
                        char cCharAt7 = str.charAt(1);
                        char cCharAt8 = str.charAt(2);
                        char cCharAt9 = str.charAt(3);
                        char cCharAt10 = str.charAt(5);
                        if (cCharAt8 == '/' && cCharAt10 == '/') {
                            int i5 = ((cCharAt9 - '0') * 10) + (cCharAt - '0');
                            if (((cCharAt6 - '0') * 10) + (cCharAt7 - '0') > 12) {
                                dateTimeFormatter = formatter_dt19_eur;
                            } else if (i5 > 12) {
                                dateTimeFormatter = formatter_dt19_us;
                            } else {
                                java.lang.String country = java.util.Locale.getDefault().getCountry();
                                if (country.equals("US")) {
                                    dateTimeFormatter = formatter_dt19_us;
                                } else if (country.equals("BR") || country.equals("AU")) {
                                    dateTimeFormatter = formatter_dt19_eur;
                                }
                            }
                        } else if (cCharAt8 == '.' && cCharAt10 == '.') {
                            dateTimeFormatter = formatter_dt19_de;
                        } else if (cCharAt8 == '-' && cCharAt10 == '-') {
                            dateTimeFormatter = formatter_dt19_in;
                        }
                    }
                }
            }
            if (str.length() >= 17) {
                char cCharAt11 = str.charAt(4);
                if (cCharAt11 == 24180) {
                    dateTimeFormatter = str.charAt(str.length() - 1) == 31186 ? formatter_dt19_cn_1 : formatter_dt19_cn;
                } else if (cCharAt11 == 45380) {
                    dateTimeFormatter = formatter_dt19_kr;
                }
            }
        }
        return dateTimeFormatter == null ? org.joda.time.DateTime.parse(str) : org.joda.time.DateTime.parse(str, dateTimeFormatter);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        if (type == null) {
            type = obj.getClass();
        }
        if (type != org.joda.time.LocalDateTime.class) {
            serializeWriter.writeString(obj.toString());
            return;
        }
        com.alibaba.fastjson.serializer.SerializerFeature serializerFeature = com.alibaba.fastjson.serializer.SerializerFeature.UseISO8601DateFormat;
        int mask = serializerFeature.getMask();
        org.joda.time.LocalDateTime localDateTime = (org.joda.time.LocalDateTime) obj;
        java.lang.String dateFormatPattern = jSONSerializer.getDateFormatPattern();
        if (dateFormatPattern == null) {
            if ((i5 & mask) != 0 || jSONSerializer.isEnabled(serializerFeature)) {
                dateFormatPattern = formatter_iso8601_pattern;
            } else if (jSONSerializer.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat)) {
                dateFormatPattern = com.alibaba.fastjson.JSON.DEFFAULT_DATE_FORMAT;
            } else {
                dateFormatPattern = localDateTime.getMillisOfSecond() == 0 ? formatter_iso8601_pattern_23 : formatter_iso8601_pattern_29;
            }
        }
        if (dateFormatPattern != null) {
            write(serializeWriter, (org.joda.time.ReadablePartial) localDateTime, dateFormatPattern);
        } else {
            serializeWriter.writeLong(localDateTime.toDateTime(org.joda.time.DateTimeZone.forTimeZone(com.alibaba.fastjson.JSON.defaultTimeZone)).toInstant().getMillis());
        }
    }

    /* JADX WARN: Type inference failed for: r6v6, types: [T, org.joda.time.LocalDateTime] */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.String str, int i5) {
        org.joda.time.format.DateTimeFormatter dateTimeFormatterForPattern;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        }
        if (jSONLexer.token() == 4) {
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken();
            if (str != null) {
                dateTimeFormatterForPattern = defaultPatttern.equals(str) ? defaultFormatter : org.joda.time.format.DateTimeFormat.forPattern(str);
            } else {
                dateTimeFormatterForPattern = null;
            }
            if ("".equals(strStringVal)) {
                return null;
            }
            if (type == org.joda.time.LocalDateTime.class) {
                return (strStringVal.length() == 10 || strStringVal.length() == 8) ? (T) parseLocalDate(strStringVal, str, dateTimeFormatterForPattern).toLocalDateTime(org.joda.time.LocalTime.MIDNIGHT) : (T) parseDateTime(strStringVal, dateTimeFormatterForPattern);
            }
            if (type == org.joda.time.LocalDate.class) {
                return strStringVal.length() == 23 ? (T) org.joda.time.LocalDateTime.parse(strStringVal).toLocalDate() : (T) parseLocalDate(strStringVal, str, dateTimeFormatterForPattern);
            }
            if (type == org.joda.time.LocalTime.class) {
                return strStringVal.length() == 23 ? (T) org.joda.time.LocalDateTime.parse(strStringVal).toLocalTime() : (T) org.joda.time.LocalTime.parse(strStringVal);
            }
            if (type == org.joda.time.DateTime.class) {
                if (dateTimeFormatterForPattern == defaultFormatter) {
                    dateTimeFormatterForPattern = ISO_FIXED_FORMAT;
                }
                return (T) parseZonedDateTime(strStringVal, dateTimeFormatterForPattern);
            }
            if (type == org.joda.time.DateTimeZone.class) {
                return (T) org.joda.time.DateTimeZone.forID(strStringVal);
            }
            if (type == org.joda.time.Period.class) {
                return (T) org.joda.time.Period.parse(strStringVal);
            }
            if (type == org.joda.time.Duration.class) {
                return (T) org.joda.time.Duration.parse(strStringVal);
            }
            if (type == org.joda.time.Instant.class) {
                boolean z4 = false;
                int i6 = 0;
                while (true) {
                    if (i6 >= strStringVal.length()) {
                        z4 = true;
                        break;
                    }
                    char cCharAt = strStringVal.charAt(i6);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    i6++;
                }
                return (!z4 || strStringVal.length() <= 8 || strStringVal.length() >= 19) ? (T) org.joda.time.Instant.parse(strStringVal) : (T) new org.joda.time.Instant(java.lang.Long.parseLong(strStringVal));
            }
            if (type == org.joda.time.format.DateTimeFormatter.class) {
                return (T) org.joda.time.format.DateTimeFormat.forPattern(strStringVal);
            }
        } else {
            if (jSONLexer.token() == 2) {
                long jLongValue = jSONLexer.longValue();
                jSONLexer.nextToken();
                java.util.TimeZone timeZone = com.alibaba.fastjson.JSON.defaultTimeZone;
                if (timeZone == null) {
                    timeZone = java.util.TimeZone.getDefault();
                }
                if (type == org.joda.time.DateTime.class) {
                    return (T) new org.joda.time.DateTime(jLongValue, org.joda.time.DateTimeZone.forTimeZone(timeZone));
                }
                ?? r6 = (T) new org.joda.time.LocalDateTime(jLongValue, org.joda.time.DateTimeZone.forTimeZone(timeZone));
                if (type == org.joda.time.LocalDateTime.class) {
                    return r6;
                }
                if (type == org.joda.time.LocalDate.class) {
                    return (T) r6.toLocalDate();
                }
                if (type == org.joda.time.LocalTime.class) {
                    return (T) r6.toLocalTime();
                }
                if (type == org.joda.time.Instant.class) {
                    return (T) new org.joda.time.Instant(jLongValue);
                }
                throw new java.lang.UnsupportedOperationException();
            }
            if (jSONLexer.token() != 12) {
                throw new java.lang.UnsupportedOperationException();
            }
            com.alibaba.fastjson.JSONObject object = defaultJSONParser.parseObject();
            if (type == org.joda.time.Instant.class) {
                java.lang.Object obj2 = object.get("epochSecond");
                if (obj2 instanceof java.lang.Number) {
                    return (T) org.joda.time.Instant.ofEpochSecond(com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj2));
                }
                java.lang.Object obj3 = object.get("millis");
                if (obj3 instanceof java.lang.Number) {
                    return (T) org.joda.time.Instant.ofEpochMilli(com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj3));
                }
            }
        }
        return null;
    }

    @Override // com.alibaba.fastjson.serializer.ContextObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, com.alibaba.fastjson.serializer.BeanContext beanContext) throws java.io.IOException {
        write(jSONSerializer.out, (org.joda.time.ReadablePartial) obj, beanContext.getFormat());
    }

    private void write(com.alibaba.fastjson.serializer.SerializeWriter serializeWriter, org.joda.time.ReadablePartial readablePartial, java.lang.String str) {
        org.joda.time.format.DateTimeFormatter dateTimeFormatterForPattern;
        if (str.equals(formatter_iso8601_pattern)) {
            dateTimeFormatterForPattern = formatter_iso8601;
        } else {
            dateTimeFormatterForPattern = org.joda.time.format.DateTimeFormat.forPattern(str);
        }
        serializeWriter.writeString(dateTimeFormatterForPattern.print(readablePartial));
    }
}
