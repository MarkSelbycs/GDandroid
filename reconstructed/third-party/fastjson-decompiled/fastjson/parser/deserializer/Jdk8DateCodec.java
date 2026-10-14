package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Jdk8DateCodec extends com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.serializer.ContextObjectSerializer {
    private static final java.lang.String formatter_iso8601_pattern_23 = "yyyy-MM-dd'T'HH:mm:ss.SSS";
    private static final java.lang.String formatter_iso8601_pattern_29 = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS";
    public static final com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec instance = new com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec();
    private static final java.lang.String defaultPatttern = "yyyy-MM-dd HH:mm:ss";
    private static final java.time.format.DateTimeFormatter defaultFormatter = java.time.format.DateTimeFormatter.ofPattern(defaultPatttern);
    private static final java.time.format.DateTimeFormatter defaultFormatter_23 = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");
    private static final java.time.format.DateTimeFormatter formatter_dt19_tw = java.time.format.DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
    private static final java.time.format.DateTimeFormatter formatter_dt19_cn = java.time.format.DateTimeFormatter.ofPattern("yyyy年M月d日 HH:mm:ss");
    private static final java.time.format.DateTimeFormatter formatter_dt19_cn_1 = java.time.format.DateTimeFormatter.ofPattern("yyyy年M月d日 H时m分s秒");
    private static final java.time.format.DateTimeFormatter formatter_dt19_kr = java.time.format.DateTimeFormatter.ofPattern("yyyy년M월d일 HH:mm:ss");
    private static final java.time.format.DateTimeFormatter formatter_dt19_us = java.time.format.DateTimeFormatter.ofPattern("MM/dd/yyyy HH:mm:ss");
    private static final java.time.format.DateTimeFormatter formatter_dt19_eur = java.time.format.DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
    private static final java.time.format.DateTimeFormatter formatter_dt19_de = java.time.format.DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm:ss");
    private static final java.time.format.DateTimeFormatter formatter_dt19_in = java.time.format.DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
    private static final java.time.format.DateTimeFormatter formatter_d8 = java.time.format.DateTimeFormatter.ofPattern("yyyyMMdd");
    private static final java.time.format.DateTimeFormatter formatter_d10_tw = java.time.format.DateTimeFormatter.ofPattern("yyyy/MM/dd");
    private static final java.time.format.DateTimeFormatter formatter_d10_cn = java.time.format.DateTimeFormatter.ofPattern("yyyy年M月d日");
    private static final java.time.format.DateTimeFormatter formatter_d10_kr = java.time.format.DateTimeFormatter.ofPattern("yyyy년M월d일");
    private static final java.time.format.DateTimeFormatter formatter_d10_us = java.time.format.DateTimeFormatter.ofPattern("MM/dd/yyyy");
    private static final java.time.format.DateTimeFormatter formatter_d10_eur = java.time.format.DateTimeFormatter.ofPattern("dd/MM/yyyy");
    private static final java.time.format.DateTimeFormatter formatter_d10_de = java.time.format.DateTimeFormatter.ofPattern("dd.MM.yyyy");
    private static final java.time.format.DateTimeFormatter formatter_d10_in = java.time.format.DateTimeFormatter.ofPattern("dd-MM-yyyy");
    private static final java.time.format.DateTimeFormatter ISO_FIXED_FORMAT = java.time.format.DateTimeFormatter.ofPattern(defaultPatttern).withZone(java.time.ZoneId.systemDefault());
    private static final java.lang.String formatter_iso8601_pattern = "yyyy-MM-dd'T'HH:mm:ss";
    private static final java.time.format.DateTimeFormatter formatter_iso8601 = java.time.format.DateTimeFormatter.ofPattern(formatter_iso8601_pattern);

    public static java.lang.Object castToLocalDateTime(java.lang.Object obj, java.lang.String str) {
        if (obj == null) {
            return null;
        }
        if (str == null) {
            str = defaultPatttern;
        }
        return java.time.LocalDateTime.parse(obj.toString(), java.time.format.DateTimeFormatter.ofPattern(str));
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.String str, int i5) {
        java.lang.Long l5;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        }
        if (jSONLexer.token() == 4) {
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken();
            java.time.format.DateTimeFormatter dateTimeFormatterOfPattern = str != null ? defaultPatttern.equals(str) ? defaultFormatter : java.time.format.DateTimeFormatter.ofPattern(str) : null;
            if ("".equals(strStringVal)) {
                return null;
            }
            if (type == java.time.LocalDateTime.class) {
                return (strStringVal.length() == 10 || strStringVal.length() == 8) ? (T) java.time.LocalDateTime.of(parseLocalDate(strStringVal, str, dateTimeFormatterOfPattern), java.time.LocalTime.MIN) : (T) parseDateTime(strStringVal, dateTimeFormatterOfPattern);
            }
            if (type == java.time.LocalDate.class) {
                if (strStringVal.length() != 23) {
                    return (T) parseLocalDate(strStringVal, str, dateTimeFormatterOfPattern);
                }
                java.time.LocalDateTime localDateTime = java.time.LocalDateTime.parse(strStringVal);
                return (T) java.time.LocalDate.of(localDateTime.getYear(), localDateTime.getMonthValue(), localDateTime.getDayOfMonth());
            }
            boolean z4 = true;
            if (type == java.time.LocalTime.class) {
                if (strStringVal.length() == 23) {
                    java.time.LocalDateTime localDateTime2 = java.time.LocalDateTime.parse(strStringVal);
                    return (T) java.time.LocalTime.of(localDateTime2.getHour(), localDateTime2.getMinute(), localDateTime2.getSecond(), localDateTime2.getNano());
                }
                for (int i6 = 0; i6 < strStringVal.length(); i6++) {
                    char cCharAt = strStringVal.charAt(i6);
                    if (cCharAt < '0' || cCharAt > '9') {
                        z4 = false;
                        break;
                    }
                }
                return (!z4 || strStringVal.length() <= 8 || strStringVal.length() >= 19) ? (T) java.time.LocalTime.parse(strStringVal) : (T) java.time.LocalDateTime.ofInstant(java.time.Instant.ofEpochMilli(java.lang.Long.parseLong(strStringVal)), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toLocalTime();
            }
            if (type == java.time.ZonedDateTime.class) {
                if (dateTimeFormatterOfPattern == defaultFormatter) {
                    dateTimeFormatterOfPattern = ISO_FIXED_FORMAT;
                }
                if (dateTimeFormatterOfPattern == null && strStringVal.length() <= 19) {
                    com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strStringVal);
                    java.util.TimeZone timeZone = defaultJSONParser.lexer.getTimeZone();
                    jSONScanner.setTimeZone(timeZone);
                    if (jSONScanner.scanISO8601DateIfMatch(false)) {
                        return (T) java.time.ZonedDateTime.ofInstant(jSONScanner.getCalendar().getTime().toInstant(), timeZone.toZoneId());
                    }
                }
                return (T) parseZonedDateTime(strStringVal, dateTimeFormatterOfPattern);
            }
            if (type == java.time.OffsetDateTime.class) {
                return (T) java.time.OffsetDateTime.parse(strStringVal);
            }
            if (type == java.time.OffsetTime.class) {
                return (T) java.time.OffsetTime.parse(strStringVal);
            }
            if (type == java.time.ZoneId.class) {
                return (T) java.time.ZoneId.of(strStringVal);
            }
            if (type == java.time.Period.class) {
                return (T) java.time.Period.parse(strStringVal);
            }
            if (type == java.time.Duration.class) {
                return (T) java.time.Duration.parse(strStringVal);
            }
            if (type == java.time.Instant.class) {
                for (int i7 = 0; i7 < strStringVal.length(); i7++) {
                    char cCharAt2 = strStringVal.charAt(i7);
                    if (cCharAt2 < '0' || cCharAt2 > '9') {
                        z4 = false;
                        break;
                    }
                }
                return (!z4 || strStringVal.length() <= 8 || strStringVal.length() >= 19) ? (T) java.time.Instant.parse(strStringVal) : (T) java.time.Instant.ofEpochMilli(java.lang.Long.parseLong(strStringVal));
            }
        } else {
            if (jSONLexer.token() == 2) {
                long jLongValue = jSONLexer.longValue();
                jSONLexer.nextToken();
                if ("unixtime".equals(str)) {
                    jLongValue *= 1000;
                } else if ("yyyyMMddHHmmss".equals(str)) {
                    int i8 = (int) (jLongValue / 10000000000L);
                    int i9 = (int) ((jLongValue / 100000000) % 100);
                    int i10 = (int) ((jLongValue / 1000000) % 100);
                    int i11 = (int) ((jLongValue / 10000) % 100);
                    int i12 = (int) ((jLongValue / 100) % 100);
                    int i13 = (int) (jLongValue % 100);
                    if (type == java.time.LocalDateTime.class) {
                        return (T) java.time.LocalDateTime.of(i8, i9, i10, i11, i12, i13);
                    }
                }
                if (type == java.time.LocalDateTime.class) {
                    return (T) java.time.LocalDateTime.ofInstant(java.time.Instant.ofEpochMilli(jLongValue), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId());
                }
                if (type == java.time.LocalDate.class) {
                    return (T) java.time.LocalDateTime.ofInstant(java.time.Instant.ofEpochMilli(jLongValue), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toLocalDate();
                }
                if (type == java.time.LocalTime.class) {
                    return (T) java.time.LocalDateTime.ofInstant(java.time.Instant.ofEpochMilli(jLongValue), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toLocalTime();
                }
                if (type == java.time.ZonedDateTime.class) {
                    return (T) java.time.ZonedDateTime.ofInstant(java.time.Instant.ofEpochMilli(jLongValue), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId());
                }
                if (type == java.time.Instant.class) {
                    return (T) java.time.Instant.ofEpochMilli(jLongValue);
                }
                throw new java.lang.UnsupportedOperationException();
            }
            if (jSONLexer.token() != 12) {
                throw new java.lang.UnsupportedOperationException();
            }
            com.alibaba.fastjson.JSONObject object = defaultJSONParser.parseObject();
            if (type == java.time.Instant.class) {
                java.lang.Object obj2 = object.get("epochSecond");
                java.lang.Object obj3 = object.get("nano");
                boolean z5 = obj2 instanceof java.lang.Number;
                if (z5 && (obj3 instanceof java.lang.Number)) {
                    return (T) java.time.Instant.ofEpochSecond(com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj2), com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj3));
                }
                if (z5) {
                    return (T) java.time.Instant.ofEpochSecond(com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj2));
                }
            } else if (type == java.time.Duration.class && (l5 = object.getLong("seconds")) != null) {
                return (T) java.time.Duration.ofSeconds(l5.longValue(), object.getLongValue("nano"));
            }
        }
        return null;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 4;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00e8  */
    public java.time.LocalDateTime parseDateTime(java.lang.String str, java.time.format.DateTimeFormatter dateTimeFormatter) {
        java.time.format.DateTimeFormatter dateTimeFormatter2;
        boolean z4 = true;
        if (dateTimeFormatter == null) {
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
                        dateTimeFormatter2 = java.time.format.DateTimeFormatter.ISO_LOCAL_DATE_TIME;
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
        } else {
            dateTimeFormatter2 = dateTimeFormatter;
        }
        if (dateTimeFormatter2 == null) {
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
            if (jSONScanner.scanISO8601DateIfMatch(false)) {
                return java.time.LocalDateTime.ofInstant(jSONScanner.getCalendar().toInstant(), java.time.ZoneId.systemDefault());
            }
            for (int i6 = 0; i6 < str.length(); i6++) {
                char cCharAt18 = str.charAt(i6);
                if (cCharAt18 < '0' || cCharAt18 > '9') {
                    z4 = false;
                    break;
                }
            }
            if (z4 && str.length() > 8 && str.length() < 19) {
                return java.time.LocalDateTime.ofInstant(java.time.Instant.ofEpochMilli(java.lang.Long.parseLong(str)), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId());
            }
        }
        return dateTimeFormatter2 == null ? java.time.LocalDateTime.parse(str) : java.time.LocalDateTime.parse(str, dateTimeFormatter2);
    }

    public java.time.LocalDate parseLocalDate(java.lang.String str, java.lang.String str2, java.time.format.DateTimeFormatter dateTimeFormatter) {
        java.time.format.DateTimeFormatter dateTimeFormatter2;
        java.time.format.DateTimeFormatter dateTimeFormatter3;
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
                return java.time.LocalDateTime.ofInstant(java.time.Instant.ofEpochMilli(java.lang.Long.parseLong(str)), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toLocalDate();
            }
        }
        return dateTimeFormatter == null ? java.time.LocalDate.parse(str) : java.time.LocalDate.parse(str, dateTimeFormatter);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00b7  */
    public java.time.ZonedDateTime parseZonedDateTime(java.lang.String str, java.time.format.DateTimeFormatter dateTimeFormatter) {
        java.time.format.DateTimeFormatter dateTimeFormatter2;
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
                        dateTimeFormatter2 = java.time.format.DateTimeFormatter.ISO_LOCAL_DATE_TIME;
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
            } else {
                dateTimeFormatter2 = dateTimeFormatter;
            }
            if (str.length() >= 17) {
                char cCharAt11 = str.charAt(4);
                if (cCharAt11 == 24180) {
                    dateTimeFormatter2 = str.charAt(str.length() - 1) == 31186 ? formatter_dt19_cn_1 : formatter_dt19_cn;
                } else if (cCharAt11 == 45380) {
                    dateTimeFormatter2 = formatter_dt19_kr;
                }
            }
            int i6 = 0;
            while (true) {
                if (i6 >= str.length()) {
                    z4 = true;
                    break;
                }
                char cCharAt12 = str.charAt(i6);
                if (cCharAt12 < '0' || cCharAt12 > '9') {
                    break;
                }
                i6++;
            }
            if (z4 && str.length() > 8 && str.length() < 19) {
                return java.time.ZonedDateTime.ofInstant(java.time.Instant.ofEpochMilli(java.lang.Long.parseLong(str)), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId());
            }
        } else {
            dateTimeFormatter2 = dateTimeFormatter;
        }
        return dateTimeFormatter2 == null ? java.time.ZonedDateTime.parse(str) : java.time.ZonedDateTime.parse(str, dateTimeFormatter2);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0060  */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.time.ZonedDateTime] */
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
        if (type != java.time.LocalDateTime.class) {
            serializeWriter.writeString(obj.toString());
            return;
        }
        com.alibaba.fastjson.serializer.SerializerFeature serializerFeature = com.alibaba.fastjson.serializer.SerializerFeature.UseISO8601DateFormat;
        int mask = serializerFeature.getMask();
        java.time.LocalDateTime localDateTime = (java.time.LocalDateTime) obj;
        java.lang.String dateFormatPattern = jSONSerializer.getDateFormatPattern();
        if (dateFormatPattern == null) {
            if ((i5 & mask) != 0 || jSONSerializer.isEnabled(serializerFeature)) {
                dateFormatPattern = formatter_iso8601_pattern;
            } else if (jSONSerializer.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat)) {
                dateFormatPattern = (jSONSerializer.getFastJsonConfigDateFormatPattern() == null || jSONSerializer.getFastJsonConfigDateFormatPattern().length() <= 0) ? com.alibaba.fastjson.JSON.DEFFAULT_DATE_FORMAT : jSONSerializer.getFastJsonConfigDateFormatPattern();
            } else {
                int nano = localDateTime.getNano();
                if (nano == 0) {
                    dateFormatPattern = formatter_iso8601_pattern;
                } else {
                    dateFormatPattern = nano % 1000000 == 0 ? formatter_iso8601_pattern_23 : formatter_iso8601_pattern_29;
                }
            }
        }
        if (dateFormatPattern != null) {
            write(serializeWriter, localDateTime, dateFormatPattern);
        } else {
            serializeWriter.writeLong(localDateTime.atZone(com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toInstant().toEpochMilli());
        }
    }

    @Override // com.alibaba.fastjson.serializer.ContextObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, com.alibaba.fastjson.serializer.BeanContext beanContext) throws java.io.IOException {
        write(jSONSerializer.out, (java.time.temporal.TemporalAccessor) obj, beanContext.getFormat());
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [java.time.ZonedDateTime] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.time.ZonedDateTime] */
    private void write(com.alibaba.fastjson.serializer.SerializeWriter serializeWriter, java.time.temporal.TemporalAccessor temporalAccessor, java.lang.String str) {
        java.time.format.DateTimeFormatter dateTimeFormatterOfPattern;
        if ("unixtime".equals(str)) {
            if (temporalAccessor instanceof java.time.chrono.ChronoZonedDateTime) {
                serializeWriter.writeInt((int) ((java.time.chrono.ChronoZonedDateTime) temporalAccessor).toEpochSecond());
                return;
            } else if (temporalAccessor instanceof java.time.LocalDateTime) {
                serializeWriter.writeInt((int) ((java.time.LocalDateTime) temporalAccessor).atZone(com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toEpochSecond());
                return;
            }
        }
        if ("millis".equals(str)) {
            java.time.Instant instant = null;
            if (temporalAccessor instanceof java.time.chrono.ChronoZonedDateTime) {
                instant = ((java.time.chrono.ChronoZonedDateTime) temporalAccessor).toInstant();
            } else if (temporalAccessor instanceof java.time.LocalDateTime) {
                instant = ((java.time.LocalDateTime) temporalAccessor).atZone(com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toInstant();
            }
            if (instant != null) {
                serializeWriter.writeLong(instant.toEpochMilli());
                return;
            }
        }
        if (str == formatter_iso8601_pattern) {
            dateTimeFormatterOfPattern = formatter_iso8601;
        } else {
            dateTimeFormatterOfPattern = java.time.format.DateTimeFormatter.ofPattern(str);
        }
        serializeWriter.writeString(dateTimeFormatterOfPattern.format(temporalAccessor));
    }
}
