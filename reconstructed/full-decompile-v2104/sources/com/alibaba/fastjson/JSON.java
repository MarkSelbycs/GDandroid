package com.alibaba.fastjson;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class JSON implements com.alibaba.fastjson.JSONStreamAware, com.alibaba.fastjson.JSONAware {
    public static final java.lang.String VERSION = "1.2.83";
    private static final java.lang.ThreadLocal<byte[]> bytesLocal;
    private static final java.lang.ThreadLocal<char[]> charsLocal;
    public static java.util.TimeZone defaultTimeZone = java.util.TimeZone.getDefault();
    public static java.util.Locale defaultLocale = java.util.Locale.getDefault();
    public static java.lang.String DEFAULT_TYPE_KEY = "@type";
    public static final com.alibaba.fastjson.serializer.SerializeFilter[] emptyFilters = new com.alibaba.fastjson.serializer.SerializeFilter[0];
    public static java.lang.String DEFFAULT_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private static final java.util.concurrent.ConcurrentHashMap<java.lang.reflect.Type, java.lang.reflect.Type> mixInsMapper = new java.util.concurrent.ConcurrentHashMap<>(16);
    public static int DEFAULT_PARSER_FEATURE = (((((((com.alibaba.fastjson.parser.Feature.AutoCloseSource.getMask() | 0) | com.alibaba.fastjson.parser.Feature.InternFieldNames.getMask()) | com.alibaba.fastjson.parser.Feature.UseBigDecimal.getMask()) | com.alibaba.fastjson.parser.Feature.AllowUnQuotedFieldNames.getMask()) | com.alibaba.fastjson.parser.Feature.AllowSingleQuotes.getMask()) | com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas.getMask()) | com.alibaba.fastjson.parser.Feature.SortFeidFastMatch.getMask()) | com.alibaba.fastjson.parser.Feature.IgnoreNotMatch.getMask();
    public static int DEFAULT_GENERATE_FEATURE = (((0 | com.alibaba.fastjson.serializer.SerializerFeature.QuoteFieldNames.getMask()) | com.alibaba.fastjson.serializer.SerializerFeature.SkipTransientField.getMask()) | com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingName.getMask()) | com.alibaba.fastjson.serializer.SerializerFeature.SortField.getMask();

    static {
        config(com.alibaba.fastjson.util.IOUtils.DEFAULT_PROPERTIES);
        bytesLocal = new java.lang.ThreadLocal<>();
        charsLocal = new java.lang.ThreadLocal<>();
    }

    public static void addMixInAnnotations(java.lang.reflect.Type type, java.lang.reflect.Type type2) {
        if (type == null || type2 == null) {
            return;
        }
        mixInsMapper.put(type, type2);
    }

    private static byte[] allocateBytes(int i5) {
        java.lang.ThreadLocal<byte[]> threadLocal = bytesLocal;
        byte[] bArr = threadLocal.get();
        if (bArr != null) {
            return bArr.length < i5 ? new byte[i5] : bArr;
        }
        if (i5 > 65536) {
            return new byte[i5];
        }
        byte[] bArr2 = new byte[65536];
        threadLocal.set(bArr2);
        return bArr2;
    }

    private static char[] allocateChars(int i5) {
        java.lang.ThreadLocal<char[]> threadLocal = charsLocal;
        char[] cArr = threadLocal.get();
        if (cArr != null) {
            return cArr.length < i5 ? new char[i5] : cArr;
        }
        if (i5 > 65536) {
            return new char[i5];
        }
        char[] cArr2 = new char[65536];
        threadLocal.set(cArr2);
        return cArr2;
    }

    public static void clearMixInAnnotations() {
        mixInsMapper.clear();
    }

    private static void config(java.util.Properties properties) {
        java.lang.String property = properties.getProperty("fastjson.serializerFeatures.MapSortField");
        int mask = com.alibaba.fastjson.serializer.SerializerFeature.MapSortField.getMask();
        if ("true".equals(property)) {
            DEFAULT_GENERATE_FEATURE |= mask;
        } else if ("false".equals(property)) {
            DEFAULT_GENERATE_FEATURE &= ~mask;
        }
        if ("true".equals(properties.getProperty("parser.features.NonStringKeyAsString"))) {
            DEFAULT_PARSER_FEATURE |= com.alibaba.fastjson.parser.Feature.NonStringKeyAsString.getMask();
        }
        if ("true".equals(properties.getProperty("parser.features.ErrorOnEnumNotMatch")) || "true".equals(properties.getProperty("fastjson.parser.features.ErrorOnEnumNotMatch"))) {
            DEFAULT_PARSER_FEATURE |= com.alibaba.fastjson.parser.Feature.ErrorOnEnumNotMatch.getMask();
        }
        if ("false".equals(properties.getProperty("fastjson.asmEnable"))) {
            com.alibaba.fastjson.parser.ParserConfig.global.setAsmEnable(false);
            com.alibaba.fastjson.serializer.SerializeConfig.globalInstance.setAsmEnable(false);
        }
    }

    public static java.lang.reflect.Type getMixInAnnotations(java.lang.reflect.Type type) {
        if (type != null) {
            return mixInsMapper.get(type);
        }
        return null;
    }

    public static <T> void handleResovleTask(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, T t5) {
        defaultJSONParser.handleResovleTask(t5);
    }

    public static boolean isValid(java.lang.String str) {
        if (str != null && str.length() != 0) {
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
            try {
                jSONScanner.nextToken();
                int i5 = jSONScanner.token();
                if (i5 != 12) {
                    if (i5 != 14) {
                        switch (i5) {
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                jSONScanner.nextToken();
                                break;
                            default:
                                return false;
                        }
                    } else {
                        jSONScanner.skipArray(true);
                    }
                } else {
                    if (jSONScanner.getCurrent() == 26) {
                        return false;
                    }
                    jSONScanner.skipObject(true);
                }
                return jSONScanner.token() == 20;
            } catch (java.lang.Exception unused) {
            } finally {
                jSONScanner.close();
            }
        }
        return false;
    }

    public static boolean isValidArray(java.lang.String str) {
        if (str != null && str.length() != 0) {
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
            try {
                jSONScanner.nextToken();
                if (jSONScanner.token() != 14) {
                    return false;
                }
                jSONScanner.skipArray(true);
                return jSONScanner.token() == 20;
            } catch (java.lang.Exception unused) {
            } finally {
                jSONScanner.close();
            }
        }
        return false;
    }

    public static boolean isValidObject(java.lang.String str) {
        if (str != null && str.length() != 0) {
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
            try {
                jSONScanner.nextToken();
                if (jSONScanner.token() != 12) {
                    return false;
                }
                if (jSONScanner.getCurrent() == 26) {
                    return false;
                }
                jSONScanner.skipObject(true);
                return jSONScanner.token() == 20;
            } catch (java.lang.Exception unused) {
            } finally {
                jSONScanner.close();
            }
        }
        return false;
    }

    public static java.lang.Object parse(java.lang.String str) {
        return parse(str, DEFAULT_PARSER_FEATURE);
    }

    public static com.alibaba.fastjson.JSONArray parseArray(java.lang.String str) {
        return parseArray(str, com.alibaba.fastjson.parser.ParserConfig.global);
    }

    public static com.alibaba.fastjson.JSONObject parseObject(java.lang.String str, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (com.alibaba.fastjson.JSONObject) parse(str, featureArr);
    }

    public static void removeMixInAnnotations(java.lang.reflect.Type type) {
        if (type != null) {
            mixInsMapper.remove(type);
        }
    }

    public static void setDefaultTypeKey(java.lang.String str) {
        DEFAULT_TYPE_KEY = str;
        com.alibaba.fastjson.parser.ParserConfig.global.symbolTable.addSymbol(str, 0, str.length(), str.hashCode(), true);
    }

    public static java.lang.Object toJSON(java.lang.Object obj) {
        return toJSON(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytesWithFastJsonConfig(java.nio.charset.Charset charset, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i5, serializerFeatureArr);
        try {
            com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter, serializeConfig);
            if (str != null && str.length() != 0) {
                jSONSerializer.setFastJsonConfigDateFormatPattern(str);
                jSONSerializer.config(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (serializeFilterArr != null) {
                for (com.alibaba.fastjson.serializer.SerializeFilter serializeFilter : serializeFilterArr) {
                    jSONSerializer.addFilter(serializeFilter);
                }
            }
            jSONSerializer.write(obj);
            return serializeWriter.toBytes(charset);
        } finally {
            serializeWriter.close();
        }
    }

    public static java.lang.String toJSONString(java.lang.Object obj) {
        return toJSONString(obj, emptyFilters, new com.alibaba.fastjson.serializer.SerializerFeature[0]);
    }

    public static java.lang.String toJSONStringWithDateFormat(java.lang.Object obj, java.lang.String str, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, null, str, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.String toJSONStringZ(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, serializeConfig, emptyFilters, null, 0, serializerFeatureArr);
    }

    public static <T> T toJavaObject(com.alibaba.fastjson.JSON json, java.lang.Class<T> cls) {
        return (T) com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) json, (java.lang.Class) cls, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public static void writeJSONString(java.io.Writer writer, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        writeJSONString(writer, obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static void writeJSONStringTo(java.lang.Object obj, java.io.Writer writer, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        writeJSONString(writer, obj, serializerFeatureArr);
    }

    public static final int writeJSONStringWithFastJsonConfig(java.io.OutputStream outputStream, java.nio.charset.Charset charset, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i5, serializerFeatureArr);
        try {
            com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter, serializeConfig);
            if (str != null && str.length() != 0) {
                jSONSerializer.setFastJsonConfigDateFormatPattern(str);
                jSONSerializer.config(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (serializeFilterArr != null) {
                for (com.alibaba.fastjson.serializer.SerializeFilter serializeFilter : serializeFilterArr) {
                    jSONSerializer.addFilter(serializeFilter);
                }
            }
            jSONSerializer.write(obj);
            return serializeWriter.writeToEx(outputStream, charset);
        } finally {
            serializeWriter.close();
        }
    }

    public java.lang.String toString() {
        return toJSONString();
    }

    public static java.lang.Object parse(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        return parse(str, parserConfig, DEFAULT_PARSER_FEATURE);
    }

    public static com.alibaba.fastjson.JSONArray parseArray(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        com.alibaba.fastjson.JSONArray jSONArray = null;
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig);
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
        } else if (jSONLexer.token() != 20 || !jSONLexer.isBlankInput()) {
            jSONArray = new com.alibaba.fastjson.JSONArray();
            defaultJSONParser.parseArray(jSONArray);
            defaultJSONParser.handleResovleTask(jSONArray);
        }
        defaultJSONParser.close();
        return jSONArray;
    }

    public static com.alibaba.fastjson.JSONObject parseObject(java.lang.String str) {
        java.lang.Object obj = parse(str);
        if (obj instanceof com.alibaba.fastjson.JSONObject) {
            return (com.alibaba.fastjson.JSONObject) obj;
        }
        try {
            return (com.alibaba.fastjson.JSONObject) toJSON(obj);
        } catch (java.lang.RuntimeException e5) {
            throw new com.alibaba.fastjson.JSONException("can not cast to JSONObject.", e5);
        }
    }

    public static java.lang.Object toJSON(java.lang.Object obj, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        return toJSON(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeFilter serializeFilter, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, new com.alibaba.fastjson.serializer.SerializeFilter[]{serializeFilter}, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static void writeJSONString(java.io.Writer writer, java.lang.Object obj, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(writer, i5, serializerFeatureArr);
        try {
            new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(obj);
        } finally {
            serializeWriter.close();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T toJavaObject(java.lang.Class<T> cls) {
        return (cls == com.alibaba.fastjson.JSONArray.class || cls == com.alibaba.fastjson.JSON.class || cls == java.util.Collection.class || cls == java.util.List.class) ? this : (T) com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) this, (java.lang.Class) cls, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public java.lang.String toString(com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
        try {
            new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(this);
            return serializeWriter.toString();
        } finally {
            serializeWriter.close();
        }
    }

    public static java.lang.Object parse(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.Feature... featureArr) {
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            iConfig = com.alibaba.fastjson.parser.Feature.config(iConfig, feature, true);
        }
        return parse(str, parserConfig, iConfig);
    }

    public static java.lang.Object toJSON(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig) {
        java.util.Map map;
        if (obj == null) {
            return null;
        }
        if (obj instanceof com.alibaba.fastjson.JSON) {
            return obj;
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map2 = (java.util.Map) obj;
            int size = map2.size();
            if (map2 instanceof java.util.LinkedHashMap) {
                map = new java.util.LinkedHashMap(size);
            } else if (map2 instanceof java.util.TreeMap) {
                map = new java.util.TreeMap();
            } else {
                map = new java.util.HashMap(size);
            }
            com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject((java.util.Map<java.lang.String, java.lang.Object>) map);
            for (java.util.Map.Entry entry : map2.entrySet()) {
                jSONObject.put(com.alibaba.fastjson.util.TypeUtils.castToString(entry.getKey()), toJSON(entry.getValue(), serializeConfig));
            }
            return jSONObject;
        }
        if (obj instanceof java.util.Collection) {
            java.util.Collection collection = (java.util.Collection) obj;
            com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray(collection.size());
            java.util.Iterator it = collection.iterator();
            while (it.hasNext()) {
                jSONArray.add(toJSON(it.next(), serializeConfig));
            }
            return jSONArray;
        }
        if (obj instanceof com.alibaba.fastjson.serializer.JSONSerializable) {
            return parse(toJSONString(obj));
        }
        java.lang.Class<?> cls = obj.getClass();
        if (cls.isEnum()) {
            return ((java.lang.Enum) obj).name();
        }
        boolean z4 = false;
        if (cls.isArray()) {
            int length = java.lang.reflect.Array.getLength(obj);
            com.alibaba.fastjson.JSONArray jSONArray2 = new com.alibaba.fastjson.JSONArray(length);
            for (int i5 = 0; i5 < length; i5++) {
                jSONArray2.add(toJSON(java.lang.reflect.Array.get(obj, i5)));
            }
            return jSONArray2;
        }
        if (com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(cls)) {
            return obj;
        }
        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = serializeConfig.getObjectWriter(cls);
        if (objectWriter instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer) {
            com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = (com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter;
            com.alibaba.fastjson.annotation.JSONType jSONType = javaBeanSerializer.getJSONType();
            if (jSONType != null) {
                boolean z5 = false;
                for (com.alibaba.fastjson.serializer.SerializerFeature serializerFeature : jSONType.serialzeFeatures()) {
                    if (serializerFeature == com.alibaba.fastjson.serializer.SerializerFeature.SortField || serializerFeature == com.alibaba.fastjson.serializer.SerializerFeature.MapSortField) {
                        z5 = true;
                    }
                }
                z4 = z5;
            }
            com.alibaba.fastjson.JSONObject jSONObject2 = new com.alibaba.fastjson.JSONObject(z4);
            try {
                for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry2 : javaBeanSerializer.getFieldValuesMap(obj).entrySet()) {
                    jSONObject2.put(entry2.getKey(), toJSON(entry2.getValue(), serializeConfig));
                }
                return jSONObject2;
            } catch (java.lang.Exception e5) {
                throw new com.alibaba.fastjson.JSONException("toJSON error", e5);
            }
        }
        return parse(toJSONString(obj, serializeConfig, new com.alibaba.fastjson.serializer.SerializerFeature[0]));
    }

    public static byte[] toJSONBytes(java.lang.Object obj, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, i5, serializerFeatureArr);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i5, serializerFeatureArr);
        try {
            new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(obj);
            java.lang.String string = serializeWriter.toString();
            int length = string.length();
            if (length > 0) {
                int i6 = length - 1;
                if (string.charAt(i6) == '.' && (obj instanceof java.lang.Number) && !serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
                    return string.substring(0, i6);
                }
            }
            return string;
        } finally {
            serializeWriter.close();
        }
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, serializeConfig, emptyFilters, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public <T> T toJavaObject(java.lang.reflect.Type type) {
        return (T) com.alibaba.fastjson.util.TypeUtils.cast(this, type, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, serializeConfig, emptyFilters, i5, serializerFeatureArr);
    }

    public <T> T toJavaObject(com.alibaba.fastjson.TypeReference typeReference) {
        return (T) com.alibaba.fastjson.util.TypeUtils.cast(this, typeReference != null ? typeReference.getType() : null, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, serializeFilterArr, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.Object parse(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i5) {
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig, i5);
        java.lang.Object obj = defaultJSONParser.parse();
        defaultJSONParser.handleResovleTask(obj);
        defaultJSONParser.close();
        return obj;
    }

    public static <T> T parseObject(java.lang.String str, com.alibaba.fastjson.TypeReference<T> typeReference, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, typeReference.type, com.alibaba.fastjson.parser.ParserConfig.global, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter serializeFilter, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, serializeConfig, new com.alibaba.fastjson.serializer.SerializeFilter[]{serializeFilter}, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static final int writeJSONString(java.io.OutputStream outputStream, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) throws java.io.IOException {
        return writeJSONString(outputStream, obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.Class<T> cls, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, cls, com.alibaba.fastjson.parser.ParserConfig.global, (com.alibaba.fastjson.parser.deserializer.ParseProcess) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, serializeConfig, serializeFilterArr, null, i5, serializerFeatureArr);
    }

    public static final int writeJSONString(java.io.OutputStream outputStream, java.lang.Object obj, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) throws java.io.IOException {
        return writeJSONString(outputStream, com.alibaba.fastjson.util.IOUtils.UTF8, obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, null, null, i5, serializerFeatureArr);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.Class<T> cls, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, cls, com.alibaba.fastjson.parser.ParserConfig.global, parseProcess, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(com.alibaba.fastjson.util.IOUtils.UTF8, obj, serializeConfig, serializeFilterArr, str, i5, serializerFeatureArr);
    }

    public static final int writeJSONString(java.io.OutputStream outputStream, java.nio.charset.Charset charset, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) throws java.io.IOException {
        return writeJSONString(outputStream, charset, obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, null, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, type, com.alibaba.fastjson.parser.ParserConfig.global, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static byte[] toJSONBytes(java.nio.charset.Charset charset, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i5, serializerFeatureArr);
        try {
            com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter, serializeConfig);
            if (str != null && str.length() != 0) {
                jSONSerializer.setDateFormat(str);
                jSONSerializer.config(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (serializeFilterArr != null) {
                for (com.alibaba.fastjson.serializer.SerializeFilter serializeFilter : serializeFilterArr) {
                    jSONSerializer.addFilter(serializeFilter);
                }
            }
            jSONSerializer.write(obj);
            return serializeWriter.toBytes(charset);
        } finally {
            serializeWriter.close();
        }
    }

    public static final int writeJSONString(java.io.OutputStream outputStream, java.nio.charset.Charset charset, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i5, serializerFeatureArr);
        try {
            com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter, serializeConfig);
            if (str != null && str.length() != 0) {
                jSONSerializer.setDateFormat(str);
                jSONSerializer.config(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (serializeFilterArr != null) {
                for (com.alibaba.fastjson.serializer.SerializeFilter serializeFilter : serializeFilterArr) {
                    jSONSerializer.addFilter(serializeFilter);
                }
            }
            jSONSerializer.write(obj);
            return serializeWriter.writeToEx(outputStream, charset);
        } finally {
            serializeWriter.close();
        }
    }

    public static java.lang.Object parse(java.lang.String str, int i5) {
        return parse(str, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), i5);
    }

    public static <T> java.util.List<T> parseArray(java.lang.String str, java.lang.Class<T> cls) {
        return parseArray(str, cls, com.alibaba.fastjson.parser.ParserConfig.global);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, type, com.alibaba.fastjson.parser.ParserConfig.global, parseProcess, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static java.lang.Object parse(byte[] bArr, com.alibaba.fastjson.parser.Feature... featureArr) {
        char[] cArrAllocateChars = allocateChars(bArr.length);
        int iDecodeUTF8 = com.alibaba.fastjson.util.IOUtils.decodeUTF8(bArr, 0, bArr.length, cArrAllocateChars);
        if (iDecodeUTF8 < 0) {
            return null;
        }
        return parse(new java.lang.String(cArrAllocateChars, 0, iDecodeUTF8), featureArr);
    }

    public static <T> java.util.List<T> parseArray(java.lang.String str, java.lang.Class<T> cls, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        java.util.ArrayList arrayList = null;
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig);
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i5 = jSONLexer.token();
        if (i5 == 8) {
            jSONLexer.nextToken();
        } else if (i5 != 20 || !jSONLexer.isBlankInput()) {
            arrayList = new java.util.ArrayList();
            defaultJSONParser.parseArray((java.lang.Class<?>) cls, (java.util.Collection) arrayList);
            defaultJSONParser.handleResovleTask(arrayList);
        }
        defaultJSONParser.close();
        return arrayList;
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, int i5, com.alibaba.fastjson.parser.Feature... featureArr) {
        if (str == null) {
            return null;
        }
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            i5 = com.alibaba.fastjson.parser.Feature.config(i5, feature, true);
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), i5);
        T t5 = (T) defaultJSONParser.parseObject(type);
        defaultJSONParser.handleResovleTask(t5);
        defaultJSONParser.close();
        return t5;
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeFilter serializeFilter, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, new com.alibaba.fastjson.serializer.SerializeFilter[]{serializeFilter}, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, serializeFilterArr, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.Object parse(byte[] bArr, int i5, int i6, java.nio.charset.CharsetDecoder charsetDecoder, com.alibaba.fastjson.parser.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            iConfig = com.alibaba.fastjson.parser.Feature.config(iConfig, feature, true);
        }
        return parse(bArr, i5, i6, charsetDecoder, iConfig);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, serializeConfig, (com.alibaba.fastjson.serializer.SerializeFilter) null, serializerFeatureArr);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter serializeFilter, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, serializeConfig, new com.alibaba.fastjson.serializer.SerializeFilter[]{serializeFilter}, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, serializeConfig, serializeFilterArr, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, type, parserConfig, (com.alibaba.fastjson.parser.deserializer.ParseProcess) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i5, serializerFeatureArr);
        try {
            com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter, serializeConfig);
            if (str != null && str.length() != 0) {
                jSONSerializer.setDateFormat(str);
                jSONSerializer.config(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (serializeFilterArr != null) {
                for (com.alibaba.fastjson.serializer.SerializeFilter serializeFilter : serializeFilterArr) {
                    jSONSerializer.addFilter(serializeFilter);
                }
            }
            jSONSerializer.write(obj);
            return serializeWriter.toString();
        } finally {
            serializeWriter.close();
        }
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i5, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, type, parserConfig, (com.alibaba.fastjson.parser.deserializer.ParseProcess) null, i5, featureArr);
    }

    public static java.lang.Object parse(byte[] bArr, int i5, int i6, java.nio.charset.CharsetDecoder charsetDecoder, int i7) {
        charsetDecoder.reset();
        char[] cArrAllocateChars = allocateChars((int) (((double) i6) * ((double) charsetDecoder.maxCharsPerByte())));
        java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(bArr, i5, i6);
        java.nio.CharBuffer charBufferWrap = java.nio.CharBuffer.wrap(cArrAllocateChars);
        com.alibaba.fastjson.util.IOUtils.decode(charsetDecoder, byteBufferWrap, charBufferWrap);
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(cArrAllocateChars, charBufferWrap.position(), com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), i7);
        java.lang.Object obj = defaultJSONParser.parse();
        defaultJSONParser.handleResovleTask(obj);
        defaultJSONParser.close();
        return obj;
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, int i5, com.alibaba.fastjson.parser.Feature... featureArr) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (featureArr != null) {
            for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
                i5 |= feature.mask;
            }
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig, i5);
        if (parseProcess != null) {
            if (parseProcess instanceof com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider) {
                defaultJSONParser.getExtraTypeProviders().add((com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider) parseProcess);
            }
            if (parseProcess instanceof com.alibaba.fastjson.parser.deserializer.ExtraProcessor) {
                defaultJSONParser.getExtraProcessors().add((com.alibaba.fastjson.parser.deserializer.ExtraProcessor) parseProcess);
            }
            if (parseProcess instanceof com.alibaba.fastjson.parser.deserializer.FieldTypeResolver) {
                defaultJSONParser.setFieldTypeResolver((com.alibaba.fastjson.parser.deserializer.FieldTypeResolver) parseProcess);
            }
        }
        T t5 = (T) defaultJSONParser.parseObject(type, (java.lang.Object) null);
        defaultJSONParser.handleResovleTask(t5);
        defaultJSONParser.close();
        return t5;
    }

    public static java.util.List<java.lang.Object> parseArray(java.lang.String str, java.lang.reflect.Type[] typeArr) {
        return parseArray(str, typeArr, com.alibaba.fastjson.parser.ParserConfig.global);
    }

    @Override // com.alibaba.fastjson.JSONStreamAware
    public void writeJSONString(java.lang.Appendable appendable) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter();
        try {
            try {
                new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(this);
                appendable.append(serializeWriter.toString());
                serializeWriter.close();
            } catch (java.io.IOException e5) {
                throw new com.alibaba.fastjson.JSONException(e5.getMessage(), e5);
            }
        } catch (java.lang.Throwable th) {
            serializeWriter.close();
            throw th;
        }
    }

    public static java.util.List<java.lang.Object> parseArray(java.lang.String str, java.lang.reflect.Type[] typeArr, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig);
        java.lang.Object[] array = defaultJSONParser.parseArray(typeArr);
        java.util.List<java.lang.Object> listAsList = array != null ? java.util.Arrays.asList(array) : null;
        defaultJSONParser.handleResovleTask(listAsList);
        defaultJSONParser.close();
        return listAsList;
    }

    public static java.lang.String toJSONString(java.lang.Object obj, boolean z4) {
        return !z4 ? toJSONString(obj) : toJSONString(obj, com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat);
    }

    public static java.lang.Object parse(java.lang.String str, com.alibaba.fastjson.parser.Feature... featureArr) {
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            iConfig = com.alibaba.fastjson.parser.Feature.config(iConfig, feature, true);
        }
        return parse(str, iConfig);
    }

    @Override // com.alibaba.fastjson.JSONAware
    public java.lang.String toJSONString() {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter();
        try {
            new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(this);
            return serializeWriter.toString();
        } finally {
            serializeWriter.close();
        }
    }

    public static <T> T parseObject(byte[] bArr, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(bArr, 0, bArr.length, com.alibaba.fastjson.util.IOUtils.UTF8, type, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, int i5, int i6, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(bArr, i5, i6, charset, type, com.alibaba.fastjson.parser.ParserConfig.global, null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, int i5, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(bArr, 0, bArr.length, charset, type, parserConfig, parseProcess, i5, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, int i5, int i6, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, int i7, com.alibaba.fastjson.parser.Feature... featureArr) throws java.lang.Throwable {
        java.lang.String str;
        java.io.InputStreamReader inputStreamReader;
        java.lang.String all;
        if (charset == null) {
            charset = com.alibaba.fastjson.util.IOUtils.UTF8;
        }
        java.io.InputStreamReader inputStreamReader2 = null;
        if (charset == com.alibaba.fastjson.util.IOUtils.UTF8) {
            char[] cArrAllocateChars = allocateChars(bArr.length);
            int iDecodeUTF8 = com.alibaba.fastjson.util.IOUtils.decodeUTF8(bArr, i5, i6, cArrAllocateChars);
            if (iDecodeUTF8 < 0) {
                try {
                    inputStreamReader = new java.io.InputStreamReader(new java.util.zip.GZIPInputStream(new java.io.ByteArrayInputStream(bArr, i5, i6)), "UTF-8");
                    try {
                        all = com.alibaba.fastjson.util.IOUtils.readAll(inputStreamReader);
                        com.alibaba.fastjson.util.IOUtils.close(inputStreamReader);
                    } catch (java.lang.Exception unused) {
                        com.alibaba.fastjson.util.IOUtils.close(inputStreamReader);
                        return null;
                    } catch (java.lang.Throwable th) {
                        th = th;
                        inputStreamReader2 = inputStreamReader;
                        com.alibaba.fastjson.util.IOUtils.close(inputStreamReader2);
                        throw th;
                    }
                } catch (java.lang.Exception unused2) {
                    inputStreamReader = null;
                } catch (java.lang.Throwable th2) {
                    th = th2;
                }
            } else {
                all = null;
            }
            if (all == null && iDecodeUTF8 < 0) {
                return null;
            }
            if (all == null) {
                all = new java.lang.String(cArrAllocateChars, 0, iDecodeUTF8);
            }
            str = all;
        } else {
            if (i6 < 0) {
                return null;
            }
            str = new java.lang.String(bArr, i5, i6, charset);
        }
        return (T) parseObject(str, type, parserConfig, parseProcess, i7, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, int i5, int i6, java.nio.charset.CharsetDecoder charsetDecoder, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        charsetDecoder.reset();
        char[] cArrAllocateChars = allocateChars((int) (((double) i6) * ((double) charsetDecoder.maxCharsPerByte())));
        java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(bArr, i5, i6);
        java.nio.CharBuffer charBufferWrap = java.nio.CharBuffer.wrap(cArrAllocateChars);
        com.alibaba.fastjson.util.IOUtils.decode(charsetDecoder, byteBufferWrap, charBufferWrap);
        return (T) parseObject(cArrAllocateChars, charBufferWrap.position(), type, featureArr);
    }

    public static <T> T parseObject(char[] cArr, int i5, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            iConfig = com.alibaba.fastjson.parser.Feature.config(iConfig, feature, true);
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(cArr, i5, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), iConfig);
        T t5 = (T) defaultJSONParser.parseObject(type);
        defaultJSONParser.handleResovleTask(t5);
        defaultJSONParser.close();
        return t5;
    }

    public static <T> T parseObject(java.io.InputStream inputStream, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) throws java.io.IOException {
        return (T) parseObject(inputStream, com.alibaba.fastjson.util.IOUtils.UTF8, type, featureArr);
    }

    public static <T> T parseObject(java.io.InputStream inputStream, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) throws java.io.IOException {
        return (T) parseObject(inputStream, charset, type, com.alibaba.fastjson.parser.ParserConfig.global, featureArr);
    }

    public static <T> T parseObject(java.io.InputStream inputStream, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.Feature... featureArr) throws java.io.IOException {
        return (T) parseObject(inputStream, charset, type, parserConfig, (com.alibaba.fastjson.parser.deserializer.ParseProcess) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(java.io.InputStream inputStream, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, int i5, com.alibaba.fastjson.parser.Feature... featureArr) throws java.io.IOException {
        if (charset == null) {
            charset = com.alibaba.fastjson.util.IOUtils.UTF8;
        }
        java.nio.charset.Charset charset2 = charset;
        byte[] bArrAllocateBytes = allocateBytes(65536);
        int i6 = 0;
        while (true) {
            int i7 = inputStream.read(bArrAllocateBytes, i6, bArrAllocateBytes.length - i6);
            if (i7 == -1) {
                return (T) parseObject(bArrAllocateBytes, 0, i6, charset2, type, parserConfig, parseProcess, i5, featureArr);
            }
            i6 += i7;
            if (i6 == bArrAllocateBytes.length) {
                byte[] bArr = new byte[(bArrAllocateBytes.length * 3) / 2];
                java.lang.System.arraycopy(bArrAllocateBytes, 0, bArr, 0, bArrAllocateBytes.length);
                bArrAllocateBytes = bArr;
            }
        }
    }

    public static <T> T parseObject(java.lang.String str, java.lang.Class<T> cls) {
        return (T) parseObject(str, (java.lang.Class) cls, new com.alibaba.fastjson.parser.Feature[0]);
    }
}
