package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ParserConfig {
    public static final java.lang.String AUTOTYPE_ACCEPT = "fastjson.parser.autoTypeAccept";
    private static final java.lang.String[] AUTO_TYPE_ACCEPT_LIST;
    private static final long[] INTERNAL_WHITELIST_HASHCODES;
    private static boolean awtError;
    public static com.alibaba.fastjson.parser.ParserConfig global;
    private static boolean guavaError;
    private static com.alibaba.fastjson.util.Function<java.lang.Class<?>, java.lang.Boolean> isPrimitiveFuncation;
    private static boolean jdk8Error;
    private static boolean jodaError;
    private long[] acceptHashCodes;
    private boolean asmEnable;
    public com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory asmFactory;
    private volatile java.util.List<com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler> autoTypeCheckHandlers;
    private boolean autoTypeSupport;
    public boolean compatibleWithJavaBean;
    public java.lang.ClassLoader defaultClassLoader;
    private long[] denyHashCodes;
    private final com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> deserializers;
    public final boolean fieldBased;
    private final java.util.concurrent.Callable<java.lang.Void> initDeserializersWithJavaSql;
    private long[] internalDenyHashCodes;
    private boolean jacksonCompatible;
    private final com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer>> mixInDeserializers;
    private java.util.List<com.alibaba.fastjson.spi.Module> modules;
    public com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy;
    private boolean safeMode;
    public final com.alibaba.fastjson.parser.SymbolTable symbolTable;
    private final java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Class<?>> typeMapping;
    public static final java.lang.String DENY_PROPERTY_INTERNAL = "fastjson.parser.deny.internal";
    public static final java.lang.String[] DENYS_INTERNAL = splitItemsFormProperty(com.alibaba.fastjson.util.IOUtils.getStringProperty(DENY_PROPERTY_INTERNAL));
    public static final java.lang.String DENY_PROPERTY = "fastjson.parser.deny";
    public static final java.lang.String[] DENYS = splitItemsFormProperty(com.alibaba.fastjson.util.IOUtils.getStringProperty(DENY_PROPERTY));
    public static final java.lang.String AUTOTYPE_SUPPORT_PROPERTY = "fastjson.parser.autoTypeSupport";
    public static final boolean AUTO_SUPPORT = "true".equals(com.alibaba.fastjson.util.IOUtils.getStringProperty(AUTOTYPE_SUPPORT_PROPERTY));
    public static final java.lang.String SAFE_MODE_PROPERTY = "fastjson.parser.safeMode";
    public static final boolean SAFE_MODE = "true".equals(com.alibaba.fastjson.util.IOUtils.getStringProperty(SAFE_MODE_PROPERTY));

    public interface AutoTypeCheckHandler {
        java.lang.Class<?> handler(java.lang.String str, java.lang.Class<?> cls, int i5);
    }

    static {
        java.lang.String[] strArrSplitItemsFormProperty = splitItemsFormProperty(com.alibaba.fastjson.util.IOUtils.getStringProperty(AUTOTYPE_ACCEPT));
        if (strArrSplitItemsFormProperty == null) {
            strArrSplitItemsFormProperty = new java.lang.String[0];
        }
        AUTO_TYPE_ACCEPT_LIST = strArrSplitItemsFormProperty;
        INTERNAL_WHITELIST_HASHCODES = new long[]{-6976602508726000783L, -6293031534589903644L, 59775428743665658L, 7267793227937552092L};
        global = new com.alibaba.fastjson.parser.ParserConfig();
        awtError = false;
        jdk8Error = false;
        jodaError = false;
        guavaError = false;
        isPrimitiveFuncation = new com.alibaba.fastjson.util.Function<java.lang.Class<?>, java.lang.Boolean>() { // from class: com.alibaba.fastjson.parser.ParserConfig.2
            @Override // com.alibaba.fastjson.util.Function
            public java.lang.Boolean apply(java.lang.Class<?> cls) {
                return java.lang.Boolean.valueOf(cls == java.sql.Date.class || cls == java.sql.Time.class || cls == java.sql.Timestamp.class);
            }
        };
    }

    public ParserConfig() {
        this(false);
    }

    private void addItemsToAccept(java.lang.String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (java.lang.String str : strArr) {
            addAccept(str);
        }
    }

    private void addItemsToDeny(java.lang.String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (java.lang.String str : strArr) {
            addDeny(str);
        }
    }

    private void addItemsToDeny0(java.lang.String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (java.lang.String str : strArr) {
            addDenyInternal(str);
        }
    }

    private static java.lang.reflect.Method getEnumCreator(java.lang.Class cls, java.lang.Class cls2) {
        for (java.lang.reflect.Method method : cls.getMethods()) {
            if (java.lang.reflect.Modifier.isStatic(method.getModifiers()) && method.getReturnType() == cls2 && method.getParameterTypes().length == 1 && ((com.alibaba.fastjson.annotation.JSONCreator) method.getAnnotation(com.alibaba.fastjson.annotation.JSONCreator.class)) != null) {
                return method;
            }
        }
        return null;
    }

    public static java.lang.reflect.Field getFieldFromCache(java.lang.String str, java.util.Map<java.lang.String, java.lang.reflect.Field> map) {
        java.lang.reflect.Field field = map.get(str);
        if (field == null) {
            field = map.get("_" + str);
        }
        if (field == null) {
            field = map.get("m_" + str);
        }
        if (field != null) {
            return field;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt >= 'a' && cCharAt <= 'z') {
            char[] charArray = str.toCharArray();
            charArray[0] = (char) (charArray[0] - ' ');
            field = map.get(new java.lang.String(charArray));
        }
        if (str.length() <= 2) {
            return field;
        }
        char cCharAt2 = str.charAt(1);
        if (cCharAt < 'a' || cCharAt > 'z' || cCharAt2 < 'A' || cCharAt2 > 'Z') {
            return field;
        }
        for (java.util.Map.Entry<java.lang.String, java.lang.reflect.Field> entry : map.entrySet()) {
            if (str.equalsIgnoreCase(entry.getKey())) {
                return entry.getValue();
            }
        }
        return field;
    }

    public static com.alibaba.fastjson.parser.ParserConfig getGlobalInstance() {
        return global;
    }

    private void initDeserializers() {
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap = this.deserializers;
        com.alibaba.fastjson.serializer.MiscCodec miscCodec = com.alibaba.fastjson.serializer.MiscCodec.instance;
        identityHashMap.put(java.text.SimpleDateFormat.class, miscCodec);
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap2 = this.deserializers;
        com.alibaba.fastjson.serializer.CalendarCodec calendarCodec = com.alibaba.fastjson.serializer.CalendarCodec.instance;
        identityHashMap2.put(java.util.Calendar.class, calendarCodec);
        this.deserializers.put(javax.xml.datatype.XMLGregorianCalendar.class, calendarCodec);
        this.deserializers.put(com.alibaba.fastjson.JSONObject.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap3 = this.deserializers;
        com.alibaba.fastjson.serializer.CollectionCodec collectionCodec = com.alibaba.fastjson.serializer.CollectionCodec.instance;
        identityHashMap3.put(com.alibaba.fastjson.JSONArray.class, collectionCodec);
        this.deserializers.put(java.util.Map.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.HashMap.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.LinkedHashMap.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.TreeMap.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.concurrent.ConcurrentMap.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.concurrent.ConcurrentHashMap.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.Collection.class, collectionCodec);
        this.deserializers.put(java.util.List.class, collectionCodec);
        this.deserializers.put(java.util.ArrayList.class, collectionCodec);
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap4 = this.deserializers;
        com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer javaObjectDeserializer = com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer.instance;
        identityHashMap4.put(java.lang.Object.class, javaObjectDeserializer);
        this.deserializers.put(java.lang.String.class, com.alibaba.fastjson.serializer.StringCodec.instance);
        this.deserializers.put(java.lang.StringBuffer.class, com.alibaba.fastjson.serializer.StringCodec.instance);
        this.deserializers.put(java.lang.StringBuilder.class, com.alibaba.fastjson.serializer.StringCodec.instance);
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap5 = this.deserializers;
        java.lang.Class cls = java.lang.Character.TYPE;
        com.alibaba.fastjson.serializer.CharacterCodec characterCodec = com.alibaba.fastjson.serializer.CharacterCodec.instance;
        identityHashMap5.put(cls, characterCodec);
        this.deserializers.put(java.lang.Character.class, characterCodec);
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap6 = this.deserializers;
        java.lang.Class cls2 = java.lang.Byte.TYPE;
        com.alibaba.fastjson.parser.deserializer.NumberDeserializer numberDeserializer = com.alibaba.fastjson.parser.deserializer.NumberDeserializer.instance;
        identityHashMap6.put(cls2, numberDeserializer);
        this.deserializers.put(java.lang.Byte.class, numberDeserializer);
        this.deserializers.put(java.lang.Short.TYPE, numberDeserializer);
        this.deserializers.put(java.lang.Short.class, numberDeserializer);
        this.deserializers.put(java.lang.Integer.TYPE, com.alibaba.fastjson.serializer.IntegerCodec.instance);
        this.deserializers.put(java.lang.Integer.class, com.alibaba.fastjson.serializer.IntegerCodec.instance);
        this.deserializers.put(java.lang.Long.TYPE, com.alibaba.fastjson.serializer.LongCodec.instance);
        this.deserializers.put(java.lang.Long.class, com.alibaba.fastjson.serializer.LongCodec.instance);
        this.deserializers.put(java.math.BigInteger.class, com.alibaba.fastjson.serializer.BigIntegerCodec.instance);
        this.deserializers.put(java.math.BigDecimal.class, com.alibaba.fastjson.serializer.BigDecimalCodec.instance);
        this.deserializers.put(java.lang.Float.TYPE, com.alibaba.fastjson.serializer.FloatCodec.instance);
        this.deserializers.put(java.lang.Float.class, com.alibaba.fastjson.serializer.FloatCodec.instance);
        this.deserializers.put(java.lang.Double.TYPE, numberDeserializer);
        this.deserializers.put(java.lang.Double.class, numberDeserializer);
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap7 = this.deserializers;
        java.lang.Class cls3 = java.lang.Boolean.TYPE;
        com.alibaba.fastjson.serializer.BooleanCodec booleanCodec = com.alibaba.fastjson.serializer.BooleanCodec.instance;
        identityHashMap7.put(cls3, booleanCodec);
        this.deserializers.put(java.lang.Boolean.class, booleanCodec);
        this.deserializers.put(java.lang.Class.class, miscCodec);
        this.deserializers.put(char[].class, new com.alibaba.fastjson.serializer.CharArrayCodec());
        this.deserializers.put(java.util.concurrent.atomic.AtomicBoolean.class, booleanCodec);
        this.deserializers.put(java.util.concurrent.atomic.AtomicInteger.class, com.alibaba.fastjson.serializer.IntegerCodec.instance);
        this.deserializers.put(java.util.concurrent.atomic.AtomicLong.class, com.alibaba.fastjson.serializer.LongCodec.instance);
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap8 = this.deserializers;
        com.alibaba.fastjson.serializer.ReferenceCodec referenceCodec = com.alibaba.fastjson.serializer.ReferenceCodec.instance;
        identityHashMap8.put(java.util.concurrent.atomic.AtomicReference.class, referenceCodec);
        this.deserializers.put(java.lang.ref.WeakReference.class, referenceCodec);
        this.deserializers.put(java.lang.ref.SoftReference.class, referenceCodec);
        this.deserializers.put(java.util.UUID.class, miscCodec);
        this.deserializers.put(java.util.TimeZone.class, miscCodec);
        this.deserializers.put(java.util.Locale.class, miscCodec);
        this.deserializers.put(java.util.Currency.class, miscCodec);
        this.deserializers.put(java.net.Inet4Address.class, miscCodec);
        this.deserializers.put(java.net.Inet6Address.class, miscCodec);
        this.deserializers.put(java.net.InetSocketAddress.class, miscCodec);
        this.deserializers.put(java.io.File.class, miscCodec);
        this.deserializers.put(java.net.URI.class, miscCodec);
        this.deserializers.put(java.net.URL.class, miscCodec);
        this.deserializers.put(java.util.regex.Pattern.class, miscCodec);
        this.deserializers.put(java.nio.charset.Charset.class, miscCodec);
        this.deserializers.put(com.alibaba.fastjson.JSONPath.class, miscCodec);
        this.deserializers.put(java.lang.Number.class, numberDeserializer);
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap9 = this.deserializers;
        com.alibaba.fastjson.serializer.AtomicCodec atomicCodec = com.alibaba.fastjson.serializer.AtomicCodec.instance;
        identityHashMap9.put(java.util.concurrent.atomic.AtomicIntegerArray.class, atomicCodec);
        this.deserializers.put(java.util.concurrent.atomic.AtomicLongArray.class, atomicCodec);
        this.deserializers.put(java.lang.StackTraceElement.class, com.alibaba.fastjson.parser.deserializer.StackTraceElementDeserializer.instance);
        this.deserializers.put(java.io.Serializable.class, javaObjectDeserializer);
        this.deserializers.put(java.lang.Cloneable.class, javaObjectDeserializer);
        this.deserializers.put(java.lang.Comparable.class, javaObjectDeserializer);
        this.deserializers.put(java.io.Closeable.class, javaObjectDeserializer);
        this.deserializers.put(com.alibaba.fastjson.JSONPObject.class, new com.alibaba.fastjson.parser.deserializer.JSONPDeserializer());
        com.alibaba.fastjson.util.ModuleUtil.callWhenHasJavaSql(this.initDeserializersWithJavaSql);
    }

    public static boolean isPrimitive2(java.lang.Class<?> cls) {
        java.lang.Boolean boolValueOf = java.lang.Boolean.valueOf(cls.isPrimitive() || cls == java.lang.Boolean.class || cls == java.lang.Character.class || cls == java.lang.Byte.class || cls == java.lang.Short.class || cls == java.lang.Integer.class || cls == java.lang.Long.class || cls == java.lang.Float.class || cls == java.lang.Double.class || cls == java.math.BigInteger.class || cls == java.math.BigDecimal.class || cls == java.lang.String.class || cls == java.util.Date.class || cls.isEnum());
        if (!boolValueOf.booleanValue()) {
            boolValueOf = (java.lang.Boolean) com.alibaba.fastjson.util.ModuleUtil.callWhenHasJavaSql(isPrimitiveFuncation, cls);
        }
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }

    public static void parserAllFieldToCache(java.lang.Class<?> cls, java.util.Map<java.lang.String, java.lang.reflect.Field> map) {
        for (java.lang.reflect.Field field : cls.getDeclaredFields()) {
            java.lang.String name = field.getName();
            if (!map.containsKey(name)) {
                map.put(name, field);
            }
        }
        if (cls.getSuperclass() == null || cls.getSuperclass() == java.lang.Object.class) {
            return;
        }
        parserAllFieldToCache(cls.getSuperclass(), map);
    }

    private static java.lang.String[] splitItemsFormProperty(java.lang.String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return str.split(",");
    }

    public void addAccept(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long jFnv1a_64 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str);
        if (java.util.Arrays.binarySearch(this.acceptHashCodes, jFnv1a_64) >= 0) {
            return;
        }
        long[] jArr = this.acceptHashCodes;
        int length = jArr.length + 1;
        long[] jArr2 = new long[length];
        jArr2[length - 1] = jFnv1a_64;
        java.lang.System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        java.util.Arrays.sort(jArr2);
        this.acceptHashCodes = jArr2;
    }

    public void addAutoTypeCheckHandler(com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler autoTypeCheckHandler) {
        java.util.List copyOnWriteArrayList = this.autoTypeCheckHandlers;
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new java.util.concurrent.CopyOnWriteArrayList();
            this.autoTypeCheckHandlers = copyOnWriteArrayList;
        }
        copyOnWriteArrayList.add(autoTypeCheckHandler);
    }

    public void addDeny(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long jFnv1a_64 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str);
        if (java.util.Arrays.binarySearch(this.denyHashCodes, jFnv1a_64) >= 0) {
            return;
        }
        long[] jArr = this.denyHashCodes;
        int length = jArr.length + 1;
        long[] jArr2 = new long[length];
        jArr2[length - 1] = jFnv1a_64;
        java.lang.System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        java.util.Arrays.sort(jArr2);
        this.denyHashCodes = jArr2;
    }

    public void addDenyInternal(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long jFnv1a_64 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str);
        long[] jArr = this.internalDenyHashCodes;
        if (jArr == null) {
            this.internalDenyHashCodes = new long[]{jFnv1a_64};
            return;
        }
        if (java.util.Arrays.binarySearch(jArr, jFnv1a_64) >= 0) {
            return;
        }
        long[] jArr2 = this.internalDenyHashCodes;
        int length = jArr2.length + 1;
        long[] jArr3 = new long[length];
        jArr3[length - 1] = jFnv1a_64;
        java.lang.System.arraycopy(jArr2, 0, jArr3, 0, jArr2.length);
        java.util.Arrays.sort(jArr3);
        this.internalDenyHashCodes = jArr3;
    }

    public java.lang.Class<?> checkAutoType(java.lang.Class cls) {
        return get(cls) != null ? cls : checkAutoType(cls.getName(), null, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public void clearDeserializers() {
        this.deserializers.clear();
        initDeserializers();
    }

    public void configFromPropety(java.util.Properties properties) {
        addItemsToDeny(splitItemsFormProperty(properties.getProperty(DENY_PROPERTY)));
        addItemsToAccept(splitItemsFormProperty(properties.getProperty(AUTOTYPE_ACCEPT)));
        java.lang.String property = properties.getProperty(AUTOTYPE_SUPPORT_PROPERTY);
        if ("true".equals(property)) {
            this.autoTypeSupport = true;
        } else if ("false".equals(property)) {
            this.autoTypeSupport = false;
        }
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer createFieldDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        java.lang.Class<?> clsDeserializeUsing;
        java.lang.Class<?> cls = javaBeanInfo.clazz;
        java.lang.Class<?> cls2 = fieldInfo.fieldClass;
        com.alibaba.fastjson.annotation.JSONField annotation = fieldInfo.getAnnotation();
        java.lang.Class<?> cls3 = null;
        if (annotation != null && (clsDeserializeUsing = annotation.deserializeUsing()) != java.lang.Void.class) {
            cls3 = clsDeserializeUsing;
        }
        return (cls3 == null && (cls2 == java.util.List.class || cls2 == java.util.ArrayList.class)) ? new com.alibaba.fastjson.parser.deserializer.ArrayListTypeFieldDeserializer(parserConfig, cls, fieldInfo) : new com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer(parserConfig, cls, fieldInfo);
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer createJavaBeanDeserializer(java.lang.Class<?> cls, java.lang.reflect.Type type) {
        com.alibaba.fastjson.annotation.JSONField annotation;
        java.lang.reflect.Method method;
        com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory aSMDeserializerFactory;
        boolean zCheckName = this.asmEnable & (!this.fieldBased);
        if (zCheckName) {
            com.alibaba.fastjson.annotation.JSONType jSONType = (com.alibaba.fastjson.annotation.JSONType) com.alibaba.fastjson.util.TypeUtils.getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class);
            if (jSONType != null) {
                java.lang.Class<?> clsDeserializer = jSONType.deserializer();
                if (clsDeserializer != java.lang.Void.class) {
                    try {
                        java.lang.Object objNewInstance = clsDeserializer.newInstance();
                        if (objNewInstance instanceof com.alibaba.fastjson.parser.deserializer.ObjectDeserializer) {
                            return (com.alibaba.fastjson.parser.deserializer.ObjectDeserializer) objNewInstance;
                        }
                    } catch (java.lang.Throwable unused) {
                    }
                }
                zCheckName = jSONType.asm() && jSONType.parseFeatures().length == 0;
            }
            if (zCheckName) {
                java.lang.Class<?> builderClass = com.alibaba.fastjson.util.JavaBeanInfo.getBuilderClass(cls, jSONType);
                if (builderClass == null) {
                    builderClass = cls;
                }
                do {
                    if (!java.lang.reflect.Modifier.isPublic(builderClass.getModifiers())) {
                        zCheckName = false;
                        break;
                    }
                    builderClass = builderClass.getSuperclass();
                    if (builderClass == java.lang.Object.class) {
                        break;
                    }
                } while (builderClass != null);
            }
        }
        if (cls.getTypeParameters().length != 0) {
            zCheckName = false;
        }
        if (zCheckName && (aSMDeserializerFactory = this.asmFactory) != null && aSMDeserializerFactory.classLoader.isExternalClass(cls)) {
            zCheckName = false;
        }
        if (zCheckName) {
            zCheckName = com.alibaba.fastjson.util.ASMUtils.checkName(cls.getSimpleName());
        }
        if (zCheckName) {
            if (cls.isInterface()) {
                zCheckName = false;
            }
            com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfoBuild = com.alibaba.fastjson.util.JavaBeanInfo.build(cls, type, this.propertyNamingStrategy, false, com.alibaba.fastjson.util.TypeUtils.compatibleWithJavaBean, this.jacksonCompatible);
            if (zCheckName && javaBeanInfoBuild.fields.length > 200) {
                zCheckName = false;
            }
            java.lang.reflect.Constructor<?> constructor = javaBeanInfoBuild.defaultConstructor;
            if (zCheckName && constructor == null && !cls.isInterface()) {
                zCheckName = false;
            }
            for (com.alibaba.fastjson.util.FieldInfo fieldInfo : javaBeanInfoBuild.fields) {
                if (!fieldInfo.getOnly) {
                    java.lang.Class<?> cls2 = fieldInfo.fieldClass;
                    if (java.lang.reflect.Modifier.isPublic(cls2.getModifiers()) && ((!cls2.isMemberClass() || java.lang.reflect.Modifier.isStatic(cls2.getModifiers())) && ((fieldInfo.getMember() == null || com.alibaba.fastjson.util.ASMUtils.checkName(fieldInfo.getMember().getName())) && (((annotation = fieldInfo.getAnnotation()) == null || (com.alibaba.fastjson.util.ASMUtils.checkName(annotation.name()) && annotation.format().length() == 0 && annotation.deserializeUsing() == java.lang.Void.class && annotation.parseFeatures().length == 0 && !annotation.unwrapped())) && (((method = fieldInfo.method) == null || method.getParameterTypes().length <= 1) && (!cls2.isEnum() || (getDeserializer(cls2) instanceof com.alibaba.fastjson.parser.deserializer.EnumDeserializer))))))) {
                    }
                }
                zCheckName = false;
                break;
            }
        }
        if (zCheckName && cls.isMemberClass() && !java.lang.reflect.Modifier.isStatic(cls.getModifiers())) {
            zCheckName = false;
        }
        if (!((zCheckName && com.alibaba.fastjson.util.TypeUtils.isXmlField(cls)) ? false : zCheckName)) {
            return new com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer(this, cls, type);
        }
        com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfoBuild2 = com.alibaba.fastjson.util.JavaBeanInfo.build(cls, type, this.propertyNamingStrategy);
        try {
            return this.asmFactory.createJavaBeanDeserializer(this, javaBeanInfoBuild2);
        } catch (com.alibaba.fastjson.JSONException unused2) {
            return new com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer(this, javaBeanInfoBuild2);
        } catch (java.lang.NoSuchMethodException unused3) {
            return new com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer(this, cls, type);
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONException("create asm deserializer error, " + cls.getName(), e5);
        }
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer get(java.lang.reflect.Type type) {
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            return this.deserializers.get(type);
        }
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap = this.mixInDeserializers.get(type);
        if (identityHashMap == null) {
            return null;
        }
        return identityHashMap.get(mixInAnnotations);
    }

    public java.lang.ClassLoader getDefaultClassLoader() {
        return this.defaultClassLoader;
    }

    public com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> getDerializers() {
        return this.deserializers;
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer getDeserializer(java.lang.reflect.Type type) {
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer = get(type);
        if (objectDeserializer != null) {
            return objectDeserializer;
        }
        if (type instanceof java.lang.Class) {
            return getDeserializer((java.lang.Class) type, type);
        }
        if (type instanceof java.lang.reflect.ParameterizedType) {
            java.lang.reflect.Type rawType = ((java.lang.reflect.ParameterizedType) type).getRawType();
            return rawType instanceof java.lang.Class ? getDeserializer((java.lang.Class) rawType, type) : getDeserializer(rawType);
        }
        if (type instanceof java.lang.reflect.WildcardType) {
            java.lang.reflect.Type[] upperBounds = ((java.lang.reflect.WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                return getDeserializer(upperBounds[0]);
            }
        }
        return com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer.instance;
    }

    public com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> getDeserializers() {
        return this.deserializers;
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer getEnumDeserializer(java.lang.Class<?> cls) {
        return new com.alibaba.fastjson.parser.deserializer.EnumDeserializer(cls);
    }

    public void initJavaBeanDeserializers(java.lang.Class<?>... clsArr) {
        if (clsArr == null) {
            return;
        }
        for (java.lang.Class<?> cls : clsArr) {
            if (cls != null) {
                putDeserializer(cls, createJavaBeanDeserializer(cls, cls));
            }
        }
    }

    public boolean isAsmEnable() {
        return this.asmEnable;
    }

    public boolean isAutoTypeSupport() {
        return this.autoTypeSupport;
    }

    public boolean isJacksonCompatible() {
        return this.jacksonCompatible;
    }

    public boolean isPrimitive(java.lang.Class<?> cls) {
        return isPrimitive2(cls);
    }

    public boolean isSafeMode() {
        return this.safeMode;
    }

    public void putDeserializer(java.lang.reflect.Type type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer) {
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            this.deserializers.put(type, objectDeserializer);
            return;
        }
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap = this.mixInDeserializers.get(type);
        if (identityHashMap == null) {
            identityHashMap = new com.alibaba.fastjson.util.IdentityHashMap<>(4);
            this.mixInDeserializers.put(type, identityHashMap);
        }
        identityHashMap.put(mixInAnnotations, objectDeserializer);
    }

    public void register(java.lang.String str, java.lang.Class cls) {
        this.typeMapping.putIfAbsent(str, cls);
    }

    public void setAsmEnable(boolean z4) {
        this.asmEnable = z4;
    }

    public void setAutoTypeSupport(boolean z4) {
        this.autoTypeSupport = z4;
    }

    public void setDefaultClassLoader(java.lang.ClassLoader classLoader) {
        this.defaultClassLoader = classLoader;
    }

    public void setJacksonCompatible(boolean z4) {
        this.jacksonCompatible = z4;
    }

    public void setSafeMode(boolean z4) {
        this.safeMode = z4;
    }

    public ParserConfig(boolean z4) {
        this(null, null, z4);
    }

    public void register(com.alibaba.fastjson.spi.Module module) {
        this.modules.add(module);
    }

    public ParserConfig(java.lang.ClassLoader classLoader) {
        this(null, classLoader, false);
    }

    public java.lang.Class<?> checkAutoType(java.lang.String str, java.lang.Class<?> cls) {
        return checkAutoType(str, cls, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public ParserConfig(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory aSMDeserializerFactory) {
        this(aSMDeserializerFactory, null, false);
    }

    /* JADX WARN: Code duplicated, block: B:179:0x0315 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:181:0x0319 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:182:0x031b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:185:0x0320  */
    /* JADX WARN: Code duplicated, block: B:188:0x0329 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:189:0x032b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:190:0x032d  */
    /* JADX WARN: Code duplicated, block: B:192:0x0331  */
    /* JADX WARN: Code duplicated, block: B:194:0x0339  */
    /* JADX WARN: Code duplicated, block: B:215:0x03af  */
    /* JADX WARN: Code duplicated, block: B:217:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:222:0x03d1 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:224:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:225:0x03d5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:37:0x0069  */
    public java.lang.Class<?> checkAutoType(java.lang.String str, java.lang.Class<?> cls, int i5) {
        boolean z4;
        java.io.InputStream resourceAsStream;
        boolean z5;
        boolean zHasJsonType;
        boolean z6;
        long j5;
        java.lang.Class<?> clsLoadClass;
        if (str == null) {
            return null;
        }
        if (this.autoTypeCheckHandlers != null) {
            java.util.Iterator<com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler> it = this.autoTypeCheckHandlers.iterator();
            while (it.hasNext()) {
                java.lang.Class<?> clsHandler = it.next().handler(str, cls, i5);
                if (clsHandler != null) {
                    return clsHandler;
                }
            }
        }
        int i6 = com.alibaba.fastjson.parser.Feature.SafeMode.mask;
        boolean z7 = true;
        if (!((!this.safeMode && (i5 & i6) == 0 && (i6 & com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE) == 0) ? false : true)) {
            int i7 = com.alibaba.fastjson.parser.Feature.SupportAutoType.mask;
            boolean z8 = (!this.autoTypeSupport && (i5 & i7) == 0 && (com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE & i7) == 0) ? false : true;
            if (str.length() < 192 && str.length() >= 3) {
                if (cls == null) {
                    z4 = false;
                } else {
                    long jFnv1a_64 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(cls.getName());
                    if (jFnv1a_64 == -8024746738719829346L || jFnv1a_64 == 3247277300971823414L || jFnv1a_64 == -5811778396720452501L || jFnv1a_64 == -1368967840069965882L || jFnv1a_64 == 2980334044947851925L || jFnv1a_64 == 5183404141909004468L || jFnv1a_64 == 7222019943667248779L || jFnv1a_64 == -2027296626235911549L || jFnv1a_64 == -2114196234051346931L || jFnv1a_64 == -2939497380989775398L) {
                        z4 = false;
                    } else {
                        z4 = true;
                    }
                }
                java.lang.String strReplace = str.replace('$', '.');
                long jCharAt = (((long) strReplace.charAt(0)) ^ com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                if (jCharAt == -5808493101479473382L) {
                    throw new com.alibaba.fastjson.JSONException("autoType is not support. " + str);
                }
                boolean z9 = z4;
                if ((((long) strReplace.charAt(strReplace.length() - 1)) ^ jCharAt) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime != 655701488918567152L) {
                    long jCharAt2 = (((((((long) strReplace.charAt(0)) ^ com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime) ^ ((long) strReplace.charAt(1))) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime) ^ ((long) strReplace.charAt(2))) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                    long jFnv1a_65 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(strReplace);
                    boolean z10 = java.util.Arrays.binarySearch(INTERNAL_WHITELIST_HASHCODES, jFnv1a_65) >= 0;
                    if (this.internalDenyHashCodes != null) {
                        long j6 = jCharAt2;
                        int i8 = 3;
                        while (i8 < strReplace.length()) {
                            long j7 = jFnv1a_65;
                            long jCharAt3 = (j6 ^ ((long) strReplace.charAt(i8))) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                            if (java.util.Arrays.binarySearch(this.internalDenyHashCodes, jCharAt3) >= 0) {
                                throw new com.alibaba.fastjson.JSONException("autoType is not support. " + str);
                            }
                            i8++;
                            j6 = jCharAt3;
                            jFnv1a_65 = j7;
                        }
                    }
                    long j8 = jFnv1a_65;
                    if (!z10 && (z8 || z9)) {
                        long jCharAt4 = jCharAt2;
                        int i9 = 3;
                        while (i9 < strReplace.length()) {
                            jCharAt4 = (jCharAt4 ^ ((long) strReplace.charAt(i9))) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                            if (java.util.Arrays.binarySearch(this.acceptHashCodes, jCharAt4) >= 0 && (clsLoadClass = com.alibaba.fastjson.util.TypeUtils.loadClass(str, this.defaultClassLoader, z7)) != null) {
                                return clsLoadClass;
                            }
                            if (java.util.Arrays.binarySearch(this.denyHashCodes, jCharAt4) < 0 || com.alibaba.fastjson.util.TypeUtils.getClassFromMapping(str) != null) {
                                j5 = j8;
                            } else {
                                j5 = j8;
                                if (java.util.Arrays.binarySearch(this.acceptHashCodes, j5) < 0) {
                                    throw new com.alibaba.fastjson.JSONException("autoType is not support. " + str);
                                }
                            }
                            i9++;
                            j8 = j5;
                            z7 = true;
                        }
                    }
                    java.lang.Class<?> classFromMapping = com.alibaba.fastjson.util.TypeUtils.getClassFromMapping(str);
                    if (classFromMapping == null) {
                        classFromMapping = this.deserializers.findClass(str);
                    }
                    if (cls == null && classFromMapping != null && java.lang.Throwable.class.isAssignableFrom(classFromMapping) && !z8) {
                        classFromMapping = null;
                    }
                    if (classFromMapping == null) {
                        classFromMapping = this.typeMapping.get(str);
                    }
                    if (z10) {
                        classFromMapping = com.alibaba.fastjson.util.TypeUtils.loadClass(str, this.defaultClassLoader, true);
                    }
                    if (classFromMapping != null) {
                        if (cls == null || classFromMapping == java.util.HashMap.class || classFromMapping == java.util.LinkedHashMap.class || cls.isAssignableFrom(classFromMapping)) {
                            return classFromMapping;
                        }
                        throw new com.alibaba.fastjson.JSONException("type not match. " + str + " -> " + cls.getName());
                    }
                    if (!z8) {
                        for (int i10 = 3; i10 < strReplace.length(); i10++) {
                            jCharAt2 = (jCharAt2 ^ ((long) strReplace.charAt(i10))) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                            if (java.util.Arrays.binarySearch(this.denyHashCodes, jCharAt2) >= 0) {
                                if (str.endsWith("Exception") || str.endsWith("Error")) {
                                    return null;
                                }
                                throw new com.alibaba.fastjson.JSONException("autoType is not support. " + str);
                            }
                            if (java.util.Arrays.binarySearch(this.acceptHashCodes, jCharAt2) >= 0) {
                                java.lang.Class<?> clsLoadClass2 = com.alibaba.fastjson.util.TypeUtils.loadClass(str, this.defaultClassLoader, true);
                                if (clsLoadClass2 == null) {
                                    return cls;
                                }
                                if (cls == null || !cls.isAssignableFrom(clsLoadClass2)) {
                                    return clsLoadClass2;
                                }
                                throw new com.alibaba.fastjson.JSONException("type not match. " + str + " -> " + cls.getName());
                            }
                        }
                    }
                    try {
                        try {
                            java.lang.String str2 = str.replace('.', '/') + ".class";
                            java.lang.ClassLoader classLoader = this.defaultClassLoader;
                            if (classLoader != null) {
                                try {
                                    resourceAsStream = classLoader.getResourceAsStream(str2);
                                } catch (java.lang.Exception unused) {
                                    resourceAsStream = null;
                                    z5 = false;
                                    com.alibaba.fastjson.util.IOUtils.close(resourceAsStream);
                                    zHasJsonType = z5;
                                    if (!z8) {
                                        if (z8) {
                                            z6 = true;
                                        } else {
                                            z6 = true;
                                        }
                                        classFromMapping = com.alibaba.fastjson.util.TypeUtils.loadClass(str, this.defaultClassLoader, z6);
                                    } else {
                                        if (z8) {
                                            z6 = true;
                                        } else {
                                            z6 = true;
                                        }
                                        classFromMapping = com.alibaba.fastjson.util.TypeUtils.loadClass(str, this.defaultClassLoader, z6);
                                    }
                                    if (classFromMapping != null) {
                                        if (zHasJsonType) {
                                            if (z8) {
                                                com.alibaba.fastjson.util.TypeUtils.addMapping(str, classFromMapping);
                                            }
                                            return classFromMapping;
                                        }
                                        if (java.lang.ClassLoader.class.isAssignableFrom(classFromMapping)) {
                                        }
                                        throw new com.alibaba.fastjson.JSONException("autoType is not support. " + str);
                                    }
                                    if (!z8) {
                                        if (classFromMapping != null) {
                                            com.alibaba.fastjson.util.TypeUtils.addMapping(str, classFromMapping);
                                        }
                                        return classFromMapping;
                                    }
                                    if (str.endsWith("Exception")) {
                                        return null;
                                    }
                                    return null;
                                }
                            } else {
                                resourceAsStream = com.alibaba.fastjson.parser.ParserConfig.class.getClassLoader().getResourceAsStream(str2);
                            }
                            if (resourceAsStream != null) {
                                try {
                                    try {
                                        com.alibaba.fastjson.asm.ClassReader classReader = new com.alibaba.fastjson.asm.ClassReader(resourceAsStream, true);
                                        z5 = false;
                                        try {
                                            com.alibaba.fastjson.asm.TypeCollector typeCollector = new com.alibaba.fastjson.asm.TypeCollector("<clinit>", new java.lang.Class[0]);
                                            classReader.accept(typeCollector);
                                            zHasJsonType = typeCollector.hasJsonType();
                                        } catch (java.lang.Exception unused2) {
                                            com.alibaba.fastjson.util.IOUtils.close(resourceAsStream);
                                            zHasJsonType = z5;
                                        }
                                    } catch (java.lang.Exception unused3) {
                                        z5 = false;
                                        com.alibaba.fastjson.util.IOUtils.close(resourceAsStream);
                                        zHasJsonType = z5;
                                        if (!z8) {
                                            if (z8) {
                                                z6 = true;
                                            } else {
                                                z6 = true;
                                            }
                                            classFromMapping = com.alibaba.fastjson.util.TypeUtils.loadClass(str, this.defaultClassLoader, z6);
                                        } else {
                                            if (z8) {
                                                z6 = true;
                                            } else {
                                                z6 = true;
                                            }
                                            classFromMapping = com.alibaba.fastjson.util.TypeUtils.loadClass(str, this.defaultClassLoader, z6);
                                        }
                                        if (classFromMapping != null) {
                                            if (zHasJsonType) {
                                                if (z8) {
                                                    com.alibaba.fastjson.util.TypeUtils.addMapping(str, classFromMapping);
                                                }
                                                return classFromMapping;
                                            }
                                            if (java.lang.ClassLoader.class.isAssignableFrom(classFromMapping)) {
                                            }
                                            throw new com.alibaba.fastjson.JSONException("autoType is not support. " + str);
                                        }
                                        if (!z8) {
                                            if (str.endsWith("Exception")) {
                                                return null;
                                            }
                                            return null;
                                        }
                                        if (classFromMapping != null) {
                                            com.alibaba.fastjson.util.TypeUtils.addMapping(str, classFromMapping);
                                        }
                                        return classFromMapping;
                                    }
                                } catch (java.lang.Throwable th) {
                                    th = th;
                                    com.alibaba.fastjson.util.IOUtils.close(resourceAsStream);
                                    throw th;
                                }
                            } else {
                                z5 = false;
                                zHasJsonType = false;
                            }
                            com.alibaba.fastjson.util.IOUtils.close(resourceAsStream);
                        } catch (java.lang.Exception unused4) {
                            z5 = false;
                            resourceAsStream = null;
                        }
                        if (!z8 || zHasJsonType || z9) {
                            if (z8 || zHasJsonType) {
                                z6 = true;
                            } else {
                                z6 = z5;
                            }
                            classFromMapping = com.alibaba.fastjson.util.TypeUtils.loadClass(str, this.defaultClassLoader, z6);
                        }
                        if (classFromMapping != null) {
                            if (zHasJsonType) {
                                if (z8) {
                                    com.alibaba.fastjson.util.TypeUtils.addMapping(str, classFromMapping);
                                }
                                return classFromMapping;
                            }
                            if (!java.lang.ClassLoader.class.isAssignableFrom(classFromMapping) || javax.sql.DataSource.class.isAssignableFrom(classFromMapping) || javax.sql.RowSet.class.isAssignableFrom(classFromMapping)) {
                                throw new com.alibaba.fastjson.JSONException("autoType is not support. " + str);
                            }
                            if (cls != null) {
                                if (cls.isAssignableFrom(classFromMapping)) {
                                    if (z8) {
                                        com.alibaba.fastjson.util.TypeUtils.addMapping(str, classFromMapping);
                                    }
                                    return classFromMapping;
                                }
                                throw new com.alibaba.fastjson.JSONException("type not match. " + str + " -> " + cls.getName());
                            }
                            if (com.alibaba.fastjson.util.JavaBeanInfo.build(classFromMapping, classFromMapping, this.propertyNamingStrategy).creatorConstructor != null && z8) {
                                throw new com.alibaba.fastjson.JSONException("autoType is not support. " + str);
                            }
                        }
                        if (!z8) {
                            if (classFromMapping != null && z8) {
                                com.alibaba.fastjson.util.TypeUtils.addMapping(str, classFromMapping);
                            }
                            return classFromMapping;
                        }
                        if (str.endsWith("Exception") || str.endsWith("Error")) {
                            return null;
                        }
                        throw new com.alibaba.fastjson.JSONException("autoType is not support. " + str);
                    } catch (java.lang.Throwable th2) {
                        th = th2;
                        resourceAsStream = null;
                    }
                } else {
                    throw new com.alibaba.fastjson.JSONException("autoType is not support. " + str);
                }
            } else {
                throw new com.alibaba.fastjson.JSONException("autoType is not support. " + str);
            }
        } else {
            throw new com.alibaba.fastjson.JSONException("safeMode not support autoType : " + str);
        }
    }

    private ParserConfig(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory aSMDeserializerFactory, java.lang.ClassLoader classLoader, boolean z4) {
        this.deserializers = new com.alibaba.fastjson.util.IdentityHashMap<>();
        this.mixInDeserializers = new com.alibaba.fastjson.util.IdentityHashMap<>(16);
        this.typeMapping = new java.util.concurrent.ConcurrentHashMap(16, 0.75f, 1);
        this.asmEnable = !com.alibaba.fastjson.util.ASMUtils.IS_ANDROID;
        this.symbolTable = new com.alibaba.fastjson.parser.SymbolTable(4096);
        this.autoTypeSupport = AUTO_SUPPORT;
        this.jacksonCompatible = false;
        this.compatibleWithJavaBean = com.alibaba.fastjson.util.TypeUtils.compatibleWithJavaBean;
        this.modules = new java.util.ArrayList();
        this.safeMode = SAFE_MODE;
        this.denyHashCodes = new long[]{-9164606388214699518L, -8754006975464705441L, -8720046426850100497L, -8649961213709896794L, -8614556368991373401L, -8382625455832334425L, -8165637398350707645L, -8109300701639721088L, -7966123100503199569L, -7921218830998286408L, -7775351613326101303L, -7768608037458185275L, -7766605818834748097L, -6835437086156813536L, -6316154655839304624L, -6179589609550493385L, -6149130139291498841L, -6149093380703242441L, -6088208984980396913L, -6025144546313590215L, -5939269048541779808L, -5885964883385605994L, -5767141746063564198L, -5764804792063216819L, -5472097725414717105L, -5194641081268104286L, -5076846148177416215L, -4837536971810737970L, -4836620931940850535L, -4733542790109620528L, -4703320437989596122L, -4608341446948126581L, -4537258998789938600L, -4438775680185074100L, -4314457471973557243L, -4150995715611818742L, -4082057040235125754L, -3975378478825053783L, -3967588558552655563L, -3935185854875733362L, com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode, -3319207949486691020L, -3077205613010077203L, -3053747177772160511L, -2995060141064716555L, -2825378362173150292L, -2533039401923731906L, -2439930098895578154L, -2378990704010641148L, -2364987994247679115L, -2262244760619952081L, -2192804397019347313L, -2095516571388852610L, -1872417015366588117L, -1800035667138631116L, -1650485814983027158L, -1589194880214235129L, -1363634950764737555L, -965955008570215305L, -905177026366752536L, -831789045734283466L, -803541446955902575L, -731978084025273882L, -666475508176557463L, -582813228520337988L, -254670111376247151L, -219577392946377768L, -190281065685395680L, -26639035867733124L, -9822483067882491L, 4750336058574309L, 33238344207745342L, 156405680656087946L, 218512992947536312L, 313864100207897507L, 386461436234701831L, 744602970950881621L, 823641066473609950L, 860052378298585747L, 1073634739308289776L, 1153291637701043748L, 1203232727967308606L, 1214780596910349029L, 1268707909007641340L, 1459860845934817624L, 1502845958873959152L, 1534439610567445754L, 1698504441317515818L, 1818089308493370394L, 2078113382421334967L, 2164696723069287854L, 2622551729063269307L, 2653453629929770569L, 2660670623866180977L, 2731823439467737506L, 2836431254737891113L, 2930861374593775110L, 3058452313624178956L, 3085473968517218653L, 3089451460101527857L, 3114862868117605599L, 3129395579983849527L, 3256258368248066264L, 3452379460455804429L, 3547627781654598988L, 3637939656440441093L, 3688179072722109200L, 3718352661124136681L, 3730752432285826863L, 3740226159580918099L, 3794316665763266033L, 3977090344859527316L, 4000049462512838776L, 4046190361520671643L, 4147696707147271408L, 4193204392725694463L, 4215053018660518963L, 4241163808635564644L, 4254584350247334433L, 4319304524795015394L, 4814658433570175913L, 4841947709850912914L, 4904007817188630457L, 5100336081510080343L, 5120543992130540564L, 5274044858141538265L, 5347909877633654828L, 5450448828334921485L, 5474268165959054640L, 5545425291794704408L, 5596129856135573697L, 5688200883751798389L, 5751393439502795295L, 5916409771425455946L, 5944107969236155580L, 6007332606592876737L, 6090377589998869205L, 6280357960959217660L, 6456855723474196908L, 6511035576063254270L, 6534946468240507089L, 6584624952928234050L, 6734240326434096246L, 6742705432718011780L, 6800727078373023163L, 6854854816081053523L, 7045245923763966215L, 7123326897294507060L, 7164889056054194741L, 7179336928365889465L, 7240293012336844478L, 7347653049056829645L, 7375862386996623731L, 7442624256860549330L, 7617522210483516279L, 7658177784286215602L, 8055461369741094911L, 8064026652676081192L, 8389032537095247355L, 8409640769019589119L, 8488266005336625107L, 8537233257283452655L, 8711531061028787095L, 8735538376409180149L, 8838294710098435315L, 8861402923078831179L, 9140390920032557669L, 9140416208800006522L, 9144212112462101475L};
        long[] jArr = new long[AUTO_TYPE_ACCEPT_LIST.length];
        int i5 = 0;
        while (true) {
            java.lang.String[] strArr = AUTO_TYPE_ACCEPT_LIST;
            if (i5 >= strArr.length) {
                break;
            }
            jArr[i5] = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(strArr[i5]);
            i5++;
        }
        java.util.Arrays.sort(jArr);
        this.acceptHashCodes = jArr;
        this.initDeserializersWithJavaSql = new java.util.concurrent.Callable<java.lang.Void>() { // from class: com.alibaba.fastjson.parser.ParserConfig.1
            @Override // java.util.concurrent.Callable
            public java.lang.Void call() {
                com.alibaba.fastjson.parser.ParserConfig.this.deserializers.put(java.sql.Timestamp.class, com.alibaba.fastjson.parser.deserializer.SqlDateDeserializer.instance_timestamp);
                com.alibaba.fastjson.parser.ParserConfig.this.deserializers.put(java.sql.Date.class, com.alibaba.fastjson.parser.deserializer.SqlDateDeserializer.instance);
                com.alibaba.fastjson.parser.ParserConfig.this.deserializers.put(java.sql.Time.class, com.alibaba.fastjson.parser.deserializer.TimeDeserializer.instance);
                com.alibaba.fastjson.parser.ParserConfig.this.deserializers.put(java.util.Date.class, com.alibaba.fastjson.serializer.DateCodec.instance);
                return null;
            }
        };
        this.fieldBased = z4;
        if (aSMDeserializerFactory == null && !com.alibaba.fastjson.util.ASMUtils.IS_ANDROID) {
            try {
                if (classLoader == null) {
                    aSMDeserializerFactory = new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory(new com.alibaba.fastjson.util.ASMClassLoader());
                } else {
                    aSMDeserializerFactory = new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory(classLoader);
                }
            } catch (java.lang.ExceptionInInitializerError | java.lang.NoClassDefFoundError | java.security.AccessControlException unused) {
            }
        }
        this.asmFactory = aSMDeserializerFactory;
        if (aSMDeserializerFactory == null) {
            this.asmEnable = false;
        }
        initDeserializers();
        addItemsToDeny(DENYS);
        addItemsToDeny0(DENYS_INTERNAL);
        addItemsToAccept(AUTO_TYPE_ACCEPT_LIST);
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer getDeserializer(java.lang.Class<?> cls, java.lang.reflect.Type type) {
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializerCreateJavaBeanDeserializer;
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer propertyProcessableDeserializer;
        java.lang.Class<?> clsMappingTo;
        java.lang.reflect.Type type2 = type;
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer = get(type2);
        if (objectDeserializer == null && (type2 instanceof com.alibaba.fastjson.util.ParameterizedTypeImpl)) {
            objectDeserializer = get(com.alibaba.fastjson.TypeReference.intern((com.alibaba.fastjson.util.ParameterizedTypeImpl) type2));
        }
        if (objectDeserializer != null) {
            return objectDeserializer;
        }
        if (type2 == null) {
            type2 = cls;
        }
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializerCreateDeserializer = get(type2);
        if (objectDeserializerCreateDeserializer != null) {
            return objectDeserializerCreateDeserializer;
        }
        com.alibaba.fastjson.annotation.JSONType jSONType = (com.alibaba.fastjson.annotation.JSONType) com.alibaba.fastjson.util.TypeUtils.getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class);
        if (jSONType != null && (clsMappingTo = jSONType.mappingTo()) != java.lang.Void.class) {
            return getDeserializer(clsMappingTo, clsMappingTo);
        }
        if ((type2 instanceof java.lang.reflect.WildcardType) || (type2 instanceof java.lang.reflect.TypeVariable) || (type2 instanceof java.lang.reflect.ParameterizedType)) {
            objectDeserializerCreateDeserializer = get(cls);
        }
        if (objectDeserializerCreateDeserializer != null) {
            return objectDeserializerCreateDeserializer;
        }
        java.util.Iterator<com.alibaba.fastjson.spi.Module> it = this.modules.iterator();
        while (it.hasNext()) {
            objectDeserializerCreateDeserializer = it.next().createDeserializer(this, cls);
            if (objectDeserializerCreateDeserializer != null) {
                putDeserializer(type2, objectDeserializerCreateDeserializer);
                return objectDeserializerCreateDeserializer;
            }
        }
        java.lang.String strReplace = cls.getName().replace('$', '.');
        if (strReplace.startsWith("java.awt.") && com.alibaba.fastjson.serializer.AwtCodec.support(cls) && !awtError) {
            java.lang.String[] strArr = {"java.awt.Point", "java.awt.Font", "java.awt.Rectangle", "java.awt.Color"};
            for (int i5 = 0; i5 < 4; i5++) {
                try {
                    java.lang.String str = strArr[i5];
                    if (str.equals(strReplace)) {
                        java.lang.reflect.Type cls2 = java.lang.Class.forName(str);
                        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer2 = com.alibaba.fastjson.serializer.AwtCodec.instance;
                        putDeserializer(cls2, objectDeserializer2);
                        return objectDeserializer2;
                    }
                } catch (java.lang.Throwable unused) {
                    awtError = true;
                }
            }
            objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.AwtCodec.instance;
        }
        if (!jdk8Error) {
            try {
                if (strReplace.startsWith("java.time.")) {
                    java.lang.String[] strArr2 = {"java.time.LocalDateTime", "java.time.LocalDate", "java.time.LocalTime", "java.time.ZonedDateTime", "java.time.OffsetDateTime", "java.time.OffsetTime", "java.time.ZoneOffset", "java.time.ZoneRegion", "java.time.ZoneId", "java.time.Period", "java.time.Duration", "java.time.Instant"};
                    for (int i6 = 0; i6 < 12; i6++) {
                        java.lang.String str2 = strArr2[i6];
                        if (str2.equals(strReplace)) {
                            java.lang.reflect.Type cls3 = java.lang.Class.forName(str2);
                            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer3 = com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec.instance;
                            putDeserializer(cls3, objectDeserializer3);
                            return objectDeserializer3;
                        }
                    }
                } else if (strReplace.startsWith("java.util.Optional")) {
                    java.lang.String[] strArr3 = {"java.util.Optional", "java.util.OptionalDouble", "java.util.OptionalInt", "java.util.OptionalLong"};
                    for (int i7 = 0; i7 < 4; i7++) {
                        java.lang.String str3 = strArr3[i7];
                        if (str3.equals(strReplace)) {
                            java.lang.reflect.Type cls4 = java.lang.Class.forName(str3);
                            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer4 = com.alibaba.fastjson.parser.deserializer.OptionalCodec.instance;
                            putDeserializer(cls4, objectDeserializer4);
                            return objectDeserializer4;
                        }
                    }
                }
            } catch (java.lang.Throwable unused2) {
                jdk8Error = true;
            }
        }
        if (!jodaError) {
            try {
                if (strReplace.startsWith("org.joda.time.")) {
                    java.lang.String[] strArr4 = {"org.joda.time.DateTime", "org.joda.time.LocalDate", "org.joda.time.LocalDateTime", "org.joda.time.LocalTime", "org.joda.time.Instant", "org.joda.time.Period", "org.joda.time.Duration", "org.joda.time.DateTimeZone", "org.joda.time.format.DateTimeFormatter"};
                    for (int i8 = 0; i8 < 9; i8++) {
                        java.lang.String str4 = strArr4[i8];
                        if (str4.equals(strReplace)) {
                            java.lang.reflect.Type cls5 = java.lang.Class.forName(str4);
                            objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.JodaCodec.instance;
                            putDeserializer(cls5, objectDeserializerCreateDeserializer);
                            return objectDeserializerCreateDeserializer;
                        }
                    }
                }
            } catch (java.lang.Throwable unused3) {
                jodaError = true;
            }
        }
        if (!guavaError && strReplace.startsWith("com.google.common.collect.")) {
            try {
                java.lang.String[] strArr5 = {"com.google.common.collect.HashMultimap", "com.google.common.collect.LinkedListMultimap", "com.google.common.collect.LinkedHashMultimap", "com.google.common.collect.ArrayListMultimap", "com.google.common.collect.TreeMultimap"};
                for (int i9 = 0; i9 < 5; i9++) {
                    java.lang.String str5 = strArr5[i9];
                    if (str5.equals(strReplace)) {
                        java.lang.reflect.Type cls6 = java.lang.Class.forName(str5);
                        objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.GuavaCodec.instance;
                        putDeserializer(cls6, objectDeserializerCreateDeserializer);
                        return objectDeserializerCreateDeserializer;
                    }
                }
            } catch (java.lang.ClassNotFoundException unused4) {
                guavaError = true;
            }
        }
        if (strReplace.equals("java.nio.ByteBuffer")) {
            objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.ByteBufferCodec.instance;
            putDeserializer(cls, objectDeserializerCreateDeserializer);
        }
        if (strReplace.equals("java.nio.file.Path")) {
            objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.MiscCodec.instance;
            putDeserializer(cls, objectDeserializerCreateDeserializer);
        }
        if (cls == java.util.Map.Entry.class) {
            objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.MiscCodec.instance;
            putDeserializer(cls, objectDeserializerCreateDeserializer);
        }
        if (strReplace.equals("org.javamoney.moneta.Money")) {
            objectDeserializerCreateDeserializer = com.alibaba.fastjson.support.moneta.MonetaCodec.instance;
            putDeserializer(cls, objectDeserializerCreateDeserializer);
        }
        try {
            for (com.alibaba.fastjson.parser.deserializer.AutowiredObjectDeserializer autowiredObjectDeserializer : com.alibaba.fastjson.util.ServiceLoader.load(com.alibaba.fastjson.parser.deserializer.AutowiredObjectDeserializer.class, java.lang.Thread.currentThread().getContextClassLoader())) {
                java.util.Iterator<java.lang.reflect.Type> it2 = autowiredObjectDeserializer.getAutowiredFor().iterator();
                while (it2.hasNext()) {
                    putDeserializer(it2.next(), autowiredObjectDeserializer);
                }
            }
        } catch (java.lang.Exception unused5) {
        }
        if (objectDeserializerCreateDeserializer == null) {
            objectDeserializerCreateDeserializer = get(type2);
        }
        if (objectDeserializerCreateDeserializer != null) {
            return objectDeserializerCreateDeserializer;
        }
        if (cls.isEnum()) {
            if (this.jacksonCompatible) {
                for (java.lang.reflect.Method method : cls.getMethods()) {
                    if (com.alibaba.fastjson.util.TypeUtils.isJacksonCreator(method)) {
                        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializerCreateJavaBeanDeserializer2 = createJavaBeanDeserializer(cls, type2);
                        putDeserializer(type2, objectDeserializerCreateJavaBeanDeserializer2);
                        return objectDeserializerCreateJavaBeanDeserializer2;
                    }
                }
            }
            java.lang.Class<?> cls7 = (java.lang.Class) com.alibaba.fastjson.JSON.getMixInAnnotations(cls);
            com.alibaba.fastjson.annotation.JSONType jSONType2 = (com.alibaba.fastjson.annotation.JSONType) com.alibaba.fastjson.util.TypeUtils.getAnnotation(cls7 != null ? cls7 : cls, com.alibaba.fastjson.annotation.JSONType.class);
            if (jSONType2 != null) {
                try {
                    com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer5 = (com.alibaba.fastjson.parser.deserializer.ObjectDeserializer) jSONType2.deserializer().newInstance();
                    putDeserializer(cls, objectDeserializer5);
                    return objectDeserializer5;
                } catch (java.lang.Throwable unused6) {
                }
            }
            java.lang.reflect.Method enumCreator = null;
            if (cls7 != null) {
                java.lang.reflect.Method enumCreator2 = getEnumCreator(cls7, cls);
                if (enumCreator2 != null) {
                    try {
                        enumCreator = cls.getMethod(enumCreator2.getName(), enumCreator2.getParameterTypes());
                    } catch (java.lang.Exception unused7) {
                    }
                }
            } else {
                enumCreator = getEnumCreator(cls, cls);
            }
            if (enumCreator != null) {
                com.alibaba.fastjson.parser.deserializer.ObjectDeserializer enumCreatorDeserializer = new com.alibaba.fastjson.parser.deserializer.EnumCreatorDeserializer(enumCreator);
                putDeserializer(cls, enumCreatorDeserializer);
                return enumCreatorDeserializer;
            }
            objectDeserializerCreateJavaBeanDeserializer = getEnumDeserializer(cls);
        } else if (cls.isArray()) {
            objectDeserializerCreateJavaBeanDeserializer = com.alibaba.fastjson.serializer.ObjectArrayCodec.instance;
        } else if (cls == java.util.Set.class || cls == java.util.HashSet.class || cls == java.util.Collection.class || cls == java.util.List.class || cls == java.util.ArrayList.class || java.util.Collection.class.isAssignableFrom(cls)) {
            objectDeserializerCreateJavaBeanDeserializer = com.alibaba.fastjson.serializer.CollectionCodec.instance;
        } else if (java.util.Map.class.isAssignableFrom(cls)) {
            objectDeserializerCreateJavaBeanDeserializer = com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance;
        } else {
            if (java.lang.Throwable.class.isAssignableFrom(cls)) {
                propertyProcessableDeserializer = new com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer(this, cls);
            } else if (com.alibaba.fastjson.parser.deserializer.PropertyProcessable.class.isAssignableFrom(cls)) {
                propertyProcessableDeserializer = new com.alibaba.fastjson.parser.deserializer.PropertyProcessableDeserializer(cls);
            } else if (cls == java.net.InetAddress.class) {
                objectDeserializerCreateJavaBeanDeserializer = com.alibaba.fastjson.serializer.MiscCodec.instance;
            } else {
                objectDeserializerCreateJavaBeanDeserializer = createJavaBeanDeserializer(cls, type2);
            }
            objectDeserializerCreateJavaBeanDeserializer = propertyProcessableDeserializer;
        }
        putDeserializer(type2, objectDeserializerCreateJavaBeanDeserializer);
        return objectDeserializerCreateJavaBeanDeserializer;
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer getDeserializer(com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        return getDeserializer(fieldInfo.fieldClass, fieldInfo.fieldType);
    }
}
