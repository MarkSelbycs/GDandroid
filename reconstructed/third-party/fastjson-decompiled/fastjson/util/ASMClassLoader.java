package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ASMClassLoader extends java.lang.ClassLoader {
    private static java.util.Map<java.lang.String, java.lang.Class<?>> classMapping = new java.util.HashMap();
    private static java.security.ProtectionDomain DOMAIN = (java.security.ProtectionDomain) java.security.AccessController.doPrivileged(new java.security.PrivilegedAction<java.lang.Object>() { // from class: com.alibaba.fastjson.util.ASMClassLoader.1
        @Override // java.security.PrivilegedAction
        public java.lang.Object run() {
            return com.alibaba.fastjson.util.ASMClassLoader.class.getProtectionDomain();
        }
    });

    static {
        java.lang.Class<?>[] clsArr = {com.alibaba.fastjson.JSON.class, com.alibaba.fastjson.JSONObject.class, com.alibaba.fastjson.JSONArray.class, com.alibaba.fastjson.JSONPath.class, com.alibaba.fastjson.JSONAware.class, com.alibaba.fastjson.JSONException.class, com.alibaba.fastjson.JSONPathException.class, com.alibaba.fastjson.JSONReader.class, com.alibaba.fastjson.JSONStreamAware.class, com.alibaba.fastjson.JSONWriter.class, com.alibaba.fastjson.TypeReference.class, com.alibaba.fastjson.util.FieldInfo.class, com.alibaba.fastjson.util.TypeUtils.class, com.alibaba.fastjson.util.IOUtils.class, com.alibaba.fastjson.util.IdentityHashMap.class, com.alibaba.fastjson.util.ParameterizedTypeImpl.class, com.alibaba.fastjson.util.JavaBeanInfo.class, com.alibaba.fastjson.serializer.ObjectSerializer.class, com.alibaba.fastjson.serializer.JavaBeanSerializer.class, com.alibaba.fastjson.serializer.SerializeFilterable.class, com.alibaba.fastjson.serializer.SerializeBeanInfo.class, com.alibaba.fastjson.serializer.JSONSerializer.class, com.alibaba.fastjson.serializer.SerializeWriter.class, com.alibaba.fastjson.serializer.SerializeFilter.class, com.alibaba.fastjson.serializer.Labels.class, com.alibaba.fastjson.serializer.LabelFilter.class, com.alibaba.fastjson.serializer.ContextValueFilter.class, com.alibaba.fastjson.serializer.AfterFilter.class, com.alibaba.fastjson.serializer.BeforeFilter.class, com.alibaba.fastjson.serializer.NameFilter.class, com.alibaba.fastjson.serializer.PropertyFilter.class, com.alibaba.fastjson.serializer.PropertyPreFilter.class, com.alibaba.fastjson.serializer.ValueFilter.class, com.alibaba.fastjson.serializer.SerializerFeature.class, com.alibaba.fastjson.serializer.ContextObjectSerializer.class, com.alibaba.fastjson.serializer.SerialContext.class, com.alibaba.fastjson.serializer.SerializeConfig.class, com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class, com.alibaba.fastjson.parser.ParserConfig.class, com.alibaba.fastjson.parser.DefaultJSONParser.class, com.alibaba.fastjson.parser.JSONLexer.class, com.alibaba.fastjson.parser.JSONLexerBase.class, com.alibaba.fastjson.parser.ParseContext.class, com.alibaba.fastjson.parser.JSONToken.class, com.alibaba.fastjson.parser.SymbolTable.class, com.alibaba.fastjson.parser.Feature.class, com.alibaba.fastjson.parser.JSONScanner.class, com.alibaba.fastjson.parser.JSONReaderScanner.class, com.alibaba.fastjson.parser.deserializer.AutowiredObjectDeserializer.class, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class, com.alibaba.fastjson.parser.deserializer.ExtraProcessor.class, com.alibaba.fastjson.parser.deserializer.ExtraProcessable.class, com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider.class, com.alibaba.fastjson.serializer.BeanContext.class, com.alibaba.fastjson.parser.deserializer.FieldDeserializer.class, com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer.class};
        for (int i5 = 0; i5 < 56; i5++) {
            java.lang.Class<?> cls = clsArr[i5];
            classMapping.put(cls.getName(), cls);
        }
    }

    public ASMClassLoader() {
        super(getParentClassLoader());
    }

    public static java.lang.ClassLoader getParentClassLoader() {
        java.lang.ClassLoader contextClassLoader = java.lang.Thread.currentThread().getContextClassLoader();
        if (contextClassLoader != null) {
            try {
                contextClassLoader.loadClass(com.alibaba.fastjson.JSON.class.getName());
                return contextClassLoader;
            } catch (java.lang.ClassNotFoundException unused) {
            }
        }
        return com.alibaba.fastjson.JSON.class.getClassLoader();
    }

    public java.lang.Class<?> defineClassPublic(java.lang.String str, byte[] bArr, int i5, int i6) throws java.lang.ClassFormatError {
        return defineClass(str, bArr, i5, i6, DOMAIN);
    }

    public boolean isExternalClass(java.lang.Class<?> cls) {
        java.lang.ClassLoader classLoader = cls.getClassLoader();
        if (classLoader == null) {
            return false;
        }
        for (java.lang.ClassLoader parent = this; parent != null; parent = parent.getParent()) {
            if (parent == classLoader) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.ClassLoader
    public java.lang.Class<?> loadClass(java.lang.String str, boolean z4) throws java.lang.ClassNotFoundException {
        java.lang.Class<?> cls = classMapping.get(str);
        if (cls != null) {
            return cls;
        }
        try {
            return super.loadClass(str, z4);
        } catch (java.lang.ClassNotFoundException e5) {
            throw e5;
        }
    }

    public ASMClassLoader(java.lang.ClassLoader classLoader) {
        super(classLoader);
    }
}
