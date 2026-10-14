package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ObjectArrayCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.serializer.ObjectArrayCodec instance = new com.alibaba.fastjson.serializer.ObjectArrayCodec();

    /* JADX WARN: Code duplicated, block: B:27:0x0054  */
    private <T> T toObjectArray(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Class<?> cls, com.alibaba.fastjson.JSONArray jSONArray) {
        java.lang.Object objCast;
        if (jSONArray == null) {
            return null;
        }
        int size = jSONArray.size();
        T t5 = (T) java.lang.reflect.Array.newInstance(cls, size);
        for (int i5 = 0; i5 < size; i5++) {
            java.lang.Object objectArray = jSONArray.get(i5);
            if (objectArray == jSONArray) {
                java.lang.reflect.Array.set(t5, i5, t5);
            } else if (cls.isArray()) {
                if (!cls.isInstance(objectArray)) {
                    objectArray = toObjectArray(defaultJSONParser, cls, (com.alibaba.fastjson.JSONArray) objectArray);
                }
                java.lang.reflect.Array.set(t5, i5, objectArray);
            } else {
                if (objectArray instanceof com.alibaba.fastjson.JSONArray) {
                    com.alibaba.fastjson.JSONArray jSONArray2 = (com.alibaba.fastjson.JSONArray) objectArray;
                    int size2 = jSONArray2.size();
                    boolean z4 = false;
                    for (int i6 = 0; i6 < size2; i6++) {
                        if (jSONArray2.get(i6) == jSONArray) {
                            jSONArray2.set(i5, t5);
                            z4 = true;
                        }
                    }
                    if (z4) {
                        objCast = jSONArray2.toArray();
                    } else {
                        objCast = null;
                    }
                } else {
                    objCast = null;
                }
                if (objCast == null) {
                    objCast = com.alibaba.fastjson.util.TypeUtils.cast(objectArray, (java.lang.Class<java.lang.Object>) cls, defaultJSONParser.getConfig());
                }
                java.lang.reflect.Array.set(t5, i5, objCast);
            }
        }
        jSONArray.setRelatedArray(t5);
        jSONArray.setComponentType(cls);
        return t5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [T, byte[]] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.lang.reflect.Type componentType;
        java.lang.Class cls;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i5 = jSONLexer.token();
        java.lang.reflect.Type type2 = null;
        if (i5 == 8) {
            jSONLexer.nextToken(16);
            return null;
        }
        if (i5 == 4 || i5 == 26) {
            ?? r8 = (T) jSONLexer.bytesValue();
            jSONLexer.nextToken(16);
            if (r8.length != 0 || type == byte[].class) {
                return r8;
            }
            return null;
        }
        if (type instanceof java.lang.reflect.GenericArrayType) {
            componentType = ((java.lang.reflect.GenericArrayType) type).getGenericComponentType();
            if (componentType instanceof java.lang.reflect.TypeVariable) {
                java.lang.reflect.TypeVariable typeVariable = (java.lang.reflect.TypeVariable) componentType;
                java.lang.reflect.Type type3 = defaultJSONParser.getContext().type;
                if (type3 instanceof java.lang.reflect.ParameterizedType) {
                    java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type3;
                    java.lang.reflect.Type rawType = parameterizedType.getRawType();
                    if (rawType instanceof java.lang.Class) {
                        java.lang.reflect.TypeVariable<java.lang.Class<T>>[] typeParameters = ((java.lang.Class) rawType).getTypeParameters();
                        for (int i6 = 0; i6 < typeParameters.length; i6++) {
                            if (typeParameters[i6].getName().equals(typeVariable.getName())) {
                                type2 = parameterizedType.getActualTypeArguments()[i6];
                            }
                        }
                    }
                    cls = type2 instanceof java.lang.Class ? (java.lang.Class) type2 : java.lang.Object.class;
                } else {
                    cls = com.alibaba.fastjson.util.TypeUtils.getClass(typeVariable.getBounds()[0]);
                }
            } else {
                cls = com.alibaba.fastjson.util.TypeUtils.getClass(componentType);
            }
        } else {
            componentType = ((java.lang.Class) type).getComponentType();
            cls = componentType;
        }
        com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray();
        defaultJSONParser.parseArray(componentType, jSONArray, obj);
        return (T) toObjectArray(defaultJSONParser, cls, jSONArray);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 14;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        java.lang.Object[] objArr = (java.lang.Object[]) obj;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int length = objArr.length;
        int i6 = length - 1;
        if (i6 == -1) {
            serializeWriter.append((java.lang.CharSequence) "[]");
            return;
        }
        com.alibaba.fastjson.serializer.SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            serializeWriter.append('[');
            if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat)) {
                jSONSerializer.incrementIndent();
                jSONSerializer.println();
                for (int i7 = 0; i7 < length; i7++) {
                    if (i7 != 0) {
                        serializeWriter.write(44);
                        jSONSerializer.println();
                    }
                    jSONSerializer.writeWithFieldName(objArr[i7], java.lang.Integer.valueOf(i7));
                }
                jSONSerializer.decrementIdent();
                jSONSerializer.println();
                serializeWriter.write(93);
                return;
            }
            java.lang.Class<?> cls = null;
            com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = null;
            for (int i8 = 0; i8 < i6; i8++) {
                java.lang.Object obj3 = objArr[i8];
                if (obj3 == null) {
                    serializeWriter.append((java.lang.CharSequence) "null,");
                } else {
                    if (jSONSerializer.containsReference(obj3)) {
                        jSONSerializer.writeReference(obj3);
                    } else {
                        java.lang.Class<?> cls2 = obj3.getClass();
                        if (cls2 == cls) {
                            objectWriter.write(jSONSerializer, obj3, java.lang.Integer.valueOf(i8), null, 0);
                        } else {
                            objectWriter = jSONSerializer.getObjectWriter(cls2);
                            objectWriter.write(jSONSerializer, obj3, java.lang.Integer.valueOf(i8), null, 0);
                            cls = cls2;
                        }
                    }
                    serializeWriter.append(',');
                }
            }
            java.lang.Object obj4 = objArr[i6];
            if (obj4 == null) {
                serializeWriter.append((java.lang.CharSequence) "null]");
            } else {
                if (jSONSerializer.containsReference(obj4)) {
                    jSONSerializer.writeReference(obj4);
                } else {
                    jSONSerializer.writeWithFieldName(obj4, java.lang.Integer.valueOf(i6));
                }
                serializeWriter.append(']');
            }
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
