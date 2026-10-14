package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class TypeCollector {
    private static java.lang.String JSONType = com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.annotation.JSONType.class);
    private static final java.util.Map<java.lang.String, java.lang.String> primitives = new java.util.HashMap<java.lang.String, java.lang.String>() { // from class: com.alibaba.fastjson.asm.TypeCollector.1
        {
            put("int", "I");
            put("boolean", "Z");
            put("byte", "B");
            put("char", "C");
            put("short", "S");
            put("float", "F");
            put("long", "J");
            put("double", "D");
        }
    };
    public com.alibaba.fastjson.asm.MethodCollector collector = null;
    public boolean jsonType;
    private final java.lang.String methodName;
    private final java.lang.Class<?>[] parameterTypes;

    public TypeCollector(java.lang.String str, java.lang.Class<?>[] clsArr) {
        this.methodName = str;
        this.parameterTypes = clsArr;
    }

    private boolean correctTypeName(com.alibaba.fastjson.asm.Type type, java.lang.String str) {
        java.lang.String className = type.getClassName();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        while (className.endsWith("[]")) {
            sb.append('[');
            className = className.substring(0, className.length() - 2);
        }
        if (sb.length() != 0) {
            java.util.Map<java.lang.String, java.lang.String> map = primitives;
            if (map.containsKey(className)) {
                sb.append(map.get(className));
                className = sb.toString();
            } else {
                sb.append('L');
                sb.append(className);
                sb.append(';');
                className = sb.toString();
            }
        }
        return className.equals(str);
    }

    public java.lang.String[] getParameterNamesForMethod() {
        com.alibaba.fastjson.asm.MethodCollector methodCollector = this.collector;
        return (methodCollector == null || !methodCollector.debugInfoPresent) ? new java.lang.String[0] : methodCollector.getResult().split(",");
    }

    public boolean hasJsonType() {
        return this.jsonType;
    }

    public boolean matched() {
        return this.collector != null;
    }

    public void visitAnnotation(java.lang.String str) {
        if (JSONType.equals(str)) {
            this.jsonType = true;
        }
    }

    public com.alibaba.fastjson.asm.MethodCollector visitMethod(int i5, java.lang.String str, java.lang.String str2) {
        if (this.collector != null || !str.equals(this.methodName)) {
            return null;
        }
        com.alibaba.fastjson.asm.Type[] argumentTypes = com.alibaba.fastjson.asm.Type.getArgumentTypes(str2);
        int i6 = 0;
        for (com.alibaba.fastjson.asm.Type type : argumentTypes) {
            java.lang.String className = type.getClassName();
            if (className.equals("long") || className.equals("double")) {
                i6++;
            }
        }
        if (argumentTypes.length != this.parameterTypes.length) {
            return null;
        }
        for (int i7 = 0; i7 < argumentTypes.length; i7++) {
            if (!correctTypeName(argumentTypes[i7], this.parameterTypes[i7].getName())) {
                return null;
            }
        }
        com.alibaba.fastjson.asm.MethodCollector methodCollector = new com.alibaba.fastjson.asm.MethodCollector(!java.lang.reflect.Modifier.isStatic(i5) ? 1 : 0, argumentTypes.length + i6);
        this.collector = methodCollector;
        return methodCollector;
    }
}
