package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CalendarCodec extends com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.serializer.ContextObjectSerializer {
    public static final com.alibaba.fastjson.serializer.CalendarCodec instance = new com.alibaba.fastjson.serializer.CalendarCodec();
    private javax.xml.datatype.DatatypeFactory dateFactory;

    public javax.xml.datatype.XMLGregorianCalendar createXMLGregorianCalendar(java.util.Calendar calendar) {
        if (this.dateFactory == null) {
            try {
                this.dateFactory = javax.xml.datatype.DatatypeFactory.newInstance();
            } catch (javax.xml.datatype.DatatypeConfigurationException e5) {
                throw new java.lang.IllegalStateException("Could not obtain an instance of DatatypeFactory.", e5);
            }
        }
        return this.dateFactory.newXMLGregorianCalendar((java.util.GregorianCalendar) calendar);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, null, 0);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }

    @Override // com.alibaba.fastjson.serializer.ContextObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, com.alibaba.fastjson.serializer.BeanContext beanContext) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        java.lang.String format = beanContext.getFormat();
        java.util.Calendar calendar = (java.util.Calendar) obj;
        if (format.equals("unixtime")) {
            serializeWriter.writeInt((int) (calendar.getTimeInMillis() / 1000));
            return;
        }
        java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(format);
        simpleDateFormat.setTimeZone(jSONSerializer.timeZone);
        serializeWriter.writeString(simpleDateFormat.format(calendar.getTime()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [T, java.util.Calendar] */
    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.String str, int i5) {
        T t5 = (T) com.alibaba.fastjson.serializer.DateCodec.instance.deserialze(defaultJSONParser, type, obj, str, i5);
        if (t5 instanceof java.util.Calendar) {
            return t5;
        }
        java.util.Date date = (java.util.Date) t5;
        if (date == null) {
            return null;
        }
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        ?? r7 = (T) java.util.Calendar.getInstance(jSONLexer.getTimeZone(), jSONLexer.getLocale());
        r7.setTime(date);
        return type == javax.xml.datatype.XMLGregorianCalendar.class ? (T) createXMLGregorianCalendar((java.util.GregorianCalendar) r7) : r7;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        java.util.Calendar gregorianCalendar;
        char[] charArray;
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        if (obj instanceof javax.xml.datatype.XMLGregorianCalendar) {
            gregorianCalendar = ((javax.xml.datatype.XMLGregorianCalendar) obj).toGregorianCalendar();
        } else {
            gregorianCalendar = (java.util.Calendar) obj;
        }
        if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.UseISO8601DateFormat)) {
            char c5 = serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.UseSingleQuotes) ? '\'' : '\"';
            serializeWriter.append(c5);
            int i6 = gregorianCalendar.get(1);
            int i7 = gregorianCalendar.get(2) + 1;
            int i8 = gregorianCalendar.get(5);
            int i9 = gregorianCalendar.get(11);
            int i10 = gregorianCalendar.get(12);
            int i11 = gregorianCalendar.get(13);
            int i12 = gregorianCalendar.get(14);
            if (i12 != 0) {
                charArray = "0000-00-00T00:00:00.000".toCharArray();
                com.alibaba.fastjson.util.IOUtils.getChars(i12, 23, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i11, 19, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i10, 16, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i9, 13, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i8, 10, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i7, 7, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i6, 4, charArray);
            } else if (i11 == 0 && i10 == 0 && i9 == 0) {
                charArray = "0000-00-00".toCharArray();
                com.alibaba.fastjson.util.IOUtils.getChars(i8, 10, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i7, 7, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i6, 4, charArray);
            } else {
                charArray = "0000-00-00T00:00:00".toCharArray();
                com.alibaba.fastjson.util.IOUtils.getChars(i11, 19, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i10, 16, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i9, 13, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i8, 10, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i7, 7, charArray);
                com.alibaba.fastjson.util.IOUtils.getChars(i6, 4, charArray);
            }
            serializeWriter.write(charArray);
            float offset = gregorianCalendar.getTimeZone().getOffset(gregorianCalendar.getTimeInMillis()) / 3600000.0f;
            int i13 = (int) offset;
            if (i13 == 0.0d) {
                serializeWriter.write(90);
            } else {
                if (i13 > 9) {
                    serializeWriter.write(43);
                    serializeWriter.writeInt(i13);
                } else if (i13 > 0) {
                    serializeWriter.write(43);
                    serializeWriter.write(48);
                    serializeWriter.writeInt(i13);
                } else if (i13 < -9) {
                    serializeWriter.write(45);
                    serializeWriter.writeInt(i13);
                } else if (i13 < 0) {
                    serializeWriter.write(45);
                    serializeWriter.write(48);
                    serializeWriter.writeInt(-i13);
                }
                serializeWriter.write(58);
                serializeWriter.append((java.lang.CharSequence) java.lang.String.format("%02d", java.lang.Integer.valueOf((int) ((offset - i13) * 60.0f))));
            }
            serializeWriter.append(c5);
            return;
        }
        jSONSerializer.write(gregorianCalendar.getTime());
    }
}
