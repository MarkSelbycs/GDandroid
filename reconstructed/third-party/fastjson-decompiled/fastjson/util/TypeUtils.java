package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class TypeUtils {
    private static java.lang.Object OPTIONAL_EMPTY = null;
    private static boolean OPTIONAL_ERROR = false;
    private static com.alibaba.fastjson.util.Function<java.util.Map<java.lang.String, java.lang.Class<?>>, java.lang.Void> addBaseClassMappingsFunction = null;
    private static com.alibaba.fastjson.util.BiFunction<java.lang.Object, java.lang.Class, java.lang.Object> castFunction = null;
    private static com.alibaba.fastjson.util.Function<java.lang.Object, java.lang.Object> castToSqlDateFunction = null;
    private static com.alibaba.fastjson.util.Function<java.lang.Object, java.lang.Object> castToSqlTimeFunction = null;
    public static com.alibaba.fastjson.util.Function<java.lang.Object, java.lang.Object> castToTimestampFunction = null;
    private static java.lang.Class class_deque = null;
    public static boolean compatibleWithFieldName = false;
    public static boolean compatibleWithJavaBean = false;
    public static final long fnv1a_64_magic_hashcode = -3750763034362895579L;
    public static final long fnv1a_64_magic_prime = 1099511628211L;
    private static com.alibaba.fastjson.util.Function<java.lang.Class, java.lang.Boolean> isClobFunction;
    private static final java.util.Set<java.lang.String> isProxyClassNames;
    private static volatile java.util.Map<java.lang.Class, java.lang.String[]> kotlinIgnores;
    private static volatile boolean kotlinIgnores_error;
    private static volatile boolean kotlin_class_klass_error;
    private static volatile boolean kotlin_error;
    private static volatile java.lang.reflect.Constructor kotlin_kclass_constructor;
    private static volatile java.lang.reflect.Method kotlin_kclass_getConstructors;
    private static volatile java.lang.reflect.Method kotlin_kfunction_getParameters;
    private static volatile java.lang.reflect.Method kotlin_kparameter_getName;
    private static volatile java.lang.Class kotlin_metadata;
    private static volatile boolean kotlin_metadata_error;
    private static java.lang.Class<?> optionalClass;
    private static java.lang.reflect.Method oracleDateMethod;
    private static java.lang.reflect.Method oracleTimestampMethod;
    private static java.lang.Class<?> pathClass;
    private static final java.util.Map primitiveTypeMap;
    private static java.lang.Class<? extends java.lang.annotation.Annotation> transientClass;
    private static final java.util.regex.Pattern NUMBER_WITH_TRAILING_ZEROS_PATTERN = java.util.regex.Pattern.compile("\\.0*$");
    private static boolean setAccessibleEnable = true;
    private static boolean oracleTimestampMethodInited = false;
    private static boolean oracleDateMethodInited = false;
    private static boolean optionalClassInited = false;
    private static boolean transientClassInited = false;
    private static java.lang.Class<? extends java.lang.annotation.Annotation> class_OneToMany = null;
    private static boolean class_OneToMany_error = false;
    private static java.lang.Class<? extends java.lang.annotation.Annotation> class_ManyToMany = null;
    private static boolean class_ManyToMany_error = false;
    private static java.lang.reflect.Method method_HibernateIsInitialized = null;
    private static boolean method_HibernateIsInitialized_error = false;
    private static java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Class<?>> mappings = new java.util.concurrent.ConcurrentHashMap(256, 0.75f, 1);
    private static boolean pathClass_error = false;
    private static java.lang.Class<? extends java.lang.annotation.Annotation> class_JacksonCreator = null;
    private static boolean class_JacksonCreator_error = false;
    private static volatile java.lang.Class class_XmlAccessType = null;
    private static volatile java.lang.Class class_XmlAccessorType = null;
    private static volatile boolean classXmlAccessorType_error = false;
    private static volatile java.lang.reflect.Method method_XmlAccessorType_value = null;
    private static volatile java.lang.reflect.Field field_XmlAccessType_FIELD = null;
    private static volatile java.lang.Object field_XmlAccessType_FIELD_VALUE = null;

    public static class MethodInheritanceComparator implements java.util.Comparator<java.lang.reflect.Method> {
        @Override // java.util.Comparator
        public int compare(java.lang.reflect.Method method, java.lang.reflect.Method method2) {
            int iCompareTo = method.getName().compareTo(method2.getName());
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            java.lang.Class<?> returnType = method.getReturnType();
            java.lang.Class<?> returnType2 = method2.getReturnType();
            if (returnType.equals(returnType2)) {
                return 0;
            }
            if (returnType.isAssignableFrom(returnType2)) {
                return -1;
            }
            return returnType2.isAssignableFrom(returnType) ? 1 : 0;
        }
    }

    static {
        compatibleWithJavaBean = false;
        compatibleWithFieldName = false;
        class_deque = null;
        try {
            compatibleWithJavaBean = "true".equals(com.alibaba.fastjson.util.IOUtils.getStringProperty(com.alibaba.fastjson.util.IOUtils.FASTJSON_COMPATIBLEWITHJAVABEAN));
            compatibleWithFieldName = "true".equals(com.alibaba.fastjson.util.IOUtils.getStringProperty(com.alibaba.fastjson.util.IOUtils.FASTJSON_COMPATIBLEWITHFIELDNAME));
        } catch (java.lang.Throwable unused) {
        }
        try {
            class_deque = java.lang.Class.forName("java.util.Deque");
        } catch (java.lang.Throwable unused2) {
        }
        isClobFunction = new com.alibaba.fastjson.util.Function<java.lang.Class, java.lang.Boolean>() { // from class: com.alibaba.fastjson.util.TypeUtils.1
            @Override // com.alibaba.fastjson.util.Function
            public java.lang.Boolean apply(java.lang.Class cls) {
                return java.lang.Boolean.valueOf(java.sql.Clob.class.isAssignableFrom(cls));
            }
        };
        castToSqlDateFunction = new com.alibaba.fastjson.util.Function<java.lang.Object, java.lang.Object>() { // from class: com.alibaba.fastjson.util.TypeUtils.2
            @Override // com.alibaba.fastjson.util.Function
            public java.lang.Object apply(java.lang.Object obj) {
                long jLongValue;
                if (obj == null) {
                    return null;
                }
                if (obj instanceof java.sql.Date) {
                    return (java.sql.Date) obj;
                }
                if (obj instanceof java.util.Date) {
                    return new java.sql.Date(((java.util.Date) obj).getTime());
                }
                if (obj instanceof java.util.Calendar) {
                    return new java.sql.Date(((java.util.Calendar) obj).getTimeInMillis());
                }
                if (obj instanceof java.math.BigDecimal) {
                    jLongValue = com.alibaba.fastjson.util.TypeUtils.longValue((java.math.BigDecimal) obj);
                } else {
                    jLongValue = obj instanceof java.lang.Number ? ((java.lang.Number) obj).longValue() : 0L;
                }
                if (obj instanceof java.lang.String) {
                    java.lang.String str = (java.lang.String) obj;
                    if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                        return null;
                    }
                    if (com.alibaba.fastjson.util.TypeUtils.isNumber(str)) {
                        jLongValue = java.lang.Long.parseLong(str);
                    } else {
                        com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
                        if (!jSONScanner.scanISO8601DateIfMatch(false)) {
                            throw new com.alibaba.fastjson.JSONException("can not cast to Timestamp, value : " + str);
                        }
                        jLongValue = jSONScanner.getCalendar().getTime().getTime();
                    }
                }
                if (jLongValue > 0) {
                    return new java.sql.Date(jLongValue);
                }
                throw new com.alibaba.fastjson.JSONException("can not cast to Date, value : " + obj);
            }
        };
        castToSqlTimeFunction = new com.alibaba.fastjson.util.Function<java.lang.Object, java.lang.Object>() { // from class: com.alibaba.fastjson.util.TypeUtils.3
            @Override // com.alibaba.fastjson.util.Function
            public java.lang.Object apply(java.lang.Object obj) {
                long jLongValue;
                if (obj == null) {
                    return null;
                }
                if (obj instanceof java.sql.Time) {
                    return (java.sql.Time) obj;
                }
                if (obj instanceof java.util.Date) {
                    return new java.sql.Time(((java.util.Date) obj).getTime());
                }
                if (obj instanceof java.util.Calendar) {
                    return new java.sql.Time(((java.util.Calendar) obj).getTimeInMillis());
                }
                if (obj instanceof java.math.BigDecimal) {
                    jLongValue = com.alibaba.fastjson.util.TypeUtils.longValue((java.math.BigDecimal) obj);
                } else {
                    jLongValue = obj instanceof java.lang.Number ? ((java.lang.Number) obj).longValue() : 0L;
                }
                if (obj instanceof java.lang.String) {
                    java.lang.String str = (java.lang.String) obj;
                    if (str.length() == 0 || "null".equalsIgnoreCase(str)) {
                        return null;
                    }
                    if (com.alibaba.fastjson.util.TypeUtils.isNumber(str)) {
                        jLongValue = java.lang.Long.parseLong(str);
                    } else {
                        if (str.length() == 8 && str.charAt(2) == ':' && str.charAt(5) == ':') {
                            return java.sql.Time.valueOf(str);
                        }
                        com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
                        if (!jSONScanner.scanISO8601DateIfMatch(false)) {
                            throw new com.alibaba.fastjson.JSONException("can not cast to Timestamp, value : " + str);
                        }
                        jLongValue = jSONScanner.getCalendar().getTime().getTime();
                    }
                }
                if (jLongValue > 0) {
                    return new java.sql.Time(jLongValue);
                }
                throw new com.alibaba.fastjson.JSONException("can not cast to Date, value : " + obj);
            }
        };
        castToTimestampFunction = new com.alibaba.fastjson.util.Function<java.lang.Object, java.lang.Object>() { // from class: com.alibaba.fastjson.util.TypeUtils.4
            @Override // com.alibaba.fastjson.util.Function
            public java.lang.Object apply(java.lang.Object obj) {
                if (obj == null) {
                    return null;
                }
                if (obj instanceof java.util.Calendar) {
                    return new java.sql.Timestamp(((java.util.Calendar) obj).getTimeInMillis());
                }
                if (obj instanceof java.sql.Timestamp) {
                    return (java.sql.Timestamp) obj;
                }
                if (obj instanceof java.util.Date) {
                    return new java.sql.Timestamp(((java.util.Date) obj).getTime());
                }
                long jLongValue = 0;
                if (obj instanceof java.math.BigDecimal) {
                    jLongValue = com.alibaba.fastjson.util.TypeUtils.longValue((java.math.BigDecimal) obj);
                } else if (obj instanceof java.lang.Number) {
                    jLongValue = ((java.lang.Number) obj).longValue();
                }
                if (obj instanceof java.lang.String) {
                    java.lang.String strSubstring = (java.lang.String) obj;
                    if (strSubstring.length() == 0 || "null".equals(strSubstring) || "NULL".equals(strSubstring)) {
                        return null;
                    }
                    if (strSubstring.endsWith(".000000000")) {
                        strSubstring = strSubstring.substring(0, strSubstring.length() - 10);
                    } else if (strSubstring.endsWith(".000000")) {
                        strSubstring = strSubstring.substring(0, strSubstring.length() - 7);
                    }
                    if (strSubstring.length() == 29 && strSubstring.charAt(4) == '-' && strSubstring.charAt(7) == '-' && strSubstring.charAt(10) == ' ' && strSubstring.charAt(13) == ':' && strSubstring.charAt(16) == ':' && strSubstring.charAt(19) == '.') {
                        return new java.sql.Timestamp(com.alibaba.fastjson.util.TypeUtils.num(strSubstring.charAt(0), strSubstring.charAt(1), strSubstring.charAt(2), strSubstring.charAt(3)) - 1900, com.alibaba.fastjson.util.TypeUtils.num(strSubstring.charAt(5), strSubstring.charAt(6)) - 1, com.alibaba.fastjson.util.TypeUtils.num(strSubstring.charAt(8), strSubstring.charAt(9)), com.alibaba.fastjson.util.TypeUtils.num(strSubstring.charAt(11), strSubstring.charAt(12)), com.alibaba.fastjson.util.TypeUtils.num(strSubstring.charAt(14), strSubstring.charAt(15)), com.alibaba.fastjson.util.TypeUtils.num(strSubstring.charAt(17), strSubstring.charAt(18)), com.alibaba.fastjson.util.TypeUtils.num(strSubstring.charAt(20), strSubstring.charAt(21), strSubstring.charAt(22), strSubstring.charAt(23), strSubstring.charAt(24), strSubstring.charAt(25), strSubstring.charAt(26), strSubstring.charAt(27), strSubstring.charAt(28)));
                    }
                    if (com.alibaba.fastjson.util.TypeUtils.isNumber(strSubstring)) {
                        jLongValue = java.lang.Long.parseLong(strSubstring);
                    } else {
                        com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strSubstring);
                        if (!jSONScanner.scanISO8601DateIfMatch(false)) {
                            throw new com.alibaba.fastjson.JSONException("can not cast to Timestamp, value : " + strSubstring);
                        }
                        jLongValue = jSONScanner.getCalendar().getTime().getTime();
                    }
                }
                return new java.sql.Timestamp(jLongValue);
            }
        };
        castFunction = new com.alibaba.fastjson.util.BiFunction<java.lang.Object, java.lang.Class, java.lang.Object>() { // from class: com.alibaba.fastjson.util.TypeUtils.5
            @Override // com.alibaba.fastjson.util.BiFunction
            public java.lang.Object apply(java.lang.Object obj, java.lang.Class cls) {
                if (cls == java.sql.Date.class) {
                    return com.alibaba.fastjson.util.TypeUtils.castToSqlDate(obj);
                }
                if (cls == java.sql.Time.class) {
                    return com.alibaba.fastjson.util.TypeUtils.castToSqlTime(obj);
                }
                if (cls == java.sql.Timestamp.class) {
                    return com.alibaba.fastjson.util.TypeUtils.castToTimestamp(obj);
                }
                return null;
            }
        };
        addBaseClassMappingsFunction = new com.alibaba.fastjson.util.Function<java.util.Map<java.lang.String, java.lang.Class<?>>, java.lang.Void>() { // from class: com.alibaba.fastjson.util.TypeUtils.6
            @Override // com.alibaba.fastjson.util.Function
            public java.lang.Void apply(java.util.Map<java.lang.String, java.lang.Class<?>> map) {
                java.lang.Class<?>[] clsArr = {java.sql.Time.class, java.sql.Date.class, java.sql.Timestamp.class};
                for (int i5 = 0; i5 < 3; i5++) {
                    java.lang.Class<?> cls = clsArr[i5];
                    if (cls != null) {
                        map.put(cls.getName(), cls);
                    }
                }
                return null;
            }
        };
        addBaseClassMappings();
        primitiveTypeMap = new java.util.HashMap<java.lang.Class, java.lang.String>(8) { // from class: com.alibaba.fastjson.util.TypeUtils.7
            {
                put(java.lang.Boolean.TYPE, "Z");
                put(java.lang.Character.TYPE, "C");
                put(java.lang.Byte.TYPE, "B");
                put(java.lang.Short.TYPE, "S");
                put(java.lang.Integer.TYPE, "I");
                put(java.lang.Long.TYPE, "J");
                put(java.lang.Float.TYPE, "F");
                put(java.lang.Double.TYPE, "D");
            }
        };
        isProxyClassNames = new java.util.HashSet<java.lang.String>(6) { // from class: com.alibaba.fastjson.util.TypeUtils.8
            {
                add("net.sf.cglib.proxy.Factory");
                add("org.springframework.cglib.proxy.Factory");
                add("javassist.util.proxy.ProxyObject");
                add("org.apache.ibatis.javassist.util.proxy.ProxyObject");
                add("org.hibernate.proxy.HibernateProxy");
                add("org.springframework.context.annotation.ConfigurationClassEnhancer$EnhancedConfiguration");
            }
        };
        OPTIONAL_ERROR = false;
    }

    private static void addBaseClassMappings() {
        mappings.put("byte", java.lang.Byte.TYPE);
        mappings.put("short", java.lang.Short.TYPE);
        mappings.put("int", java.lang.Integer.TYPE);
        mappings.put("long", java.lang.Long.TYPE);
        mappings.put("float", java.lang.Float.TYPE);
        mappings.put("double", java.lang.Double.TYPE);
        mappings.put("boolean", java.lang.Boolean.TYPE);
        mappings.put("char", java.lang.Character.TYPE);
        mappings.put("[byte", byte[].class);
        mappings.put("[short", short[].class);
        mappings.put("[int", int[].class);
        mappings.put("[long", long[].class);
        mappings.put("[float", float[].class);
        mappings.put("[double", double[].class);
        mappings.put("[boolean", boolean[].class);
        mappings.put("[char", char[].class);
        mappings.put("[B", byte[].class);
        mappings.put("[S", short[].class);
        mappings.put("[I", int[].class);
        mappings.put("[J", long[].class);
        mappings.put("[F", float[].class);
        mappings.put("[D", double[].class);
        mappings.put("[C", char[].class);
        mappings.put("[Z", boolean[].class);
        java.lang.Class<?>[] clsArr = {java.lang.Object.class, java.lang.Cloneable.class, loadClass("java.lang.AutoCloseable"), java.lang.Exception.class, java.lang.RuntimeException.class, java.lang.IllegalAccessError.class, java.lang.IllegalAccessException.class, java.lang.IllegalArgumentException.class, java.lang.IllegalMonitorStateException.class, java.lang.IllegalStateException.class, java.lang.IllegalThreadStateException.class, java.lang.IndexOutOfBoundsException.class, java.lang.InstantiationError.class, java.lang.InstantiationException.class, java.lang.InternalError.class, java.lang.InterruptedException.class, java.lang.LinkageError.class, java.lang.NegativeArraySizeException.class, java.lang.NoClassDefFoundError.class, java.lang.NoSuchFieldError.class, java.lang.NoSuchFieldException.class, java.lang.NoSuchMethodError.class, java.lang.NoSuchMethodException.class, java.lang.NullPointerException.class, java.lang.NumberFormatException.class, java.lang.OutOfMemoryError.class, java.lang.SecurityException.class, java.lang.StackOverflowError.class, java.lang.StringIndexOutOfBoundsException.class, java.lang.TypeNotPresentException.class, java.lang.VerifyError.class, java.lang.StackTraceElement.class, java.util.HashMap.class, java.util.LinkedHashMap.class, java.util.Hashtable.class, java.util.TreeMap.class, java.util.IdentityHashMap.class, java.util.WeakHashMap.class, java.util.LinkedHashMap.class, java.util.HashSet.class, java.util.LinkedHashSet.class, java.util.TreeSet.class, java.util.ArrayList.class, java.util.concurrent.TimeUnit.class, java.util.concurrent.ConcurrentHashMap.class, java.util.concurrent.atomic.AtomicInteger.class, java.util.concurrent.atomic.AtomicLong.class, java.util.Collections.EMPTY_MAP.getClass(), java.lang.Boolean.class, java.lang.Character.class, java.lang.Byte.class, java.lang.Short.class, java.lang.Integer.class, java.lang.Long.class, java.lang.Float.class, java.lang.Double.class, java.lang.Number.class, java.lang.String.class, java.math.BigDecimal.class, java.math.BigInteger.class, java.util.BitSet.class, java.util.Calendar.class, java.util.Date.class, java.util.Locale.class, java.util.UUID.class, java.text.SimpleDateFormat.class, com.alibaba.fastjson.JSONObject.class, com.alibaba.fastjson.JSONPObject.class, com.alibaba.fastjson.JSONArray.class};
        for (int i5 = 0; i5 < 69; i5++) {
            java.lang.Class<?> cls = clsArr[i5];
            if (cls != null) {
                mappings.put(cls.getName(), cls);
            }
        }
        com.alibaba.fastjson.util.ModuleUtil.callWhenHasJavaSql(addBaseClassMappingsFunction, mappings);
    }

    public static void addMapping(java.lang.String str, java.lang.Class<?> cls) {
        mappings.put(str, cls);
    }

    public static com.alibaba.fastjson.serializer.SerializeBeanInfo buildBeanInfo(java.lang.Class<?> cls, java.util.Map<java.lang.String, java.lang.String> map, com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy) {
        return buildBeanInfo(cls, map, propertyNamingStrategy, false);
    }

    public static byte byteValue(java.math.BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            return (byte) 0;
        }
        int iScale = bigDecimal.scale();
        return (iScale < -100 || iScale > 100) ? bigDecimal.byteValueExact() : bigDecimal.byteValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T cast(java.lang.Object obj, java.lang.Class<T> cls, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        java.lang.Object obj2;
        int i5 = 0;
        if (obj == 0) {
            if (cls == java.lang.Integer.TYPE) {
                return (T) 0;
            }
            if (cls == java.lang.Long.TYPE) {
                return (T) 0L;
            }
            if (cls == java.lang.Short.TYPE) {
                return (T) (short) 0;
            }
            if (cls == java.lang.Byte.TYPE) {
                return (T) (byte) 0;
            }
            if (cls == java.lang.Float.TYPE) {
                return (T) java.lang.Float.valueOf(0.0f);
            }
            if (cls == java.lang.Double.TYPE) {
                return (T) java.lang.Double.valueOf(0.0d);
            }
            if (cls == java.lang.Boolean.TYPE) {
                return (T) java.lang.Boolean.FALSE;
            }
            return null;
        }
        if (cls == null) {
            throw new java.lang.IllegalArgumentException("clazz is null");
        }
        if (cls == obj.getClass()) {
            return obj;
        }
        if (obj instanceof java.util.Map) {
            if (cls == java.util.Map.class) {
                return obj;
            }
            java.util.Map map = (java.util.Map) obj;
            return (cls != java.lang.Object.class || map.containsKey(com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY)) ? (T) castToJavaBean(map, cls, parserConfig) : obj;
        }
        if (cls.isArray()) {
            if (obj instanceof java.util.Collection) {
                java.util.Collection collection = (java.util.Collection) obj;
                T t5 = (T) java.lang.reflect.Array.newInstance(cls.getComponentType(), collection.size());
                java.util.Iterator it = collection.iterator();
                while (it.hasNext()) {
                    java.lang.reflect.Array.set(t5, i5, cast(it.next(), (java.lang.Class) cls.getComponentType(), parserConfig));
                    i5++;
                }
                return t5;
            }
            if (cls == byte[].class) {
                return (T) castToBytes(obj);
            }
        }
        if (cls.isAssignableFrom(obj.getClass())) {
            return obj;
        }
        if (cls == java.lang.Boolean.TYPE || cls == java.lang.Boolean.class) {
            return (T) castToBoolean(obj);
        }
        if (cls == java.lang.Byte.TYPE || cls == java.lang.Byte.class) {
            return (T) castToByte(obj);
        }
        if (cls == java.lang.Character.TYPE || cls == java.lang.Character.class) {
            return (T) castToChar(obj);
        }
        if (cls == java.lang.Short.TYPE || cls == java.lang.Short.class) {
            return (T) castToShort(obj);
        }
        if (cls == java.lang.Integer.TYPE || cls == java.lang.Integer.class) {
            return (T) castToInt(obj);
        }
        if (cls == java.lang.Long.TYPE || cls == java.lang.Long.class) {
            return (T) castToLong(obj);
        }
        if (cls == java.lang.Float.TYPE || cls == java.lang.Float.class) {
            return (T) castToFloat(obj);
        }
        if (cls == java.lang.Double.TYPE || cls == java.lang.Double.class) {
            return (T) castToDouble(obj);
        }
        if (cls == java.lang.String.class) {
            return (T) castToString(obj);
        }
        if (cls == java.math.BigDecimal.class) {
            return (T) castToBigDecimal(obj);
        }
        if (cls == java.math.BigInteger.class) {
            return (T) castToBigInteger(obj);
        }
        if (cls == java.util.Date.class) {
            return (T) castToDate(obj);
        }
        T t6 = (T) com.alibaba.fastjson.util.ModuleUtil.callWhenHasJavaSql(castFunction, obj, cls);
        if (t6 != null) {
            return t6;
        }
        if (cls.isEnum()) {
            return (T) castToEnum(obj, cls, parserConfig);
        }
        if (java.util.Calendar.class.isAssignableFrom(cls)) {
            java.util.Date dateCastToDate = castToDate(obj);
            if (cls == java.util.Calendar.class) {
                obj2 = (T) java.util.Calendar.getInstance(com.alibaba.fastjson.JSON.defaultTimeZone, com.alibaba.fastjson.JSON.defaultLocale);
            } else {
                try {
                    obj2 = (T) ((java.util.Calendar) cls.newInstance());
                } catch (java.lang.Exception e5) {
                    throw new com.alibaba.fastjson.JSONException("can not cast to : " + cls.getName(), e5);
                }
            }
            ((java.util.Calendar) obj2).setTime(dateCastToDate);
            return (T) obj2;
        }
        java.lang.String name = cls.getName();
        if (name.equals("javax.xml.datatype.XMLGregorianCalendar")) {
            java.util.Date dateCastToDate2 = castToDate(obj);
            java.util.Calendar calendar = java.util.Calendar.getInstance(com.alibaba.fastjson.JSON.defaultTimeZone, com.alibaba.fastjson.JSON.defaultLocale);
            calendar.setTime(dateCastToDate2);
            return (T) com.alibaba.fastjson.serializer.CalendarCodec.instance.createXMLGregorianCalendar(calendar);
        }
        if (obj instanceof java.lang.String) {
            java.lang.String str = (java.lang.String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
            if (cls == java.util.Currency.class) {
                return (T) java.util.Currency.getInstance(str);
            }
            if (cls == java.util.Locale.class) {
                return (T) toLocale(str);
            }
            if (name.startsWith("java.time.")) {
                return (T) com.alibaba.fastjson.JSON.parseObject(com.alibaba.fastjson.JSON.toJSONString(str), cls);
            }
        }
        if (parserConfig.get(cls) != null) {
            return (T) com.alibaba.fastjson.JSON.parseObject(com.alibaba.fastjson.JSON.toJSONString(obj), cls);
        }
        throw new com.alibaba.fastjson.JSONException("can not cast to : " + cls.getName());
    }

    public static java.math.BigDecimal castToBigDecimal(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.lang.Float) {
            java.lang.Float f5 = (java.lang.Float) obj;
            if (java.lang.Float.isNaN(f5.floatValue()) || java.lang.Float.isInfinite(f5.floatValue())) {
                return null;
            }
        } else if (obj instanceof java.lang.Double) {
            java.lang.Double d5 = (java.lang.Double) obj;
            if (java.lang.Double.isNaN(d5.doubleValue()) || java.lang.Double.isInfinite(d5.doubleValue())) {
                return null;
            }
        } else {
            if (obj instanceof java.math.BigDecimal) {
                return (java.math.BigDecimal) obj;
            }
            if (obj instanceof java.math.BigInteger) {
                return new java.math.BigDecimal((java.math.BigInteger) obj);
            }
            if ((obj instanceof java.util.Map) && ((java.util.Map) obj).size() == 0) {
                return null;
            }
        }
        java.lang.String string = obj.toString();
        if (string.length() == 0 || string.equalsIgnoreCase("null")) {
            return null;
        }
        if (string.length() <= 65535) {
            return new java.math.BigDecimal(string);
        }
        throw new com.alibaba.fastjson.JSONException("decimal overflow");
    }

    public static java.math.BigInteger castToBigInteger(java.lang.Object obj) {
        java.math.BigDecimal bigDecimal;
        int iScale;
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.lang.Float) {
            java.lang.Float f5 = (java.lang.Float) obj;
            if (java.lang.Float.isNaN(f5.floatValue()) || java.lang.Float.isInfinite(f5.floatValue())) {
                return null;
            }
            return java.math.BigInteger.valueOf(f5.longValue());
        }
        if (obj instanceof java.lang.Double) {
            java.lang.Double d5 = (java.lang.Double) obj;
            if (java.lang.Double.isNaN(d5.doubleValue()) || java.lang.Double.isInfinite(d5.doubleValue())) {
                return null;
            }
            return java.math.BigInteger.valueOf(d5.longValue());
        }
        if (obj instanceof java.math.BigInteger) {
            return (java.math.BigInteger) obj;
        }
        if ((obj instanceof java.math.BigDecimal) && (iScale = (bigDecimal = (java.math.BigDecimal) obj).scale()) > -1000 && iScale < 1000) {
            return bigDecimal.toBigInteger();
        }
        java.lang.String string = obj.toString();
        if (string.length() == 0 || string.equalsIgnoreCase("null")) {
            return null;
        }
        if (string.length() <= 65535) {
            return new java.math.BigInteger(string);
        }
        throw new com.alibaba.fastjson.JSONException("decimal overflow");
    }

    public static java.lang.Boolean castToBoolean(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.lang.Boolean) {
            return (java.lang.Boolean) obj;
        }
        if (obj instanceof java.math.BigDecimal) {
            return java.lang.Boolean.valueOf(intValue((java.math.BigDecimal) obj) == 1);
        }
        if (obj instanceof java.lang.Number) {
            return java.lang.Boolean.valueOf(((java.lang.Number) obj).intValue() == 1);
        }
        if (obj instanceof java.lang.String) {
            java.lang.String str = (java.lang.String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
            if ("true".equalsIgnoreCase(str) || "1".equals(str)) {
                return java.lang.Boolean.TRUE;
            }
            if ("false".equalsIgnoreCase(str) || com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS.equals(str)) {
                return java.lang.Boolean.FALSE;
            }
            if ("Y".equalsIgnoreCase(str) || "T".equals(str)) {
                return java.lang.Boolean.TRUE;
            }
            if ("F".equalsIgnoreCase(str) || "N".equals(str)) {
                return java.lang.Boolean.FALSE;
            }
        }
        throw new com.alibaba.fastjson.JSONException("can not cast to boolean, value : " + obj);
    }

    public static java.lang.Byte castToByte(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.math.BigDecimal) {
            return java.lang.Byte.valueOf(byteValue((java.math.BigDecimal) obj));
        }
        if (obj instanceof java.lang.Number) {
            return java.lang.Byte.valueOf(((java.lang.Number) obj).byteValue());
        }
        if (obj instanceof java.lang.String) {
            java.lang.String str = (java.lang.String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
            return java.lang.Byte.valueOf(java.lang.Byte.parseByte(str));
        }
        if (obj instanceof java.lang.Boolean) {
            return java.lang.Byte.valueOf(((java.lang.Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
        }
        throw new com.alibaba.fastjson.JSONException("can not cast to byte, value : " + obj);
    }

    public static byte[] castToBytes(java.lang.Object obj) {
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        if (obj instanceof java.lang.String) {
            return com.alibaba.fastjson.util.IOUtils.decodeBase64((java.lang.String) obj);
        }
        throw new com.alibaba.fastjson.JSONException("can not cast to byte[], value : " + obj);
    }

    public static java.lang.Character castToChar(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.lang.Character) {
            return (java.lang.Character) obj;
        }
        if (!(obj instanceof java.lang.String)) {
            throw new com.alibaba.fastjson.JSONException("can not cast to char, value : " + obj);
        }
        java.lang.String str = (java.lang.String) obj;
        if (str.length() == 0) {
            return null;
        }
        if (str.length() == 1) {
            return java.lang.Character.valueOf(str.charAt(0));
        }
        throw new com.alibaba.fastjson.JSONException("can not cast to char, value : " + obj);
    }

    public static java.util.Date castToDate(java.lang.Object obj) {
        return castToDate(obj, null);
    }

    public static java.lang.Double castToDouble(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.lang.Number) {
            return java.lang.Double.valueOf(((java.lang.Number) obj).doubleValue());
        }
        if (!(obj instanceof java.lang.String)) {
            if (obj instanceof java.lang.Boolean) {
                return java.lang.Double.valueOf(((java.lang.Boolean) obj).booleanValue() ? 1.0d : 0.0d);
            }
            throw new com.alibaba.fastjson.JSONException("can not cast to double, value : " + obj);
        }
        java.lang.String string = obj.toString();
        if (string.length() == 0 || "null".equals(string) || "NULL".equals(string)) {
            return null;
        }
        if (string.indexOf(44) != -1) {
            string = string.replaceAll(",", "");
        }
        return java.lang.Double.valueOf(java.lang.Double.parseDouble(string));
    }

    public static <T> T castToEnum(java.lang.Object obj, java.lang.Class<T> cls, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        try {
            if (obj instanceof java.lang.String) {
                java.lang.String str = (java.lang.String) obj;
                if (str.length() == 0) {
                    return null;
                }
                if (parserConfig == null) {
                    parserConfig = com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance();
                }
                com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = parserConfig.getDeserializer(cls);
                return deserializer instanceof com.alibaba.fastjson.parser.deserializer.EnumDeserializer ? (T) ((com.alibaba.fastjson.parser.deserializer.EnumDeserializer) deserializer).getEnumByHashCode(fnv1a_64(str)) : (T) java.lang.Enum.valueOf(cls, str);
            }
            if (obj instanceof java.math.BigDecimal) {
                int iIntValue = intValue((java.math.BigDecimal) obj);
                T[] enumConstants = cls.getEnumConstants();
                if (iIntValue < enumConstants.length) {
                    return enumConstants[iIntValue];
                }
            }
            if (obj instanceof java.lang.Number) {
                int iIntValue2 = ((java.lang.Number) obj).intValue();
                T[] enumConstants2 = cls.getEnumConstants();
                if (iIntValue2 < enumConstants2.length) {
                    return enumConstants2[iIntValue2];
                }
            }
            throw new com.alibaba.fastjson.JSONException("can not cast to : " + cls.getName());
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONException("can not cast to : " + cls.getName(), e5);
        }
    }

    public static java.lang.Float castToFloat(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.lang.Number) {
            return java.lang.Float.valueOf(((java.lang.Number) obj).floatValue());
        }
        if (!(obj instanceof java.lang.String)) {
            if (obj instanceof java.lang.Boolean) {
                return java.lang.Float.valueOf(((java.lang.Boolean) obj).booleanValue() ? 1.0f : 0.0f);
            }
            throw new com.alibaba.fastjson.JSONException("can not cast to float, value : " + obj);
        }
        java.lang.String string = obj.toString();
        if (string.length() == 0 || "null".equals(string) || "NULL".equals(string)) {
            return null;
        }
        if (string.indexOf(44) != -1) {
            string = string.replaceAll(",", "");
        }
        return java.lang.Float.valueOf(java.lang.Float.parseFloat(string));
    }

    public static java.lang.Integer castToInt(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.lang.Integer) {
            return (java.lang.Integer) obj;
        }
        if (obj instanceof java.math.BigDecimal) {
            return java.lang.Integer.valueOf(intValue((java.math.BigDecimal) obj));
        }
        if (obj instanceof java.lang.Number) {
            return java.lang.Integer.valueOf(((java.lang.Number) obj).intValue());
        }
        if (obj instanceof java.lang.String) {
            java.lang.String strReplaceAll = (java.lang.String) obj;
            if (strReplaceAll.length() == 0 || "null".equals(strReplaceAll) || "NULL".equals(strReplaceAll)) {
                return null;
            }
            if (strReplaceAll.indexOf(44) != -1) {
                strReplaceAll = strReplaceAll.replaceAll(",", "");
            }
            java.util.regex.Matcher matcher = NUMBER_WITH_TRAILING_ZEROS_PATTERN.matcher(strReplaceAll);
            if (matcher.find()) {
                strReplaceAll = matcher.replaceAll("");
            }
            return java.lang.Integer.valueOf(java.lang.Integer.parseInt(strReplaceAll));
        }
        if (obj instanceof java.lang.Boolean) {
            return java.lang.Integer.valueOf(((java.lang.Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            if (map.size() == 2 && map.containsKey("andIncrement") && map.containsKey("andDecrement")) {
                java.util.Iterator it = map.values().iterator();
                it.next();
                return castToInt(it.next());
            }
        }
        throw new com.alibaba.fastjson.JSONException("can not cast to int, value : " + obj);
    }

    public static <T> T castToJavaBean(java.lang.Object obj, java.lang.Class<T> cls) {
        return (T) cast(obj, (java.lang.Class) cls, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public static java.lang.Long castToLong(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.math.BigDecimal) {
            return java.lang.Long.valueOf(longValue((java.math.BigDecimal) obj));
        }
        if (obj instanceof java.lang.Number) {
            return java.lang.Long.valueOf(((java.lang.Number) obj).longValue());
        }
        if (obj instanceof java.lang.String) {
            java.lang.String strReplaceAll = (java.lang.String) obj;
            if (strReplaceAll.length() == 0 || "null".equals(strReplaceAll) || "NULL".equals(strReplaceAll)) {
                return null;
            }
            if (strReplaceAll.indexOf(44) != -1) {
                strReplaceAll = strReplaceAll.replaceAll(",", "");
            }
            try {
                return java.lang.Long.valueOf(java.lang.Long.parseLong(strReplaceAll));
            } catch (java.lang.NumberFormatException unused) {
                com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strReplaceAll);
                java.util.Calendar calendar = jSONScanner.scanISO8601DateIfMatch(false) ? jSONScanner.getCalendar() : null;
                jSONScanner.close();
                if (calendar != null) {
                    return java.lang.Long.valueOf(calendar.getTimeInMillis());
                }
            }
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            if (map.size() == 2 && map.containsKey("andIncrement") && map.containsKey("andDecrement")) {
                java.util.Iterator it = map.values().iterator();
                it.next();
                return castToLong(it.next());
            }
        }
        if (obj instanceof java.lang.Boolean) {
            return java.lang.Long.valueOf(((java.lang.Boolean) obj).booleanValue() ? 1L : 0L);
        }
        throw new com.alibaba.fastjson.JSONException("can not cast to long, value : " + obj);
    }

    public static java.lang.Short castToShort(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.math.BigDecimal) {
            return java.lang.Short.valueOf(shortValue((java.math.BigDecimal) obj));
        }
        if (obj instanceof java.lang.Number) {
            return java.lang.Short.valueOf(((java.lang.Number) obj).shortValue());
        }
        if (obj instanceof java.lang.String) {
            java.lang.String str = (java.lang.String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
            return java.lang.Short.valueOf(java.lang.Short.parseShort(str));
        }
        if (obj instanceof java.lang.Boolean) {
            return java.lang.Short.valueOf(((java.lang.Boolean) obj).booleanValue() ? (short) 1 : (short) 0);
        }
        throw new com.alibaba.fastjson.JSONException("can not cast to short, value : " + obj);
    }

    public static java.lang.Object castToSqlDate(java.lang.Object obj) {
        return com.alibaba.fastjson.util.ModuleUtil.callWhenHasJavaSql(castToSqlDateFunction, obj);
    }

    public static java.lang.Object castToSqlTime(java.lang.Object obj) {
        return com.alibaba.fastjson.util.ModuleUtil.callWhenHasJavaSql(castToSqlTimeFunction, obj);
    }

    public static java.lang.String castToString(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public static java.lang.Object castToTimestamp(java.lang.Object obj) {
        return com.alibaba.fastjson.util.ModuleUtil.callWhenHasJavaSql(castToTimestampFunction, obj);
    }

    public static java.lang.reflect.Type checkPrimitiveArray(java.lang.reflect.GenericArrayType genericArrayType) {
        java.lang.reflect.Type genericComponentType = genericArrayType.getGenericComponentType();
        java.lang.String str = "[";
        while (genericComponentType instanceof java.lang.reflect.GenericArrayType) {
            genericComponentType = ((java.lang.reflect.GenericArrayType) genericComponentType).getGenericComponentType();
            str = str + str;
        }
        if (!(genericComponentType instanceof java.lang.Class)) {
            return genericArrayType;
        }
        java.lang.Class cls = (java.lang.Class) genericComponentType;
        if (!cls.isPrimitive()) {
            return genericArrayType;
        }
        try {
            java.lang.String str2 = (java.lang.String) primitiveTypeMap.get(cls);
            if (str2 == null) {
                return genericArrayType;
            }
            return java.lang.Class.forName(str + str2);
        } catch (java.lang.ClassNotFoundException unused) {
            return genericArrayType;
        }
    }

    public static void clearClassMapping() {
        mappings.clear();
        addBaseClassMappings();
    }

    private static void computeFields(java.lang.Class<?> cls, java.util.Map<java.lang.String, java.lang.String> map, com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy, java.util.Map<java.lang.String, com.alibaba.fastjson.util.FieldInfo> map2, java.lang.reflect.Field[] fieldArr) {
        java.lang.String strLabel;
        int i5;
        int i6;
        int i7;
        for (java.lang.reflect.Field field : fieldArr) {
            if (!java.lang.reflect.Modifier.isStatic(field.getModifiers())) {
                com.alibaba.fastjson.annotation.JSONField jSONField = (com.alibaba.fastjson.annotation.JSONField) getAnnotation(field, com.alibaba.fastjson.annotation.JSONField.class);
                java.lang.String name = field.getName();
                if (jSONField == null) {
                    strLabel = null;
                    i5 = 0;
                    i6 = 0;
                    i7 = 0;
                } else if (jSONField.serialize()) {
                    int iOrdinal = jSONField.ordinal();
                    int iOf = com.alibaba.fastjson.serializer.SerializerFeature.of(jSONField.serialzeFeatures());
                    int iOf2 = com.alibaba.fastjson.parser.Feature.of(jSONField.parseFeatures());
                    if (jSONField.name().length() != 0) {
                        name = jSONField.name();
                    }
                    strLabel = jSONField.label().length() != 0 ? jSONField.label() : null;
                    i5 = iOrdinal;
                    i6 = iOf;
                    i7 = iOf2;
                }
                if (map == null || (name = map.get(name)) != null) {
                    if (propertyNamingStrategy != null) {
                        name = propertyNamingStrategy.translate(name);
                    }
                    java.lang.String str = name;
                    if (!map2.containsKey(str)) {
                        map2.put(str, new com.alibaba.fastjson.util.FieldInfo(str, null, field, cls, null, i5, i6, i7, null, jSONField, strLabel));
                    }
                }
            }
        }
    }

    public static java.util.List<com.alibaba.fastjson.util.FieldInfo> computeGetters(java.lang.Class<?> cls, java.util.Map<java.lang.String, java.lang.String> map) {
        return computeGetters(cls, map, true);
    }

    public static java.util.List<com.alibaba.fastjson.util.FieldInfo> computeGettersWithFieldBase(java.lang.Class<?> cls, java.util.Map<java.lang.String, java.lang.String> map, boolean z4, com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        for (java.lang.Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            computeFields(superclass, map, propertyNamingStrategy, linkedHashMap, superclass.getDeclaredFields());
        }
        return getFieldInfos(cls, z4, linkedHashMap);
    }

    private static java.util.Map<java.lang.reflect.TypeVariable, java.lang.reflect.Type> createActualTypeMap(java.lang.reflect.TypeVariable[] typeVariableArr, java.lang.reflect.Type[] typeArr) {
        int length = typeVariableArr.length;
        java.util.HashMap map = new java.util.HashMap(length);
        for (int i5 = 0; i5 < length; i5++) {
            map.put(typeVariableArr[i5], typeArr[i5]);
        }
        return map;
    }

    public static java.util.Collection createCollection(java.lang.reflect.Type type) {
        java.lang.Class<?> cls;
        java.lang.Class<?> rawClass = getRawClass(type);
        if (rawClass == java.util.AbstractCollection.class || rawClass == java.util.Collection.class) {
            return new java.util.ArrayList();
        }
        if (rawClass.isAssignableFrom(java.util.HashSet.class)) {
            return new java.util.HashSet();
        }
        if (rawClass.isAssignableFrom(java.util.LinkedHashSet.class)) {
            return new java.util.LinkedHashSet();
        }
        if (rawClass.isAssignableFrom(java.util.TreeSet.class)) {
            return new java.util.TreeSet();
        }
        if (rawClass.isAssignableFrom(java.util.ArrayList.class)) {
            return new java.util.ArrayList();
        }
        if (rawClass.isAssignableFrom(java.util.EnumSet.class)) {
            return java.util.EnumSet.noneOf((java.lang.Class) (type instanceof java.lang.reflect.ParameterizedType ? ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments()[0] : java.lang.Object.class));
        }
        if (rawClass.isAssignableFrom(java.util.Queue.class) || ((cls = class_deque) != null && rawClass.isAssignableFrom(cls))) {
            return new java.util.LinkedList();
        }
        try {
            return (java.util.Collection) rawClass.newInstance();
        } catch (java.lang.Exception unused) {
            throw new com.alibaba.fastjson.JSONException("create instance error, class " + rawClass.getName());
        }
    }

    public static java.util.Set createSet(java.lang.reflect.Type type) {
        java.lang.Class<?> rawClass = getRawClass(type);
        if (rawClass == java.util.AbstractCollection.class || rawClass == java.util.Collection.class) {
            return new java.util.HashSet();
        }
        if (rawClass.isAssignableFrom(java.util.HashSet.class)) {
            return new java.util.HashSet();
        }
        if (rawClass.isAssignableFrom(java.util.LinkedHashSet.class)) {
            return new java.util.LinkedHashSet();
        }
        if (rawClass.isAssignableFrom(java.util.TreeSet.class)) {
            return new java.util.TreeSet();
        }
        if (rawClass.isAssignableFrom(java.util.EnumSet.class)) {
            return java.util.EnumSet.noneOf((java.lang.Class) (type instanceof java.lang.reflect.ParameterizedType ? ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments()[0] : java.lang.Object.class));
        }
        try {
            return (java.util.Set) rawClass.newInstance();
        } catch (java.lang.Exception unused) {
            throw new com.alibaba.fastjson.JSONException("create instance error, class " + rawClass.getName());
        }
    }

    public static java.lang.String decapitalize(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        if (str.length() > 1 && java.lang.Character.isUpperCase(str.charAt(1)) && java.lang.Character.isUpperCase(str.charAt(0))) {
            return str;
        }
        char[] charArray = str.toCharArray();
        charArray[0] = java.lang.Character.toLowerCase(charArray[0]);
        return new java.lang.String(charArray);
    }

    public static long fnv1a_64(java.lang.String str) {
        long jCharAt = fnv1a_64_magic_hashcode;
        for (int i5 = 0; i5 < str.length(); i5++) {
            jCharAt = (jCharAt ^ ((long) str.charAt(i5))) * fnv1a_64_magic_prime;
        }
        return jCharAt;
    }

    public static long fnv1a_64_extract(java.lang.String str) {
        long j5 = fnv1a_64_magic_hashcode;
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (cCharAt != '_' && cCharAt != '-') {
                if (cCharAt >= 'A' && cCharAt <= 'Z') {
                    cCharAt = (char) (cCharAt + ' ');
                }
                j5 = (j5 ^ ((long) cCharAt)) * fnv1a_64_magic_prime;
            }
        }
        return j5;
    }

    public static long fnv1a_64_lower(java.lang.String str) {
        long j5 = fnv1a_64_magic_hashcode;
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                cCharAt = (char) (cCharAt + ' ');
            }
            j5 = (j5 ^ ((long) cCharAt)) * fnv1a_64_magic_prime;
        }
        return j5;
    }

    private static java.lang.reflect.Type getActualType(java.lang.reflect.Type type, java.util.Map<java.lang.reflect.TypeVariable, java.lang.reflect.Type> map) {
        if (type instanceof java.lang.reflect.TypeVariable) {
            return map.get(type);
        }
        if (type instanceof java.lang.reflect.ParameterizedType) {
            return makeParameterizedType(getRawClass(type), ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments(), map);
        }
        return type instanceof java.lang.reflect.GenericArrayType ? new com.alibaba.fastjson.util.GenericArrayTypeImpl(getActualType(((java.lang.reflect.GenericArrayType) type).getGenericComponentType(), map)) : type;
    }

    public static <A extends java.lang.annotation.Annotation> A getAnnotation(java.lang.Class<?> cls, java.lang.Class<A> cls2) {
        A a5 = (A) cls.getAnnotation(cls2);
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(cls);
        java.lang.Class cls3 = mixInAnnotations instanceof java.lang.Class ? (java.lang.Class) mixInAnnotations : null;
        if (cls3 != null) {
            A a6 = (A) cls3.getAnnotation(cls2);
            java.lang.annotation.Annotation[] annotations = cls3.getAnnotations();
            if (a6 == null && annotations.length > 0) {
                for (java.lang.annotation.Annotation annotation : annotations) {
                    a6 = (A) annotation.annotationType().getAnnotation(cls2);
                    if (a6 != null) {
                        break;
                    }
                }
            }
            if (a6 != null) {
                return a6;
            }
        }
        java.lang.annotation.Annotation[] annotations2 = cls.getAnnotations();
        if (a5 == null && annotations2.length > 0) {
            for (java.lang.annotation.Annotation annotation2 : annotations2) {
                a5 = (A) annotation2.annotationType().getAnnotation(cls2);
                if (a5 != null) {
                    break;
                }
            }
        }
        return a5;
    }

    public static java.lang.Class<?> getClass(java.lang.reflect.Type type) {
        if (type.getClass() == java.lang.Class.class) {
            return (java.lang.Class) type;
        }
        if (type instanceof java.lang.reflect.ParameterizedType) {
            return getClass(((java.lang.reflect.ParameterizedType) type).getRawType());
        }
        if (type instanceof java.lang.reflect.TypeVariable) {
            java.lang.reflect.Type type2 = ((java.lang.reflect.TypeVariable) type).getBounds()[0];
            return type2 instanceof java.lang.Class ? (java.lang.Class) type2 : getClass(type2);
        }
        if (!(type instanceof java.lang.reflect.WildcardType)) {
            return java.lang.Object.class;
        }
        java.lang.reflect.Type[] upperBounds = ((java.lang.reflect.WildcardType) type).getUpperBounds();
        return upperBounds.length == 1 ? getClass(upperBounds[0]) : java.lang.Object.class;
    }

    public static java.lang.Class<?> getClassFromMapping(java.lang.String str) {
        return mappings.get(str);
    }

    public static java.lang.Class<?> getCollectionItemClass(java.lang.reflect.Type type) {
        if (!(type instanceof java.lang.reflect.ParameterizedType)) {
            return java.lang.Object.class;
        }
        java.lang.reflect.Type type2 = ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof java.lang.reflect.WildcardType) {
            java.lang.reflect.Type[] upperBounds = ((java.lang.reflect.WildcardType) type2).getUpperBounds();
            if (upperBounds.length == 1) {
                type2 = upperBounds[0];
            }
        }
        if (!(type2 instanceof java.lang.Class)) {
            throw new com.alibaba.fastjson.JSONException("can not create ASMParser");
        }
        java.lang.Class<?> cls = (java.lang.Class) type2;
        if (java.lang.reflect.Modifier.isPublic(cls.getModifiers())) {
            return cls;
        }
        throw new com.alibaba.fastjson.JSONException("can not create ASMParser");
    }

    public static java.lang.reflect.Type getCollectionItemType(java.lang.reflect.Type type) {
        if (type instanceof java.lang.reflect.ParameterizedType) {
            return getCollectionItemType((java.lang.reflect.ParameterizedType) type);
        }
        return type instanceof java.lang.Class ? getCollectionItemType((java.lang.Class<?>) type) : java.lang.Object.class;
    }

    private static java.lang.reflect.Type getCollectionSuperType(java.lang.Class<?> cls) {
        java.lang.reflect.Type type = null;
        for (java.lang.reflect.Type type2 : cls.getGenericInterfaces()) {
            java.lang.Class<?> rawClass = getRawClass(type2);
            if (rawClass == java.util.Collection.class) {
                return type2;
            }
            if (java.util.Collection.class.isAssignableFrom(rawClass)) {
                type = type2;
            }
        }
        return type == null ? cls.getGenericSuperclass() : type;
    }

    public static java.lang.reflect.Field getField(java.lang.Class<?> cls, java.lang.String str, java.lang.reflect.Field[] fieldArr) {
        char cCharAt;
        char cCharAt2;
        for (java.lang.reflect.Field field : fieldArr) {
            java.lang.String name = field.getName();
            if (str.equals(name)) {
                return field;
            }
            if (str.length() > 2 && (cCharAt = str.charAt(0)) >= 'a' && cCharAt <= 'z' && (cCharAt2 = str.charAt(1)) >= 'A' && cCharAt2 <= 'Z' && str.equalsIgnoreCase(name)) {
                return field;
            }
        }
        java.lang.Class<? super java.lang.Object> superclass = cls.getSuperclass();
        if (superclass == null || superclass == java.lang.Object.class) {
            return null;
        }
        return getField(superclass, str, superclass.getDeclaredFields());
    }

    private static java.util.List<com.alibaba.fastjson.util.FieldInfo> getFieldInfos(java.lang.Class<?> cls, boolean z4, java.util.Map<java.lang.String, com.alibaba.fastjson.util.FieldInfo> map) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        com.alibaba.fastjson.annotation.JSONType jSONType = (com.alibaba.fastjson.annotation.JSONType) getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class);
        java.lang.String[] strArrOrders = jSONType != null ? jSONType.orders() : null;
        if (strArrOrders == null || strArrOrders.length <= 0) {
            arrayList.addAll(map.values());
            if (z4) {
                java.util.Collections.sort(arrayList);
            }
        } else {
            java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap(map.size());
            for (com.alibaba.fastjson.util.FieldInfo fieldInfo : map.values()) {
                linkedHashMap.put(fieldInfo.name, fieldInfo);
            }
            for (java.lang.String str : strArrOrders) {
                com.alibaba.fastjson.util.FieldInfo fieldInfo2 = (com.alibaba.fastjson.util.FieldInfo) linkedHashMap.get(str);
                if (fieldInfo2 != null) {
                    arrayList.add(fieldInfo2);
                    linkedHashMap.remove(str);
                }
            }
            arrayList.addAll(linkedHashMap.values());
        }
        return arrayList;
    }

    public static java.lang.reflect.Type getGenericParamType(java.lang.reflect.Type type) {
        return (!(type instanceof java.lang.reflect.ParameterizedType) && (type instanceof java.lang.Class)) ? getGenericParamType(((java.lang.Class) type).getGenericSuperclass()) : type;
    }

    public static java.lang.String[] getKoltinConstructorParameters(java.lang.Class cls) {
        if (kotlin_kclass_constructor == null && !kotlin_class_klass_error) {
            try {
                kotlin_kclass_constructor = java.lang.Class.forName("kotlin.reflect.jvm.internal.KClassImpl").getConstructor(java.lang.Class.class);
            } catch (java.lang.Throwable unused) {
                kotlin_class_klass_error = true;
            }
        }
        if (kotlin_kclass_constructor == null) {
            return null;
        }
        if (kotlin_kclass_getConstructors == null && !kotlin_class_klass_error) {
            try {
                kotlin_kclass_getConstructors = java.lang.Class.forName("kotlin.reflect.jvm.internal.KClassImpl").getMethod("getConstructors", new java.lang.Class[0]);
            } catch (java.lang.Throwable unused2) {
                kotlin_class_klass_error = true;
            }
        }
        if (kotlin_kfunction_getParameters == null && !kotlin_class_klass_error) {
            try {
                kotlin_kfunction_getParameters = q3.d.class.getMethod("getParameters", new java.lang.Class[0]);
            } catch (java.lang.Throwable unused3) {
                kotlin_class_klass_error = true;
            }
        }
        if (kotlin_kparameter_getName == null && !kotlin_class_klass_error) {
            try {
                kotlin_kparameter_getName = q3.e.class.getMethod("getName", new java.lang.Class[0]);
            } catch (java.lang.Throwable unused4) {
                kotlin_class_klass_error = true;
            }
        }
        if (kotlin_error) {
            return null;
        }
        try {
            java.util.Iterator it = ((java.lang.Iterable) kotlin_kclass_getConstructors.invoke(kotlin_kclass_constructor.newInstance(cls), new java.lang.Object[0])).iterator();
            java.lang.Object obj = null;
            while (it.hasNext()) {
                java.lang.Object next = it.next();
                java.util.List list = (java.util.List) kotlin_kfunction_getParameters.invoke(next, new java.lang.Object[0]);
                if (obj == null || list.size() != 0) {
                    obj = next;
                }
                it.hasNext();
            }
            if (obj == null) {
                return null;
            }
            java.util.List list2 = (java.util.List) kotlin_kfunction_getParameters.invoke(obj, new java.lang.Object[0]);
            java.lang.String[] strArr = new java.lang.String[list2.size()];
            for (int i5 = 0; i5 < list2.size(); i5++) {
                strArr[i5] = (java.lang.String) kotlin_kparameter_getName.invoke(list2.get(i5), new java.lang.Object[0]);
            }
            return strArr;
        } catch (java.lang.Throwable th) {
            th.printStackTrace();
            kotlin_error = true;
            return null;
        }
    }

    public static java.lang.reflect.Constructor getKotlinConstructor(java.lang.reflect.Constructor[] constructorArr) {
        return getKotlinConstructor(constructorArr, null);
    }

    public static java.lang.annotation.Annotation[][] getParameterAnnotations(java.lang.reflect.Method method) {
        java.lang.annotation.Annotation[][] parameterAnnotations;
        java.lang.annotation.Annotation[][] parameterAnnotations2 = method.getParameterAnnotations();
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(method.getDeclaringClass());
        java.lang.reflect.Method declaredMethod = null;
        java.lang.Class superclass = mixInAnnotations instanceof java.lang.Class ? (java.lang.Class) mixInAnnotations : null;
        if (superclass != null) {
            java.lang.String name = method.getName();
            java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
            while (superclass != null && superclass != java.lang.Object.class) {
                try {
                    declaredMethod = superclass.getDeclaredMethod(name, parameterTypes);
                    break;
                } catch (java.lang.NoSuchMethodException unused) {
                    superclass = superclass.getSuperclass();
                }
            }
            if (declaredMethod != null && (parameterAnnotations = declaredMethod.getParameterAnnotations()) != null) {
                return parameterAnnotations;
            }
        }
        return parameterAnnotations2;
    }

    public static int getParserFeatures(java.lang.Class<?> cls) {
        com.alibaba.fastjson.annotation.JSONType jSONType = (com.alibaba.fastjson.annotation.JSONType) getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class);
        if (jSONType == null) {
            return 0;
        }
        return com.alibaba.fastjson.parser.Feature.of(jSONType.parseFeatures());
    }

    private static java.lang.String getPropertyNameByCompatibleFieldName(java.util.Map<java.lang.String, java.lang.reflect.Field> map, java.lang.String str, java.lang.String str2, int i5) {
        if (!compatibleWithFieldName || map.containsKey(str2)) {
            return str2;
        }
        java.lang.String strSubstring = str.substring(i5);
        return map.containsKey(strSubstring) ? strSubstring : str2;
    }

    public static java.lang.String getPropertyNameByMethodName(java.lang.String str) {
        return java.lang.Character.toLowerCase(str.charAt(3)) + str.substring(4);
    }

    public static java.lang.Class<?> getRawClass(java.lang.reflect.Type type) {
        if (type instanceof java.lang.Class) {
            return (java.lang.Class) type;
        }
        if (type instanceof java.lang.reflect.ParameterizedType) {
            return getRawClass(((java.lang.reflect.ParameterizedType) type).getRawType());
        }
        if (!(type instanceof java.lang.reflect.WildcardType)) {
            throw new com.alibaba.fastjson.JSONException("TODO");
        }
        java.lang.reflect.Type[] upperBounds = ((java.lang.reflect.WildcardType) type).getUpperBounds();
        if (upperBounds.length == 1) {
            return getRawClass(upperBounds[0]);
        }
        throw new com.alibaba.fastjson.JSONException("TODO");
    }

    public static int getSerializeFeatures(java.lang.Class<?> cls) {
        com.alibaba.fastjson.annotation.JSONType jSONType = (com.alibaba.fastjson.annotation.JSONType) getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class);
        if (jSONType == null) {
            return 0;
        }
        return com.alibaba.fastjson.serializer.SerializerFeature.of(jSONType.serialzeFeatures());
    }

    public static com.alibaba.fastjson.annotation.JSONField getSuperMethodAnnotation(java.lang.Class<?> cls, java.lang.reflect.Method method) {
        boolean z4;
        com.alibaba.fastjson.annotation.JSONField jSONField;
        boolean z5;
        com.alibaba.fastjson.annotation.JSONField jSONField2;
        java.lang.Class<?>[] interfaces = cls.getInterfaces();
        if (interfaces.length > 0) {
            java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
            for (java.lang.Class<?> cls2 : interfaces) {
                for (java.lang.reflect.Method method2 : cls2.getMethods()) {
                    java.lang.Class<?>[] parameterTypes2 = method2.getParameterTypes();
                    if (parameterTypes2.length == parameterTypes.length && method2.getName().equals(method.getName())) {
                        int i5 = 0;
                        while (true) {
                            if (i5 >= parameterTypes.length) {
                                z5 = true;
                                break;
                            }
                            if (!parameterTypes2[i5].equals(parameterTypes[i5])) {
                                z5 = false;
                                break;
                            }
                            i5++;
                        }
                        if (z5 && (jSONField2 = (com.alibaba.fastjson.annotation.JSONField) getAnnotation(method2, com.alibaba.fastjson.annotation.JSONField.class)) != null) {
                            return jSONField2;
                        }
                    }
                }
            }
        }
        java.lang.Class<? super java.lang.Object> superclass = cls.getSuperclass();
        if (superclass != null && java.lang.reflect.Modifier.isAbstract(superclass.getModifiers())) {
            java.lang.Class<?>[] parameterTypes3 = method.getParameterTypes();
            for (java.lang.reflect.Method method3 : superclass.getMethods()) {
                java.lang.Class<?>[] parameterTypes4 = method3.getParameterTypes();
                if (parameterTypes4.length == parameterTypes3.length && method3.getName().equals(method.getName())) {
                    int i6 = 0;
                    while (true) {
                        if (i6 >= parameterTypes3.length) {
                            z4 = true;
                            break;
                        }
                        if (!parameterTypes4[i6].equals(parameterTypes3[i6])) {
                            z4 = false;
                            break;
                        }
                        i6++;
                    }
                    if (z4 && (jSONField = (com.alibaba.fastjson.annotation.JSONField) getAnnotation(method3, com.alibaba.fastjson.annotation.JSONField.class)) != null) {
                        return jSONField;
                    }
                }
            }
        }
        return null;
    }

    private static java.lang.reflect.Type getWildcardTypeUpperBounds(java.lang.reflect.Type type) {
        if (!(type instanceof java.lang.reflect.WildcardType)) {
            return type;
        }
        java.lang.reflect.Type[] upperBounds = ((java.lang.reflect.WildcardType) type).getUpperBounds();
        return upperBounds.length > 0 ? upperBounds[0] : java.lang.Object.class;
    }

    public static java.lang.annotation.Annotation getXmlAccessorType(java.lang.Class cls) {
        if (class_XmlAccessorType == null && !classXmlAccessorType_error) {
            try {
                class_XmlAccessorType = java.lang.Class.forName("javax.xml.bind.annotation.XmlAccessorType");
            } catch (java.lang.Throwable unused) {
                classXmlAccessorType_error = true;
            }
        }
        if (class_XmlAccessorType == null) {
            return null;
        }
        return getAnnotation((java.lang.Class<?>) cls, class_XmlAccessorType);
    }

    public static int intValue(java.math.BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            return 0;
        }
        int iScale = bigDecimal.scale();
        return (iScale < -100 || iScale > 100) ? bigDecimal.intValueExact() : bigDecimal.intValue();
    }

    public static boolean isAnnotationPresentManyToMany(java.lang.reflect.Method method) {
        if (method == null) {
            return false;
        }
        if (class_ManyToMany == null && !class_ManyToMany_error) {
            try {
                class_ManyToMany = java.lang.Class.forName("javax.persistence.ManyToMany");
            } catch (java.lang.Throwable unused) {
                class_ManyToMany_error = true;
            }
        }
        if (class_ManyToMany != null) {
            return method.isAnnotationPresent(class_OneToMany) || method.isAnnotationPresent(class_ManyToMany);
        }
        return false;
    }

    public static boolean isAnnotationPresentOneToMany(java.lang.reflect.Method method) {
        if (method == null) {
            return false;
        }
        if (class_OneToMany == null && !class_OneToMany_error) {
            try {
                class_OneToMany = java.lang.Class.forName("javax.persistence.OneToMany");
            } catch (java.lang.Throwable unused) {
                class_OneToMany_error = true;
            }
        }
        java.lang.Class<? extends java.lang.annotation.Annotation> cls = class_OneToMany;
        return cls != null && method.isAnnotationPresent(cls);
    }

    public static boolean isClob(java.lang.Class cls) {
        java.lang.Boolean bool = (java.lang.Boolean) com.alibaba.fastjson.util.ModuleUtil.callWhenHasJavaSql(isClobFunction, cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static boolean isGenericParamType(java.lang.reflect.Type type) {
        if (type instanceof java.lang.reflect.ParameterizedType) {
            return true;
        }
        if (!(type instanceof java.lang.Class)) {
            return false;
        }
        java.lang.reflect.Type genericSuperclass = ((java.lang.Class) type).getGenericSuperclass();
        return genericSuperclass != java.lang.Object.class && isGenericParamType(genericSuperclass);
    }

    public static boolean isHibernateInitialized(java.lang.Object obj) {
        if (obj == null) {
            return false;
        }
        if (method_HibernateIsInitialized == null && !method_HibernateIsInitialized_error) {
            try {
                method_HibernateIsInitialized = java.lang.Class.forName("org.hibernate.Hibernate").getMethod("isInitialized", java.lang.Object.class);
            } catch (java.lang.Throwable unused) {
                method_HibernateIsInitialized_error = true;
            }
        }
        java.lang.reflect.Method method = method_HibernateIsInitialized;
        if (method != null) {
            try {
                return ((java.lang.Boolean) method.invoke(null, obj)).booleanValue();
            } catch (java.lang.Throwable unused2) {
            }
        }
        return true;
    }

    private static boolean isJSONTypeIgnore(java.lang.Class<?> cls, java.lang.String str) {
        com.alibaba.fastjson.annotation.JSONType jSONType = (com.alibaba.fastjson.annotation.JSONType) getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class);
        if (jSONType != null) {
            java.lang.String[] strArrIncludes = jSONType.includes();
            if (strArrIncludes.length > 0) {
                for (java.lang.String str2 : strArrIncludes) {
                    if (str.equals(str2)) {
                        return false;
                    }
                }
                return true;
            }
            for (java.lang.String str3 : jSONType.ignores()) {
                if (str.equals(str3)) {
                    return true;
                }
            }
        }
        if (cls.getSuperclass() == java.lang.Object.class || cls.getSuperclass() == null) {
            return false;
        }
        return isJSONTypeIgnore(cls.getSuperclass(), str);
    }

    public static boolean isJacksonCreator(java.lang.reflect.Method method) {
        if (method == null) {
            return false;
        }
        if (class_JacksonCreator == null && !class_JacksonCreator_error) {
            try {
                class_JacksonCreator = java.lang.Class.forName("com.fasterxml.jackson.annotation.JsonCreator");
            } catch (java.lang.Throwable unused) {
                class_JacksonCreator_error = true;
            }
        }
        java.lang.Class<? extends java.lang.annotation.Annotation> cls = class_JacksonCreator;
        return cls != null && method.isAnnotationPresent(cls);
    }

    public static boolean isKotlin(java.lang.Class cls) {
        if (kotlin_metadata == null && !kotlin_metadata_error) {
            try {
                kotlin_metadata = java.lang.Class.forName("a3.f");
            } catch (java.lang.Throwable unused) {
                kotlin_metadata_error = true;
            }
        }
        return kotlin_metadata != null && cls.isAnnotationPresent(kotlin_metadata);
    }

    private static boolean isKotlinIgnore(java.lang.Class cls, java.lang.String str) {
        if (kotlinIgnores == null && !kotlinIgnores_error) {
            try {
                java.util.HashMap map = new java.util.HashMap();
                map.put(java.lang.Class.forName("p3.c"), new java.lang.String[]{"getEndInclusive", "isEmpty"});
                map.put(java.lang.Class.forName("p3.h"), new java.lang.String[]{"getEndInclusive", "isEmpty"});
                map.put(java.lang.Class.forName("p3.k"), new java.lang.String[]{"getEndInclusive", "isEmpty"});
                map.put(p3.e.class, new java.lang.String[]{"getEndInclusive", "isEmpty"});
                map.put(p3.d.class, new java.lang.String[]{"getEndInclusive", "isEmpty"});
                kotlinIgnores = map;
            } catch (java.lang.Throwable unused) {
                kotlinIgnores_error = true;
            }
        }
        if (kotlinIgnores == null) {
            return false;
        }
        java.lang.String[] strArr = kotlinIgnores.get(cls);
        return strArr != null && java.util.Arrays.binarySearch(strArr, str) >= 0;
    }

    public static boolean isNumber(java.lang.String str) {
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (cCharAt == '+' || cCharAt == '-') {
                if (i5 != 0) {
                    return false;
                }
            } else if (cCharAt < '0' || cCharAt > '9') {
                return false;
            }
        }
        return true;
    }

    public static boolean isPath(java.lang.Class<?> cls) {
        if (pathClass == null && !pathClass_error) {
            try {
                pathClass = java.lang.Class.forName("java.nio.file.Path");
            } catch (java.lang.Throwable unused) {
                pathClass_error = true;
            }
        }
        java.lang.Class<?> cls2 = pathClass;
        if (cls2 != null) {
            return cls2.isAssignableFrom(cls);
        }
        return false;
    }

    public static boolean isProxy(java.lang.Class<?> cls) {
        for (java.lang.Class<?> cls2 : cls.getInterfaces()) {
            if (isProxyClassNames.contains(cls2.getName())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isTransient(java.lang.reflect.Method method) {
        if (method == null) {
            return false;
        }
        if (!transientClassInited) {
            try {
                transientClass = java.lang.Class.forName("java.beans.Transient");
            } catch (java.lang.Exception unused) {
            } finally {
                transientClassInited = true;
            }
        }
        java.lang.Class<? extends java.lang.annotation.Annotation> cls = transientClass;
        return (cls == null || getAnnotation(method, cls) == null) ? false : true;
    }

    public static boolean isXmlField(java.lang.Class cls) {
        java.lang.annotation.Annotation annotation;
        java.lang.Object objInvoke;
        if (class_XmlAccessorType == null && !classXmlAccessorType_error) {
            try {
                class_XmlAccessorType = java.lang.Class.forName("javax.xml.bind.annotation.XmlAccessorType");
            } catch (java.lang.Throwable unused) {
                classXmlAccessorType_error = true;
            }
        }
        if (class_XmlAccessorType == null || (annotation = getAnnotation((java.lang.Class<?>) cls, (java.lang.Class<java.lang.annotation.Annotation>) class_XmlAccessorType)) == null) {
            return false;
        }
        if (method_XmlAccessorType_value == null && !classXmlAccessorType_error) {
            try {
                method_XmlAccessorType_value = class_XmlAccessorType.getMethod("value", new java.lang.Class[0]);
            } catch (java.lang.Throwable unused2) {
                classXmlAccessorType_error = true;
            }
        }
        if (method_XmlAccessorType_value == null) {
            return false;
        }
        if (classXmlAccessorType_error) {
            objInvoke = null;
        } else {
            try {
                objInvoke = method_XmlAccessorType_value.invoke(annotation, new java.lang.Object[0]);
            } catch (java.lang.Throwable unused3) {
                classXmlAccessorType_error = true;
                objInvoke = null;
            }
        }
        if (objInvoke == null) {
            return false;
        }
        if (class_XmlAccessType == null && !classXmlAccessorType_error) {
            try {
                class_XmlAccessType = java.lang.Class.forName("javax.xml.bind.annotation.XmlAccessType");
                field_XmlAccessType_FIELD = class_XmlAccessType.getField("FIELD");
                field_XmlAccessType_FIELD_VALUE = field_XmlAccessType_FIELD.get(null);
            } catch (java.lang.Throwable unused4) {
                classXmlAccessorType_error = true;
            }
        }
        return objInvoke == field_XmlAccessType_FIELD_VALUE;
    }

    public static java.lang.Class<?> loadClass(java.lang.String str) {
        return loadClass(str, null);
    }

    public static long longExtractValue(java.lang.Number number) {
        return number instanceof java.math.BigDecimal ? ((java.math.BigDecimal) number).longValueExact() : number.longValue();
    }

    public static long longValue(java.math.BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            return 0L;
        }
        int iScale = bigDecimal.scale();
        return (iScale < -100 || iScale > 100) ? bigDecimal.longValueExact() : bigDecimal.longValue();
    }

    private static java.lang.reflect.ParameterizedType makeParameterizedType(java.lang.Class<?> cls, java.lang.reflect.Type[] typeArr, java.util.Map<java.lang.reflect.TypeVariable, java.lang.reflect.Type> map) {
        int length = typeArr.length;
        java.lang.reflect.Type[] typeArr2 = new java.lang.reflect.Type[length];
        for (int i5 = 0; i5 < length; i5++) {
            typeArr2[i5] = getActualType(typeArr[i5], map);
        }
        return new com.alibaba.fastjson.util.ParameterizedTypeImpl(typeArr2, null, cls);
    }

    public static int num(char c5, char c6) {
        if (c5 < '0' || c5 > '9' || c6 < '0' || c6 > '9') {
            return -1;
        }
        return ((c5 - '0') * 10) + (c6 - '0');
    }

    public static int num(char c5, char c6, char c7, char c8) {
        if (c5 < '0' || c5 > '9' || c6 < '0' || c6 > '9' || c7 < '0' || c7 > '9' || c8 < '0' || c8 > '9') {
            return -1;
        }
        return ((c5 - '0') * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO) + ((c6 - '0') * 100) + ((c7 - '0') * 10) + (c8 - '0');
    }

    public static int num(char c5, char c6, char c7, char c8, char c9, char c10, char c11, char c12, char c13) {
        if (c5 < '0' || c5 > '9' || c6 < '0' || c6 > '9' || c7 < '0' || c7 > '9' || c8 < '0' || c8 > '9' || c9 < '0' || c9 > '9' || c10 < '0' || c10 > '9' || c11 < '0' || c11 > '9' || c12 < '0' || c12 > '9' || c13 < '0' || c13 > '9') {
            return -1;
        }
        return ((c5 - '0') * 100000000) + ((c6 - '0') * 10000000) + ((c7 - '0') * 1000000) + ((c8 - '0') * 100000) + ((c9 - '0') * 10000) + ((c10 - '0') * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO) + ((c11 - '0') * 100) + ((c12 - '0') * 10) + (c13 - '0');
    }

    public static java.lang.Object optionalEmpty(java.lang.reflect.Type type) {
        java.lang.Class<?> cls;
        if (OPTIONAL_ERROR || (cls = getClass(type)) == null) {
            return null;
        }
        java.lang.String name = cls.getName();
        if (!"java.util.Optional".equals(name)) {
            return null;
        }
        if (OPTIONAL_EMPTY == null) {
            try {
                OPTIONAL_EMPTY = java.lang.Class.forName(name).getMethod("empty", new java.lang.Class[0]).invoke(null, new java.lang.Object[0]);
            } catch (java.lang.Throwable unused) {
                OPTIONAL_ERROR = true;
            }
        }
        return OPTIONAL_EMPTY;
    }

    public static double parseDouble(java.lang.String str) {
        double d5;
        double d6;
        int length = str.length();
        if (length > 10) {
            return java.lang.Double.parseDouble(str);
        }
        long j5 = 0;
        boolean z4 = false;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt = str.charAt(i6);
            if (cCharAt == '-' && i6 == 0) {
                z4 = true;
            } else if (cCharAt == '.') {
                if (i5 != 0) {
                    return java.lang.Double.parseDouble(str);
                }
                i5 = (length - i6) - 1;
            } else {
                if (cCharAt < '0' || cCharAt > '9') {
                    return java.lang.Double.parseDouble(str);
                }
                j5 = (j5 * 10) + ((long) (cCharAt - '0'));
            }
        }
        if (z4) {
            j5 = -j5;
        }
        switch (i5) {
            case 0:
                return j5;
            case 1:
                d5 = j5;
                d6 = 10.0d;
                break;
            case 2:
                d5 = j5;
                d6 = 100.0d;
                break;
            case 3:
                d5 = j5;
                d6 = 1000.0d;
                break;
            case 4:
                d5 = j5;
                d6 = 10000.0d;
                break;
            case 5:
                d5 = j5;
                d6 = 100000.0d;
                break;
            case 6:
                d5 = j5;
                d6 = 1000000.0d;
                break;
            case 7:
                d5 = j5;
                d6 = 1.0E7d;
                break;
            case 8:
                d5 = j5;
                d6 = 1.0E8d;
                break;
            case 9:
                d5 = j5;
                d6 = 1.0E9d;
                break;
            default:
                return java.lang.Double.parseDouble(str);
        }
        return d5 / d6;
    }

    public static float parseFloat(java.lang.String str) {
        float f5;
        float f6;
        int length = str.length();
        if (length >= 10) {
            return java.lang.Float.parseFloat(str);
        }
        long j5 = 0;
        boolean z4 = false;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt = str.charAt(i6);
            if (cCharAt == '-' && i6 == 0) {
                z4 = true;
            } else if (cCharAt == '.') {
                if (i5 != 0) {
                    return java.lang.Float.parseFloat(str);
                }
                i5 = (length - i6) - 1;
            } else {
                if (cCharAt < '0' || cCharAt > '9') {
                    return java.lang.Float.parseFloat(str);
                }
                j5 = (j5 * 10) + ((long) (cCharAt - '0'));
            }
        }
        if (z4) {
            j5 = -j5;
        }
        switch (i5) {
            case 0:
                return j5;
            case 1:
                f5 = j5;
                f6 = 10.0f;
                break;
            case 2:
                f5 = j5;
                f6 = 100.0f;
                break;
            case 3:
                f5 = j5;
                f6 = 1000.0f;
                break;
            case 4:
                f5 = j5;
                f6 = 10000.0f;
                break;
            case 5:
                f5 = j5;
                f6 = 100000.0f;
                break;
            case 6:
                f5 = j5;
                f6 = 1000000.0f;
                break;
            case 7:
                f5 = j5;
                f6 = 1.0E7f;
                break;
            case 8:
                f5 = j5;
                f6 = 1.0E8f;
                break;
            case 9:
                f5 = j5;
                f6 = 1.0E9f;
                break;
            default:
                return java.lang.Float.parseFloat(str);
        }
        return f5 / f6;
    }

    public static void setAccessible(java.lang.reflect.AccessibleObject accessibleObject) {
        if (setAccessibleEnable && !accessibleObject.isAccessible()) {
            try {
                accessibleObject.setAccessible(true);
            } catch (java.lang.Throwable unused) {
                setAccessibleEnable = false;
            }
        }
    }

    public static short shortValue(java.math.BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            return (short) 0;
        }
        int iScale = bigDecimal.scale();
        return (iScale < -100 || iScale > 100) ? bigDecimal.shortValueExact() : bigDecimal.shortValue();
    }

    public static java.util.Locale toLocale(java.lang.String str) {
        java.lang.String[] strArrSplit = str.split("_");
        if (strArrSplit.length == 1) {
            return new java.util.Locale(strArrSplit[0]);
        }
        return strArrSplit.length == 2 ? new java.util.Locale(strArrSplit[0], strArrSplit[1]) : new java.util.Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
    }

    public static java.lang.reflect.Type unwrapOptional(java.lang.reflect.Type type) {
        if (!optionalClassInited) {
            try {
                optionalClass = java.lang.Class.forName("java.util.Optional");
            } catch (java.lang.Exception unused) {
            } finally {
                optionalClassInited = true;
            }
        }
        if (!(type instanceof java.lang.reflect.ParameterizedType)) {
            return type;
        }
        java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type;
        return parameterizedType.getRawType() == optionalClass ? parameterizedType.getActualTypeArguments()[0] : type;
    }

    public static com.alibaba.fastjson.serializer.SerializeBeanInfo buildBeanInfo(java.lang.Class<?> cls, java.util.Map<java.lang.String, java.lang.String> map, com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy, boolean z4) {
        com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy2;
        int i5;
        java.lang.String[] strArr;
        java.lang.String str;
        java.lang.String str2;
        java.util.List<com.alibaba.fastjson.util.FieldInfo> listComputeGettersWithFieldBase;
        com.alibaba.fastjson.annotation.JSONType jSONType = (com.alibaba.fastjson.annotation.JSONType) getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class);
        if (jSONType != null) {
            java.lang.String[] strArrOrders = jSONType.orders();
            java.lang.String strTypeName = jSONType.typeName();
            if (strTypeName.length() == 0) {
                strTypeName = null;
            }
            com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategyNaming = jSONType.naming();
            if (propertyNamingStrategyNaming == com.alibaba.fastjson.PropertyNamingStrategy.NeverUseThisValueExceptDefaultValue) {
                propertyNamingStrategyNaming = propertyNamingStrategy;
            }
            int iOf = com.alibaba.fastjson.serializer.SerializerFeature.of(jSONType.serialzeFeatures());
            java.lang.String strTypeKey = null;
            for (java.lang.Class<? super java.lang.Object> superclass = cls.getSuperclass(); superclass != null && superclass != java.lang.Object.class; superclass = superclass.getSuperclass()) {
                com.alibaba.fastjson.annotation.JSONType jSONType2 = (com.alibaba.fastjson.annotation.JSONType) getAnnotation(superclass, com.alibaba.fastjson.annotation.JSONType.class);
                if (jSONType2 == null) {
                    break;
                }
                strTypeKey = jSONType2.typeKey();
                if (strTypeKey.length() != 0) {
                    break;
                }
            }
            for (java.lang.Class<?> cls2 : cls.getInterfaces()) {
                com.alibaba.fastjson.annotation.JSONType jSONType3 = (com.alibaba.fastjson.annotation.JSONType) getAnnotation(cls2, com.alibaba.fastjson.annotation.JSONType.class);
                if (jSONType3 != null) {
                    strTypeKey = jSONType3.typeKey();
                    if (strTypeKey.length() != 0) {
                        break;
                    }
                }
            }
            str2 = (strTypeKey == null || strTypeKey.length() != 0) ? strTypeKey : null;
            strArr = strArrOrders;
            str = strTypeName;
            propertyNamingStrategy2 = propertyNamingStrategyNaming;
            i5 = iOf;
        } else {
            propertyNamingStrategy2 = propertyNamingStrategy;
            i5 = 0;
            strArr = null;
            str = null;
            str2 = null;
        }
        java.util.HashMap map2 = new java.util.HashMap();
        com.alibaba.fastjson.parser.ParserConfig.parserAllFieldToCache(cls, map2);
        java.util.List<com.alibaba.fastjson.util.FieldInfo> listComputeGettersWithFieldBase2 = z4 ? computeGettersWithFieldBase(cls, map, false, propertyNamingStrategy2) : computeGetters(cls, jSONType, map, map2, false, propertyNamingStrategy2);
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr = new com.alibaba.fastjson.util.FieldInfo[listComputeGettersWithFieldBase2.size()];
        listComputeGettersWithFieldBase2.toArray(fieldInfoArr);
        if (strArr == null || strArr.length == 0) {
            java.util.ArrayList arrayList = new java.util.ArrayList(listComputeGettersWithFieldBase2);
            java.util.Collections.sort(arrayList);
            listComputeGettersWithFieldBase = arrayList;
        } else {
            listComputeGettersWithFieldBase = z4 ? computeGettersWithFieldBase(cls, map, true, propertyNamingStrategy2) : computeGetters(cls, jSONType, map, map2, true, propertyNamingStrategy2);
        }
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr2 = new com.alibaba.fastjson.util.FieldInfo[listComputeGettersWithFieldBase.size()];
        listComputeGettersWithFieldBase.toArray(fieldInfoArr2);
        return new com.alibaba.fastjson.serializer.SerializeBeanInfo(cls, jSONType, str, str2, i5, fieldInfoArr, java.util.Arrays.equals(fieldInfoArr2, fieldInfoArr) ? fieldInfoArr : fieldInfoArr2);
    }

    public static java.util.Date castToDate(java.lang.Object obj, java.lang.String str) {
        long j5;
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.util.Date) {
            return (java.util.Date) obj;
        }
        if (obj instanceof java.util.Calendar) {
            return ((java.util.Calendar) obj).getTime();
        }
        if (obj instanceof java.math.BigDecimal) {
            return new java.util.Date(longValue((java.math.BigDecimal) obj));
        }
        if (obj instanceof java.lang.Number) {
            long jLongValue = ((java.lang.Number) obj).longValue();
            if ("unixtime".equals(str)) {
                jLongValue *= 1000;
            }
            return new java.util.Date(jLongValue);
        }
        if (obj instanceof java.lang.String) {
            java.lang.String strSubstring = (java.lang.String) obj;
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strSubstring);
            try {
                if (jSONScanner.scanISO8601DateIfMatch(false)) {
                    java.util.Date time = jSONScanner.getCalendar().getTime();
                    jSONScanner.close();
                    return time;
                }
                jSONScanner.close();
                if (strSubstring.startsWith("/Date(") && strSubstring.endsWith(")/")) {
                    strSubstring = strSubstring.substring(6, strSubstring.length() - 2);
                }
                if (strSubstring.indexOf(45) > 0 || strSubstring.indexOf(43) > 0 || str != null) {
                    if (str == null) {
                        int length = strSubstring.length();
                        if (length == com.alibaba.fastjson.JSON.DEFFAULT_DATE_FORMAT.length() || (length == 22 && com.alibaba.fastjson.JSON.DEFFAULT_DATE_FORMAT.equals("yyyyMMddHHmmssSSSZ"))) {
                            str = com.alibaba.fastjson.JSON.DEFFAULT_DATE_FORMAT;
                        } else if (length == 10) {
                            str = "yyyy-MM-dd";
                        } else if (length == 19) {
                            str = "yyyy-MM-dd HH:mm:ss";
                        } else if (length == 29 && strSubstring.charAt(26) == ':' && strSubstring.charAt(28) == '0') {
                            str = "yyyy-MM-dd'T'HH:mm:ss.SSSXXX";
                        } else {
                            str = (length == 23 && strSubstring.charAt(19) == ',') ? "yyyy-MM-dd HH:mm:ss,SSS" : "yyyy-MM-dd HH:mm:ss.SSS";
                        }
                    }
                    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(str, com.alibaba.fastjson.JSON.defaultLocale);
                    simpleDateFormat.setTimeZone(com.alibaba.fastjson.JSON.defaultTimeZone);
                    try {
                        return simpleDateFormat.parse(strSubstring);
                    } catch (java.text.ParseException unused) {
                        throw new com.alibaba.fastjson.JSONException("can not cast to Date, value : " + strSubstring);
                    }
                }
                if (strSubstring.length() == 0) {
                    return null;
                }
                j5 = java.lang.Long.parseLong(strSubstring);
            } catch (java.lang.Throwable th) {
                jSONScanner.close();
                throw th;
            }
        } else {
            j5 = -1;
        }
        if (j5 != -1) {
            return new java.util.Date(j5);
        }
        java.lang.Class<?> cls = obj.getClass();
        if ("oracle.sql.TIMESTAMP".equals(cls.getName())) {
            if (oracleTimestampMethod == null && !oracleTimestampMethodInited) {
                try {
                    oracleTimestampMethod = cls.getMethod("toJdbc", new java.lang.Class[0]);
                } catch (java.lang.NoSuchMethodException unused2) {
                } finally {
                    oracleTimestampMethodInited = true;
                }
            }
            try {
                return (java.util.Date) oracleTimestampMethod.invoke(obj, new java.lang.Object[0]);
            } catch (java.lang.Exception e5) {
                throw new com.alibaba.fastjson.JSONException("can not cast oracle.sql.TIMESTAMP to Date", e5);
            }
        }
        if (!"oracle.sql.DATE".equals(cls.getName())) {
            throw new com.alibaba.fastjson.JSONException("can not cast to Date, value : " + obj);
        }
        if (oracleDateMethod == null && !oracleDateMethodInited) {
            try {
                oracleDateMethod = cls.getMethod("toJdbc", new java.lang.Class[0]);
            } catch (java.lang.NoSuchMethodException unused3) {
            } finally {
                oracleDateMethodInited = true;
            }
        }
        try {
            return (java.util.Date) oracleDateMethod.invoke(obj, new java.lang.Object[0]);
        } catch (java.lang.Exception e6) {
            throw new com.alibaba.fastjson.JSONException("can not cast oracle.sql.DATE to Date", e6);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T castToJavaBean(java.util.Map<java.lang.String, java.lang.Object> map, java.lang.Class<T> cls, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        int iIntValueExact = 0;
        try {
            if (cls == java.lang.StackTraceElement.class) {
                java.lang.String str = (java.lang.String) map.get("className");
                java.lang.String str2 = (java.lang.String) map.get("methodName");
                java.lang.String str3 = (java.lang.String) map.get("fileName");
                java.lang.Number number = (java.lang.Number) map.get("lineNumber");
                if (number != null) {
                    iIntValueExact = number instanceof java.math.BigDecimal ? ((java.math.BigDecimal) number).intValueExact() : number.intValue();
                }
                return (T) new java.lang.StackTraceElement(str, str2, str3, iIntValueExact);
            }
            java.lang.Object obj = map.get(com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY);
            if (obj instanceof java.lang.String) {
                java.lang.String str4 = (java.lang.String) obj;
                if (parserConfig == null) {
                    parserConfig = com.alibaba.fastjson.parser.ParserConfig.global;
                }
                java.lang.Class<?> clsCheckAutoType = parserConfig.checkAutoType(str4, null);
                if (clsCheckAutoType == null) {
                    throw new java.lang.ClassNotFoundException(str4 + " not found");
                }
                if (!clsCheckAutoType.equals(cls)) {
                    return (T) castToJavaBean(map, clsCheckAutoType, parserConfig);
                }
            }
            if (cls.isInterface()) {
                com.alibaba.fastjson.JSONObject jSONObject = map instanceof com.alibaba.fastjson.JSONObject ? (com.alibaba.fastjson.JSONObject) map : new com.alibaba.fastjson.JSONObject(map);
                if (parserConfig == null) {
                    parserConfig = com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance();
                }
                return parserConfig.get(cls) != null ? (T) com.alibaba.fastjson.JSON.parseObject(com.alibaba.fastjson.JSON.toJSONString(jSONObject), cls) : (T) java.lang.reflect.Proxy.newProxyInstance(java.lang.Thread.currentThread().getContextClassLoader(), new java.lang.Class[]{cls}, jSONObject);
            }
            if (cls == java.util.Locale.class) {
                java.lang.Object obj2 = map.get("language");
                java.lang.Object obj3 = map.get("country");
                if (obj2 instanceof java.lang.String) {
                    java.lang.String str5 = (java.lang.String) obj2;
                    if (obj3 instanceof java.lang.String) {
                        return (T) new java.util.Locale(str5, (java.lang.String) obj3);
                    }
                    if (obj3 == null) {
                        return (T) new java.util.Locale(str5);
                    }
                }
            }
            if (cls == java.lang.String.class && (map instanceof com.alibaba.fastjson.JSONObject)) {
                return (T) map.toString();
            }
            if (cls == com.alibaba.fastjson.JSON.class && (map instanceof com.alibaba.fastjson.JSONObject)) {
                return map;
            }
            if (cls == java.util.LinkedHashMap.class && (map instanceof com.alibaba.fastjson.JSONObject)) {
                T t5 = (T) ((com.alibaba.fastjson.JSONObject) map).getInnerMap();
                if (t5 instanceof java.util.LinkedHashMap) {
                    return t5;
                }
            }
            if (cls.isInstance(map)) {
                return map;
            }
            if (cls == com.alibaba.fastjson.JSONObject.class) {
                return (T) new com.alibaba.fastjson.JSONObject(map);
            }
            if (parserConfig == null) {
                parserConfig = com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance();
            }
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = parserConfig.getDeserializer(cls);
            com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer ? (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer : null;
            if (javaBeanDeserializer != null) {
                return (T) javaBeanDeserializer.createInstance(map, parserConfig);
            }
            throw new com.alibaba.fastjson.JSONException("can not get javaBeanDeserializer. " + cls.getName());
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONException(e5.getMessage(), e5);
        }
    }

    public static java.util.List<com.alibaba.fastjson.util.FieldInfo> computeGetters(java.lang.Class<?> cls, java.util.Map<java.lang.String, java.lang.String> map, boolean z4) {
        com.alibaba.fastjson.annotation.JSONType jSONType = (com.alibaba.fastjson.annotation.JSONType) getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class);
        java.util.HashMap map2 = new java.util.HashMap();
        com.alibaba.fastjson.parser.ParserConfig.parserAllFieldToCache(cls, map2);
        return computeGetters(cls, jSONType, map, map2, z4, com.alibaba.fastjson.PropertyNamingStrategy.CamelCase);
    }

    public static java.lang.reflect.Constructor getKotlinConstructor(java.lang.reflect.Constructor[] constructorArr, java.lang.String[] strArr) {
        java.lang.reflect.Constructor constructor = null;
        for (java.lang.reflect.Constructor constructor2 : constructorArr) {
            java.lang.Class<?>[] parameterTypes = constructor2.getParameterTypes();
            if ((strArr == null || parameterTypes.length == strArr.length) && ((parameterTypes.length <= 0 || !parameterTypes[parameterTypes.length - 1].getName().equals("m3.g")) && (constructor == null || constructor.getParameterTypes().length < parameterTypes.length))) {
                constructor = constructor2;
            }
        }
        return constructor;
    }

    public static java.lang.Class<?> loadClass(java.lang.String str, java.lang.ClassLoader classLoader) {
        return loadClass(str, classLoader, false);
    }

    public static java.lang.Class<?> loadClass(java.lang.String str, java.lang.ClassLoader classLoader, boolean z4) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.length() <= 198) {
            java.lang.Class<?> clsLoadClass = mappings.get(str);
            if (clsLoadClass != null) {
                return clsLoadClass;
            }
            if (str.charAt(0) == '[') {
                return java.lang.reflect.Array.newInstance(loadClass(str.substring(1), classLoader), 0).getClass();
            }
            if (str.startsWith("L") && str.endsWith(";")) {
                return loadClass(str.substring(1, str.length() - 1), classLoader);
            }
            if (classLoader != null) {
                try {
                    clsLoadClass = classLoader.loadClass(str);
                    if (z4) {
                        mappings.put(str, clsLoadClass);
                    }
                    return clsLoadClass;
                } catch (java.lang.Throwable th) {
                    th.printStackTrace();
                }
            }
            java.lang.ClassLoader contextClassLoader = java.lang.Thread.currentThread().getContextClassLoader();
            if (contextClassLoader != null && contextClassLoader != classLoader) {
                java.lang.Class<?> clsLoadClass2 = contextClassLoader.loadClass(str);
                if (z4) {
                    try {
                        mappings.put(str, clsLoadClass2);
                    } catch (java.lang.Throwable unused) {
                        clsLoadClass = clsLoadClass2;
                    }
                }
                return clsLoadClass2;
            }
            try {
                clsLoadClass = java.lang.Class.forName(str);
                if (z4) {
                    mappings.put(str, clsLoadClass);
                }
            } catch (java.lang.Throwable unused2) {
            }
            return clsLoadClass;
        }
        throw new com.alibaba.fastjson.JSONException("illegal className : " + str);
    }

    /* JADX WARN: Code duplicated, block: B:152:0x02cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:153:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:155:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:162:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:165:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:167:0x0303  */
    /* JADX WARN: Code duplicated, block: B:170:0x030b  */
    /* JADX WARN: Code duplicated, block: B:172:0x0329  */
    /* JADX WARN: Code duplicated, block: B:174:0x0331  */
    /* JADX WARN: Code duplicated, block: B:177:0x033b  */
    /* JADX WARN: Code duplicated, block: B:180:0x0348  */
    /* JADX WARN: Code duplicated, block: B:182:0x035b  */
    /* JADX WARN: Code duplicated, block: B:183:0x0365  */
    /* JADX WARN: Code duplicated, block: B:186:0x0373  */
    /* JADX WARN: Code duplicated, block: B:191:0x0383  */
    /* JADX WARN: Code duplicated, block: B:232:0x0464 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:233:0x0466  */
    /* JADX WARN: Code duplicated, block: B:235:0x046c  */
    /* JADX WARN: Code duplicated, block: B:237:0x0473  */
    /* JADX WARN: Code duplicated, block: B:239:0x047d  */
    /* JADX WARN: Code duplicated, block: B:242:0x0484  */
    /* JADX WARN: Code duplicated, block: B:244:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:246:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:249:0x04b3  */
    /* JADX WARN: Code duplicated, block: B:252:0x04bf  */
    /* JADX WARN: Code duplicated, block: B:253:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:254:0x04cf  */
    /* JADX WARN: Code duplicated, block: B:255:0x04d6  */
    /* JADX WARN: Code duplicated, block: B:257:0x04df  */
    /* JADX WARN: Code duplicated, block: B:262:0x04ed  */
    /* JADX WARN: Code duplicated, block: B:266:0x04f9  */
    /* JADX WARN: Code duplicated, block: B:267:0x051a  */
    /* JADX WARN: Code duplicated, block: B:268:0x051c A[PHI: r12
  0x051c: PHI (r12v5 java.lang.Class<?>) = 
  (r12v4 java.lang.Class<?>)
  (r40v0 java.lang.Class<?> A[IMMUTABLE_TYPE, METHOD_ARGUMENT])
  (r40v0 java.lang.Class<?> A[IMMUTABLE_TYPE, METHOD_ARGUMENT])
 binds: [B:267:0x051a, B:230:0x0460, B:240:0x0481] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:270:0x0520 A[PHI: r12 r13 r15
  0x0520: PHI (r12v6 java.lang.Class<?>) = (r12v7 java.lang.Class<?>), (r40v0 java.lang.Class<?> A[IMMUTABLE_TYPE, METHOD_ARGUMENT]) binds: [B:269:0x051e, B:264:0x04f6] A[DONT_GENERATE, DONT_INLINE]
  0x0520: PHI (r13v5 java.util.Map<java.lang.String, java.lang.String>) = (r13v6 java.util.Map<java.lang.String, java.lang.String>), (r13v8 java.util.Map<java.lang.String, java.lang.String>) binds: [B:269:0x051e, B:264:0x04f6] A[DONT_GENERATE, DONT_INLINE]
  0x0520: PHI (r15v6 com.alibaba.fastjson.PropertyNamingStrategy) = (r15v7 com.alibaba.fastjson.PropertyNamingStrategy), (r15v8 com.alibaba.fastjson.PropertyNamingStrategy) binds: [B:269:0x051e, B:264:0x04f6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:8:0x003a  */
    public static java.util.List<com.alibaba.fastjson.util.FieldInfo> computeGetters(java.lang.Class<?> cls, com.alibaba.fastjson.annotation.JSONType jSONType, java.util.Map<java.lang.String, java.lang.String> map, java.util.Map<java.lang.String, java.lang.reflect.Field> map2, boolean z4, com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy) {
        java.lang.String[] strArr;
        int i5;
        java.lang.reflect.Constructor<?>[] constructorArr;
        short[] sArr;
        java.lang.annotation.Annotation[][] annotationArr;
        com.alibaba.fastjson.annotation.JSONField jSONField;
        int i6;
        int i7;
        int iOf;
        java.util.LinkedHashMap linkedHashMap;
        int i8;
        java.util.LinkedHashMap linkedHashMap2;
        java.lang.String strSubstring;
        java.lang.reflect.Field fieldFromCache;
        int i9;
        int i10;
        int i11;
        com.alibaba.fastjson.annotation.JSONField jSONField2;
        java.lang.String str;
        com.alibaba.fastjson.annotation.JSONField jSONField3;
        int iOrdinal;
        int iOf2;
        int iOf3;
        java.lang.String propertyNameByMethodName;
        java.lang.String propertyNameByCompatibleFieldName;
        java.lang.reflect.Field fieldFromCache2;
        int i12;
        java.lang.reflect.Field field;
        com.alibaba.fastjson.annotation.JSONField jSONField4;
        int i13;
        com.alibaba.fastjson.annotation.JSONField jSONField5;
        java.lang.String strName;
        java.lang.Boolean bool;
        char cCharAt;
        java.lang.reflect.Field fieldFromCache3;
        java.lang.String[] koltinConstructorParameters;
        short[] sArr2;
        java.lang.annotation.Annotation[][] annotationArr2;
        java.lang.reflect.Field fieldFromCache4;
        java.lang.reflect.Constructor kotlinConstructor;
        cls = cls;
        java.util.Map<java.lang.String, java.lang.String> map3 = map;
        com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy2 = propertyNamingStrategy;
        java.util.LinkedHashMap linkedHashMap3 = new java.util.LinkedHashMap();
        boolean zIsKotlin = isKotlin(cls);
        java.lang.reflect.Method[] methods = cls.getMethods();
        try {
            java.util.Arrays.sort(methods, new com.alibaba.fastjson.util.TypeUtils.MethodInheritanceComparator());
        } catch (java.lang.Throwable unused) {
        }
        int length = methods.length;
        java.lang.reflect.Constructor<?>[] declaredConstructors = null;
        java.lang.String[] strArr2 = null;
        short[] sArr3 = null;
        java.lang.annotation.Annotation[][] parameterAnnotations = null;
        int i14 = 0;
        while (i14 < length) {
            java.lang.reflect.Method method = methods[i14];
            java.lang.String name = method.getName();
            java.lang.String strLabel = null;
            if (java.lang.reflect.Modifier.isStatic(method.getModifiers())) {
                strArr = strArr2;
                i5 = i14;
                length = length;
                methods = methods;
                linkedHashMap2 = linkedHashMap3;
            } else {
                java.lang.Class<?> returnType = method.getReturnType();
                if (returnType.equals(java.lang.Void.TYPE) || method.getParameterTypes().length != 0 || returnType == java.lang.ClassLoader.class || returnType == java.io.InputStream.class || returnType == java.io.Reader.class) {
                    strArr = strArr2;
                } else {
                    if (name.equals("getMetaClass")) {
                        strArr = strArr2;
                        if (returnType.getName().equals("groovy.lang.MetaClass")) {
                        }
                    } else {
                        strArr = strArr2;
                    }
                    if ((!name.equals("getSuppressed") || method.getDeclaringClass() != java.lang.Throwable.class) && (!zIsKotlin || !isKotlinIgnore(cls, name))) {
                        java.lang.Boolean bool2 = java.lang.Boolean.FALSE;
                        com.alibaba.fastjson.annotation.JSONField superMethodAnnotation = (com.alibaba.fastjson.annotation.JSONField) getAnnotation(method, com.alibaba.fastjson.annotation.JSONField.class);
                        if (superMethodAnnotation == null) {
                            superMethodAnnotation = getSuperMethodAnnotation(cls, method);
                        }
                        java.lang.Boolean bool3 = bool2;
                        java.util.LinkedHashMap linkedHashMap4 = linkedHashMap3;
                        if (superMethodAnnotation == null && zIsKotlin) {
                            if (declaredConstructors != null || (kotlinConstructor = getKotlinConstructor((declaredConstructors = cls.getDeclaredConstructors()))) == null) {
                                koltinConstructorParameters = strArr;
                            } else {
                                parameterAnnotations = getParameterAnnotations(kotlinConstructor);
                                koltinConstructorParameters = getKoltinConstructorParameters(cls);
                                if (koltinConstructorParameters != null) {
                                    java.lang.String[] strArr3 = new java.lang.String[koltinConstructorParameters.length];
                                    java.lang.System.arraycopy(koltinConstructorParameters, 0, strArr3, 0, koltinConstructorParameters.length);
                                    java.util.Arrays.sort(strArr3);
                                    short[] sArr4 = new short[koltinConstructorParameters.length];
                                    for (short s5 = 0; s5 < koltinConstructorParameters.length; s5 = (short) (s5 + 1)) {
                                        sArr4[java.util.Arrays.binarySearch(strArr3, koltinConstructorParameters[s5])] = s5;
                                    }
                                    koltinConstructorParameters = strArr3;
                                    parameterAnnotations = parameterAnnotations;
                                    sArr3 = sArr4;
                                    declaredConstructors = declaredConstructors;
                                }
                            }
                            if (koltinConstructorParameters == null || sArr3 == null || !name.startsWith("get")) {
                                constructorArr = declaredConstructors;
                                sArr2 = sArr3;
                                annotationArr2 = parameterAnnotations;
                                i5 = i14;
                            } else {
                                java.lang.String strDecapitalize = decapitalize(name.substring(3));
                                int iBinarySearch = java.util.Arrays.binarySearch(koltinConstructorParameters, strDecapitalize);
                                constructorArr = declaredConstructors;
                                i5 = i14;
                                if (iBinarySearch < 0) {
                                    for (int i15 = 0; i15 < koltinConstructorParameters.length; i15++) {
                                        if (strDecapitalize.equalsIgnoreCase(koltinConstructorParameters[i15])) {
                                            iBinarySearch = i15;
                                            break;
                                        }
                                    }
                                }
                                if (iBinarySearch >= 0) {
                                    java.lang.annotation.Annotation[] annotationArr3 = parameterAnnotations[sArr3[iBinarySearch]];
                                    if (annotationArr3 != null) {
                                        int length2 = annotationArr3.length;
                                        sArr2 = sArr3;
                                        int i16 = 0;
                                        while (true) {
                                            annotationArr2 = parameterAnnotations;
                                            if (i16 >= length2) {
                                                break;
                                            }
                                            java.lang.annotation.Annotation annotation = annotationArr3[i16];
                                            java.lang.annotation.Annotation[] annotationArr4 = annotationArr3;
                                            if (annotation instanceof com.alibaba.fastjson.annotation.JSONField) {
                                                superMethodAnnotation = (com.alibaba.fastjson.annotation.JSONField) annotation;
                                                break;
                                            }
                                            i16++;
                                            parameterAnnotations = annotationArr2;
                                            annotationArr3 = annotationArr4;
                                        }
                                    } else {
                                        sArr2 = sArr3;
                                        annotationArr2 = parameterAnnotations;
                                    }
                                    if (superMethodAnnotation == null && (fieldFromCache4 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(strDecapitalize, map2)) != null) {
                                        jSONField = (com.alibaba.fastjson.annotation.JSONField) getAnnotation(fieldFromCache4, com.alibaba.fastjson.annotation.JSONField.class);
                                    }
                                    annotationArr = annotationArr2;
                                    sArr = sArr2;
                                    strArr = koltinConstructorParameters;
                                } else {
                                    sArr2 = sArr3;
                                    annotationArr2 = parameterAnnotations;
                                }
                            }
                            jSONField = superMethodAnnotation;
                            annotationArr = annotationArr2;
                            sArr = sArr2;
                            strArr = koltinConstructorParameters;
                        } else {
                            returnType = returnType;
                            i5 = i14;
                            constructorArr = declaredConstructors;
                            sArr = sArr3;
                            annotationArr = parameterAnnotations;
                            jSONField = superMethodAnnotation;
                        }
                        if (jSONField != null) {
                            if (jSONField.serialize()) {
                                int iOrdinal2 = jSONField.ordinal();
                                int iOf4 = com.alibaba.fastjson.serializer.SerializerFeature.of(jSONField.serialzeFeatures());
                                iOf = com.alibaba.fastjson.parser.Feature.of(jSONField.parseFeatures());
                                if (jSONField.name().length() != 0) {
                                    java.lang.String strName2 = jSONField.name();
                                    if (map3 == null || (strName2 = map3.get(strName2)) != null) {
                                        java.lang.String str2 = strName2;
                                        length = length;
                                        methods = methods;
                                        linkedHashMap4 = linkedHashMap4;
                                        linkedHashMap4.put(str2, new com.alibaba.fastjson.util.FieldInfo(str2, method, null, cls, null, iOrdinal2, iOf4, iOf, jSONField, null, null));
                                    }
                                    declaredConstructors = constructorArr;
                                    sArr3 = sArr;
                                    parameterAnnotations = annotationArr;
                                } else {
                                    strLabel = jSONField.label().length() != 0 ? jSONField.label() : null;
                                    i6 = iOf4;
                                    i7 = iOrdinal2;
                                }
                                linkedHashMap2 = linkedHashMap4;
                                propertyNamingStrategy2 = propertyNamingStrategy;
                                declaredConstructors = constructorArr;
                                sArr3 = sArr;
                                parameterAnnotations = annotationArr;
                            }
                            length = length;
                            methods = methods;
                            linkedHashMap2 = linkedHashMap4;
                            declaredConstructors = constructorArr;
                            sArr3 = sArr;
                            parameterAnnotations = annotationArr;
                        } else {
                            i6 = 0;
                            i7 = 0;
                            iOf = 0;
                        }
                        if (name.startsWith("get")) {
                            if (name.length() >= 4 && !name.equals("getClass") && (!name.equals("getDeclaringClass") || !cls.isEnum())) {
                                char cCharAt2 = name.charAt(3);
                                if (java.lang.Character.isUpperCase(cCharAt2) || cCharAt2 > 512) {
                                    if (compatibleWithJavaBean) {
                                        propertyNameByMethodName = decapitalize(name.substring(3));
                                    } else {
                                        propertyNameByMethodName = getPropertyNameByMethodName(name);
                                    }
                                    propertyNameByCompatibleFieldName = getPropertyNameByCompatibleFieldName(map2, name, propertyNameByMethodName, 3);
                                } else {
                                    if (cCharAt2 == '_') {
                                        propertyNameByCompatibleFieldName = name.substring(3);
                                        fieldFromCache2 = map2.get(propertyNameByCompatibleFieldName);
                                        if (fieldFromCache2 == null) {
                                            java.lang.String strSubstring2 = name.substring(4);
                                            fieldFromCache3 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(strSubstring2, map2);
                                            if (fieldFromCache3 != null) {
                                                propertyNameByCompatibleFieldName = strSubstring2;
                                            }
                                        } else if (!isJSONTypeIgnore(cls, propertyNameByCompatibleFieldName)) {
                                            if (fieldFromCache2 == null) {
                                                fieldFromCache2 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(propertyNameByCompatibleFieldName, map2);
                                            }
                                            if (fieldFromCache2 == null || propertyNameByCompatibleFieldName.length() <= 1 || (cCharAt = propertyNameByCompatibleFieldName.charAt(1)) < 'A' || cCharAt > 'Z') {
                                                i12 = 3;
                                            } else {
                                                i12 = 3;
                                                fieldFromCache2 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(decapitalize(name.substring(3)), map2);
                                            }
                                            field = fieldFromCache2;
                                            if (field != null) {
                                                jSONField5 = (com.alibaba.fastjson.annotation.JSONField) getAnnotation(field, com.alibaba.fastjson.annotation.JSONField.class);
                                                if (jSONField5 == null) {
                                                    jSONField4 = jSONField5;
                                                } else if (jSONField5.serialize()) {
                                                    int iOrdinal3 = jSONField5.ordinal();
                                                    int iOf5 = com.alibaba.fastjson.serializer.SerializerFeature.of(jSONField5.serialzeFeatures());
                                                    int iOf6 = com.alibaba.fastjson.parser.Feature.of(jSONField5.parseFeatures());
                                                    if (jSONField5.name().length() != 0) {
                                                        bool = java.lang.Boolean.TRUE;
                                                        strName = jSONField5.name();
                                                        if (map3 != null || (strName = map3.get(strName)) != null) {
                                                        }
                                                        declaredConstructors = constructorArr;
                                                        sArr3 = sArr;
                                                        parameterAnnotations = annotationArr;
                                                    } else {
                                                        strName = propertyNameByCompatibleFieldName;
                                                        bool = bool3;
                                                    }
                                                    if (jSONField5.label().length() != 0) {
                                                        strLabel = jSONField5.label();
                                                    }
                                                    i13 = iOrdinal3;
                                                    iOf = iOf6;
                                                    strLabel = strLabel;
                                                    i6 = iOf5;
                                                    java.lang.String str3 = strName;
                                                    jSONField4 = jSONField5;
                                                    bool3 = bool;
                                                    propertyNameByCompatibleFieldName = str3;
                                                    if (map3 != null || (propertyNameByCompatibleFieldName = map3.get(propertyNameByCompatibleFieldName)) != null) {
                                                        if (propertyNamingStrategy != null && !bool3.booleanValue()) {
                                                            propertyNameByCompatibleFieldName = propertyNamingStrategy.translate(propertyNameByCompatibleFieldName);
                                                        }
                                                        i8 = i12;
                                                        linkedHashMap = linkedHashMap4;
                                                        linkedHashMap.put(propertyNameByCompatibleFieldName, new com.alibaba.fastjson.util.FieldInfo(propertyNameByCompatibleFieldName, method, field, cls, null, i13, i6, iOf, jSONField, jSONField4, strLabel));
                                                        i6 = i6;
                                                        i7 = i13;
                                                        iOf = iOf;
                                                        strLabel = strLabel;
                                                    }
                                                    declaredConstructors = constructorArr;
                                                    sArr3 = sArr;
                                                    parameterAnnotations = annotationArr;
                                                }
                                            } else {
                                                jSONField4 = null;
                                            }
                                            i13 = i7;
                                            if (map3 != null) {
                                            }
                                            if (propertyNamingStrategy != null) {
                                                propertyNameByCompatibleFieldName = propertyNamingStrategy.translate(propertyNameByCompatibleFieldName);
                                            }
                                            i8 = i12;
                                            linkedHashMap = linkedHashMap4;
                                            linkedHashMap.put(propertyNameByCompatibleFieldName, new com.alibaba.fastjson.util.FieldInfo(propertyNameByCompatibleFieldName, method, field, cls, null, i13, i6, iOf, jSONField, jSONField4, strLabel));
                                            i6 = i6;
                                            i7 = i13;
                                            iOf = iOf;
                                            strLabel = strLabel;
                                        }
                                    } else if (cCharAt2 == 'f') {
                                        propertyNameByCompatibleFieldName = name.substring(3);
                                    } else if (name.length() >= 5 && java.lang.Character.isUpperCase(name.charAt(4))) {
                                        propertyNameByCompatibleFieldName = decapitalize(name.substring(3));
                                    } else {
                                        propertyNameByCompatibleFieldName = name.substring(3);
                                        fieldFromCache3 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(propertyNameByCompatibleFieldName, map2);
                                        if (fieldFromCache3 == null) {
                                        }
                                        declaredConstructors = constructorArr;
                                        sArr3 = sArr;
                                        parameterAnnotations = annotationArr;
                                    }
                                    fieldFromCache2 = fieldFromCache3;
                                    if (!isJSONTypeIgnore(cls, propertyNameByCompatibleFieldName)) {
                                        if (fieldFromCache2 == null) {
                                            fieldFromCache2 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(propertyNameByCompatibleFieldName, map2);
                                        }
                                        if (fieldFromCache2 == null) {
                                            i12 = 3;
                                        } else {
                                            i12 = 3;
                                        }
                                        field = fieldFromCache2;
                                        if (field != null) {
                                            jSONField5 = (com.alibaba.fastjson.annotation.JSONField) getAnnotation(field, com.alibaba.fastjson.annotation.JSONField.class);
                                            if (jSONField5 == null) {
                                                jSONField4 = jSONField5;
                                            } else if (jSONField5.serialize()) {
                                                int iOrdinal4 = jSONField5.ordinal();
                                                int iOf7 = com.alibaba.fastjson.serializer.SerializerFeature.of(jSONField5.serialzeFeatures());
                                                int iOf8 = com.alibaba.fastjson.parser.Feature.of(jSONField5.parseFeatures());
                                                if (jSONField5.name().length() != 0) {
                                                    bool = java.lang.Boolean.TRUE;
                                                    strName = jSONField5.name();
                                                    if (map3 != null) {
                                                    }
                                                } else {
                                                    strName = propertyNameByCompatibleFieldName;
                                                    bool = bool3;
                                                }
                                                if (jSONField5.label().length() != 0) {
                                                    strLabel = jSONField5.label();
                                                }
                                                i13 = iOrdinal4;
                                                iOf = iOf8;
                                                strLabel = strLabel;
                                                i6 = iOf7;
                                                java.lang.String str4 = strName;
                                                jSONField4 = jSONField5;
                                                bool3 = bool;
                                                propertyNameByCompatibleFieldName = str4;
                                                if (map3 != null) {
                                                }
                                                if (propertyNamingStrategy != null) {
                                                    propertyNameByCompatibleFieldName = propertyNamingStrategy.translate(propertyNameByCompatibleFieldName);
                                                }
                                                i8 = i12;
                                                linkedHashMap = linkedHashMap4;
                                                linkedHashMap.put(propertyNameByCompatibleFieldName, new com.alibaba.fastjson.util.FieldInfo(propertyNameByCompatibleFieldName, method, field, cls, null, i13, i6, iOf, jSONField, jSONField4, strLabel));
                                                i6 = i6;
                                                i7 = i13;
                                                iOf = iOf;
                                                strLabel = strLabel;
                                            }
                                        } else {
                                            jSONField4 = null;
                                        }
                                        i13 = i7;
                                        if (map3 != null) {
                                        }
                                        if (propertyNamingStrategy != null) {
                                            propertyNameByCompatibleFieldName = propertyNamingStrategy.translate(propertyNameByCompatibleFieldName);
                                        }
                                        i8 = i12;
                                        linkedHashMap = linkedHashMap4;
                                        linkedHashMap.put(propertyNameByCompatibleFieldName, new com.alibaba.fastjson.util.FieldInfo(propertyNameByCompatibleFieldName, method, field, cls, null, i13, i6, iOf, jSONField, jSONField4, strLabel));
                                        i6 = i6;
                                        i7 = i13;
                                        iOf = iOf;
                                        strLabel = strLabel;
                                    }
                                }
                                fieldFromCache2 = null;
                                if (!isJSONTypeIgnore(cls, propertyNameByCompatibleFieldName)) {
                                    if (fieldFromCache2 == null) {
                                        fieldFromCache2 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(propertyNameByCompatibleFieldName, map2);
                                    }
                                    if (fieldFromCache2 == null) {
                                        i12 = 3;
                                    } else {
                                        i12 = 3;
                                    }
                                    field = fieldFromCache2;
                                    if (field != null) {
                                        jSONField5 = (com.alibaba.fastjson.annotation.JSONField) getAnnotation(field, com.alibaba.fastjson.annotation.JSONField.class);
                                        if (jSONField5 == null) {
                                            jSONField4 = jSONField5;
                                        } else if (jSONField5.serialize()) {
                                            int iOrdinal5 = jSONField5.ordinal();
                                            int iOf9 = com.alibaba.fastjson.serializer.SerializerFeature.of(jSONField5.serialzeFeatures());
                                            int iOf10 = com.alibaba.fastjson.parser.Feature.of(jSONField5.parseFeatures());
                                            if (jSONField5.name().length() != 0) {
                                                bool = java.lang.Boolean.TRUE;
                                                strName = jSONField5.name();
                                                if (map3 != null) {
                                                }
                                            } else {
                                                strName = propertyNameByCompatibleFieldName;
                                                bool = bool3;
                                            }
                                            if (jSONField5.label().length() != 0) {
                                                strLabel = jSONField5.label();
                                            }
                                            i13 = iOrdinal5;
                                            iOf = iOf10;
                                            strLabel = strLabel;
                                            i6 = iOf9;
                                            java.lang.String str5 = strName;
                                            jSONField4 = jSONField5;
                                            bool3 = bool;
                                            propertyNameByCompatibleFieldName = str5;
                                            if (map3 != null) {
                                            }
                                            if (propertyNamingStrategy != null) {
                                                propertyNameByCompatibleFieldName = propertyNamingStrategy.translate(propertyNameByCompatibleFieldName);
                                            }
                                            i8 = i12;
                                            linkedHashMap = linkedHashMap4;
                                            linkedHashMap.put(propertyNameByCompatibleFieldName, new com.alibaba.fastjson.util.FieldInfo(propertyNameByCompatibleFieldName, method, field, cls, null, i13, i6, iOf, jSONField, jSONField4, strLabel));
                                            i6 = i6;
                                            i7 = i13;
                                            iOf = iOf;
                                            strLabel = strLabel;
                                        }
                                    } else {
                                        jSONField4 = null;
                                    }
                                    i13 = i7;
                                    if (map3 != null) {
                                    }
                                    if (propertyNamingStrategy != null) {
                                        propertyNameByCompatibleFieldName = propertyNamingStrategy.translate(propertyNameByCompatibleFieldName);
                                    }
                                    i8 = i12;
                                    linkedHashMap = linkedHashMap4;
                                    linkedHashMap.put(propertyNameByCompatibleFieldName, new com.alibaba.fastjson.util.FieldInfo(propertyNameByCompatibleFieldName, method, field, cls, null, i13, i6, iOf, jSONField, jSONField4, strLabel));
                                    i6 = i6;
                                    i7 = i13;
                                    iOf = iOf;
                                    strLabel = strLabel;
                                }
                            }
                            linkedHashMap2 = linkedHashMap4;
                            propertyNamingStrategy2 = propertyNamingStrategy;
                            declaredConstructors = constructorArr;
                            sArr3 = sArr;
                            parameterAnnotations = annotationArr;
                        } else {
                            linkedHashMap = linkedHashMap4;
                            i8 = 3;
                        }
                        if (name.startsWith("is") && name.length() >= i8 && (returnType == java.lang.Boolean.TYPE || returnType == java.lang.Boolean.class)) {
                            char cCharAt3 = name.charAt(2);
                            if (java.lang.Character.isUpperCase(cCharAt3)) {
                                strSubstring = getPropertyNameByCompatibleFieldName(map2, name, compatibleWithJavaBean ? decapitalize(name.substring(2)) : java.lang.Character.toLowerCase(name.charAt(2)) + name.substring(i8), 2);
                            } else {
                                if (cCharAt3 == '_') {
                                    java.lang.String strSubstring3 = name.substring(i8);
                                    fieldFromCache = map2.get(strSubstring3);
                                    if (fieldFromCache == null) {
                                        strSubstring = name.substring(2);
                                        fieldFromCache = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(strSubstring, map2);
                                        if (fieldFromCache == null) {
                                            strSubstring = strSubstring3;
                                        }
                                    } else {
                                        strSubstring = strSubstring3;
                                    }
                                    if (isJSONTypeIgnore(cls, strSubstring)) {
                                        map3 = map;
                                        propertyNamingStrategy2 = propertyNamingStrategy;
                                        linkedHashMap2 = linkedHashMap;
                                    } else {
                                        if (fieldFromCache == null) {
                                            fieldFromCache = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(strSubstring, map2);
                                        }
                                        if (fieldFromCache == null) {
                                            fieldFromCache = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(name, map2);
                                        }
                                        if (fieldFromCache != null) {
                                            jSONField3 = (com.alibaba.fastjson.annotation.JSONField) getAnnotation(fieldFromCache, com.alibaba.fastjson.annotation.JSONField.class);
                                            if (jSONField3 != null) {
                                                if (jSONField3.serialize()) {
                                                    iOrdinal = jSONField3.ordinal();
                                                    iOf2 = com.alibaba.fastjson.serializer.SerializerFeature.of(jSONField3.serialzeFeatures());
                                                    iOf3 = com.alibaba.fastjson.parser.Feature.of(jSONField3.parseFeatures());
                                                    if (jSONField3.name().length() != 0) {
                                                        strSubstring = jSONField3.name();
                                                        map3 = map;
                                                        if (map3 != null || (strSubstring = map3.get(strSubstring)) != null) {
                                                        }
                                                        linkedHashMap2 = linkedHashMap;
                                                    } else {
                                                        map3 = map;
                                                    }
                                                    if (jSONField3.label().length() != 0) {
                                                        jSONField2 = jSONField3;
                                                        i9 = iOf2;
                                                        i11 = iOf3;
                                                        strLabel = jSONField3.label();
                                                        i10 = iOrdinal;
                                                    } else {
                                                        i10 = iOrdinal;
                                                        jSONField2 = jSONField3;
                                                        i9 = iOf2;
                                                        i11 = iOf3;
                                                    }
                                                } else {
                                                    map3 = map;
                                                }
                                                propertyNamingStrategy2 = propertyNamingStrategy;
                                                linkedHashMap2 = linkedHashMap;
                                            } else {
                                                map3 = map;
                                                i9 = i6;
                                                i10 = i7;
                                                i11 = iOf;
                                                jSONField2 = jSONField3;
                                            }
                                        } else {
                                            map3 = map;
                                            i9 = i6;
                                            i10 = i7;
                                            i11 = iOf;
                                            jSONField2 = null;
                                        }
                                        if (map3 == null && (strSubstring = map3.get(strSubstring)) == null) {
                                            propertyNamingStrategy2 = propertyNamingStrategy;
                                        } else {
                                            propertyNamingStrategy2 = propertyNamingStrategy;
                                            if (propertyNamingStrategy2 != null) {
                                                strSubstring = propertyNamingStrategy2.translate(strSubstring);
                                            }
                                            str = strSubstring;
                                            if (linkedHashMap.containsKey(str)) {
                                                linkedHashMap2 = linkedHashMap;
                                                linkedHashMap2.put(str, new com.alibaba.fastjson.util.FieldInfo(str, method, fieldFromCache, cls, null, i10, i9, i11, jSONField, jSONField2, strLabel));
                                            }
                                        }
                                        linkedHashMap2 = linkedHashMap;
                                    }
                                } else if (cCharAt3 == 'f') {
                                    strSubstring = name.substring(2);
                                } else {
                                    strSubstring = name.substring(2);
                                    fieldFromCache = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(strSubstring, map2);
                                    if (fieldFromCache == null) {
                                        cls = cls;
                                    }
                                    map3 = map;
                                    propertyNamingStrategy2 = propertyNamingStrategy;
                                    linkedHashMap2 = linkedHashMap;
                                }
                                if (isJSONTypeIgnore(cls, strSubstring)) {
                                    if (fieldFromCache == null) {
                                        fieldFromCache = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(strSubstring, map2);
                                    }
                                    if (fieldFromCache == null) {
                                        fieldFromCache = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(name, map2);
                                    }
                                    if (fieldFromCache != null) {
                                        jSONField3 = (com.alibaba.fastjson.annotation.JSONField) getAnnotation(fieldFromCache, com.alibaba.fastjson.annotation.JSONField.class);
                                        if (jSONField3 != null) {
                                            if (jSONField3.serialize()) {
                                                map3 = map;
                                            } else {
                                                iOrdinal = jSONField3.ordinal();
                                                iOf2 = com.alibaba.fastjson.serializer.SerializerFeature.of(jSONField3.serialzeFeatures());
                                                iOf3 = com.alibaba.fastjson.parser.Feature.of(jSONField3.parseFeatures());
                                                if (jSONField3.name().length() != 0) {
                                                    strSubstring = jSONField3.name();
                                                    map3 = map;
                                                    if (map3 != null) {
                                                    }
                                                } else {
                                                    map3 = map;
                                                }
                                                if (jSONField3.label().length() != 0) {
                                                    jSONField2 = jSONField3;
                                                    i9 = iOf2;
                                                    i11 = iOf3;
                                                    strLabel = jSONField3.label();
                                                    i10 = iOrdinal;
                                                } else {
                                                    i10 = iOrdinal;
                                                    jSONField2 = jSONField3;
                                                    i9 = iOf2;
                                                    i11 = iOf3;
                                                }
                                            }
                                            propertyNamingStrategy2 = propertyNamingStrategy;
                                            linkedHashMap2 = linkedHashMap;
                                        } else {
                                            map3 = map;
                                            i9 = i6;
                                            i10 = i7;
                                            i11 = iOf;
                                            jSONField2 = jSONField3;
                                        }
                                    } else {
                                        map3 = map;
                                        i9 = i6;
                                        i10 = i7;
                                        i11 = iOf;
                                        jSONField2 = null;
                                    }
                                    if (map3 == null) {
                                    }
                                    propertyNamingStrategy2 = propertyNamingStrategy;
                                    if (propertyNamingStrategy2 != null) {
                                        strSubstring = propertyNamingStrategy2.translate(strSubstring);
                                    }
                                    str = strSubstring;
                                    if (linkedHashMap.containsKey(str)) {
                                        linkedHashMap2 = linkedHashMap;
                                        linkedHashMap2.put(str, new com.alibaba.fastjson.util.FieldInfo(str, method, fieldFromCache, cls, null, i10, i9, i11, jSONField, jSONField2, strLabel));
                                    } else {
                                        linkedHashMap2 = linkedHashMap;
                                    }
                                } else {
                                    map3 = map;
                                    propertyNamingStrategy2 = propertyNamingStrategy;
                                    linkedHashMap2 = linkedHashMap;
                                }
                            }
                            fieldFromCache = null;
                            if (isJSONTypeIgnore(cls, strSubstring)) {
                                if (fieldFromCache == null) {
                                    fieldFromCache = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(strSubstring, map2);
                                }
                                if (fieldFromCache == null) {
                                    fieldFromCache = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(name, map2);
                                }
                                if (fieldFromCache != null) {
                                    jSONField3 = (com.alibaba.fastjson.annotation.JSONField) getAnnotation(fieldFromCache, com.alibaba.fastjson.annotation.JSONField.class);
                                    if (jSONField3 != null) {
                                        if (jSONField3.serialize()) {
                                            map3 = map;
                                        } else {
                                            iOrdinal = jSONField3.ordinal();
                                            iOf2 = com.alibaba.fastjson.serializer.SerializerFeature.of(jSONField3.serialzeFeatures());
                                            iOf3 = com.alibaba.fastjson.parser.Feature.of(jSONField3.parseFeatures());
                                            if (jSONField3.name().length() != 0) {
                                                strSubstring = jSONField3.name();
                                                map3 = map;
                                                if (map3 != null) {
                                                }
                                            } else {
                                                map3 = map;
                                            }
                                            if (jSONField3.label().length() != 0) {
                                                jSONField2 = jSONField3;
                                                i9 = iOf2;
                                                i11 = iOf3;
                                                strLabel = jSONField3.label();
                                                i10 = iOrdinal;
                                            } else {
                                                i10 = iOrdinal;
                                                jSONField2 = jSONField3;
                                                i9 = iOf2;
                                                i11 = iOf3;
                                            }
                                        }
                                        propertyNamingStrategy2 = propertyNamingStrategy;
                                        linkedHashMap2 = linkedHashMap;
                                    } else {
                                        map3 = map;
                                        i9 = i6;
                                        i10 = i7;
                                        i11 = iOf;
                                        jSONField2 = jSONField3;
                                    }
                                } else {
                                    map3 = map;
                                    i9 = i6;
                                    i10 = i7;
                                    i11 = iOf;
                                    jSONField2 = null;
                                }
                                if (map3 == null) {
                                }
                                propertyNamingStrategy2 = propertyNamingStrategy;
                                if (propertyNamingStrategy2 != null) {
                                    strSubstring = propertyNamingStrategy2.translate(strSubstring);
                                }
                                str = strSubstring;
                                if (linkedHashMap.containsKey(str)) {
                                    linkedHashMap2 = linkedHashMap;
                                } else {
                                    linkedHashMap2 = linkedHashMap;
                                    linkedHashMap2.put(str, new com.alibaba.fastjson.util.FieldInfo(str, method, fieldFromCache, cls, null, i10, i9, i11, jSONField, jSONField2, strLabel));
                                }
                            } else {
                                map3 = map;
                                propertyNamingStrategy2 = propertyNamingStrategy;
                                linkedHashMap2 = linkedHashMap;
                            }
                        } else {
                            cls = cls;
                            map3 = map;
                            propertyNamingStrategy2 = propertyNamingStrategy;
                            linkedHashMap2 = linkedHashMap;
                        }
                        declaredConstructors = constructorArr;
                        sArr3 = sArr;
                        parameterAnnotations = annotationArr;
                    }
                }
                i5 = i14;
                length = length;
                methods = methods;
                linkedHashMap2 = linkedHashMap3;
            }
            i14 = i5 + 1;
            linkedHashMap3 = linkedHashMap2;
            strArr2 = strArr;
            length = length;
            methods = methods;
        }
        java.util.LinkedHashMap linkedHashMap5 = linkedHashMap3;
        computeFields(cls, map3, propertyNamingStrategy2, linkedHashMap5, cls.getFields());
        return getFieldInfos(cls, z4, linkedHashMap5);
    }

    private static java.lang.reflect.Type getCollectionItemType(java.lang.Class<?> cls) {
        return cls.getName().startsWith("java.") ? java.lang.Object.class : getCollectionItemType(getCollectionSuperType(cls));
    }

    private static java.lang.reflect.Type getCollectionItemType(java.lang.reflect.ParameterizedType parameterizedType) {
        java.lang.reflect.Type rawType = parameterizedType.getRawType();
        java.lang.reflect.Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (rawType == java.util.Collection.class) {
            return getWildcardTypeUpperBounds(actualTypeArguments[0]);
        }
        java.lang.Class cls = (java.lang.Class) rawType;
        java.util.Map<java.lang.reflect.TypeVariable, java.lang.reflect.Type> mapCreateActualTypeMap = createActualTypeMap(cls.getTypeParameters(), actualTypeArguments);
        java.lang.reflect.Type collectionSuperType = getCollectionSuperType(cls);
        if (collectionSuperType instanceof java.lang.reflect.ParameterizedType) {
            java.lang.Class<?> rawClass = getRawClass(collectionSuperType);
            java.lang.reflect.Type[] actualTypeArguments2 = ((java.lang.reflect.ParameterizedType) collectionSuperType).getActualTypeArguments();
            if (actualTypeArguments2.length > 0) {
                return getCollectionItemType(makeParameterizedType(rawClass, actualTypeArguments2, mapCreateActualTypeMap));
            }
            return getCollectionItemType(rawClass);
        }
        return getCollectionItemType((java.lang.Class<?>) collectionSuperType);
    }

    public static java.lang.annotation.Annotation[][] getParameterAnnotations(java.lang.reflect.Constructor constructor) {
        java.lang.annotation.Annotation[][] parameterAnnotations;
        java.lang.reflect.Constructor declaredConstructor;
        java.lang.annotation.Annotation[][] parameterAnnotations2 = constructor.getParameterAnnotations();
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(constructor.getDeclaringClass());
        java.lang.reflect.Constructor constructor2 = null;
        java.lang.Class cls = mixInAnnotations instanceof java.lang.Class ? (java.lang.Class) mixInAnnotations : null;
        if (cls != null) {
            java.lang.Class<?>[] parameterTypes = constructor.getParameterTypes();
            java.util.ArrayList arrayList = new java.util.ArrayList(2);
            for (java.lang.Class<?> enclosingClass = cls.getEnclosingClass(); enclosingClass != null; enclosingClass = enclosingClass.getEnclosingClass()) {
                arrayList.add(enclosingClass);
            }
            int size = arrayList.size();
            for (java.lang.Class superclass = cls; superclass != null && superclass != java.lang.Object.class; superclass = superclass.getSuperclass()) {
                try {
                    if (size != 0) {
                        java.lang.Class<?>[] clsArr = new java.lang.Class[parameterTypes.length + size];
                        java.lang.System.arraycopy(parameterTypes, 0, clsArr, size, parameterTypes.length);
                        for (int i5 = size; i5 > 0; i5--) {
                            int i6 = i5 - 1;
                            clsArr[i6] = (java.lang.Class) arrayList.get(i6);
                        }
                        declaredConstructor = cls.getDeclaredConstructor(clsArr);
                    } else {
                        declaredConstructor = cls.getDeclaredConstructor(parameterTypes);
                    }
                    constructor2 = declaredConstructor;
                    break;
                } catch (java.lang.NoSuchMethodException unused) {
                    size--;
                }
            }
            if (constructor2 != null && (parameterAnnotations = constructor2.getParameterAnnotations()) != null) {
                return parameterAnnotations;
            }
        }
        return parameterAnnotations2;
    }

    public static <A extends java.lang.annotation.Annotation> A getAnnotation(java.lang.reflect.Field field, java.lang.Class<A> cls) {
        A a5;
        A a6 = (A) field.getAnnotation(cls);
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(field.getDeclaringClass());
        java.lang.reflect.Field declaredField = null;
        java.lang.Class superclass = mixInAnnotations instanceof java.lang.Class ? (java.lang.Class) mixInAnnotations : null;
        if (superclass != null) {
            java.lang.String name = field.getName();
            while (superclass != null && superclass != java.lang.Object.class) {
                try {
                    declaredField = superclass.getDeclaredField(name);
                    break;
                } catch (java.lang.NoSuchFieldException unused) {
                    superclass = superclass.getSuperclass();
                }
            }
            if (declaredField != null && (a5 = (A) declaredField.getAnnotation(cls)) != null) {
                return a5;
            }
        }
        return a6;
    }

    public static <A extends java.lang.annotation.Annotation> A getAnnotation(java.lang.reflect.Method method, java.lang.Class<A> cls) {
        A a5;
        A a6 = (A) method.getAnnotation(cls);
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(method.getDeclaringClass());
        java.lang.reflect.Method declaredMethod = null;
        java.lang.Class superclass = mixInAnnotations instanceof java.lang.Class ? (java.lang.Class) mixInAnnotations : null;
        if (superclass != null) {
            java.lang.String name = method.getName();
            java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
            while (superclass != null && superclass != java.lang.Object.class) {
                try {
                    declaredMethod = superclass.getDeclaredMethod(name, parameterTypes);
                    break;
                } catch (java.lang.NoSuchMethodException unused) {
                    superclass = superclass.getSuperclass();
                }
            }
            if (declaredMethod != null && (a5 = (A) declaredMethod.getAnnotation(cls)) != null) {
                return a5;
            }
        }
        return a6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T cast(java.lang.Object obj, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        if (obj == 0) {
            return null;
        }
        if (type instanceof java.lang.Class) {
            return (T) cast(obj, (java.lang.Class) type, parserConfig);
        }
        if (type instanceof java.lang.reflect.ParameterizedType) {
            return (T) cast(obj, (java.lang.reflect.ParameterizedType) type, parserConfig);
        }
        if (obj instanceof java.lang.String) {
            java.lang.String str = (java.lang.String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
        }
        if (type instanceof java.lang.reflect.TypeVariable) {
            return obj;
        }
        throw new com.alibaba.fastjson.JSONException("can not cast to : " + type);
    }

    /* JADX WARN: Type inference failed for: r6v14, types: [T, java.util.Map$Entry] */
    /* JADX WARN: Type inference failed for: r7v1, types: [T, java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r7v9, types: [T, java.util.HashMap, java.util.Map] */
    public static <T> T cast(java.lang.Object obj, java.lang.reflect.ParameterizedType parameterizedType, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        java.lang.Object objCast;
        T t5;
        java.lang.Object objCast2;
        java.lang.reflect.Type rawType = parameterizedType.getRawType();
        if (rawType == java.util.List.class || rawType == java.util.ArrayList.class) {
            java.lang.reflect.Type type = parameterizedType.getActualTypeArguments()[0];
            if (obj instanceof java.util.List) {
                java.util.List list = (java.util.List) obj;
                ?? r7 = (T) new java.util.ArrayList(list.size());
                for (java.lang.Object obj2 : list) {
                    if (type instanceof java.lang.Class) {
                        if (obj2 != null && obj2.getClass() == com.alibaba.fastjson.JSONObject.class) {
                            objCast = ((com.alibaba.fastjson.JSONObject) obj2).toJavaObject((java.lang.Class) type, parserConfig, 0);
                        } else {
                            objCast = cast(obj2, (java.lang.Class<java.lang.Object>) type, parserConfig);
                        }
                    } else {
                        objCast = cast(obj2, type, parserConfig);
                    }
                    r7.add(objCast);
                }
                return r7;
            }
        }
        if (rawType == java.util.Set.class || rawType == java.util.HashSet.class || rawType == java.util.TreeSet.class || rawType == java.util.Collection.class || rawType == java.util.List.class || rawType == java.util.ArrayList.class) {
            java.lang.reflect.Type type2 = parameterizedType.getActualTypeArguments()[0];
            if (obj instanceof java.lang.Iterable) {
                if (rawType != java.util.Set.class && rawType != java.util.HashSet.class) {
                    if (rawType == java.util.TreeSet.class) {
                        t5 = (T) new java.util.TreeSet();
                    } else {
                        t5 = (T) new java.util.ArrayList();
                    }
                } else {
                    t5 = (T) new java.util.HashSet();
                }
                for (T t6 : (java.lang.Iterable) obj) {
                    if (type2 instanceof java.lang.Class) {
                        if (t6 != null && t6.getClass() == com.alibaba.fastjson.JSONObject.class) {
                            objCast2 = ((com.alibaba.fastjson.JSONObject) t6).toJavaObject((java.lang.Class) type2, parserConfig, 0);
                        } else {
                            objCast2 = cast((java.lang.Object) t6, (java.lang.Class<java.lang.Object>) type2, parserConfig);
                        }
                    } else {
                        objCast2 = cast(t6, type2, parserConfig);
                    }
                    ((java.util.Collection) t5).add(objCast2);
                }
                return t5;
            }
        }
        if (rawType == java.util.Map.class || rawType == java.util.HashMap.class) {
            java.lang.reflect.Type type3 = parameterizedType.getActualTypeArguments()[0];
            java.lang.reflect.Type type4 = parameterizedType.getActualTypeArguments()[1];
            if (obj instanceof java.util.Map) {
                ?? r8 = (T) new java.util.HashMap();
                for (java.util.Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                    r8.put(cast(entry.getKey(), type3, parserConfig), cast(entry.getValue(), type4, parserConfig));
                }
                return r8;
            }
        }
        if ((obj instanceof java.lang.String) && ((java.lang.String) obj).length() == 0) {
            return null;
        }
        java.lang.reflect.Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (actualTypeArguments.length == 1 && (parameterizedType.getActualTypeArguments()[0] instanceof java.lang.reflect.WildcardType)) {
            return (T) cast(obj, rawType, parserConfig);
        }
        if (rawType == java.util.Map.Entry.class && (obj instanceof java.util.Map)) {
            java.util.Map map = (java.util.Map) obj;
            if (map.size() == 1) {
                ?? r6 = (T) ((java.util.Map.Entry) map.entrySet().iterator().next());
                java.lang.Object value = r6.getValue();
                if (actualTypeArguments.length == 2 && (value instanceof java.util.Map)) {
                    r6.setValue(cast(value, actualTypeArguments[1], parserConfig));
                }
                return r6;
            }
        }
        if (rawType instanceof java.lang.Class) {
            if (parserConfig == null) {
                parserConfig = com.alibaba.fastjson.parser.ParserConfig.global;
            }
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = parserConfig.getDeserializer(rawType);
            if (deserializer != null) {
                return (T) deserializer.deserialze(new com.alibaba.fastjson.parser.DefaultJSONParser(com.alibaba.fastjson.JSON.toJSONString(obj), parserConfig), parameterizedType, null);
            }
        }
        throw new com.alibaba.fastjson.JSONException("can not cast to : " + parameterizedType);
    }
}
