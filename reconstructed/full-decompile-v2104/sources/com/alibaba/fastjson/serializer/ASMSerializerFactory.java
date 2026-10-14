package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ASMSerializerFactory implements com.alibaba.fastjson.asm.Opcodes {
    public static final java.lang.String JSONSerializer = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.serializer.JSONSerializer.class);
    public static final java.lang.String JavaBeanSerializer;
    public static final java.lang.String JavaBeanSerializer_desc;
    public static final java.lang.String ObjectSerializer;
    public static final java.lang.String ObjectSerializer_desc;
    public static final java.lang.String SerialContext_desc;
    public static final java.lang.String SerializeFilterable_desc;
    public static final java.lang.String SerializeWriter;
    public static final java.lang.String SerializeWriter_desc;
    public final com.alibaba.fastjson.util.ASMClassLoader classLoader = new com.alibaba.fastjson.util.ASMClassLoader();
    private final java.util.concurrent.atomic.AtomicLong seed = new java.util.concurrent.atomic.AtomicLong();

    static {
        java.lang.String strType = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.serializer.ObjectSerializer.class);
        ObjectSerializer = strType;
        ObjectSerializer_desc = "L" + strType + ";";
        java.lang.String strType2 = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.serializer.SerializeWriter.class);
        SerializeWriter = strType2;
        SerializeWriter_desc = "L" + strType2 + ";";
        JavaBeanSerializer = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.serializer.JavaBeanSerializer.class);
        JavaBeanSerializer_desc = "L" + com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.serializer.JavaBeanSerializer.class) + ";";
        SerialContext_desc = com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.serializer.SerialContext.class);
        SerializeFilterable_desc = com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.serializer.SerializeFilterable.class);
    }

    private void _after(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeAfter", "(L" + JSONSerializer + ";Ljava/lang/Object;C)C");
        methodVisitor.visitVarInsn(54, context.var("seperator"));
    }

    private void _apply(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        if (cls == java.lang.Byte.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("byte"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
        } else if (cls == java.lang.Short.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("short"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
        } else if (cls == java.lang.Integer.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("int"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        } else if (cls == java.lang.Character.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("char"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
        } else if (cls == java.lang.Long.TYPE) {
            methodVisitor.visitVarInsn(22, context.var("long", 2));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
        } else if (cls == java.lang.Float.TYPE) {
            methodVisitor.visitVarInsn(23, context.var("float"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
        } else if (cls == java.lang.Double.TYPE) {
            methodVisitor.visitVarInsn(24, context.var("double", 2));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
        } else if (cls == java.lang.Boolean.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("boolean"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
        } else if (cls == java.math.BigDecimal.class) {
            methodVisitor.visitVarInsn(25, context.var("decimal"));
        } else if (cls == java.lang.String.class) {
            methodVisitor.visitVarInsn(25, context.var("string"));
        } else if (cls.isEnum()) {
            methodVisitor.visitVarInsn(25, context.var("enum"));
        } else if (java.util.List.class.isAssignableFrom(cls)) {
            methodVisitor.visitVarInsn(25, context.var("list"));
        } else {
            methodVisitor.visitVarInsn(25, context.var("object"));
        }
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "apply", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z");
    }

    private void _before(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeBefore", "(L" + JSONSerializer + ";Ljava/lang/Object;C)C");
        methodVisitor.visitVarInsn(54, context.var("seperator"));
    }

    private void _decimal(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(58, context.var("decimal"));
        _filters(methodVisitor, fieldInfo, context, label);
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitLabel(label2);
        methodVisitor.visitVarInsn(25, context.var("decimal"));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label3);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label4);
        methodVisitor.visitLabel(label3);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitVarInsn(25, context.var("decimal"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;Ljava/math/BigDecimal;)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label4);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitLabel(label);
    }

    private void _double(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(57, context.var("double", 2));
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitVarInsn(24, context.var("double", 2));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;D)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _enum(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label3);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, "java/lang/Enum");
        methodVisitor.visitVarInsn(58, context.var("enum"));
        _filters(methodVisitor, fieldInfo, context, label3);
        methodVisitor.visitVarInsn(25, context.var("enum"));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label2);
        methodVisitor.visitLabel(label);
        if (context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(21, context.var("seperator"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitVarInsn(25, context.var("enum"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, "java/lang/Enum", "name", "()Ljava/lang/String;");
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValueStringWithDoubleQuote", "(CLjava/lang/String;Ljava/lang/String;)V");
        } else {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(21, context.var("seperator"));
            java.lang.String str = SerializeWriter;
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "write", "(I)V");
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitInsn(3);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "writeFieldName", "(Ljava/lang/String;Z)V");
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("enum"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass)));
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
        }
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label2);
        methodVisitor.visitLabel(label3);
    }

    private void _filters(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        if (fieldInfo.fieldTransient) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.SkipTransientField.mask));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNE, label);
        }
        _notWriteDefault(methodVisitor, fieldInfo, context, label);
        if (context.writeDirect) {
            return;
        }
        _apply(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
        _processKey(methodVisitor, fieldInfo, context);
        _processValue(methodVisitor, fieldInfo, context, label);
    }

    private void _float(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(56, context.var("float"));
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitVarInsn(23, context.var("float"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;F)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _get(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        java.lang.reflect.Method method = fieldInfo.method;
        if (method != null) {
            methodVisitor.visitVarInsn(25, context.var("entity"));
            java.lang.Class<?> declaringClass = method.getDeclaringClass();
            methodVisitor.visitMethodInsn(declaringClass.isInterface() ? com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE : com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(declaringClass), method.getName(), com.alibaba.fastjson.util.ASMUtils.desc(method));
            if (method.getReturnType().equals(fieldInfo.fieldClass)) {
                return;
            }
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(fieldInfo.fieldClass));
            return;
        }
        methodVisitor.visitVarInsn(25, context.var("entity"));
        java.lang.reflect.Field field = fieldInfo.field;
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, com.alibaba.fastjson.util.ASMUtils.type(fieldInfo.declaringClass), field.getName(), com.alibaba.fastjson.util.ASMUtils.desc(field.getType()));
        if (field.getType().equals(fieldInfo.fieldClass)) {
            return;
        }
        methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(fieldInfo.fieldClass));
    }

    private void _getFieldSer(com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, 0);
        java.lang.String str = context.className;
        java.lang.String str2 = fieldInfo.name + "_asm_ser_";
        java.lang.String str3 = ObjectSerializer_desc;
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str, str2, str3);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass)));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "getObjectWriter", "(Ljava/lang/Class;)" + str3);
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.PUTFIELD, context.className, fieldInfo.name + "_asm_ser_", str3);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_ser_", str3);
    }

    private void _getListFieldItemSer(com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, java.lang.Class<?> cls) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, 0);
        java.lang.String str = context.className;
        java.lang.String str2 = fieldInfo.name + "_asm_list_item_ser_";
        java.lang.String str3 = ObjectSerializer_desc;
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str, str2, str3);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls)));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "getObjectWriter", "(Ljava/lang/Class;)" + str3);
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.PUTFIELD, context.className, fieldInfo.name + "_asm_list_item_ser_", str3);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_list_item_ser_", str3);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x009b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0133  */
    private void _if_write_null(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        int i5;
        int mask;
        int mask2;
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitLabel(label);
        com.alibaba.fastjson.annotation.JSONField annotation = fieldInfo.getAnnotation();
        int iOf = annotation != null ? com.alibaba.fastjson.serializer.SerializerFeature.of(annotation.serialzeFeatures()) : 0;
        com.alibaba.fastjson.annotation.JSONType jSONType = context.beanInfo.jsonType;
        if (jSONType != null) {
            iOf |= com.alibaba.fastjson.serializer.SerializerFeature.of(jSONType.serialzeFeatures());
        }
        if (cls == java.lang.String.class) {
            mask = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue.getMask();
            mask2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty.getMask();
        } else if (java.lang.Number.class.isAssignableFrom(cls)) {
            mask = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue.getMask();
            mask2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero.getMask();
        } else {
            if (!java.util.Collection.class.isAssignableFrom(cls)) {
                if (java.lang.Boolean.class == cls) {
                    mask = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue.getMask();
                    mask2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullBooleanAsFalse.getMask();
                } else {
                    i5 = com.alibaba.fastjson.serializer.SerializerFeature.WRITE_MAP_NULL_FEATURES;
                }
                if ((iOf & i5) == 0) {
                    methodVisitor.visitVarInsn(25, context.var("out"));
                    methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i5));
                    methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
                    methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label2);
                }
                methodVisitor.visitLabel(label3);
                methodVisitor.visitVarInsn(25, context.var("out"));
                methodVisitor.visitVarInsn(21, context.var("seperator"));
                java.lang.String str = SerializeWriter;
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "write", "(I)V");
                _writeFieldName(methodVisitor, context);
                methodVisitor.visitVarInsn(25, context.var("out"));
                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(iOf));
                if (cls != java.lang.String.class || cls == java.lang.Character.class) {
                    methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty.mask));
                } else if (java.lang.Number.class.isAssignableFrom(cls)) {
                    methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero.mask));
                } else if (cls == java.lang.Boolean.class) {
                    methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullBooleanAsFalse.mask));
                } else if (java.util.Collection.class.isAssignableFrom(cls) || cls.isArray()) {
                    methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty.mask));
                } else {
                    methodVisitor.visitLdcInsn(0);
                }
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "writeNull", "(II)V");
                _seperator(methodVisitor, context);
                methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label4);
                methodVisitor.visitLabel(label2);
                methodVisitor.visitLabel(label4);
            }
            mask = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue.getMask();
            mask2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty.getMask();
        }
        i5 = mask | mask2;
        if ((iOf & i5) == 0) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i5));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label2);
        }
        methodVisitor.visitLabel(label3);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        java.lang.String str2 = SerializeWriter;
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, "write", "(I)V");
        _writeFieldName(methodVisitor, context);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(iOf));
        if (cls != java.lang.String.class) {
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty.mask));
        } else {
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty.mask));
        }
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, "writeNull", "(II)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label4);
        methodVisitor.visitLabel(label2);
        methodVisitor.visitLabel(label4);
    }

    private void _int(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, int i5, char c5) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(54, i5);
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitVarInsn(21, i5);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;" + c5 + ")V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _labelApply(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(fieldInfo.label);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "applyLabel", "(L" + JSONSerializer + ";Ljava/lang/String;)Z");
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
    }

    private void _list(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label;
        java.lang.String str;
        com.alibaba.fastjson.util.FieldInfo fieldInfo2;
        int i5;
        int i6;
        int i7;
        java.lang.reflect.Type collectionItemType = com.alibaba.fastjson.util.TypeUtils.getCollectionItemType(fieldInfo.fieldType);
        java.lang.Class<?> cls2 = null;
        java.lang.Class<?> cls3 = collectionItemType instanceof java.lang.Class ? (java.lang.Class) collectionItemType : null;
        if (cls3 != java.lang.Object.class && cls3 != java.io.Serializable.class) {
            cls2 = cls3;
        }
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label2);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, "java/util/List");
        methodVisitor.visitVarInsn(58, context.var("list"));
        _filters(methodVisitor, fieldInfo, context, label2);
        methodVisitor.visitVarInsn(25, context.var("list"));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label3);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label4);
        methodVisitor.visitLabel(label3);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        java.lang.String str2 = SerializeWriter;
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, "write", "(I)V");
        _writeFieldName(methodVisitor, context);
        methodVisitor.visitVarInsn(25, context.var("list"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, "java/util/List", "size", "()I");
        methodVisitor.visitVarInsn(54, context.var("size"));
        com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label6 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(21, context.var("size"));
        methodVisitor.visitInsn(3);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label5);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitLdcInsn("[]");
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, "write", "(Ljava/lang/String;)V");
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label6);
        methodVisitor.visitLabel(label5);
        if (!context.nonContext) {
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("list"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)V");
        }
        if (collectionItemType == java.lang.String.class && context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(25, context.var("list"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, "write", "(Ljava/util/List;)V");
            i6 = 25;
            i7 = 182;
            i5 = 1;
        } else {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(16, 91);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, "write", "(I)V");
            com.alibaba.fastjson.asm.Label label7 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label9 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitInsn(3);
            methodVisitor.visitVarInsn(54, context.var("i"));
            methodVisitor.visitLabel(label7);
            methodVisitor.visitVarInsn(21, context.var("i"));
            methodVisitor.visitVarInsn(21, context.var("size"));
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPGE, label9);
            methodVisitor.visitVarInsn(21, context.var("i"));
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label8);
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(16, 44);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, "write", "(I)V");
            methodVisitor.visitLabel(label8);
            methodVisitor.visitVarInsn(25, context.var("list"));
            methodVisitor.visitVarInsn(21, context.var("i"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, "java/util/List", "get", "(I)Ljava/lang/Object;");
            methodVisitor.visitVarInsn(58, context.var("list_item"));
            com.alibaba.fastjson.asm.Label label10 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label11 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitVarInsn(25, context.var("list_item"));
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label11);
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, "writeNull", "()V");
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label10);
            methodVisitor.visitLabel(label11);
            com.alibaba.fastjson.asm.Label label12 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label13 = new com.alibaba.fastjson.asm.Label();
            if (cls2 == null || !java.lang.reflect.Modifier.isPublic(cls2.getModifiers())) {
                label10 = label10;
                label = label12;
                label13 = label13;
                str = "write";
                fieldInfo2 = fieldInfo;
            } else {
                methodVisitor.visitVarInsn(25, context.var("list_item"));
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
                methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ACMPNE, label13);
                fieldInfo2 = fieldInfo;
                _getListFieldItemSer(context, methodVisitor, fieldInfo2, cls2);
                methodVisitor.visitVarInsn(58, context.var("list_item_desc"));
                com.alibaba.fastjson.asm.Label label14 = new com.alibaba.fastjson.asm.Label();
                com.alibaba.fastjson.asm.Label label15 = new com.alibaba.fastjson.asm.Label();
                if (context.writeDirect) {
                    java.lang.String str3 = (context.nonContext && context.writeDirect) ? "writeDirectNonContext" : "write";
                    methodVisitor.visitVarInsn(25, context.var("list_item_desc"));
                    java.lang.String str4 = JavaBeanSerializer;
                    methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.INSTANCEOF, str4);
                    methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label14);
                    methodVisitor.visitVarInsn(25, context.var("list_item_desc"));
                    methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, str4);
                    methodVisitor.visitVarInsn(25, 1);
                    methodVisitor.visitVarInsn(25, context.var("list_item"));
                    if (context.nonContext) {
                        methodVisitor.visitInsn(1);
                    } else {
                        methodVisitor.visitVarInsn(21, context.var("i"));
                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    }
                    methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
                    methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo2.serialzeFeatures));
                    methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str4, str3, "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                    methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label15);
                    methodVisitor.visitLabel(label14);
                } else {
                    label10 = label10;
                    label13 = label13;
                }
                methodVisitor.visitVarInsn(25, context.var("list_item_desc"));
                methodVisitor.visitVarInsn(25, 1);
                methodVisitor.visitVarInsn(25, context.var("list_item"));
                if (context.nonContext) {
                    methodVisitor.visitInsn(1);
                } else {
                    methodVisitor.visitVarInsn(21, context.var("i"));
                    methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                }
                methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo2.serialzeFeatures));
                str = "write";
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, ObjectSerializer, str, "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                methodVisitor.visitLabel(label15);
                label = label12;
                methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label);
            }
            methodVisitor.visitLabel(label13);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("list_item"));
            if (context.nonContext) {
                methodVisitor.visitInsn(1);
            } else {
                methodVisitor.visitVarInsn(21, context.var("i"));
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            }
            if (cls2 == null || !java.lang.reflect.Modifier.isPublic(cls2.getModifiers())) {
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) collectionItemType)));
                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo2.serialzeFeatures));
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
            methodVisitor.visitLabel(label);
            methodVisitor.visitLabel(label10);
            i5 = 1;
            methodVisitor.visitIincInsn(context.var("i"), 1);
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label7);
            methodVisitor.visitLabel(label9);
            i6 = 25;
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(16, 93);
            i7 = com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL;
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, str, "(I)V");
        }
        methodVisitor.visitVarInsn(i6, i5);
        methodVisitor.visitMethodInsn(i7, JSONSerializer, "popContext", "()V");
        methodVisitor.visitLabel(label6);
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitLabel(label2);
    }

    private void _long(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(55, context.var("long", 2));
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitVarInsn(22, context.var("long", 2));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;J)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _nameApply(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        if (!context.writeDirect) {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "applyName", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/String;)Z");
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
            _labelApply(methodVisitor, fieldInfo, context, label);
        }
        if (fieldInfo.field == null) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.IgnoreNonFieldGetter.mask));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNE, label);
        }
    }

    private void _notWriteDefault(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        if (context.writeDirect) {
            return;
        }
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(21, context.var("notWriteDefaultValue"));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label2);
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        if (cls == java.lang.Boolean.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("boolean"));
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
        } else if (cls == java.lang.Byte.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("byte"));
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
        } else if (cls == java.lang.Short.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("short"));
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
        } else if (cls == java.lang.Integer.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("int"));
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
        } else if (cls == java.lang.Long.TYPE) {
            methodVisitor.visitVarInsn(22, context.var("long"));
            methodVisitor.visitInsn(9);
            methodVisitor.visitInsn(com.alibaba.fastjson.asm.Opcodes.LCMP);
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
        } else if (cls == java.lang.Float.TYPE) {
            methodVisitor.visitVarInsn(23, context.var("float"));
            methodVisitor.visitInsn(11);
            methodVisitor.visitInsn(com.alibaba.fastjson.asm.Opcodes.FCMPL);
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
        } else if (cls == java.lang.Double.TYPE) {
            methodVisitor.visitVarInsn(24, context.var("double"));
            methodVisitor.visitInsn(14);
            methodVisitor.visitInsn(com.alibaba.fastjson.asm.Opcodes.DCMPL);
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
        }
        methodVisitor.visitLabel(label2);
    }

    private void _object(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(58, context.var("object"));
        _filters(methodVisitor, fieldInfo, context, label);
        _writeObject(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitLabel(label);
    }

    private void _processKey(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(21, context.var("hasNameFilters"));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        if (cls == java.lang.Byte.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("byte"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
        } else if (cls == java.lang.Short.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("short"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
        } else if (cls == java.lang.Integer.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("int"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        } else if (cls == java.lang.Character.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("char"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
        } else if (cls == java.lang.Long.TYPE) {
            methodVisitor.visitVarInsn(22, context.var("long", 2));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
        } else if (cls == java.lang.Float.TYPE) {
            methodVisitor.visitVarInsn(23, context.var("float"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
        } else if (cls == java.lang.Double.TYPE) {
            methodVisitor.visitVarInsn(24, context.var("double", 2));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
        } else if (cls == java.lang.Boolean.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("boolean"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
        } else if (cls == java.math.BigDecimal.class) {
            methodVisitor.visitVarInsn(25, context.var("decimal"));
        } else if (cls == java.lang.String.class) {
            methodVisitor.visitVarInsn(25, context.var("string"));
        } else if (cls.isEnum()) {
            methodVisitor.visitVarInsn(25, context.var("enum"));
        } else if (java.util.List.class.isAssignableFrom(cls)) {
            methodVisitor.visitVarInsn(25, context.var("list"));
        } else {
            methodVisitor.visitVarInsn(25, context.var("object"));
        }
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "processKey", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;");
        methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitLabel(label);
    }

    private void _processValue(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        if (cls.isPrimitive()) {
            com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitVarInsn(21, context.var("checkValue"));
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNE, label3);
            methodVisitor.visitInsn(1);
            methodVisitor.visitInsn(89);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label2);
            methodVisitor.visitLabel(label3);
        }
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(context.getFieldOrinal(fieldInfo.name)));
        java.lang.String str = JavaBeanSerializer;
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "getBeanContext", "(I)" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.serializer.BeanContext.class));
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        if (cls == java.lang.Byte.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("byte"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
            methodVisitor.visitInsn(89);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else if (cls == java.lang.Short.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("short"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
            methodVisitor.visitInsn(89);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else if (cls == java.lang.Integer.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("int"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            methodVisitor.visitInsn(89);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else if (cls == java.lang.Character.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("char"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
            methodVisitor.visitInsn(89);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else if (cls == java.lang.Long.TYPE) {
            methodVisitor.visitVarInsn(22, context.var("long", 2));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
            methodVisitor.visitInsn(89);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else if (cls == java.lang.Float.TYPE) {
            methodVisitor.visitVarInsn(23, context.var("float"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
            methodVisitor.visitInsn(89);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else if (cls == java.lang.Double.TYPE) {
            methodVisitor.visitVarInsn(24, context.var("double", 2));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
            methodVisitor.visitInsn(89);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else if (cls == java.lang.Boolean.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("boolean"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
            methodVisitor.visitInsn(89);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else if (cls == java.math.BigDecimal.class) {
            methodVisitor.visitVarInsn(25, context.var("decimal"));
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else if (cls == java.lang.String.class) {
            methodVisitor.visitVarInsn(25, context.var("string"));
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else if (cls.isEnum()) {
            methodVisitor.visitVarInsn(25, context.var("enum"));
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else if (java.util.List.class.isAssignableFrom(cls)) {
            methodVisitor.visitVarInsn(25, context.var("list"));
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        } else {
            methodVisitor.visitVarInsn(25, context.var("object"));
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        }
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "processValue", "(L" + JSONSerializer + ";" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.serializer.BeanContext.class) + "Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;");
        methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ACMPEQ, label2);
        _writeObject(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label);
        methodVisitor.visitLabel(label2);
    }

    private void _seperator(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        methodVisitor.visitVarInsn(16, 44);
        methodVisitor.visitVarInsn(54, context.var("seperator"));
    }

    private void _string(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        if (fieldInfo.name.equals(context.beanInfo.typeKey)) {
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 4);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNE, label);
        }
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(58, context.var("string"));
        _filters(methodVisitor, fieldInfo, context, label);
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("string"));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label2);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label3);
        methodVisitor.visitLabel(label2);
        if ("trim".equals(fieldInfo.format)) {
            methodVisitor.visitVarInsn(25, context.var("string"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, "java/lang/String", "trim", "()Ljava/lang/String;");
            methodVisitor.visitVarInsn(58, context.var("string"));
        }
        if (context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(21, context.var("seperator"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitVarInsn(25, context.var("string"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValueStringWithDoubleQuoteCheck", "(CLjava/lang/String;Ljava/lang/String;)V");
        } else {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(21, context.var("seperator"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitVarInsn(25, context.var("string"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;Ljava/lang/String;)V");
        }
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label3);
        methodVisitor.visitLabel(label);
    }

    private void _writeFieldName(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        if (context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldNameDirect", "(Ljava/lang/String;)V");
        } else {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitInsn(3);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldName", "(Ljava/lang/String;Z)V");
        }
    }

    private void _writeObject(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        com.alibaba.fastjson.asm.Label label2;
        com.alibaba.fastjson.asm.Label label3;
        java.lang.String str;
        java.lang.String format = fieldInfo.getFormat();
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
        if (context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var("object"));
        } else {
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
        }
        methodVisitor.visitInsn(89);
        methodVisitor.visitVarInsn(58, context.var("object"));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label4);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
        _writeFieldName(methodVisitor, context);
        com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label6 = new com.alibaba.fastjson.asm.Label();
        if (!java.lang.reflect.Modifier.isPublic(cls.getModifiers()) || com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(cls)) {
            label2 = label5;
            label3 = label6;
        } else {
            methodVisitor.visitVarInsn(25, context.var("object"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls)));
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ACMPNE, label6);
            _getFieldSer(context, methodVisitor, fieldInfo);
            methodVisitor.visitVarInsn(58, context.var("fied_ser"));
            com.alibaba.fastjson.asm.Label label7 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitVarInsn(25, context.var("fied_ser"));
            java.lang.String str2 = JavaBeanSerializer;
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.INSTANCEOF, str2);
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label7);
            int i5 = fieldInfo.serialzeFeatures;
            boolean z4 = (com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect.mask & i5) != 0;
            boolean z5 = (com.alibaba.fastjson.serializer.SerializerFeature.BeanToArray.mask & i5) != 0;
            if (z4 || (context.nonContext && context.writeDirect)) {
                str = z5 ? "writeAsArrayNonContext" : "writeDirectNonContext";
            } else {
                str = z5 ? "writeAsArray" : "write";
            }
            methodVisitor.visitVarInsn(25, context.var("fied_ser"));
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, str2);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("object"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_fieldType", "Ljava/lang/reflect/Type;");
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("(L");
            java.lang.String str3 = JSONSerializer;
            sb.append(str3);
            sb.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, str, sb.toString());
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label8);
            methodVisitor.visitLabel(label7);
            methodVisitor.visitVarInsn(25, context.var("fied_ser"));
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("object"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_fieldType", "Ljava/lang/reflect/Type;");
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, ObjectSerializer, "write", "(L" + str3 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            methodVisitor.visitLabel(label8);
            label2 = label5;
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label2);
            label3 = label6;
        }
        methodVisitor.visitLabel(label3);
        methodVisitor.visitVarInsn(25, 1);
        if (context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var("object"));
        } else {
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
        }
        if (format != 0) {
            methodVisitor.visitLdcInsn(format);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
        } else {
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            java.lang.reflect.Type type = fieldInfo.fieldType;
            if ((type instanceof java.lang.Class) && ((java.lang.Class) type).isPrimitive()) {
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                if (fieldInfo.fieldClass == java.lang.String.class) {
                    methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) java.lang.String.class)));
                } else {
                    methodVisitor.visitVarInsn(25, 0);
                    methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                }
                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
        }
        methodVisitor.visitLabel(label2);
        _seperator(methodVisitor, context);
    }

    private void generateWriteAsArray(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) throws java.lang.Exception {
        java.lang.String str;
        boolean z4;
        char c5;
        com.alibaba.fastjson.serializer.ASMSerializerFactory aSMSerializerFactory;
        char c6;
        int i5;
        int i6;
        java.lang.Class<?> cls2;
        int i7;
        int i8;
        java.lang.String str2;
        int i9;
        char c7;
        com.alibaba.fastjson.serializer.ASMSerializerFactory aSMSerializerFactory2 = this;
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr2 = fieldInfoArr;
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 0);
        java.lang.String str3 = JSONSerializer;
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str3, "hasPropertyFilters", "(" + SerializeFilterable_desc + ")Z");
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNE, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(25, 3);
        methodVisitor.visitVarInsn(25, 4);
        methodVisitor.visitVarInsn(21, 5);
        java.lang.String str4 = JavaBeanSerializer;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.String str5 = "(L";
        sb.append("(L");
        sb.append(str3);
        java.lang.String str6 = ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V";
        sb.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, str4, "writeNoneASM", sb.toString());
        methodVisitor.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
        methodVisitor.visitLabel(label);
        java.lang.String str7 = "out";
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(16, 91);
        java.lang.String str8 = SerializeWriter;
        java.lang.String str9 = "(I)V";
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str8, "write", "(I)V");
        int length = fieldInfoArr2.length;
        if (length == 0) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(16, 93);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str8, "write", "(I)V");
            return;
        }
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 == length + (-1) ? 93 : 44;
            com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldInfoArr2[i10];
            java.lang.Class<?> cls3 = fieldInfo.fieldClass;
            methodVisitor.visitLdcInsn(fieldInfo.name);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            if (cls3 == java.lang.Byte.TYPE || cls3 == java.lang.Short.TYPE || cls3 == java.lang.Integer.TYPE) {
                str = str7;
                length = length;
                int i12 = i11;
                i10 = i10;
                str5 = str5;
                str9 = str9;
                z4 = false;
                c5 = 25;
                methodVisitor.visitVarInsn(25, context.var(str));
                methodVisitor.visitInsn(89);
                aSMSerializerFactory = this;
                aSMSerializerFactory._get(methodVisitor, context, fieldInfo);
                java.lang.String str10 = SerializeWriter;
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str10, "writeInt", str9);
                c6 = 16;
                methodVisitor.visitVarInsn(16, i12);
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str10, "write", str9);
            } else {
                if (cls3 == java.lang.Long.TYPE) {
                    methodVisitor.visitVarInsn(25, context.var(str7));
                    methodVisitor.visitInsn(89);
                    aSMSerializerFactory2._get(methodVisitor, context, fieldInfo);
                    java.lang.String str11 = SerializeWriter;
                    c7 = 182;
                    methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str11, "writeLong", "(J)V");
                    methodVisitor.visitVarInsn(16, i11);
                    methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str11, "write", str9);
                } else if (cls3 == java.lang.Float.TYPE) {
                    methodVisitor.visitVarInsn(25, context.var(str7));
                    methodVisitor.visitInsn(89);
                    aSMSerializerFactory2._get(methodVisitor, context, fieldInfo);
                    methodVisitor.visitInsn(4);
                    java.lang.String str12 = SerializeWriter;
                    c7 = 182;
                    methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str12, "writeFloat", "(FZ)V");
                    methodVisitor.visitVarInsn(16, i11);
                    methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str12, "write", str9);
                } else if (cls3 == java.lang.Double.TYPE) {
                    methodVisitor.visitVarInsn(25, context.var(str7));
                    methodVisitor.visitInsn(89);
                    aSMSerializerFactory2._get(methodVisitor, context, fieldInfo);
                    methodVisitor.visitInsn(4);
                    java.lang.String str13 = SerializeWriter;
                    c7 = 182;
                    methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str13, "writeDouble", "(DZ)V");
                    methodVisitor.visitVarInsn(16, i11);
                    methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str13, "write", str9);
                } else {
                    if (cls3 == java.lang.Boolean.TYPE) {
                        methodVisitor.visitVarInsn(25, context.var(str7));
                        methodVisitor.visitInsn(89);
                        aSMSerializerFactory2._get(methodVisitor, context, fieldInfo);
                        java.lang.String str14 = SerializeWriter;
                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str14, "write", "(Z)V");
                        methodVisitor.visitVarInsn(16, i11);
                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str14, "write", str9);
                    } else if (cls3 == java.lang.Character.TYPE) {
                        methodVisitor.visitVarInsn(25, context.var(str7));
                        aSMSerializerFactory2._get(methodVisitor, context, fieldInfo);
                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Character", "toString", "(C)Ljava/lang/String;");
                        methodVisitor.visitVarInsn(16, i11);
                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeString", "(Ljava/lang/String;C)V");
                        length = length;
                        i10 = i10;
                        str5 = str5;
                        z4 = false;
                        c5 = 25;
                        aSMSerializerFactory = aSMSerializerFactory2;
                        str = str7;
                        c6 = 16;
                        str9 = str9;
                    } else if (cls3 == java.lang.String.class) {
                        methodVisitor.visitVarInsn(25, context.var(str7));
                        aSMSerializerFactory2._get(methodVisitor, context, fieldInfo);
                        methodVisitor.visitVarInsn(16, i11);
                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeString", "(Ljava/lang/String;C)V");
                        length = length;
                        c5 = 25;
                        z4 = false;
                        c6 = 16;
                        aSMSerializerFactory = aSMSerializerFactory2;
                        str = str7;
                    } else if (cls3.isEnum()) {
                        methodVisitor.visitVarInsn(25, context.var(str7));
                        methodVisitor.visitInsn(89);
                        aSMSerializerFactory2._get(methodVisitor, context, fieldInfo);
                        java.lang.String str15 = SerializeWriter;
                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str15, "writeEnum", "(Ljava/lang/Enum;)V");
                        methodVisitor.visitVarInsn(16, i11);
                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str15, "write", str9);
                    } else if (java.util.List.class.isAssignableFrom(cls3)) {
                        java.lang.reflect.Type type = fieldInfo.fieldType;
                        java.lang.reflect.Type type2 = type instanceof java.lang.Class ? java.lang.Object.class : ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments()[0];
                        if (!(type2 instanceof java.lang.Class) || (cls2 = (java.lang.Class) type2) == java.lang.Object.class) {
                            cls2 = null;
                        }
                        aSMSerializerFactory2._get(methodVisitor, context, fieldInfo);
                        length = length;
                        methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, "java/util/List");
                        i10 = i10;
                        methodVisitor.visitVarInsn(58, context.var("list"));
                        if (cls2 == java.lang.String.class && context.writeDirect) {
                            methodVisitor.visitVarInsn(25, context.var(str7));
                            methodVisitor.visitVarInsn(25, context.var("list"));
                            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(Ljava/util/List;)V");
                            str = str7;
                            str5 = str5;
                            str2 = str9;
                            i8 = 16;
                            i9 = 182;
                            i7 = 25;
                        } else {
                            com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
                            com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
                            methodVisitor.visitVarInsn(25, context.var("list"));
                            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label3);
                            methodVisitor.visitVarInsn(25, context.var(str7));
                            java.lang.String str16 = SerializeWriter;
                            java.lang.reflect.Type type3 = type2;
                            java.lang.String str17 = str6;
                            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str16, "writeNull", "()V");
                            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label2);
                            methodVisitor.visitLabel(label3);
                            methodVisitor.visitVarInsn(25, context.var("list"));
                            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, "java/util/List", "size", "()I");
                            methodVisitor.visitVarInsn(54, context.var("size"));
                            methodVisitor.visitVarInsn(25, context.var(str7));
                            methodVisitor.visitVarInsn(16, 91);
                            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str16, "write", str9);
                            com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
                            com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
                            com.alibaba.fastjson.asm.Label label6 = new com.alibaba.fastjson.asm.Label();
                            methodVisitor.visitInsn(3);
                            java.lang.String str18 = str5;
                            methodVisitor.visitVarInsn(54, context.var("i"));
                            methodVisitor.visitLabel(label4);
                            methodVisitor.visitVarInsn(21, context.var("i"));
                            methodVisitor.visitVarInsn(21, context.var("size"));
                            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPGE, label6);
                            methodVisitor.visitVarInsn(21, context.var("i"));
                            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label5);
                            methodVisitor.visitVarInsn(25, context.var(str7));
                            methodVisitor.visitVarInsn(16, 44);
                            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str16, "write", str9);
                            methodVisitor.visitLabel(label5);
                            methodVisitor.visitVarInsn(25, context.var("list"));
                            methodVisitor.visitVarInsn(21, context.var("i"));
                            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, "java/util/List", "get", "(I)Ljava/lang/Object;");
                            methodVisitor.visitVarInsn(58, context.var("list_item"));
                            com.alibaba.fastjson.asm.Label label7 = new com.alibaba.fastjson.asm.Label();
                            com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
                            java.lang.String str19 = str9;
                            methodVisitor.visitVarInsn(25, context.var("list_item"));
                            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label8);
                            methodVisitor.visitVarInsn(25, context.var(str7));
                            java.lang.String str20 = str7;
                            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str16, "writeNull", "()V");
                            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label7);
                            methodVisitor.visitLabel(label8);
                            com.alibaba.fastjson.asm.Label label9 = new com.alibaba.fastjson.asm.Label();
                            com.alibaba.fastjson.asm.Label label10 = new com.alibaba.fastjson.asm.Label();
                            if (cls2 == null || !java.lang.reflect.Modifier.isPublic(cls2.getModifiers())) {
                                label4 = label4;
                                label7 = label7;
                                str6 = str17;
                                str5 = str18;
                            } else {
                                methodVisitor.visitVarInsn(25, context.var("list_item"));
                                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                                methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
                                methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ACMPNE, label10);
                                aSMSerializerFactory2._getListFieldItemSer(context, methodVisitor, fieldInfo, cls2);
                                methodVisitor.visitVarInsn(58, context.var("list_item_desc"));
                                com.alibaba.fastjson.asm.Label label11 = new com.alibaba.fastjson.asm.Label();
                                com.alibaba.fastjson.asm.Label label12 = new com.alibaba.fastjson.asm.Label();
                                if (context.writeDirect) {
                                    methodVisitor.visitVarInsn(25, context.var("list_item_desc"));
                                    java.lang.String str21 = JavaBeanSerializer;
                                    methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.INSTANCEOF, str21);
                                    methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label11);
                                    methodVisitor.visitVarInsn(25, context.var("list_item_desc"));
                                    methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, str21);
                                    methodVisitor.visitVarInsn(25, 1);
                                    methodVisitor.visitVarInsn(25, context.var("list_item"));
                                    if (context.nonContext) {
                                        methodVisitor.visitInsn(1);
                                    } else {
                                        methodVisitor.visitVarInsn(21, context.var("i"));
                                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                                    }
                                    methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
                                    methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
                                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                                    str5 = str18;
                                    sb2.append(str5);
                                    sb2.append(JSONSerializer);
                                    str6 = str17;
                                    sb2.append(str6);
                                    methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str21, "writeAsArrayNonContext", sb2.toString());
                                    methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label12);
                                    methodVisitor.visitLabel(label11);
                                } else {
                                    label4 = label4;
                                    label7 = label7;
                                    str6 = str17;
                                    str5 = str18;
                                }
                                methodVisitor.visitVarInsn(25, context.var("list_item_desc"));
                                methodVisitor.visitVarInsn(25, 1);
                                methodVisitor.visitVarInsn(25, context.var("list_item"));
                                if (context.nonContext) {
                                    methodVisitor.visitInsn(1);
                                } else {
                                    methodVisitor.visitVarInsn(21, context.var("i"));
                                    methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                                }
                                methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
                                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
                                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, ObjectSerializer, "write", str5 + JSONSerializer + str6);
                                methodVisitor.visitLabel(label12);
                                methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label9);
                            }
                            methodVisitor.visitLabel(label10);
                            methodVisitor.visitVarInsn(25, 1);
                            methodVisitor.visitVarInsn(25, context.var("list_item"));
                            if (context.nonContext) {
                                methodVisitor.visitInsn(1);
                            } else {
                                methodVisitor.visitVarInsn(21, context.var("i"));
                                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                            }
                            if (cls2 == null || !java.lang.reflect.Modifier.isPublic(cls2.getModifiers())) {
                                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
                            } else {
                                methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) type3)));
                                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
                                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                            }
                            methodVisitor.visitLabel(label9);
                            methodVisitor.visitLabel(label7);
                            methodVisitor.visitIincInsn(context.var("i"), 1);
                            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label4);
                            methodVisitor.visitLabel(label6);
                            str = str20;
                            i7 = 25;
                            methodVisitor.visitVarInsn(25, context.var(str));
                            i8 = 16;
                            methodVisitor.visitVarInsn(16, 93);
                            str2 = str19;
                            i9 = com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL;
                            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str16, "write", str2);
                            methodVisitor.visitLabel(label2);
                        }
                        methodVisitor.visitVarInsn(i7, context.var(str));
                        methodVisitor.visitVarInsn(i8, i11);
                        methodVisitor.visitMethodInsn(i9, SerializeWriter, "write", str2);
                        aSMSerializerFactory = this;
                        str9 = str2;
                        z4 = false;
                        c6 = 16;
                        c5 = 25;
                    } else {
                        java.lang.String str22 = str7;
                        length = length;
                        int i13 = i11;
                        i10 = i10;
                        str5 = str5;
                        java.lang.String str23 = str9;
                        com.alibaba.fastjson.asm.Label label13 = new com.alibaba.fastjson.asm.Label();
                        com.alibaba.fastjson.asm.Label label14 = new com.alibaba.fastjson.asm.Label();
                        _get(methodVisitor, context, fieldInfo);
                        methodVisitor.visitInsn(89);
                        methodVisitor.visitVarInsn(58, context.var("field_" + fieldInfo.fieldClass.getName()));
                        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label14);
                        methodVisitor.visitVarInsn(25, context.var(str22));
                        java.lang.String str24 = SerializeWriter;
                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str24, "writeNull", "()V");
                        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label13);
                        methodVisitor.visitLabel(label14);
                        com.alibaba.fastjson.asm.Label label15 = new com.alibaba.fastjson.asm.Label();
                        com.alibaba.fastjson.asm.Label label16 = new com.alibaba.fastjson.asm.Label();
                        methodVisitor.visitVarInsn(25, context.var("field_" + fieldInfo.fieldClass.getName()));
                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls3)));
                        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ACMPNE, label16);
                        _getFieldSer(context, methodVisitor, fieldInfo);
                        methodVisitor.visitVarInsn(58, context.var("fied_ser"));
                        com.alibaba.fastjson.asm.Label label17 = new com.alibaba.fastjson.asm.Label();
                        com.alibaba.fastjson.asm.Label label18 = new com.alibaba.fastjson.asm.Label();
                        if (context.writeDirect && java.lang.reflect.Modifier.isPublic(cls3.getModifiers())) {
                            methodVisitor.visitVarInsn(25, context.var("fied_ser"));
                            java.lang.String str25 = JavaBeanSerializer;
                            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.INSTANCEOF, str25);
                            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label17);
                            methodVisitor.visitVarInsn(25, context.var("fied_ser"));
                            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, str25);
                            methodVisitor.visitVarInsn(25, 1);
                            methodVisitor.visitVarInsn(25, context.var("field_" + fieldInfo.fieldClass.getName()));
                            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
                            methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls3)));
                            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
                            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str25, "writeAsArrayNonContext", str5 + JSONSerializer + str6);
                            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label18);
                            methodVisitor.visitLabel(label17);
                        }
                        methodVisitor.visitVarInsn(25, context.var("fied_ser"));
                        methodVisitor.visitVarInsn(25, 1);
                        methodVisitor.visitVarInsn(25, context.var("field_" + fieldInfo.fieldClass.getName()));
                        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
                        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls3)));
                        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
                        java.lang.String str26 = ObjectSerializer;
                        java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
                        sb3.append(str5);
                        java.lang.String str27 = JSONSerializer;
                        sb3.append(str27);
                        sb3.append(str6);
                        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, str26, "write", sb3.toString());
                        methodVisitor.visitLabel(label18);
                        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label15);
                        methodVisitor.visitLabel(label16);
                        java.lang.String format = fieldInfo.getFormat();
                        methodVisitor.visitVarInsn(25, 1);
                        methodVisitor.visitVarInsn(25, context.var("field_" + fieldInfo.fieldClass.getName()));
                        if (format != null) {
                            methodVisitor.visitLdcInsn(format);
                            i5 = com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL;
                            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str27, "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
                        } else {
                            i5 = com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL;
                            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
                            java.lang.reflect.Type type4 = fieldInfo.fieldType;
                            if ((type4 instanceof java.lang.Class) && ((java.lang.Class) type4).isPrimitive()) {
                                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str27, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
                            } else {
                                z4 = false;
                                methodVisitor.visitVarInsn(25, 0);
                                methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
                                i6 = com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL;
                                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str27, r9, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                            }
                            methodVisitor.visitLabel(label15);
                            methodVisitor.visitLabel(label13);
                            str = str22;
                            c5 = 25;
                            methodVisitor.visitVarInsn(25, context.var(str));
                            methodVisitor.visitVarInsn(16, i13);
                            str9 = str23;
                            methodVisitor.visitMethodInsn(i6, str24, "write", str9);
                            aSMSerializerFactory = this;
                            c6 = 16;
                        }
                        i6 = i5;
                        z4 = false;
                        methodVisitor.visitLabel(label15);
                        methodVisitor.visitLabel(label13);
                        str = str22;
                        c5 = 25;
                        methodVisitor.visitVarInsn(25, context.var(str));
                        methodVisitor.visitVarInsn(16, i13);
                        str9 = str23;
                        methodVisitor.visitMethodInsn(i6, str24, "write", str9);
                        aSMSerializerFactory = this;
                        c6 = 16;
                    }
                    z4 = false;
                    c5 = 25;
                    c6 = 16;
                    aSMSerializerFactory = aSMSerializerFactory2;
                    str = str7;
                }
                z4 = false;
                c5 = 25;
                c6 = 16;
                aSMSerializerFactory = aSMSerializerFactory2;
                str = str7;
            }
            str9 = str9;
            length = length;
            fieldInfoArr2 = fieldInfoArr;
            str5 = str5;
            str7 = str;
            aSMSerializerFactory2 = aSMSerializerFactory;
            i10++;
        }
    }

    private void generateWriteMethod(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) throws java.lang.Exception {
        java.lang.String str;
        int i5;
        java.lang.String str2;
        int i6;
        java.lang.Class<?> cls2;
        boolean z4;
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        int length = fieldInfoArr.length;
        java.lang.String str3 = "out";
        if (!context.writeDirect) {
            com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat.mask));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNE, label3);
            int length2 = fieldInfoArr.length;
            int i7 = 0;
            while (true) {
                if (i7 >= length2) {
                    z4 = false;
                    break;
                }
                int i8 = length2;
                if (fieldInfoArr[i7].method != null) {
                    z4 = true;
                    break;
                } else {
                    i7++;
                    length2 = i8;
                }
            }
            if (z4) {
                methodVisitor.visitVarInsn(25, context.var("out"));
                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.IgnoreErrorGetter.mask));
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
                methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label2);
            } else {
                methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label2);
            }
            methodVisitor.visitLabel(label3);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(25, 3);
            methodVisitor.visitVarInsn(25, 4);
            methodVisitor.visitVarInsn(21, 5);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, JavaBeanSerializer, "write", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            methodVisitor.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
            methodVisitor.visitLabel(label2);
        }
        if (!context.nonContext) {
            com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(21, 5);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeReference", "(L" + JSONSerializer + ";Ljava/lang/Object;I)Z");
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label4);
            methodVisitor.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
            methodVisitor.visitLabel(label4);
        }
        if (context.writeDirect) {
            str = context.nonContext ? "writeAsArrayNonContext" : "writeAsArray";
        } else {
            str = "writeAsArrayNormal";
        }
        int i9 = context.beanInfo.features;
        com.alibaba.fastjson.serializer.SerializerFeature serializerFeature = com.alibaba.fastjson.serializer.SerializerFeature.BeanToArray;
        if ((i9 & serializerFeature.mask) == 0) {
            com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(serializerFeature.mask));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label5);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(25, 3);
            methodVisitor.visitVarInsn(25, 4);
            methodVisitor.visitVarInsn(21, 5);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, context.className, str, "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            methodVisitor.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
            methodVisitor.visitLabel(label5);
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(25, 3);
            methodVisitor.visitVarInsn(25, 4);
            methodVisitor.visitVarInsn(21, 5);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, context.className, str, "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            methodVisitor.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
        }
        java.lang.String str4 = "parent";
        if (!context.nonContext) {
            methodVisitor.visitVarInsn(25, 1);
            java.lang.String str5 = JSONSerializer;
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("()");
            java.lang.String str6 = SerialContext_desc;
            sb.append(str6);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str5, "getContext", sb.toString());
            methodVisitor.visitVarInsn(58, context.var("parent"));
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("parent"));
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(25, 3);
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(context.beanInfo.features));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str5, "setContext", "(" + str6 + "Ljava/lang/Object;Ljava/lang/Object;I)V");
        }
        boolean z5 = (context.beanInfo.features & com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName.mask) != 0;
        if (z5 || !context.writeDirect) {
            com.alibaba.fastjson.asm.Label label6 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label7 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
            if (z5) {
                i5 = com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL;
            } else {
                methodVisitor.visitVarInsn(25, 1);
                methodVisitor.visitVarInsn(25, 4);
                methodVisitor.visitVarInsn(25, 2);
                java.lang.String str7 = JSONSerializer;
                i5 = com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL;
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str7, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
                methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label7);
            }
            methodVisitor.visitVarInsn(25, 4);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitMethodInsn(i5, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ACMPEQ, label7);
            methodVisitor.visitLabel(label8);
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(16, 123);
            methodVisitor.visitMethodInsn(i5, SerializeWriter, "write", "(I)V");
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            if (context.beanInfo.typeKey != null) {
                methodVisitor.visitLdcInsn(context.beanInfo.typeKey);
            } else {
                methodVisitor.visitInsn(1);
            }
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeClassName", "(L" + JSONSerializer + ";Ljava/lang/String;Ljava/lang/Object;)V");
            methodVisitor.visitVarInsn(16, 44);
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label6);
            methodVisitor.visitLabel(label7);
            methodVisitor.visitVarInsn(16, 123);
            methodVisitor.visitLabel(label6);
        } else {
            methodVisitor.visitVarInsn(16, 123);
            str4 = "parent";
        }
        methodVisitor.visitVarInsn(54, context.var("seperator"));
        if (!context.writeDirect) {
            _before(methodVisitor, context);
        }
        if (!context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "isNotWriteDefaultValue", "()Z");
            methodVisitor.visitVarInsn(54, context.var("notWriteDefaultValue"));
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 0);
            java.lang.String str8 = JSONSerializer;
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("(");
            java.lang.String str9 = SerializeFilterable_desc;
            sb2.append(str9);
            sb2.append(")Z");
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str8, "checkValue", sb2.toString());
            methodVisitor.visitVarInsn(54, context.var("checkValue"));
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str8, "hasNameFilters", "(" + str9 + ")Z");
            methodVisitor.visitVarInsn(54, context.var("hasNameFilters"));
        }
        int i10 = 0;
        while (i10 < length) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldInfoArr[i10];
            java.lang.Class<?> cls3 = fieldInfo.fieldClass;
            methodVisitor.visitLdcInsn(fieldInfo.name);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            if (cls3 == java.lang.Byte.TYPE || cls3 == java.lang.Short.TYPE || cls3 == java.lang.Integer.TYPE) {
                str2 = str3;
                i6 = i10;
                _int(cls, methodVisitor, fieldInfo, context, context.var(cls3.getName()), 'I');
            } else {
                if (cls3 == java.lang.Long.TYPE) {
                    cls2 = cls;
                    _long(cls2, methodVisitor, fieldInfo, context);
                } else {
                    cls2 = cls;
                    if (cls3 == java.lang.Float.TYPE) {
                        _float(cls2, methodVisitor, fieldInfo, context);
                    } else if (cls3 == java.lang.Double.TYPE) {
                        _double(cls2, methodVisitor, fieldInfo, context);
                    } else if (cls3 == java.lang.Boolean.TYPE) {
                        str2 = str3;
                        i6 = i10;
                        _int(cls, methodVisitor, fieldInfo, context, context.var("boolean"), 'Z');
                    } else {
                        str2 = str3;
                        i6 = i10;
                        if (cls3 == java.lang.Character.TYPE) {
                            _int(cls, methodVisitor, fieldInfo, context, context.var("char"), 'C');
                        } else if (cls3 == java.lang.String.class) {
                            _string(cls2, methodVisitor, fieldInfo, context);
                        } else if (cls3 == java.math.BigDecimal.class) {
                            _decimal(cls2, methodVisitor, fieldInfo, context);
                        } else if (java.util.List.class.isAssignableFrom(cls3)) {
                            _list(cls2, methodVisitor, fieldInfo, context);
                        } else if (cls3.isEnum()) {
                            _enum(cls2, methodVisitor, fieldInfo, context);
                        } else {
                            _object(cls2, methodVisitor, fieldInfo, context);
                        }
                    }
                }
                str2 = str3;
                i6 = i10;
            }
            i10 = i6 + 1;
            str3 = str2;
        }
        java.lang.String str10 = str3;
        if (!context.writeDirect) {
            _after(methodVisitor, context);
        }
        com.alibaba.fastjson.asm.Label label9 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label10 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitIntInsn(16, 123);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label9);
        methodVisitor.visitVarInsn(25, context.var(str10));
        methodVisitor.visitVarInsn(16, 123);
        java.lang.String str11 = SerializeWriter;
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str11, "write", "(I)V");
        methodVisitor.visitLabel(label9);
        methodVisitor.visitVarInsn(25, context.var(str10));
        methodVisitor.visitVarInsn(16, 125);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str11, "write", "(I)V");
        methodVisitor.visitLabel(label10);
        methodVisitor.visitLabel(label);
        if (context.nonContext) {
            return;
        }
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var(str4));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONSerializer, "setContext", "(" + SerialContext_desc + ")V");
    }

    public com.alibaba.fastjson.serializer.JavaBeanSerializer createJavaBeanSerializer(com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfo) throws java.lang.Exception {
        java.lang.String str;
        java.lang.String str2;
        boolean z4;
        java.lang.Class<com.alibaba.fastjson.serializer.SerializeBeanInfo> cls;
        java.lang.String str3;
        boolean z5;
        boolean z6;
        java.lang.String str4;
        boolean z7;
        boolean z8;
        java.lang.String str5;
        int i5;
        char c5;
        java.lang.reflect.Method method;
        java.lang.Class<com.alibaba.fastjson.serializer.SerializeBeanInfo> cls2 = com.alibaba.fastjson.serializer.SerializeBeanInfo.class;
        java.lang.Class<?> cls3 = serializeBeanInfo.beanType;
        if (cls3.isPrimitive()) {
            throw new com.alibaba.fastjson.JSONException("unsupportd class " + cls3.getName());
        }
        com.alibaba.fastjson.annotation.JSONType jSONType = (com.alibaba.fastjson.annotation.JSONType) com.alibaba.fastjson.util.TypeUtils.getAnnotation(cls3, com.alibaba.fastjson.annotation.JSONType.class);
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr = serializeBeanInfo.fields;
        for (com.alibaba.fastjson.util.FieldInfo fieldInfo : fieldInfoArr) {
            if (fieldInfo.field == null && (method = fieldInfo.method) != null && method.getDeclaringClass().isInterface()) {
                return new com.alibaba.fastjson.serializer.JavaBeanSerializer(serializeBeanInfo);
            }
        }
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr2 = serializeBeanInfo.sortedFields;
        boolean z9 = fieldInfoArr2 == serializeBeanInfo.fields;
        if (fieldInfoArr2.length > 256) {
            return new com.alibaba.fastjson.serializer.JavaBeanSerializer(serializeBeanInfo);
        }
        for (com.alibaba.fastjson.util.FieldInfo fieldInfo2 : fieldInfoArr2) {
            if (!com.alibaba.fastjson.util.ASMUtils.checkName(fieldInfo2.getMember().getName())) {
                return new com.alibaba.fastjson.serializer.JavaBeanSerializer(serializeBeanInfo);
            }
        }
        java.lang.String str6 = "ASMSerializer_" + this.seed.incrementAndGet() + "_" + cls3.getSimpleName();
        java.lang.Package r5 = com.alibaba.fastjson.serializer.ASMSerializerFactory.class.getPackage();
        if (r5 != null) {
            java.lang.String name = r5.getName();
            str = name + "." + str6;
            str2 = name.replace('.', '/') + "/" + str6;
        } else {
            str = str6;
            str2 = str;
        }
        com.alibaba.fastjson.asm.ClassWriter classWriter = new com.alibaba.fastjson.asm.ClassWriter();
        classWriter.visit(49, 33, str2, JavaBeanSerializer, new java.lang.String[]{ObjectSerializer});
        int length = fieldInfoArr2.length;
        int i6 = 0;
        while (i6 < length) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo3 = fieldInfoArr2[i6];
            if (!fieldInfo3.fieldClass.isPrimitive() && fieldInfo3.fieldClass != java.lang.String.class) {
                new com.alibaba.fastjson.asm.FieldWriter(classWriter, 1, fieldInfo3.name + "_asm_fieldType", "Ljava/lang/reflect/Type;").visitEnd();
                if (java.util.List.class.isAssignableFrom(fieldInfo3.fieldClass)) {
                    new com.alibaba.fastjson.asm.FieldWriter(classWriter, 1, fieldInfo3.name + "_asm_list_item_ser_", ObjectSerializer_desc).visitEnd();
                }
                new com.alibaba.fastjson.asm.FieldWriter(classWriter, 1, fieldInfo3.name + "_asm_ser_", ObjectSerializer_desc).visitEnd();
            }
            i6++;
            length = length;
            str = str;
        }
        java.lang.String str7 = str;
        com.alibaba.fastjson.asm.MethodWriter methodWriter = new com.alibaba.fastjson.asm.MethodWriter(classWriter, 1, "<init>", "(" + com.alibaba.fastjson.util.ASMUtils.desc(cls2) + ")V", null, null);
        methodWriter.visitVarInsn(25, 0);
        methodWriter.visitVarInsn(25, 1);
        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, JavaBeanSerializer, "<init>", "(" + com.alibaba.fastjson.util.ASMUtils.desc(cls2) + ")V");
        int i7 = 0;
        while (i7 < fieldInfoArr2.length) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo4 = fieldInfoArr2[i7];
            if (fieldInfo4.fieldClass.isPrimitive() || fieldInfo4.fieldClass == java.lang.String.class) {
                classWriter = classWriter;
            } else {
                methodWriter.visitVarInsn(25, 0);
                if (fieldInfo4.method != null) {
                    methodWriter.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo4.declaringClass)));
                    methodWriter.visitLdcInsn(fieldInfo4.method.getName());
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.util.ASMUtils.class), "getMethodType", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;");
                } else {
                    methodWriter.visitVarInsn(25, 0);
                    methodWriter.visitLdcInsn(java.lang.Integer.valueOf(i7));
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, JavaBeanSerializer, "getFieldType", "(I)Ljava/lang/reflect/Type;");
                }
                methodWriter.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.PUTFIELD, str2, fieldInfo4.name + "_asm_fieldType", "Ljava/lang/reflect/Type;");
            }
            i7++;
            classWriter = classWriter;
        }
        com.alibaba.fastjson.asm.ClassWriter classWriter2 = classWriter;
        methodWriter.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
        methodWriter.visitMaxs(4, 4);
        methodWriter.visitEnd();
        if (jSONType == null) {
            z4 = false;
            break;
        }
        com.alibaba.fastjson.serializer.SerializerFeature[] serializerFeatureArrSerialzeFeatures = jSONType.serialzeFeatures();
        int length2 = serializerFeatureArrSerialzeFeatures.length;
        int i8 = 0;
        while (true) {
            if (i8 >= length2) {
                z4 = false;
                break;
            }
            if (serializerFeatureArrSerialzeFeatures[i8] == com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect) {
                z4 = true;
                break;
            }
            i8++;
        }
        int i9 = 0;
        while (true) {
            cls = cls2;
            if (i9 >= 3) {
                break;
            }
            if (i9 == 0) {
                str4 = "write";
                z8 = z4;
                z7 = true;
            } else if (i9 == 1) {
                str4 = "writeNormal";
                z8 = z4;
                z7 = false;
            } else {
                str4 = "writeDirectNonContext";
                z7 = true;
                z8 = true;
            }
            com.alibaba.fastjson.asm.ClassWriter classWriter3 = classWriter2;
            java.lang.String str8 = str7;
            int i10 = i9;
            java.lang.String str9 = str2;
            com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context = new com.alibaba.fastjson.serializer.ASMSerializerFactory.Context(fieldInfoArr2, serializeBeanInfo, str2, z7, z8);
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("(L");
            java.lang.String str10 = JSONSerializer;
            sb.append(str10);
            sb.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            com.alibaba.fastjson.asm.MethodWriter methodWriter2 = new com.alibaba.fastjson.asm.MethodWriter(classWriter3, 1, str4, sb.toString(), null, new java.lang.String[]{"java/io/IOException"});
            com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
            methodWriter2.visitVarInsn(25, 2);
            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label);
            methodWriter2.visitVarInsn(25, 1);
            methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str10, "writeNull", "()V");
            methodWriter2.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
            methodWriter2.visitLabel(label);
            methodWriter2.visitVarInsn(25, 1);
            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str10, "out", SerializeWriter_desc);
            methodWriter2.visitVarInsn(58, context.var("out"));
            if (z9 || context.writeDirect || !(jSONType == null || jSONType.alphabetic())) {
                str5 = str9;
            } else {
                com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
                methodWriter2.visitVarInsn(25, context.var("out"));
                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "isSortField", "()Z");
                methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNE, label2);
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitVarInsn(25, 1);
                methodWriter2.visitVarInsn(25, 2);
                methodWriter2.visitVarInsn(25, 3);
                methodWriter2.visitVarInsn(25, 4);
                methodWriter2.visitVarInsn(21, 5);
                str5 = str9;
                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str5, "writeUnsorted", "(L" + str10 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                methodWriter2.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
                methodWriter2.visitLabel(label2);
            }
            if (!context.writeDirect || z8) {
                i5 = com.alibaba.fastjson.asm.Opcodes.RETURN;
                c5 = 4;
            } else {
                com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
                com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitVarInsn(25, 1);
                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeDirect", "(L" + str10 + ";)Z");
                methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNE, label4);
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitVarInsn(25, 1);
                methodWriter2.visitVarInsn(25, 2);
                methodWriter2.visitVarInsn(25, 3);
                methodWriter2.visitVarInsn(25, 4);
                methodWriter2.visitVarInsn(21, 5);
                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str5, "writeNormal", "(L" + str10 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                methodWriter2.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
                methodWriter2.visitLabel(label4);
                methodWriter2.visitVarInsn(25, context.var("out"));
                methodWriter2.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect.mask));
                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
                methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label3);
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitVarInsn(25, 1);
                methodWriter2.visitVarInsn(25, 2);
                methodWriter2.visitVarInsn(25, 3);
                c5 = 4;
                methodWriter2.visitVarInsn(25, 4);
                methodWriter2.visitVarInsn(21, 5);
                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str5, "writeDirectNonContext", "(L" + str10 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                i5 = com.alibaba.fastjson.asm.Opcodes.RETURN;
                methodWriter2.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
                methodWriter2.visitLabel(label3);
            }
            methodWriter2.visitVarInsn(25, 2);
            methodWriter2.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(cls3));
            methodWriter2.visitVarInsn(58, context.var("entity"));
            generateWriteMethod(cls3, methodWriter2, fieldInfoArr2, context);
            methodWriter2.visitInsn(i5);
            methodWriter2.visitMaxs(7, context.variantIndex + 2);
            methodWriter2.visitEnd();
            int i11 = i10 + 1;
            str2 = str5;
            jSONType = jSONType;
            z9 = z9;
            cls2 = cls;
            fieldInfoArr = fieldInfoArr;
            classWriter2 = classWriter3;
            str7 = str8;
            i9 = i11;
        }
        java.lang.String str11 = str2;
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr3 = fieldInfoArr;
        com.alibaba.fastjson.asm.ClassWriter classWriter4 = classWriter2;
        java.lang.String str12 = str7;
        if (!z9) {
            com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context2 = new com.alibaba.fastjson.serializer.ASMSerializerFactory.Context(fieldInfoArr2, serializeBeanInfo, str11, false, z4);
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("(L");
            java.lang.String str13 = JSONSerializer;
            sb2.append(str13);
            sb2.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            com.alibaba.fastjson.asm.MethodWriter methodWriter3 = new com.alibaba.fastjson.asm.MethodWriter(classWriter4, 1, "writeUnsorted", sb2.toString(), null, new java.lang.String[]{"java/io/IOException"});
            methodWriter3.visitVarInsn(25, 1);
            methodWriter3.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str13, "out", SerializeWriter_desc);
            methodWriter3.visitVarInsn(58, context2.var("out"));
            methodWriter3.visitVarInsn(25, 2);
            methodWriter3.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(cls3));
            methodWriter3.visitVarInsn(58, context2.var("entity"));
            generateWriteMethod(cls3, methodWriter3, fieldInfoArr3, context2);
            methodWriter3.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
            methodWriter3.visitMaxs(7, context2.variantIndex + 2);
            methodWriter3.visitEnd();
        }
        int i12 = 0;
        for (int i13 = 3; i12 < i13; i13 = i13) {
            if (i12 == 0) {
                str3 = "writeAsArray";
                z6 = z4;
                z5 = true;
            } else if (i12 == 1) {
                str3 = "writeAsArrayNormal";
                z6 = z4;
                z5 = false;
            } else {
                str3 = "writeAsArrayNonContext";
                z5 = true;
                z6 = true;
            }
            com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context3 = new com.alibaba.fastjson.serializer.ASMSerializerFactory.Context(fieldInfoArr2, serializeBeanInfo, str11, z5, z6);
            java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
            sb3.append("(L");
            java.lang.String str14 = JSONSerializer;
            sb3.append(str14);
            sb3.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            com.alibaba.fastjson.asm.MethodWriter methodWriter4 = new com.alibaba.fastjson.asm.MethodWriter(classWriter4, 1, str3, sb3.toString(), null, new java.lang.String[]{"java/io/IOException"});
            methodWriter4.visitVarInsn(25, 1);
            methodWriter4.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str14, "out", SerializeWriter_desc);
            methodWriter4.visitVarInsn(58, context3.var("out"));
            methodWriter4.visitVarInsn(25, 2);
            methodWriter4.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(cls3));
            methodWriter4.visitVarInsn(58, context3.var("entity"));
            generateWriteAsArray(cls3, methodWriter4, fieldInfoArr2, context3);
            methodWriter4.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
            methodWriter4.visitMaxs(7, context3.variantIndex + 2);
            methodWriter4.visitEnd();
            i12++;
        }
        byte[] byteArray = classWriter4.toByteArray();
        return (com.alibaba.fastjson.serializer.JavaBeanSerializer) this.classLoader.defineClassPublic(str12, byteArray, 0, byteArray.length).getConstructor(cls).newInstance(serializeBeanInfo);
    }

    public static class Context {
        public static final int features = 5;
        public static int fieldName = 6;
        public static final int obj = 2;
        public static int original = 7;
        public static final int paramFieldName = 3;
        public static final int paramFieldType = 4;
        public static int processValue = 8;
        public static final int serializer = 1;
        private final com.alibaba.fastjson.serializer.SerializeBeanInfo beanInfo;
        private final java.lang.String className;
        private final com.alibaba.fastjson.util.FieldInfo[] getters;
        private final boolean nonContext;
        private final boolean writeDirect;
        private java.util.Map<java.lang.String, java.lang.Integer> variants = new java.util.HashMap();
        private int variantIndex = 9;

        public Context(com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr, com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfo, java.lang.String str, boolean z4, boolean z5) {
            this.getters = fieldInfoArr;
            this.className = str;
            this.beanInfo = serializeBeanInfo;
            this.writeDirect = z4;
            this.nonContext = z5 || serializeBeanInfo.beanType.isEnum();
        }

        public int getFieldOrinal(java.lang.String str) {
            int length = this.getters.length;
            for (int i5 = 0; i5 < length; i5++) {
                if (this.getters[i5].name.equals(str)) {
                    return i5;
                }
            }
            return -1;
        }

        public int var(java.lang.String str) {
            if (this.variants.get(str) == null) {
                java.util.Map<java.lang.String, java.lang.Integer> map = this.variants;
                int i5 = this.variantIndex;
                this.variantIndex = i5 + 1;
                map.put(str, java.lang.Integer.valueOf(i5));
            }
            return this.variants.get(str).intValue();
        }

        public int var(java.lang.String str, int i5) {
            if (this.variants.get(str) == null) {
                this.variants.put(str, java.lang.Integer.valueOf(this.variantIndex));
                this.variantIndex += i5;
            }
            return this.variants.get(str).intValue();
        }
    }
}
