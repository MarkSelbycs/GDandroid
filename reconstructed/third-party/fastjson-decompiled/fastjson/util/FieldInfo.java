package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FieldInfo implements java.lang.Comparable<com.alibaba.fastjson.util.FieldInfo> {
    public final java.lang.String[] alternateNames;
    public final java.lang.Class<?> declaringClass;
    public final java.lang.reflect.Field field;
    public final boolean fieldAccess;
    private final com.alibaba.fastjson.annotation.JSONField fieldAnnotation;
    public final java.lang.Class<?> fieldClass;
    public final boolean fieldTransient;
    public final java.lang.reflect.Type fieldType;
    public final java.lang.String format;
    public final boolean getOnly;
    public final boolean isEnum;
    public final boolean jsonDirect;
    public final java.lang.String label;
    public final java.lang.reflect.Method method;
    private final com.alibaba.fastjson.annotation.JSONField methodAnnotation;
    public final java.lang.String name;
    public final long nameHashCode;
    public final char[] name_chars;
    private int ordinal;
    public final int parserFeatures;
    public final int serialzeFeatures;
    public final boolean unwrapped;

    public FieldInfo(java.lang.String str, java.lang.Class<?> cls, java.lang.Class<?> cls2, java.lang.reflect.Type type, java.lang.reflect.Field field, int i5, int i6, int i7) {
        this.ordinal = 0;
        i5 = i5 < 0 ? 0 : i5;
        this.name = str;
        this.declaringClass = cls;
        this.fieldClass = cls2;
        this.fieldType = type;
        this.method = null;
        this.field = field;
        this.ordinal = i5;
        this.serialzeFeatures = i6;
        this.parserFeatures = i7;
        this.isEnum = cls2.isEnum();
        if (field != null) {
            int modifiers = field.getModifiers();
            int i8 = modifiers & 1;
            this.fieldAccess = true;
            this.fieldTransient = java.lang.reflect.Modifier.isTransient(modifiers);
        } else {
            this.fieldTransient = false;
            this.fieldAccess = false;
        }
        this.name_chars = genFieldNameChars();
        if (field != null) {
            com.alibaba.fastjson.util.TypeUtils.setAccessible(field);
        }
        this.label = "";
        com.alibaba.fastjson.annotation.JSONField jSONField = field == null ? null : (com.alibaba.fastjson.annotation.JSONField) com.alibaba.fastjson.util.TypeUtils.getAnnotation(field, com.alibaba.fastjson.annotation.JSONField.class);
        this.fieldAnnotation = jSONField;
        this.methodAnnotation = null;
        this.getOnly = false;
        this.jsonDirect = false;
        this.unwrapped = false;
        this.format = null;
        this.alternateNames = new java.lang.String[0];
        this.nameHashCode = nameHashCode64(str, jSONField);
    }

    private static boolean getArgument(java.lang.reflect.Type[] typeArr, java.util.Map<java.lang.reflect.TypeVariable, java.lang.reflect.Type> map) {
        if (map == null || map.size() == 0) {
            return false;
        }
        boolean z4 = false;
        for (int i5 = 0; i5 < typeArr.length; i5++) {
            java.lang.reflect.Type type = typeArr[i5];
            if (type instanceof java.lang.reflect.ParameterizedType) {
                java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type;
                java.lang.reflect.Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (getArgument(actualTypeArguments, map)) {
                    typeArr[i5] = com.alibaba.fastjson.TypeReference.intern(new com.alibaba.fastjson.util.ParameterizedTypeImpl(actualTypeArguments, parameterizedType.getOwnerType(), parameterizedType.getRawType()));
                    z4 = true;
                }
            } else if ((type instanceof java.lang.reflect.TypeVariable) && map.containsKey(type)) {
                typeArr[i5] = map.get(type);
                z4 = true;
            }
        }
        return z4;
    }

    public static java.lang.reflect.Type getFieldType(java.lang.Class<?> cls, java.lang.reflect.Type type, java.lang.reflect.Type type2) {
        return getFieldType(cls, type, type2, null);
    }

    private static java.lang.reflect.Type getInheritGenericType(java.lang.Class<?> cls, java.lang.reflect.Type type, java.lang.reflect.TypeVariable<?> typeVariable) {
        java.lang.reflect.Type[] actualTypeArguments;
        java.lang.Class<?> cls2 = typeVariable.getGenericDeclaration() instanceof java.lang.Class ? (java.lang.Class) typeVariable.getGenericDeclaration() : null;
        if (cls2 == cls) {
            actualTypeArguments = type instanceof java.lang.reflect.ParameterizedType ? ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments() : null;
        } else {
            java.lang.reflect.Type[] typeArr = null;
            while (cls != null && cls != java.lang.Object.class && cls != cls2) {
                java.lang.reflect.Type genericSuperclass = cls.getGenericSuperclass();
                if (genericSuperclass instanceof java.lang.reflect.ParameterizedType) {
                    java.lang.reflect.Type[] actualTypeArguments2 = ((java.lang.reflect.ParameterizedType) genericSuperclass).getActualTypeArguments();
                    getArgument(actualTypeArguments2, cls.getTypeParameters(), typeArr);
                    typeArr = actualTypeArguments2;
                }
                cls = cls.getSuperclass();
            }
            actualTypeArguments = typeArr;
        }
        if (actualTypeArguments == null || cls2 == null) {
            return null;
        }
        java.lang.reflect.TypeVariable<java.lang.Class<?>>[] typeParameters = cls2.getTypeParameters();
        for (int i5 = 0; i5 < typeParameters.length; i5++) {
            if (typeVariable.equals(typeParameters[i5])) {
                return actualTypeArguments[i5];
            }
        }
        return null;
    }

    private long nameHashCode64(java.lang.String str, com.alibaba.fastjson.annotation.JSONField jSONField) {
        return (jSONField == null || jSONField.name().length() == 0) ? com.alibaba.fastjson.util.TypeUtils.fnv1a_64_extract(str) : com.alibaba.fastjson.util.TypeUtils.fnv1a_64_lower(str);
    }

    public char[] genFieldNameChars() {
        int length = this.name.length();
        char[] cArr = new char[length + 3];
        java.lang.String str = this.name;
        str.getChars(0, str.length(), cArr, 1);
        cArr[0] = '\"';
        cArr[length + 1] = '\"';
        cArr[length + 2] = ':';
        return cArr;
    }

    public java.lang.Object get(java.lang.Object obj) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        java.lang.reflect.Method method = this.method;
        return method != null ? method.invoke(obj, new java.lang.Object[0]) : this.field.get(obj);
    }

    public <T extends java.lang.annotation.Annotation> T getAnnation(java.lang.Class<T> cls) {
        java.lang.reflect.Field field;
        if (cls == com.alibaba.fastjson.annotation.JSONField.class) {
            return getAnnotation();
        }
        T t5 = null;
        java.lang.reflect.Method method = this.method;
        if (method != null) {
            t5 = (T) com.alibaba.fastjson.util.TypeUtils.getAnnotation(method, cls);
        }
        return (t5 != null || (field = this.field) == null) ? t5 : (T) com.alibaba.fastjson.util.TypeUtils.getAnnotation(field, cls);
    }

    public com.alibaba.fastjson.annotation.JSONField getAnnotation() {
        com.alibaba.fastjson.annotation.JSONField jSONField = this.fieldAnnotation;
        return jSONField != null ? jSONField : this.methodAnnotation;
    }

    public java.lang.Class<?> getDeclaredClass() {
        java.lang.reflect.Method method = this.method;
        if (method != null) {
            return method.getDeclaringClass();
        }
        java.lang.reflect.Field field = this.field;
        if (field != null) {
            return field.getDeclaringClass();
        }
        return null;
    }

    public java.lang.String getFormat() {
        return this.format;
    }

    public java.lang.reflect.Member getMember() {
        java.lang.reflect.Method method = this.method;
        return method != null ? method : this.field;
    }

    public void set(java.lang.Object obj, java.lang.Object obj2) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        java.lang.reflect.Method method = this.method;
        if (method != null) {
            method.invoke(obj, obj2);
        } else {
            this.field.set(obj, obj2);
        }
    }

    public void setAccessible() throws java.lang.SecurityException {
        java.lang.reflect.Method method = this.method;
        if (method != null) {
            com.alibaba.fastjson.util.TypeUtils.setAccessible(method);
        } else {
            com.alibaba.fastjson.util.TypeUtils.setAccessible(this.field);
        }
    }

    public java.lang.String toString() {
        return this.name;
    }

    public static java.lang.reflect.Type getFieldType(java.lang.Class<?> cls, java.lang.reflect.Type type, java.lang.reflect.Type type2, java.util.Map<java.lang.reflect.TypeVariable, java.lang.reflect.Type> map) {
        java.lang.reflect.TypeVariable<java.lang.Class<?>>[] typeParameters;
        java.lang.reflect.ParameterizedType parameterizedType;
        if (cls != null && type != null) {
            if (type2 instanceof java.lang.reflect.GenericArrayType) {
                java.lang.reflect.Type genericComponentType = ((java.lang.reflect.GenericArrayType) type2).getGenericComponentType();
                java.lang.reflect.Type fieldType = getFieldType(cls, type, genericComponentType, map);
                return genericComponentType != fieldType ? java.lang.reflect.Array.newInstance(com.alibaba.fastjson.util.TypeUtils.getClass(fieldType), 0).getClass() : type2;
            }
            if (!com.alibaba.fastjson.util.TypeUtils.isGenericParamType(type)) {
                return type2;
            }
            if (type2 instanceof java.lang.reflect.TypeVariable) {
                java.lang.reflect.ParameterizedType parameterizedType2 = (java.lang.reflect.ParameterizedType) com.alibaba.fastjson.util.TypeUtils.getGenericParamType(type);
                java.lang.reflect.TypeVariable typeVariable = (java.lang.reflect.TypeVariable) type2;
                java.lang.reflect.TypeVariable<java.lang.Class<?>>[] typeParameters2 = com.alibaba.fastjson.util.TypeUtils.getClass(parameterizedType2).getTypeParameters();
                for (int i5 = 0; i5 < typeParameters2.length; i5++) {
                    if (typeParameters2[i5].getName().equals(typeVariable.getName())) {
                        return parameterizedType2.getActualTypeArguments()[i5];
                    }
                }
            }
            if (type2 instanceof java.lang.reflect.ParameterizedType) {
                java.lang.reflect.ParameterizedType parameterizedType3 = (java.lang.reflect.ParameterizedType) type2;
                java.lang.reflect.Type[] actualTypeArguments = parameterizedType3.getActualTypeArguments();
                boolean argument = getArgument(actualTypeArguments, map);
                if (!argument) {
                    if (type instanceof java.lang.reflect.ParameterizedType) {
                        parameterizedType = (java.lang.reflect.ParameterizedType) type;
                        typeParameters = cls.getTypeParameters();
                    } else if (cls.getGenericSuperclass() instanceof java.lang.reflect.ParameterizedType) {
                        parameterizedType = (java.lang.reflect.ParameterizedType) cls.getGenericSuperclass();
                        typeParameters = cls.getSuperclass().getTypeParameters();
                    } else {
                        typeParameters = type.getClass().getTypeParameters();
                        parameterizedType = parameterizedType3;
                    }
                    argument = getArgument(actualTypeArguments, typeParameters, parameterizedType.getActualTypeArguments());
                }
                if (argument) {
                    return com.alibaba.fastjson.TypeReference.intern(new com.alibaba.fastjson.util.ParameterizedTypeImpl(actualTypeArguments, parameterizedType3.getOwnerType(), parameterizedType3.getRawType()));
                }
            }
        }
        return type2;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        java.lang.reflect.Method method = fieldInfo.method;
        if (method != null && this.method != null && method.isBridge() && !this.method.isBridge() && fieldInfo.method.getName().equals(this.method.getName())) {
            return 1;
        }
        int i5 = this.ordinal;
        int i6 = fieldInfo.ordinal;
        if (i5 < i6) {
            return -1;
        }
        if (i5 > i6) {
            return 1;
        }
        int iCompareTo = this.name.compareTo(fieldInfo.name);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        java.lang.Class<?> declaredClass = getDeclaredClass();
        java.lang.Class<?> declaredClass2 = fieldInfo.getDeclaredClass();
        if (declaredClass != null && declaredClass2 != null && declaredClass != declaredClass2) {
            if (declaredClass.isAssignableFrom(declaredClass2)) {
                return -1;
            }
            if (declaredClass2.isAssignableFrom(declaredClass)) {
                return 1;
            }
        }
        java.lang.reflect.Field field = this.field;
        boolean z4 = false;
        boolean z5 = field != null && field.getType() == this.fieldClass;
        java.lang.reflect.Field field2 = fieldInfo.field;
        if (field2 != null && field2.getType() == fieldInfo.fieldClass) {
            z4 = true;
        }
        if (z5 && !z4) {
            return 1;
        }
        if (z4 && !z5) {
            return -1;
        }
        if (fieldInfo.fieldClass.isPrimitive() && !this.fieldClass.isPrimitive()) {
            return 1;
        }
        if (this.fieldClass.isPrimitive() && !fieldInfo.fieldClass.isPrimitive()) {
            return -1;
        }
        if (fieldInfo.fieldClass.getName().startsWith("java.") && !this.fieldClass.getName().startsWith("java.")) {
            return 1;
        }
        if (!this.fieldClass.getName().startsWith("java.") || fieldInfo.fieldClass.getName().startsWith("java.")) {
            return this.fieldClass.getName().compareTo(fieldInfo.fieldClass.getName());
        }
        return -1;
    }

    private static boolean getArgument(java.lang.reflect.Type[] typeArr, java.lang.reflect.TypeVariable[] typeVariableArr, java.lang.reflect.Type[] typeArr2) {
        if (typeArr2 == null || typeVariableArr.length == 0) {
            return false;
        }
        boolean z4 = false;
        for (int i5 = 0; i5 < typeArr.length; i5++) {
            java.lang.reflect.Type type = typeArr[i5];
            if (type instanceof java.lang.reflect.ParameterizedType) {
                java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type;
                java.lang.reflect.Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (getArgument(actualTypeArguments, typeVariableArr, typeArr2)) {
                    typeArr[i5] = com.alibaba.fastjson.TypeReference.intern(new com.alibaba.fastjson.util.ParameterizedTypeImpl(actualTypeArguments, parameterizedType.getOwnerType(), parameterizedType.getRawType()));
                    z4 = true;
                }
            } else if (type instanceof java.lang.reflect.TypeVariable) {
                for (int i6 = 0; i6 < typeVariableArr.length; i6++) {
                    if (type.equals(typeVariableArr[i6])) {
                        typeArr[i5] = typeArr2[i6];
                        z4 = true;
                    }
                }
            }
        }
        return z4;
    }

    public FieldInfo(java.lang.String str, java.lang.reflect.Method method, java.lang.reflect.Field field, java.lang.Class<?> cls, java.lang.reflect.Type type, int i5, int i6, int i7, com.alibaba.fastjson.annotation.JSONField jSONField, com.alibaba.fastjson.annotation.JSONField jSONField2, java.lang.String str2) {
        this(str, method, field, cls, type, i5, i6, i7, jSONField, jSONField2, str2, null);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026  */
    /* JADX WARN: Code duplicated, block: B:11:0x0028  */
    /* JADX WARN: Code duplicated, block: B:14:0x0045  */
    /* JADX WARN: Code duplicated, block: B:19:0x0052  */
    /* JADX WARN: Code duplicated, block: B:26:0x0064  */
    /* JADX WARN: Code duplicated, block: B:28:0x0068  */
    /* JADX WARN: Code duplicated, block: B:33:0x007b  */
    /* JADX WARN: Code duplicated, block: B:36:0x008c  */
    /* JADX WARN: Code duplicated, block: B:39:0x009b  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:44:0x00be  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:77:0x013d  */
    /* JADX WARN: Code duplicated, block: B:80:0x0142  */
    public FieldInfo(java.lang.String str, java.lang.reflect.Method method, java.lang.reflect.Field field, java.lang.Class<?> cls, java.lang.reflect.Type type, int i5, int i6, int i7, com.alibaba.fastjson.annotation.JSONField jSONField, com.alibaba.fastjson.annotation.JSONField jSONField2, java.lang.String str2, java.util.Map<java.lang.reflect.TypeVariable, java.lang.reflect.Type> map) {
        java.lang.String name;
        int i8;
        com.alibaba.fastjson.annotation.JSONField annotation;
        java.lang.String str3;
        boolean zJsonDirect;
        java.lang.reflect.Type genericType;
        boolean zIsFinal;
        java.lang.Class<?> returnType;
        java.lang.reflect.Type fieldType;
        java.lang.reflect.Type inheritGenericType;
        java.lang.Class<?>[] parameterTypes;
        int modifiers;
        boolean z4;
        boolean z5;
        java.lang.reflect.Type type2 = type;
        boolean z6 = false;
        this.ordinal = 0;
        if (field != null) {
            name = field.getName();
            if (!name.equals(str)) {
            }
            if (i5 < 0) {
                i8 = 0;
            } else {
                i8 = i5;
            }
            this.name = name;
            this.method = method;
            this.field = field;
            this.ordinal = i8;
            this.serialzeFeatures = i6;
            this.parserFeatures = i7;
            this.fieldAnnotation = jSONField;
            this.methodAnnotation = jSONField2;
            if (field != null) {
                modifiers = field.getModifiers();
                if ((modifiers & 1) == 0 || method == null) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                this.fieldAccess = z4;
                if (!java.lang.reflect.Modifier.isTransient(modifiers) || com.alibaba.fastjson.util.TypeUtils.isTransient(method)) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                this.fieldTransient = z5;
            } else {
                this.fieldAccess = false;
                this.fieldTransient = com.alibaba.fastjson.util.TypeUtils.isTransient(method);
            }
            if (str2 == null && str2.length() > 0) {
                this.label = str2;
            } else {
                this.label = "";
            }
            annotation = getAnnotation();
            this.nameHashCode = nameHashCode64(name, annotation);
            str3 = null;
            if (annotation != null) {
                java.lang.String str4 = annotation.format();
                str3 = str4.trim().length() != 0 ? str4 : null;
                zJsonDirect = annotation.jsonDirect();
                this.unwrapped = annotation.unwrapped();
                this.alternateNames = annotation.alternateNames();
            } else {
                this.unwrapped = false;
                this.alternateNames = new java.lang.String[0];
                zJsonDirect = false;
            }
            this.format = str3;
            this.name_chars = genFieldNameChars();
            if (method != null) {
                com.alibaba.fastjson.util.TypeUtils.setAccessible(method);
            }
            if (field != null) {
                com.alibaba.fastjson.util.TypeUtils.setAccessible(field);
            }
            if (method != null) {
                parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1) {
                    returnType = parameterTypes[0];
                    genericType = method.getGenericParameterTypes()[0];
                } else {
                    if (parameterTypes.length != 2 && parameterTypes[0] == java.lang.String.class && parameterTypes[1] == java.lang.Object.class) {
                        returnType = parameterTypes[0];
                        genericType = returnType;
                    } else {
                        returnType = method.getReturnType();
                        genericType = method.getGenericReturnType();
                        zIsFinal = true;
                    }
                    this.declaringClass = method.getDeclaringClass();
                }
                zIsFinal = false;
                this.declaringClass = method.getDeclaringClass();
            } else {
                java.lang.Class<?> type3 = field.getType();
                genericType = field.getGenericType();
                this.declaringClass = field.getDeclaringClass();
                zIsFinal = java.lang.reflect.Modifier.isFinal(field.getModifiers());
                returnType = type3;
            }
            this.getOnly = zIsFinal;
            if (zJsonDirect && returnType == java.lang.String.class) {
                z6 = true;
            }
            this.jsonDirect = z6;
            if (cls == null && returnType == java.lang.Object.class && (genericType instanceof java.lang.reflect.TypeVariable) && (inheritGenericType = getInheritGenericType(cls, type2, (java.lang.reflect.TypeVariable) genericType)) != null) {
                this.fieldClass = com.alibaba.fastjson.util.TypeUtils.getClass(inheritGenericType);
                this.fieldType = inheritGenericType;
                this.isEnum = returnType.isEnum();
                return;
            }
            if (!(genericType instanceof java.lang.Class)) {
                fieldType = getFieldType(cls, type2 == null ? cls : type2, genericType, map);
                if (fieldType != genericType && ((fieldType instanceof java.lang.reflect.ParameterizedType) || (fieldType instanceof java.lang.Class))) {
                    returnType = com.alibaba.fastjson.util.TypeUtils.getClass(fieldType);
                }
                genericType = fieldType;
            }
            this.fieldType = genericType;
            this.fieldClass = returnType;
            this.isEnum = returnType.isEnum();
        }
        name = str;
        if (i5 < 0) {
            i8 = 0;
        } else {
            i8 = i5;
        }
        this.name = name;
        this.method = method;
        this.field = field;
        this.ordinal = i8;
        this.serialzeFeatures = i6;
        this.parserFeatures = i7;
        this.fieldAnnotation = jSONField;
        this.methodAnnotation = jSONField2;
        if (field != null) {
            modifiers = field.getModifiers();
            if ((modifiers & 1) == 0) {
                z4 = true;
            } else {
                z4 = true;
            }
            this.fieldAccess = z4;
            if (java.lang.reflect.Modifier.isTransient(modifiers)) {
                z5 = true;
            } else {
                z5 = true;
            }
            this.fieldTransient = z5;
        } else {
            this.fieldAccess = false;
            this.fieldTransient = com.alibaba.fastjson.util.TypeUtils.isTransient(method);
        }
        if (str2 == null) {
            this.label = "";
        } else {
            this.label = "";
        }
        annotation = getAnnotation();
        this.nameHashCode = nameHashCode64(name, annotation);
        str3 = null;
        if (annotation != null) {
            java.lang.String str5 = annotation.format();
            if (str5.trim().length() != 0) {
            }
            zJsonDirect = annotation.jsonDirect();
            this.unwrapped = annotation.unwrapped();
            this.alternateNames = annotation.alternateNames();
        } else {
            this.unwrapped = false;
            this.alternateNames = new java.lang.String[0];
            zJsonDirect = false;
        }
        this.format = str3;
        this.name_chars = genFieldNameChars();
        if (method != null) {
            com.alibaba.fastjson.util.TypeUtils.setAccessible(method);
        }
        if (field != null) {
            com.alibaba.fastjson.util.TypeUtils.setAccessible(field);
        }
        if (method != null) {
            parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 1) {
                returnType = parameterTypes[0];
                genericType = method.getGenericParameterTypes()[0];
            } else {
                if (parameterTypes.length != 2) {
                }
                returnType = method.getReturnType();
                genericType = method.getGenericReturnType();
                zIsFinal = true;
                this.declaringClass = method.getDeclaringClass();
            }
            zIsFinal = false;
            this.declaringClass = method.getDeclaringClass();
        } else {
            java.lang.Class<?> type4 = field.getType();
            genericType = field.getGenericType();
            this.declaringClass = field.getDeclaringClass();
            zIsFinal = java.lang.reflect.Modifier.isFinal(field.getModifiers());
            returnType = type4;
        }
        this.getOnly = zIsFinal;
        if (zJsonDirect) {
            z6 = true;
        }
        this.jsonDirect = z6;
        if (cls == null) {
        }
        if (!(genericType instanceof java.lang.Class)) {
            fieldType = getFieldType(cls, type2 == null ? cls : type2, genericType, map);
            if (fieldType != genericType) {
                returnType = com.alibaba.fastjson.util.TypeUtils.getClass(fieldType);
            }
            genericType = fieldType;
        }
        this.fieldType = genericType;
        this.fieldClass = returnType;
        this.isEnum = returnType.isEnum();
    }
}
