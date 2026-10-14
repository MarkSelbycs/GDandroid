package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ASMUtils {
    public static final boolean IS_ANDROID;
    public static final java.lang.String JAVA_VM_NAME;

    static {
        java.lang.String property = java.lang.System.getProperty("java.vm.name");
        JAVA_VM_NAME = property;
        IS_ANDROID = isAndroid(property);
    }

    public static boolean checkName(java.lang.String str) {
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (cCharAt < 1 || cCharAt > 127 || cCharAt == '.') {
                return false;
            }
        }
        return true;
    }

    public static java.lang.String desc(java.lang.reflect.Method method) {
        java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
        java.lang.StringBuilder sb = new java.lang.StringBuilder((parameterTypes.length + 1) << 4);
        sb.append('(');
        for (java.lang.Class<?> cls : parameterTypes) {
            sb.append(desc(cls));
        }
        sb.append(')');
        sb.append(desc(method.getReturnType()));
        return sb.toString();
    }

    public static java.lang.reflect.Type getMethodType(java.lang.Class<?> cls, java.lang.String str) {
        try {
            return cls.getMethod(str, new java.lang.Class[0]).getGenericReturnType();
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static java.lang.String getPrimitiveLetter(java.lang.Class<?> cls) {
        if (java.lang.Integer.TYPE == cls) {
            return "I";
        }
        if (java.lang.Void.TYPE == cls) {
            return "V";
        }
        if (java.lang.Boolean.TYPE == cls) {
            return "Z";
        }
        if (java.lang.Character.TYPE == cls) {
            return "C";
        }
        if (java.lang.Byte.TYPE == cls) {
            return "B";
        }
        if (java.lang.Short.TYPE == cls) {
            return "S";
        }
        if (java.lang.Float.TYPE == cls) {
            return "F";
        }
        if (java.lang.Long.TYPE == cls) {
            return "J";
        }
        if (java.lang.Double.TYPE == cls) {
            return "D";
        }
        throw new java.lang.IllegalStateException("Type: " + cls.getCanonicalName() + " is not a primitive type");
    }

    public static boolean isAndroid(java.lang.String str) {
        if (str == null) {
            return false;
        }
        java.lang.String lowerCase = str.toLowerCase();
        return lowerCase.contains("dalvik") || lowerCase.contains("lemur");
    }

    public static java.lang.String[] lookupParameterNames(java.lang.reflect.AccessibleObject accessibleObject) {
        java.lang.Class<?>[] parameterTypes;
        java.lang.Class<?> declaringClass;
        java.lang.annotation.Annotation[][] parameterAnnotations;
        java.lang.String name;
        java.lang.String strName;
        if (IS_ANDROID) {
            return new java.lang.String[0];
        }
        if (accessibleObject instanceof java.lang.reflect.Method) {
            java.lang.reflect.Method method = (java.lang.reflect.Method) accessibleObject;
            parameterTypes = method.getParameterTypes();
            name = method.getName();
            declaringClass = method.getDeclaringClass();
            parameterAnnotations = com.alibaba.fastjson.util.TypeUtils.getParameterAnnotations(method);
        } else {
            java.lang.reflect.Constructor constructor = (java.lang.reflect.Constructor) accessibleObject;
            parameterTypes = constructor.getParameterTypes();
            declaringClass = constructor.getDeclaringClass();
            parameterAnnotations = com.alibaba.fastjson.util.TypeUtils.getParameterAnnotations(constructor);
            name = "<init>";
        }
        if (parameterTypes.length == 0) {
            return new java.lang.String[0];
        }
        java.lang.ClassLoader classLoader = declaringClass.getClassLoader();
        if (classLoader == null) {
            classLoader = java.lang.ClassLoader.getSystemClassLoader();
        }
        java.io.InputStream resourceAsStream = classLoader.getResourceAsStream(declaringClass.getName().replace('.', '/') + ".class");
        try {
            if (resourceAsStream == null) {
                return new java.lang.String[0];
            }
            com.alibaba.fastjson.asm.ClassReader classReader = new com.alibaba.fastjson.asm.ClassReader(resourceAsStream, false);
            com.alibaba.fastjson.asm.TypeCollector typeCollector = new com.alibaba.fastjson.asm.TypeCollector(name, parameterTypes);
            classReader.accept(typeCollector);
            java.lang.String[] parameterNamesForMethod = typeCollector.getParameterNamesForMethod();
            for (int i5 = 0; i5 < parameterNamesForMethod.length; i5++) {
                java.lang.annotation.Annotation[] annotationArr = parameterAnnotations[i5];
                if (annotationArr != null) {
                    for (int i6 = 0; i6 < annotationArr.length; i6++) {
                        if ((annotationArr[i6] instanceof com.alibaba.fastjson.annotation.JSONField) && (strName = ((com.alibaba.fastjson.annotation.JSONField) annotationArr[i6]).name()) != null && strName.length() > 0) {
                            parameterNamesForMethod[i5] = strName;
                        }
                    }
                }
            }
            return parameterNamesForMethod;
        } catch (java.io.IOException unused) {
            return new java.lang.String[0];
        } finally {
            com.alibaba.fastjson.util.IOUtils.close(resourceAsStream);
        }
    }

    public static java.lang.String type(java.lang.Class<?> cls) {
        if (!cls.isArray()) {
            return !cls.isPrimitive() ? cls.getName().replace('.', '/') : getPrimitiveLetter(cls);
        }
        return "[" + desc(cls.getComponentType());
    }

    public static java.lang.String desc(java.lang.Class<?> cls) {
        if (cls.isPrimitive()) {
            return getPrimitiveLetter(cls);
        }
        if (cls.isArray()) {
            return "[" + desc(cls.getComponentType());
        }
        return "L" + type(cls) + ";";
    }
}
