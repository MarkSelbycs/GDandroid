package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SerializeConfig {
    private boolean asm;
    private com.alibaba.fastjson.serializer.ASMSerializerFactory asmFactory;
    private long[] denyClasses;
    private final boolean fieldBased;
    private final com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.serializer.ObjectSerializer>> mixInSerializers;
    private java.util.List<com.alibaba.fastjson.spi.Module> modules;
    public com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy;
    private final com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.serializer.ObjectSerializer> serializers;
    public java.lang.String typeKey;
    public static final com.alibaba.fastjson.serializer.SerializeConfig globalInstance = new com.alibaba.fastjson.serializer.SerializeConfig();
    private static boolean awtError = false;
    private static boolean jdk8Error = false;
    private static boolean oracleJdbcError = false;
    private static boolean springfoxError = false;
    private static boolean guavaError = false;
    private static boolean jodaError = false;

    public SerializeConfig() {
        this(8192);
    }

    private final com.alibaba.fastjson.serializer.JavaBeanSerializer createASMSerializer(com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfo) throws java.lang.Exception {
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializerCreateJavaBeanSerializer = this.asmFactory.createJavaBeanSerializer(serializeBeanInfo);
        int i5 = 0;
        while (true) {
            com.alibaba.fastjson.serializer.FieldSerializer[] fieldSerializerArr = javaBeanSerializerCreateJavaBeanSerializer.sortedGetters;
            if (i5 >= fieldSerializerArr.length) {
                return javaBeanSerializerCreateJavaBeanSerializer;
            }
            java.lang.Class<?> cls = fieldSerializerArr[i5].fieldInfo.fieldClass;
            if (cls.isEnum() && !(getObjectWriter(cls) instanceof com.alibaba.fastjson.serializer.EnumSerializer)) {
                javaBeanSerializerCreateJavaBeanSerializer.writeDirect = false;
            }
            i5++;
        }
    }

    private static java.lang.reflect.Member getEnumValueField(java.lang.Class cls) {
        java.lang.reflect.Field field = null;
        for (java.lang.reflect.Method method : cls.getMethods()) {
            if (method.getReturnType() != java.lang.Void.class && ((com.alibaba.fastjson.annotation.JSONField) method.getAnnotation(com.alibaba.fastjson.annotation.JSONField.class)) != null) {
                if (field != null) {
                    return null;
                }
                field = method;
            }
        }
        for (java.lang.reflect.Field field2 : cls.getFields()) {
            if (((com.alibaba.fastjson.annotation.JSONField) field2.getAnnotation(com.alibaba.fastjson.annotation.JSONField.class)) != null) {
                if (field != null) {
                    return null;
                }
                field = field2;
            }
        }
        return field;
    }

    public static com.alibaba.fastjson.serializer.SerializeConfig getGlobalInstance() {
        return globalInstance;
    }

    private void initSerializers() {
        put(java.lang.Boolean.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.BooleanCodec.instance);
        put(java.lang.Character.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.CharacterCodec.instance);
        put(java.lang.Byte.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.IntegerCodec.instance);
        put(java.lang.Short.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.IntegerCodec.instance);
        put(java.lang.Integer.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.IntegerCodec.instance);
        put(java.lang.Long.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.LongCodec.instance);
        put(java.lang.Float.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.FloatCodec.instance);
        put(java.lang.Double.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.DoubleSerializer.instance);
        put(java.math.BigDecimal.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.BigDecimalCodec.instance);
        put(java.math.BigInteger.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.BigIntegerCodec.instance);
        put(java.lang.String.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.StringCodec.instance);
        put(byte[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(short[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(int[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(long[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(float[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(double[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(boolean[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(char[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(java.lang.Object[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.ObjectArrayCodec.instance);
        com.alibaba.fastjson.serializer.MiscCodec miscCodec = com.alibaba.fastjson.serializer.MiscCodec.instance;
        put(java.lang.Class.class, (com.alibaba.fastjson.serializer.ObjectSerializer) miscCodec);
        put(java.text.SimpleDateFormat.class, (com.alibaba.fastjson.serializer.ObjectSerializer) miscCodec);
        put(java.util.Currency.class, (com.alibaba.fastjson.serializer.ObjectSerializer) new com.alibaba.fastjson.serializer.MiscCodec());
        put(java.util.TimeZone.class, (com.alibaba.fastjson.serializer.ObjectSerializer) miscCodec);
        put(java.net.InetAddress.class, (com.alibaba.fastjson.serializer.ObjectSerializer) miscCodec);
        put(java.net.Inet4Address.class, (com.alibaba.fastjson.serializer.ObjectSerializer) miscCodec);
        put(java.net.Inet6Address.class, (com.alibaba.fastjson.serializer.ObjectSerializer) miscCodec);
        put(java.net.InetSocketAddress.class, (com.alibaba.fastjson.serializer.ObjectSerializer) miscCodec);
        put(java.io.File.class, (com.alibaba.fastjson.serializer.ObjectSerializer) miscCodec);
        com.alibaba.fastjson.serializer.AppendableSerializer appendableSerializer = com.alibaba.fastjson.serializer.AppendableSerializer.instance;
        put(java.lang.Appendable.class, (com.alibaba.fastjson.serializer.ObjectSerializer) appendableSerializer);
        put(java.lang.StringBuffer.class, (com.alibaba.fastjson.serializer.ObjectSerializer) appendableSerializer);
        put(java.lang.StringBuilder.class, (com.alibaba.fastjson.serializer.ObjectSerializer) appendableSerializer);
        com.alibaba.fastjson.serializer.ToStringSerializer toStringSerializer = com.alibaba.fastjson.serializer.ToStringSerializer.instance;
        put(java.nio.charset.Charset.class, (com.alibaba.fastjson.serializer.ObjectSerializer) toStringSerializer);
        put(java.util.regex.Pattern.class, (com.alibaba.fastjson.serializer.ObjectSerializer) toStringSerializer);
        put(java.util.Locale.class, (com.alibaba.fastjson.serializer.ObjectSerializer) toStringSerializer);
        put(java.net.URI.class, (com.alibaba.fastjson.serializer.ObjectSerializer) toStringSerializer);
        put(java.net.URL.class, (com.alibaba.fastjson.serializer.ObjectSerializer) toStringSerializer);
        put(java.util.UUID.class, (com.alibaba.fastjson.serializer.ObjectSerializer) toStringSerializer);
        com.alibaba.fastjson.serializer.AtomicCodec atomicCodec = com.alibaba.fastjson.serializer.AtomicCodec.instance;
        put(java.util.concurrent.atomic.AtomicBoolean.class, (com.alibaba.fastjson.serializer.ObjectSerializer) atomicCodec);
        put(java.util.concurrent.atomic.AtomicInteger.class, (com.alibaba.fastjson.serializer.ObjectSerializer) atomicCodec);
        put(java.util.concurrent.atomic.AtomicLong.class, (com.alibaba.fastjson.serializer.ObjectSerializer) atomicCodec);
        com.alibaba.fastjson.serializer.ReferenceCodec referenceCodec = com.alibaba.fastjson.serializer.ReferenceCodec.instance;
        put(java.util.concurrent.atomic.AtomicReference.class, (com.alibaba.fastjson.serializer.ObjectSerializer) referenceCodec);
        put(java.util.concurrent.atomic.AtomicIntegerArray.class, (com.alibaba.fastjson.serializer.ObjectSerializer) atomicCodec);
        put(java.util.concurrent.atomic.AtomicLongArray.class, (com.alibaba.fastjson.serializer.ObjectSerializer) atomicCodec);
        put(java.lang.ref.WeakReference.class, (com.alibaba.fastjson.serializer.ObjectSerializer) referenceCodec);
        put(java.lang.ref.SoftReference.class, (com.alibaba.fastjson.serializer.ObjectSerializer) referenceCodec);
        put(java.util.LinkedList.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.CollectionCodec.instance);
    }

    public void addFilter(java.lang.Class<?> cls, com.alibaba.fastjson.serializer.SerializeFilter serializeFilter) {
        java.lang.Object objectWriter = getObjectWriter(cls);
        if (objectWriter instanceof com.alibaba.fastjson.serializer.SerializeFilterable) {
            com.alibaba.fastjson.serializer.SerializeFilterable serializeFilterable = (com.alibaba.fastjson.serializer.SerializeFilterable) objectWriter;
            if (this == globalInstance || serializeFilterable != com.alibaba.fastjson.serializer.MapSerializer.instance) {
                serializeFilterable.addFilter(serializeFilter);
                return;
            }
            com.alibaba.fastjson.serializer.MapSerializer mapSerializer = new com.alibaba.fastjson.serializer.MapSerializer();
            put((java.lang.reflect.Type) cls, (com.alibaba.fastjson.serializer.ObjectSerializer) mapSerializer);
            mapSerializer.addFilter(serializeFilter);
        }
    }

    public void clearSerializers() {
        this.serializers.clear();
        initSerializers();
    }

    public void config(java.lang.Class<?> cls, com.alibaba.fastjson.serializer.SerializerFeature serializerFeature, boolean z4) throws java.lang.NoSuchMethodException {
        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = getObjectWriter(cls, false);
        if (objectWriter == null) {
            com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfoBuildBeanInfo = com.alibaba.fastjson.util.TypeUtils.buildBeanInfo(cls, null, this.propertyNamingStrategy);
            if (z4) {
                serializeBeanInfoBuildBeanInfo.features = serializerFeature.mask | serializeBeanInfoBuildBeanInfo.features;
            } else {
                serializeBeanInfoBuildBeanInfo.features = (~serializerFeature.mask) & serializeBeanInfoBuildBeanInfo.features;
            }
            put((java.lang.reflect.Type) cls, createJavaBeanSerializer(serializeBeanInfoBuildBeanInfo));
            return;
        }
        if (objectWriter instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer) {
            com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfo = ((com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter).beanInfo;
            int i5 = serializeBeanInfo.features;
            if (z4) {
                serializeBeanInfo.features = serializerFeature.mask | i5;
            } else {
                serializeBeanInfo.features = (~serializerFeature.mask) & i5;
            }
            if (i5 == serializeBeanInfo.features || objectWriter.getClass() == com.alibaba.fastjson.serializer.JavaBeanSerializer.class) {
                return;
            }
            put((java.lang.reflect.Type) cls, createJavaBeanSerializer(serializeBeanInfo));
        }
    }

    public void configEnumAsJavaBean(java.lang.Class<? extends java.lang.Enum>... clsArr) {
        for (java.lang.Class<? extends java.lang.Enum> cls : clsArr) {
            put((java.lang.reflect.Type) cls, createJavaBeanSerializer(cls));
        }
    }

    public final com.alibaba.fastjson.serializer.ObjectSerializer createJavaBeanSerializer(java.lang.Class<?> cls) {
        java.lang.String name = cls.getName();
        if (java.util.Arrays.binarySearch(this.denyClasses, com.alibaba.fastjson.util.TypeUtils.fnv1a_64(name)) < 0) {
            com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfoBuildBeanInfo = com.alibaba.fastjson.util.TypeUtils.buildBeanInfo(cls, null, this.propertyNamingStrategy, this.fieldBased);
            return (serializeBeanInfoBuildBeanInfo.fields.length == 0 && java.lang.Iterable.class.isAssignableFrom(cls)) ? com.alibaba.fastjson.serializer.MiscCodec.instance : createJavaBeanSerializer(serializeBeanInfoBuildBeanInfo);
        }
        throw new com.alibaba.fastjson.JSONException("not support class : " + name);
    }

    public final com.alibaba.fastjson.serializer.ObjectSerializer get(java.lang.reflect.Type type) {
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            return this.serializers.get(type);
        }
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.serializer.ObjectSerializer> identityHashMap = this.mixInSerializers.get(type);
        if (identityHashMap == null) {
            return null;
        }
        return identityHashMap.get(mixInAnnotations);
    }

    public com.alibaba.fastjson.serializer.ObjectSerializer getEnumSerializer() {
        return com.alibaba.fastjson.serializer.EnumSerializer.instance;
    }

    public com.alibaba.fastjson.serializer.ObjectSerializer getObjectWriter(java.lang.Class<?> cls) {
        return getObjectWriter(cls, true);
    }

    public java.lang.String getTypeKey() {
        return this.typeKey;
    }

    public boolean isAsmEnable() {
        return this.asm;
    }

    public boolean put(java.lang.Object obj, java.lang.Object obj2) {
        return put((java.lang.reflect.Type) obj, (com.alibaba.fastjson.serializer.ObjectSerializer) obj2);
    }

    public void register(com.alibaba.fastjson.spi.Module module) {
        this.modules.add(module);
    }

    public void setAsmEnable(boolean z4) {
        if (com.alibaba.fastjson.util.ASMUtils.IS_ANDROID) {
            return;
        }
        this.asm = z4;
    }

    public void setPropertyNamingStrategy(com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy) {
        this.propertyNamingStrategy = propertyNamingStrategy;
    }

    public void setTypeKey(java.lang.String str) {
        this.typeKey = str;
    }

    public SerializeConfig(boolean z4) {
        this(8192, z4);
    }

    /* JADX WARN: Code duplicated, block: B:273:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:331:? A[RETURN, SYNTHETIC] */
    public com.alibaba.fastjson.serializer.ObjectSerializer getObjectWriter(java.lang.Class<?> cls, boolean z4) throws java.lang.NoSuchMethodException {
        com.alibaba.fastjson.serializer.ObjectSerializer objectSerializerCreateJavaBeanSerializer;
        java.lang.ClassLoader classLoader;
        com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer = get(cls);
        if (objectSerializer != null) {
            return objectSerializer;
        }
        try {
            for (java.lang.Object obj : com.alibaba.fastjson.util.ServiceLoader.load(com.alibaba.fastjson.serializer.AutowiredObjectSerializer.class, java.lang.Thread.currentThread().getContextClassLoader())) {
                if (obj instanceof com.alibaba.fastjson.serializer.AutowiredObjectSerializer) {
                    com.alibaba.fastjson.serializer.AutowiredObjectSerializer autowiredObjectSerializer = (com.alibaba.fastjson.serializer.AutowiredObjectSerializer) obj;
                    java.util.Iterator<java.lang.reflect.Type> it = autowiredObjectSerializer.getAutowiredFor().iterator();
                    while (it.hasNext()) {
                        put(it.next(), (com.alibaba.fastjson.serializer.ObjectSerializer) autowiredObjectSerializer);
                    }
                }
            }
        } catch (java.lang.ClassCastException unused) {
        }
        com.alibaba.fastjson.serializer.ObjectSerializer arraySerializer = get(cls);
        if (arraySerializer == null && (classLoader = com.alibaba.fastjson.JSON.class.getClassLoader()) != java.lang.Thread.currentThread().getContextClassLoader()) {
            try {
                for (java.lang.Object obj2 : com.alibaba.fastjson.util.ServiceLoader.load(com.alibaba.fastjson.serializer.AutowiredObjectSerializer.class, classLoader)) {
                    if (obj2 instanceof com.alibaba.fastjson.serializer.AutowiredObjectSerializer) {
                        com.alibaba.fastjson.serializer.AutowiredObjectSerializer autowiredObjectSerializer2 = (com.alibaba.fastjson.serializer.AutowiredObjectSerializer) obj2;
                        java.util.Iterator<java.lang.reflect.Type> it2 = autowiredObjectSerializer2.getAutowiredFor().iterator();
                        while (it2.hasNext()) {
                            put(it2.next(), (com.alibaba.fastjson.serializer.ObjectSerializer) autowiredObjectSerializer2);
                        }
                    }
                }
            } catch (java.lang.ClassCastException unused2) {
            }
            arraySerializer = get(cls);
        }
        java.util.Iterator<com.alibaba.fastjson.spi.Module> it3 = this.modules.iterator();
        while (it3.hasNext()) {
            arraySerializer = it3.next().createSerializer(this, cls);
            if (arraySerializer != null) {
                put((java.lang.reflect.Type) cls, arraySerializer);
                return arraySerializer;
            }
        }
        if (arraySerializer != null) {
            return arraySerializer;
        }
        java.lang.String name = cls.getName();
        if (java.util.Map.class.isAssignableFrom(cls)) {
            objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.MapSerializer.instance;
            put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
        } else if (java.util.List.class.isAssignableFrom(cls)) {
            objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.ListSerializer.instance;
            put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
        } else if (java.util.Collection.class.isAssignableFrom(cls)) {
            objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.CollectionCodec.instance;
            put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
        } else if (java.util.Date.class.isAssignableFrom(cls)) {
            objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.DateCodec.instance;
            put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
        } else if (com.alibaba.fastjson.JSONAware.class.isAssignableFrom(cls)) {
            objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.JSONAwareSerializer.instance;
            put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
        } else if (com.alibaba.fastjson.serializer.JSONSerializable.class.isAssignableFrom(cls)) {
            objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.JSONSerializableSerializer.instance;
            put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
        } else if (com.alibaba.fastjson.JSONStreamAware.class.isAssignableFrom(cls)) {
            objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.MiscCodec.instance;
            put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
        } else {
            java.lang.Class<?> cls2 = null;
            enumValueField = null;
            enumValueField = null;
            java.lang.reflect.Member enumValueField = null;
            if (cls.isEnum()) {
                java.lang.Class cls3 = (java.lang.Class) com.alibaba.fastjson.JSON.getMixInAnnotations(cls);
                com.alibaba.fastjson.annotation.JSONType jSONType = cls3 != null ? (com.alibaba.fastjson.annotation.JSONType) com.alibaba.fastjson.util.TypeUtils.getAnnotation((java.lang.Class<?>) cls3, com.alibaba.fastjson.annotation.JSONType.class) : (com.alibaba.fastjson.annotation.JSONType) com.alibaba.fastjson.util.TypeUtils.getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class);
                if (jSONType == null || !jSONType.serializeEnumAsJavaBean()) {
                    if (cls3 != null) {
                        java.lang.reflect.Member enumValueField2 = getEnumValueField(cls3);
                        if (enumValueField2 != null) {
                            try {
                                if (enumValueField2 instanceof java.lang.reflect.Method) {
                                    java.lang.reflect.Method method = (java.lang.reflect.Method) enumValueField2;
                                    enumValueField = cls.getMethod(method.getName(), method.getParameterTypes());
                                }
                            } catch (java.lang.Exception unused3) {
                            }
                        }
                    } else {
                        enumValueField = getEnumValueField(cls);
                    }
                    if (enumValueField != null) {
                        objectSerializerCreateJavaBeanSerializer = new com.alibaba.fastjson.serializer.EnumSerializer(enumValueField);
                        put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                    } else {
                        objectSerializerCreateJavaBeanSerializer = getEnumSerializer();
                        put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                    }
                } else {
                    objectSerializerCreateJavaBeanSerializer = createJavaBeanSerializer(cls);
                    put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                }
            } else {
                java.lang.Class<? super java.lang.Object> superclass = cls.getSuperclass();
                if (superclass == null || !superclass.isEnum()) {
                    if (cls.isArray()) {
                        java.lang.Class<?> componentType = cls.getComponentType();
                        arraySerializer = new com.alibaba.fastjson.serializer.ArraySerializer(componentType, getObjectWriter(componentType));
                        put((java.lang.reflect.Type) cls, arraySerializer);
                    } else if (java.lang.Throwable.class.isAssignableFrom(cls)) {
                        com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfoBuildBeanInfo = com.alibaba.fastjson.util.TypeUtils.buildBeanInfo(cls, null, this.propertyNamingStrategy);
                        serializeBeanInfoBuildBeanInfo.features |= com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName.mask;
                        com.alibaba.fastjson.serializer.ObjectSerializer javaBeanSerializer = new com.alibaba.fastjson.serializer.JavaBeanSerializer(serializeBeanInfoBuildBeanInfo);
                        put((java.lang.reflect.Type) cls, javaBeanSerializer);
                        arraySerializer = javaBeanSerializer;
                    } else if (java.util.TimeZone.class.isAssignableFrom(cls) || java.util.Map.Entry.class.isAssignableFrom(cls)) {
                        objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.MiscCodec.instance;
                        put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                    } else if (java.lang.Appendable.class.isAssignableFrom(cls)) {
                        objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.AppendableSerializer.instance;
                        put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                    } else if (java.nio.charset.Charset.class.isAssignableFrom(cls)) {
                        objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.ToStringSerializer.instance;
                        put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                    } else if (java.util.Enumeration.class.isAssignableFrom(cls)) {
                        objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.EnumerationSerializer.instance;
                        put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                    } else if (java.util.Calendar.class.isAssignableFrom(cls) || javax.xml.datatype.XMLGregorianCalendar.class.isAssignableFrom(cls)) {
                        objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.CalendarCodec.instance;
                        put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                    } else if (com.alibaba.fastjson.util.TypeUtils.isClob(cls)) {
                        objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.ClobSerializer.instance;
                        put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                    } else if (com.alibaba.fastjson.util.TypeUtils.isPath(cls)) {
                        objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.ToStringSerializer.instance;
                        put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                    } else if (java.util.Iterator.class.isAssignableFrom(cls)) {
                        objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.MiscCodec.instance;
                        put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                    } else if (org.w3c.dom.Node.class.isAssignableFrom(cls)) {
                        objectSerializerCreateJavaBeanSerializer = com.alibaba.fastjson.serializer.MiscCodec.instance;
                        put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                    } else {
                        int i5 = 0;
                        if (name.startsWith("java.awt.") && com.alibaba.fastjson.serializer.AwtCodec.support(cls) && !awtError) {
                            try {
                                java.lang.String[] strArr = {"java.awt.Color", "java.awt.Font", "java.awt.Point", "java.awt.Rectangle"};
                                for (int i6 = 0; i6 < 4; i6++) {
                                    java.lang.String str = strArr[i6];
                                    if (str.equals(name)) {
                                        java.lang.reflect.Type cls4 = java.lang.Class.forName(str);
                                        arraySerializer = com.alibaba.fastjson.serializer.AwtCodec.instance;
                                        put(cls4, arraySerializer);
                                        return arraySerializer;
                                    }
                                }
                            } catch (java.lang.Throwable unused4) {
                                awtError = true;
                            }
                        }
                        if (!jdk8Error && (name.startsWith("java.time.") || name.startsWith("java.util.Optional") || name.equals("java.util.concurrent.atomic.LongAdder") || name.equals("java.util.concurrent.atomic.DoubleAdder"))) {
                            try {
                                java.lang.String[] strArr2 = {"java.time.LocalDateTime", "java.time.LocalDate", "java.time.LocalTime", "java.time.ZonedDateTime", "java.time.OffsetDateTime", "java.time.OffsetTime", "java.time.ZoneOffset", "java.time.ZoneRegion", "java.time.Period", "java.time.Duration", "java.time.Instant"};
                                for (int i7 = 0; i7 < 11; i7++) {
                                    java.lang.String str2 = strArr2[i7];
                                    if (str2.equals(name)) {
                                        java.lang.reflect.Type cls5 = java.lang.Class.forName(str2);
                                        com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer2 = com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec.instance;
                                        put(cls5, objectSerializer2);
                                        return objectSerializer2;
                                    }
                                }
                                java.lang.String[] strArr3 = {"java.util.Optional", "java.util.OptionalDouble", "java.util.OptionalInt", "java.util.OptionalLong"};
                                for (int i8 = 0; i8 < 4; i8++) {
                                    java.lang.String str3 = strArr3[i8];
                                    if (str3.equals(name)) {
                                        java.lang.reflect.Type cls6 = java.lang.Class.forName(str3);
                                        com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer3 = com.alibaba.fastjson.parser.deserializer.OptionalCodec.instance;
                                        put(cls6, objectSerializer3);
                                        return objectSerializer3;
                                    }
                                }
                                java.lang.String[] strArr4 = {"java.util.concurrent.atomic.LongAdder", "java.util.concurrent.atomic.DoubleAdder"};
                                for (int i9 = 0; i9 < 2; i9++) {
                                    java.lang.String str4 = strArr4[i9];
                                    if (str4.equals(name)) {
                                        java.lang.reflect.Type cls7 = java.lang.Class.forName(str4);
                                        com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer4 = com.alibaba.fastjson.serializer.AdderSerializer.instance;
                                        put(cls7, objectSerializer4);
                                        return objectSerializer4;
                                    }
                                }
                            } catch (java.lang.Throwable unused5) {
                                jdk8Error = true;
                            }
                        }
                        if (!oracleJdbcError && name.startsWith("oracle.sql.")) {
                            try {
                                java.lang.String[] strArr5 = {"oracle.sql.DATE", "oracle.sql.TIMESTAMP"};
                                for (int i10 = 0; i10 < 2; i10++) {
                                    java.lang.String str5 = strArr5[i10];
                                    if (str5.equals(name)) {
                                        java.lang.reflect.Type cls8 = java.lang.Class.forName(str5);
                                        arraySerializer = com.alibaba.fastjson.serializer.DateCodec.instance;
                                        put(cls8, arraySerializer);
                                        return arraySerializer;
                                    }
                                }
                            } catch (java.lang.Throwable unused6) {
                                oracleJdbcError = true;
                            }
                        }
                        if (!springfoxError && name.equals("springfox.documentation.spring.web.json.Json")) {
                            try {
                                java.lang.reflect.Type cls9 = java.lang.Class.forName("springfox.documentation.spring.web.json.Json");
                                arraySerializer = com.alibaba.fastjson.support.springfox.SwaggerJsonSerializer.instance;
                                put(cls9, arraySerializer);
                                return arraySerializer;
                            } catch (java.lang.ClassNotFoundException unused7) {
                                springfoxError = true;
                            }
                        }
                        if (!guavaError && name.startsWith("com.google.common.collect.")) {
                            try {
                                java.lang.String[] strArr6 = {"com.google.common.collect.HashMultimap", "com.google.common.collect.LinkedListMultimap", "com.google.common.collect.LinkedHashMultimap", "com.google.common.collect.ArrayListMultimap", "com.google.common.collect.TreeMultimap"};
                                for (int i11 = 0; i11 < 5; i11++) {
                                    java.lang.String str6 = strArr6[i11];
                                    if (str6.equals(name)) {
                                        java.lang.reflect.Type cls10 = java.lang.Class.forName(str6);
                                        arraySerializer = com.alibaba.fastjson.serializer.GuavaCodec.instance;
                                        put(cls10, arraySerializer);
                                        return arraySerializer;
                                    }
                                }
                            } catch (java.lang.ClassNotFoundException unused8) {
                                guavaError = true;
                            }
                        }
                        if (name.equals("net.sf.json.JSONNull")) {
                            com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer5 = com.alibaba.fastjson.serializer.MiscCodec.instance;
                            put((java.lang.reflect.Type) cls, objectSerializer5);
                            return objectSerializer5;
                        }
                        if (name.equals("org.json.JSONObject")) {
                            com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer6 = com.alibaba.fastjson.serializer.JSONObjectCodec.instance;
                            put((java.lang.reflect.Type) cls, objectSerializer6);
                            return objectSerializer6;
                        }
                        if (!jodaError && name.startsWith("org.joda.")) {
                            try {
                                java.lang.String[] strArr7 = {"org.joda.time.LocalDate", "org.joda.time.LocalDateTime", "org.joda.time.LocalTime", "org.joda.time.Instant", "org.joda.time.DateTime", "org.joda.time.Period", "org.joda.time.Duration", "org.joda.time.DateTimeZone", "org.joda.time.UTCDateTimeZone", "org.joda.time.tz.CachedDateTimeZone", "org.joda.time.tz.FixedDateTimeZone"};
                                for (int i12 = 0; i12 < 11; i12++) {
                                    java.lang.String str7 = strArr7[i12];
                                    if (str7.equals(name)) {
                                        java.lang.reflect.Type cls11 = java.lang.Class.forName(str7);
                                        arraySerializer = com.alibaba.fastjson.serializer.JodaCodec.instance;
                                        put(cls11, arraySerializer);
                                        return arraySerializer;
                                    }
                                }
                            } catch (java.lang.ClassNotFoundException unused9) {
                                jodaError = true;
                            }
                        }
                        if ("java.nio.HeapByteBuffer".equals(name)) {
                            com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer7 = com.alibaba.fastjson.serializer.ByteBufferCodec.instance;
                            put((java.lang.reflect.Type) cls, objectSerializer7);
                            return objectSerializer7;
                        }
                        if ("org.javamoney.moneta.Money".equals(name)) {
                            com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer8 = com.alibaba.fastjson.support.moneta.MonetaCodec.instance;
                            put((java.lang.reflect.Type) cls, objectSerializer8);
                            return objectSerializer8;
                        }
                        if ("com.google.protobuf.Descriptors$FieldDescriptor".equals(name)) {
                            com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer9 = com.alibaba.fastjson.serializer.ToStringSerializer.instance;
                            put((java.lang.reflect.Type) cls, objectSerializer9);
                            return objectSerializer9;
                        }
                        java.lang.Class<?>[] interfaces = cls.getInterfaces();
                        if (interfaces.length == 1 && interfaces[0].isAnnotation()) {
                            put((java.lang.reflect.Type) cls, com.alibaba.fastjson.serializer.AnnotationSerializer.instance);
                            return com.alibaba.fastjson.serializer.AnnotationSerializer.instance;
                        }
                        if (com.alibaba.fastjson.util.TypeUtils.isProxy(cls)) {
                            com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = getObjectWriter(cls.getSuperclass());
                            put((java.lang.reflect.Type) cls, objectWriter);
                            return objectWriter;
                        }
                        if (java.lang.reflect.Proxy.isProxyClass(cls)) {
                            if (interfaces.length != 2) {
                                int length = interfaces.length;
                                java.lang.Class<?> cls12 = null;
                                while (true) {
                                    if (i5 >= length) {
                                        cls2 = cls12;
                                        break;
                                    }
                                    java.lang.Class<?> cls13 = interfaces[i5];
                                    if (!cls13.getName().startsWith("org.springframework.aop.")) {
                                        if (cls12 != null) {
                                            break;
                                        }
                                        cls12 = cls13;
                                    }
                                    i5++;
                                }
                            } else {
                                cls2 = interfaces[1];
                            }
                            if (cls2 != null) {
                                com.alibaba.fastjson.serializer.ObjectSerializer objectWriter2 = getObjectWriter(cls2);
                                put((java.lang.reflect.Type) cls, objectWriter2);
                                return objectWriter2;
                            }
                        }
                        if (z4) {
                            objectSerializerCreateJavaBeanSerializer = createJavaBeanSerializer(cls);
                            put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                        }
                    }
                    if (arraySerializer == null) {
                        return get(cls);
                    }
                    return arraySerializer;
                }
                com.alibaba.fastjson.annotation.JSONType jSONType2 = (com.alibaba.fastjson.annotation.JSONType) com.alibaba.fastjson.util.TypeUtils.getAnnotation(superclass, com.alibaba.fastjson.annotation.JSONType.class);
                if (jSONType2 == null || !jSONType2.serializeEnumAsJavaBean()) {
                    objectSerializerCreateJavaBeanSerializer = getEnumSerializer();
                    put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                } else {
                    objectSerializerCreateJavaBeanSerializer = createJavaBeanSerializer(cls);
                    put((java.lang.reflect.Type) cls, objectSerializerCreateJavaBeanSerializer);
                }
            }
        }
        arraySerializer = objectSerializerCreateJavaBeanSerializer;
        if (arraySerializer == null) {
            return get(cls);
        }
        return arraySerializer;
    }

    public boolean put(java.lang.reflect.Type type, com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer) {
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            return this.serializers.put(type, objectSerializer);
        }
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.serializer.ObjectSerializer> identityHashMap = this.mixInSerializers.get(type);
        if (identityHashMap == null) {
            identityHashMap = new com.alibaba.fastjson.util.IdentityHashMap<>(4);
            this.mixInSerializers.put(type, identityHashMap);
        }
        return identityHashMap.put(mixInAnnotations, objectSerializer);
    }

    public SerializeConfig(int i5) {
        this(i5, false);
    }

    public SerializeConfig(int i5, boolean z4) {
        this.asm = !com.alibaba.fastjson.util.ASMUtils.IS_ANDROID;
        this.typeKey = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY;
        this.denyClasses = new long[]{4165360493669296979L, 4446674157046724083L};
        this.modules = new java.util.ArrayList();
        this.fieldBased = z4;
        this.serializers = new com.alibaba.fastjson.util.IdentityHashMap<>(i5);
        this.mixInSerializers = new com.alibaba.fastjson.util.IdentityHashMap<>(16);
        try {
            if (this.asm) {
                this.asmFactory = new com.alibaba.fastjson.serializer.ASMSerializerFactory();
            }
        } catch (java.lang.Throwable unused) {
            this.asm = false;
        }
        initSerializers();
    }

    public com.alibaba.fastjson.serializer.ObjectSerializer createJavaBeanSerializer(com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfo) {
        java.lang.reflect.Method method;
        com.alibaba.fastjson.annotation.JSONType jSONType = serializeBeanInfo.jsonType;
        boolean z4 = false;
        boolean z5 = this.asm && !this.fieldBased;
        if (jSONType != null) {
            java.lang.Class<?> clsSerializer = jSONType.serializer();
            if (clsSerializer != java.lang.Void.class) {
                try {
                    java.lang.Object objNewInstance = clsSerializer.newInstance();
                    if (objNewInstance instanceof com.alibaba.fastjson.serializer.ObjectSerializer) {
                        return (com.alibaba.fastjson.serializer.ObjectSerializer) objNewInstance;
                    }
                } catch (java.lang.Throwable unused) {
                }
            }
            if (!jSONType.asm()) {
                z5 = false;
            }
            if (z5) {
                for (com.alibaba.fastjson.serializer.SerializerFeature serializerFeature : jSONType.serialzeFeatures()) {
                    if (com.alibaba.fastjson.serializer.SerializerFeature.WriteNonStringValueAsString == serializerFeature || com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString == serializerFeature || com.alibaba.fastjson.serializer.SerializerFeature.NotWriteDefaultValue == serializerFeature || com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible == serializerFeature) {
                        z5 = false;
                        break;
                    }
                }
            }
            if (z5 && jSONType.serialzeFilters().length != 0) {
                z5 = false;
            }
        }
        java.lang.Class<?> cls = serializeBeanInfo.beanType;
        if (!java.lang.reflect.Modifier.isPublic(cls.getModifiers())) {
            return new com.alibaba.fastjson.serializer.JavaBeanSerializer(serializeBeanInfo);
        }
        if ((z5 && this.asmFactory.classLoader.isExternalClass(cls)) || cls == java.io.Serializable.class || cls == java.lang.Object.class) {
            z5 = false;
        }
        if (z5 && !com.alibaba.fastjson.util.ASMUtils.checkName(cls.getSimpleName())) {
            z5 = false;
        }
        if (z5 && serializeBeanInfo.beanType.isInterface()) {
            z5 = false;
        }
        if (!z5) {
            z4 = z5;
            break;
        }
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr = serializeBeanInfo.fields;
        int length = fieldInfoArr.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                z4 = z5;
                break;
            }
            com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldInfoArr[i5];
            java.lang.reflect.Field field = fieldInfo.field;
            if ((field != null && !field.getType().equals(fieldInfo.fieldClass)) || (((method = fieldInfo.method) != null && !method.getReturnType().equals(fieldInfo.fieldClass)) || (fieldInfo.fieldClass.isEnum() && get(fieldInfo.fieldClass) != com.alibaba.fastjson.serializer.EnumSerializer.instance))) {
                break;
            }
            com.alibaba.fastjson.annotation.JSONField annotation = fieldInfo.getAnnotation();
            if (annotation != null) {
                java.lang.String str = annotation.format();
                if ((str.length() != 0 && (fieldInfo.fieldClass != java.lang.String.class || !"trim".equals(str))) || !com.alibaba.fastjson.util.ASMUtils.checkName(annotation.name()) || annotation.jsonDirect() || annotation.serializeUsing() != java.lang.Void.class || annotation.unwrapped()) {
                    break;
                }
                for (com.alibaba.fastjson.serializer.SerializerFeature serializerFeature2 : annotation.serialzeFeatures()) {
                    if (com.alibaba.fastjson.serializer.SerializerFeature.WriteNonStringValueAsString == serializerFeature2 || com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString == serializerFeature2 || com.alibaba.fastjson.serializer.SerializerFeature.NotWriteDefaultValue == serializerFeature2 || com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible == serializerFeature2 || com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName == serializerFeature2) {
                        z5 = false;
                        break;
                    }
                }
                if (com.alibaba.fastjson.util.TypeUtils.isAnnotationPresentOneToMany(method) || com.alibaba.fastjson.util.TypeUtils.isAnnotationPresentManyToMany(method) || (annotation.defaultValue() != null && !"".equals(annotation.defaultValue()))) {
                    break;
                }
            }
            i5++;
        }
        if (z4) {
            try {
                com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializerCreateASMSerializer = createASMSerializer(serializeBeanInfo);
                if (javaBeanSerializerCreateASMSerializer != null) {
                    return javaBeanSerializerCreateASMSerializer;
                }
            } catch (java.lang.ClassCastException | java.lang.ClassFormatError | java.lang.ClassNotFoundException unused2) {
            } catch (java.lang.OutOfMemoryError e5) {
                if (e5.getMessage().indexOf("Metaspace") != -1) {
                    throw e5;
                }
            } catch (java.lang.Throwable th) {
                throw new com.alibaba.fastjson.JSONException("create asm serializer error, verson 1.2.83, class " + cls, th);
            }
        }
        return new com.alibaba.fastjson.serializer.JavaBeanSerializer(serializeBeanInfo);
    }
}
