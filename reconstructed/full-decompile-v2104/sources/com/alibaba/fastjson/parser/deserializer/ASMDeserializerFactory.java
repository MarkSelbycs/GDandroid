package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ASMDeserializerFactory implements com.alibaba.fastjson.asm.Opcodes {
    public static final java.lang.String DefaultJSONParser = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.DefaultJSONParser.class);
    public static final java.lang.String JSONLexerBase = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.JSONLexerBase.class);
    public final com.alibaba.fastjson.util.ASMClassLoader classLoader;
    public final java.util.concurrent.atomic.AtomicLong seed = new java.util.concurrent.atomic.AtomicLong();

    public static class Context {
        public static final int fieldName = 3;
        public static final int parser = 1;
        public static final int type = 2;
        private final com.alibaba.fastjson.util.JavaBeanInfo beanInfo;
        private final java.lang.String className;
        private final java.lang.Class<?> clazz;
        private com.alibaba.fastjson.util.FieldInfo[] fieldInfoList;
        private int variantIndex;
        private final java.util.Map<java.lang.String, java.lang.Integer> variants = new java.util.HashMap();

        public Context(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo, int i5) {
            this.variantIndex = -1;
            this.className = str;
            this.clazz = javaBeanInfo.clazz;
            this.variantIndex = i5;
            this.beanInfo = javaBeanInfo;
            this.fieldInfoList = javaBeanInfo.fields;
        }

        public java.lang.String fieldDeserName(com.alibaba.fastjson.util.FieldInfo fieldInfo) {
            if (validIdent(fieldInfo.name)) {
                return fieldInfo.name + "_asm_deser__";
            }
            return "_asm_deser__" + com.alibaba.fastjson.util.TypeUtils.fnv1a_64_extract(fieldInfo.name);
        }

        public java.lang.String fieldName(com.alibaba.fastjson.util.FieldInfo fieldInfo) {
            if (validIdent(fieldInfo.name)) {
                return fieldInfo.name + "_asm_prefix__";
            }
            return "asm_field_" + com.alibaba.fastjson.util.TypeUtils.fnv1a_64_extract(fieldInfo.name);
        }

        public java.lang.Class<?> getInstClass() {
            java.lang.Class<?> cls = this.beanInfo.builderClass;
            return cls == null ? this.clazz : cls;
        }

        public boolean validIdent(java.lang.String str) {
            for (int i5 = 0; i5 < str.length(); i5++) {
                char cCharAt = str.charAt(i5);
                if (cCharAt == 0) {
                    if (!com.alibaba.fastjson.util.IOUtils.firstIdentifier(cCharAt)) {
                        return false;
                    }
                } else if (!com.alibaba.fastjson.util.IOUtils.isIdent(cCharAt)) {
                    return false;
                }
            }
            return true;
        }

        public int var(java.lang.String str, int i5) {
            if (this.variants.get(str) == null) {
                this.variants.put(str, java.lang.Integer.valueOf(this.variantIndex));
                this.variantIndex += i5;
            }
            return this.variants.get(str).intValue();
        }

        public int var_asm(com.alibaba.fastjson.util.FieldInfo fieldInfo) {
            return var(fieldInfo.name + "_asm");
        }

        public int var_asm(com.alibaba.fastjson.util.FieldInfo fieldInfo, int i5) {
            return var(fieldInfo.name + "_asm", i5);
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
    }

    public ASMDeserializerFactory(java.lang.ClassLoader classLoader) {
        this.classLoader = classLoader instanceof com.alibaba.fastjson.util.ASMClassLoader ? (com.alibaba.fastjson.util.ASMClassLoader) classLoader : new com.alibaba.fastjson.util.ASMClassLoader(classLoader);
    }

    private void _batchSet(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor) {
        _batchSet(context, methodVisitor, true);
    }

    private void _createInstance(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor) {
        java.lang.reflect.Constructor<?> constructor = context.beanInfo.defaultConstructor;
        if (java.lang.reflect.Modifier.isPublic(constructor.getModifiers())) {
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.NEW, com.alibaba.fastjson.util.ASMUtils.type(context.getInstClass()));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(constructor.getDeclaringClass()), "<init>", "()V");
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "clazz", "Ljava/lang/Class;");
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "createInstance", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;)Ljava/lang/Object;");
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(context.getInstClass()));
        }
        methodVisitor.visitVarInsn(58, context.var("instance"));
    }

    private void _deserObject(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, java.lang.Class<?> cls, int i5) {
        _getFieldDeser(context, methodVisitor, fieldInfo);
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        if ((fieldInfo.parserFeatures & com.alibaba.fastjson.parser.Feature.SupportArrayToBean.mask) != 0) {
            methodVisitor.visitInsn(89);
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.INSTANCEOF, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class));
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class));
            methodVisitor.visitVarInsn(25, 1);
            if (fieldInfo.fieldType instanceof java.lang.Class) {
                methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass)));
            } else {
                methodVisitor.visitVarInsn(25, 0);
                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i5));
                methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            }
            methodVisitor.visitLdcInsn(fieldInfo.name);
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.parserFeatures));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "deserialze", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(cls));
            methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
            methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label2);
            methodVisitor.visitLabel(label);
        }
        methodVisitor.visitVarInsn(25, 1);
        if (fieldInfo.fieldType instanceof java.lang.Class) {
            methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass)));
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i5));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
        }
        methodVisitor.visitLdcInsn(fieldInfo.name);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class), "deserialze", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(cls));
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        methodVisitor.visitLabel(label2);
    }

    private void _deserialize_endCheck(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.asm.Label label) {
        methodVisitor.visitIntInsn(21, context.var("matchedCount"));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(13);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label);
        _quickNextTokenComma(context, methodVisitor);
    }

    /* JADX WARN: Code duplicated, block: B:135:0x0ac4  */
    private void _deserialze(com.alibaba.fastjson.asm.ClassWriter classWriter, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context) {
        int i5;
        com.alibaba.fastjson.asm.Label label;
        java.lang.String str;
        java.lang.String str2;
        com.alibaba.fastjson.asm.MethodWriter methodWriter;
        com.alibaba.fastjson.asm.Label label2;
        com.alibaba.fastjson.asm.Label label3;
        int i6;
        java.lang.String str3;
        char c5;
        java.lang.String str4;
        com.alibaba.fastjson.asm.Label label4;
        if (context.fieldInfoList.length == 0) {
            return;
        }
        for (com.alibaba.fastjson.util.FieldInfo fieldInfo : context.fieldInfoList) {
            java.lang.Class<?> cls = fieldInfo.fieldClass;
            java.lang.reflect.Type type = fieldInfo.fieldType;
            if (cls == java.lang.Character.TYPE) {
                return;
            }
            if (java.util.Collection.class.isAssignableFrom(cls) && (!(type instanceof java.lang.reflect.ParameterizedType) || !(((java.lang.reflect.ParameterizedType) type).getActualTypeArguments()[0] instanceof java.lang.Class))) {
                return;
            }
        }
        com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo = context.beanInfo;
        context.fieldInfoList = javaBeanInfo.sortedFields;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.String str5 = "(L";
        sb.append("(L");
        java.lang.String str6 = DefaultJSONParser;
        sb.append(str6);
        sb.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
        com.alibaba.fastjson.asm.MethodWriter methodWriter2 = new com.alibaba.fastjson.asm.MethodWriter(classWriter, 1, "deserialze", sb.toString(), null, null);
        com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label6 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label7 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
        defineVarLexer(context, methodWriter2);
        com.alibaba.fastjson.asm.Label label9 = new com.alibaba.fastjson.asm.Label();
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        java.lang.String str7 = JSONLexerBase;
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str7, "token", "()I");
        methodWriter2.visitLdcInsn(14);
        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label9);
        int i7 = javaBeanInfo.parserFeatures;
        com.alibaba.fastjson.parser.Feature feature = com.alibaba.fastjson.parser.Feature.SupportArrayToBean;
        if ((i7 & feature.mask) == 0) {
            methodWriter2.visitVarInsn(25, context.var("lexer"));
            methodWriter2.visitVarInsn(21, 4);
            methodWriter2.visitLdcInsn(java.lang.Integer.valueOf(feature.mask));
            methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str7, "isEnabled", "(II)Z");
            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label9);
        }
        methodWriter2.visitVarInsn(25, 0);
        methodWriter2.visitVarInsn(25, 1);
        methodWriter2.visitVarInsn(25, 2);
        methodWriter2.visitVarInsn(25, 3);
        methodWriter2.visitInsn(1);
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, context.className, "deserialzeArrayMapping", "(L" + str6 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
        methodWriter2.visitInsn(com.alibaba.fastjson.asm.Opcodes.ARETURN);
        methodWriter2.visitLabel(label9);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.parser.Feature.SortFeidFastMatch.mask));
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str7, "isEnabled", "(I)Z");
        com.alibaba.fastjson.asm.Label label10 = new com.alibaba.fastjson.asm.Label();
        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNE, label10);
        methodWriter2.visitJumpInsn(200, label6);
        methodWriter2.visitLabel(label10);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitLdcInsn(context.clazz.getName());
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str7, "scanType", "(Ljava/lang/String;)I");
        methodWriter2.visitLdcInsn(-1);
        com.alibaba.fastjson.asm.Label label11 = new com.alibaba.fastjson.asm.Label();
        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label11);
        methodWriter2.visitJumpInsn(200, label6);
        methodWriter2.visitLabel(label11);
        methodWriter2.visitVarInsn(25, 1);
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str6, "getContext", "()" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        methodWriter2.visitVarInsn(58, context.var("mark_context"));
        methodWriter2.visitInsn(3);
        methodWriter2.visitVarInsn(54, context.var("matchedCount"));
        _createInstance(context, methodWriter2);
        methodWriter2.visitVarInsn(25, 1);
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str6, "getContext", "()" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        methodWriter2.visitVarInsn(58, context.var("context"));
        methodWriter2.visitVarInsn(25, 1);
        methodWriter2.visitVarInsn(25, context.var("context"));
        methodWriter2.visitVarInsn(25, context.var("instance"));
        methodWriter2.visitVarInsn(25, 3);
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str6, "setContext", "(" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class) + "Ljava/lang/Object;Ljava/lang/Object;)" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        methodWriter2.visitVarInsn(58, context.var("childContext"));
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        java.lang.String str8 = "matchStat";
        java.lang.String str9 = "I";
        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str7, "matchStat", "I");
        methodWriter2.visitLdcInsn(4);
        com.alibaba.fastjson.asm.Label label12 = new com.alibaba.fastjson.asm.Label();
        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label12);
        methodWriter2.visitJumpInsn(200, label7);
        methodWriter2.visitLabel(label12);
        int i8 = 3;
        methodWriter2.visitInsn(3);
        methodWriter2.visitIntInsn(54, context.var("matchStat"));
        int length = context.fieldInfoList.length;
        int i9 = 0;
        while (i9 < length) {
            methodWriter2.visitInsn(i8);
            methodWriter2.visitVarInsn(54, context.var("_asm_flag_" + (i9 / 32)));
            i9 += 32;
            i8 = 3;
        }
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty.mask));
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "isEnabled", "(I)Z");
        methodWriter2.visitIntInsn(54, context.var("initStringFieldAsEmpty"));
        int i10 = 0;
        while (i10 < length) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo2 = context.fieldInfoList[i10];
            java.lang.Class<?> cls2 = fieldInfo2.fieldClass;
            if (cls2 == java.lang.Boolean.TYPE || cls2 == java.lang.Byte.TYPE || cls2 == java.lang.Short.TYPE || cls2 == java.lang.Integer.TYPE) {
                str5 = str5;
                label5 = label5;
                label6 = label6;
                label7 = label7;
                methodWriter2.visitInsn(3);
                methodWriter2.visitVarInsn(54, context.var_asm(fieldInfo2));
            } else {
                if (cls2 == java.lang.Long.TYPE) {
                    methodWriter2.visitInsn(9);
                    methodWriter2.visitVarInsn(55, context.var_asm(fieldInfo2, 2));
                } else if (cls2 == java.lang.Float.TYPE) {
                    methodWriter2.visitInsn(11);
                    methodWriter2.visitVarInsn(56, context.var_asm(fieldInfo2));
                } else if (cls2 == java.lang.Double.TYPE) {
                    methodWriter2.visitInsn(14);
                    methodWriter2.visitVarInsn(57, context.var_asm(fieldInfo2, 2));
                } else {
                    if (cls2 == java.lang.String.class) {
                        com.alibaba.fastjson.asm.Label label13 = new com.alibaba.fastjson.asm.Label();
                        com.alibaba.fastjson.asm.Label label14 = new com.alibaba.fastjson.asm.Label();
                        methodWriter2.visitVarInsn(21, context.var("initStringFieldAsEmpty"));
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label14);
                        _setFlag(methodWriter2, context, i10);
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "stringDefaultValue", "()Ljava/lang/String;");
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label13);
                        methodWriter2.visitLabel(label14);
                        methodWriter2.visitInsn(1);
                        methodWriter2.visitLabel(label13);
                    } else {
                        methodWriter2.visitInsn(1);
                    }
                    methodWriter2.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(cls2));
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo2));
                }
                str5 = str5;
                label5 = label5;
                label6 = label6;
                label7 = label7;
            }
            i10++;
            label6 = label6;
            label7 = label7;
            label5 = label5;
            str5 = str5;
        }
        java.lang.String str10 = str5;
        com.alibaba.fastjson.asm.Label label15 = label5;
        com.alibaba.fastjson.asm.Label label16 = label6;
        com.alibaba.fastjson.asm.Label label17 = label7;
        int i11 = 0;
        while (i11 < length) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo3 = context.fieldInfoList[i11];
            java.lang.Class<?> cls3 = fieldInfo3.fieldClass;
            java.lang.reflect.Type type2 = fieldInfo3.fieldType;
            com.alibaba.fastjson.asm.Label label18 = new com.alibaba.fastjson.asm.Label();
            if (cls3 == java.lang.Boolean.TYPE) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldBoolean", "([C)Z");
                methodWriter2.visitVarInsn(54, context.var_asm(fieldInfo3));
            } else {
                if (cls3 == java.lang.Byte.TYPE) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(25, 0);
                    methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                    methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldInt", "([C)I");
                    methodWriter2.visitVarInsn(54, context.var_asm(fieldInfo3));
                } else {
                    i5 = length;
                    label = label18;
                    if (cls3 == java.lang.Byte.class) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(25, 0);
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                        java.lang.String str11 = JSONLexerBase;
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str11, "scanFieldInt", "([C)I");
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                        com.alibaba.fastjson.asm.Label label19 = new com.alibaba.fastjson.asm.Label();
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str11, str8, str9);
                        methodWriter2.visitLdcInsn(5);
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label19);
                        methodWriter2.visitInsn(1);
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                        methodWriter2.visitLabel(label19);
                    } else if (cls3 == java.lang.Short.TYPE) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(25, 0);
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldInt", "([C)I");
                        methodWriter2.visitVarInsn(54, context.var_asm(fieldInfo3));
                    } else if (cls3 == java.lang.Short.class) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(25, 0);
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                        java.lang.String str12 = JSONLexerBase;
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str12, "scanFieldInt", "([C)I");
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                        com.alibaba.fastjson.asm.Label label20 = new com.alibaba.fastjson.asm.Label();
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str12, str8, str9);
                        methodWriter2.visitLdcInsn(5);
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label20);
                        methodWriter2.visitInsn(1);
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                        methodWriter2.visitLabel(label20);
                    } else if (cls3 == java.lang.Integer.TYPE) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(25, 0);
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldInt", "([C)I");
                        methodWriter2.visitVarInsn(54, context.var_asm(fieldInfo3));
                    } else if (cls3 == java.lang.Integer.class) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(25, 0);
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                        java.lang.String str13 = JSONLexerBase;
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str13, "scanFieldInt", "([C)I");
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                        com.alibaba.fastjson.asm.Label label21 = new com.alibaba.fastjson.asm.Label();
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str13, str8, str9);
                        methodWriter2.visitLdcInsn(5);
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label21);
                        methodWriter2.visitInsn(1);
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                        methodWriter2.visitLabel(label21);
                    } else if (cls3 == java.lang.Long.TYPE) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(25, 0);
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldLong", "([C)J");
                        methodWriter2.visitVarInsn(55, context.var_asm(fieldInfo3, 2));
                    } else if (cls3 == java.lang.Long.class) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(25, 0);
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                        java.lang.String str14 = JSONLexerBase;
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str14, "scanFieldLong", "([C)J");
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                        com.alibaba.fastjson.asm.Label label22 = new com.alibaba.fastjson.asm.Label();
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str14, str8, str9);
                        methodWriter2.visitLdcInsn(5);
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label22);
                        methodWriter2.visitInsn(1);
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                        methodWriter2.visitLabel(label22);
                    } else if (cls3 == java.lang.Float.TYPE) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(25, 0);
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldFloat", "([C)F");
                        methodWriter2.visitVarInsn(56, context.var_asm(fieldInfo3));
                    } else if (cls3 == java.lang.Float.class) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(25, 0);
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                        java.lang.String str15 = JSONLexerBase;
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str15, "scanFieldFloat", "([C)F");
                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                        com.alibaba.fastjson.asm.Label label23 = new com.alibaba.fastjson.asm.Label();
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str15, str8, str9);
                        methodWriter2.visitLdcInsn(5);
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label23);
                        methodWriter2.visitInsn(1);
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                        methodWriter2.visitLabel(label23);
                    } else {
                        if (cls3 == java.lang.Double.TYPE) {
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitVarInsn(25, 0);
                            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                            methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldDouble", "([C)D");
                            methodWriter2.visitVarInsn(57, context.var_asm(fieldInfo3, 2));
                        } else if (cls3 == java.lang.Double.class) {
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitVarInsn(25, 0);
                            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                            java.lang.String str16 = JSONLexerBase;
                            methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str16, "scanFieldDouble", "([C)D");
                            methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                            methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                            com.alibaba.fastjson.asm.Label label24 = new com.alibaba.fastjson.asm.Label();
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str16, str8, str9);
                            methodWriter2.visitLdcInsn(5);
                            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label24);
                            methodWriter2.visitInsn(1);
                            methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                            methodWriter2.visitLabel(label24);
                        } else {
                            if (cls3 == java.lang.String.class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(25, 0);
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldString", "([C)Ljava/lang/String;");
                                c5 = ':';
                                methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                            } else if (cls3 == java.util.Date.class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(25, 0);
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldDate", "([C)Ljava/util/Date;");
                                c5 = ':';
                                methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                            } else if (cls3 == java.util.UUID.class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(25, 0);
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldUUID", "([C)Ljava/util/UUID;");
                                c5 = ':';
                                methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                            } else if (cls3 == java.math.BigDecimal.class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(25, 0);
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldDecimal", "([C)Ljava/math/BigDecimal;");
                                c5 = ':';
                                methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                            } else if (cls3 == java.math.BigInteger.class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(25, 0);
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldBigInteger", "([C)Ljava/math/BigInteger;");
                                c5 = ':';
                                methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                            } else if (cls3 == int[].class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(25, 0);
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldIntArray", "([C)[I");
                                c5 = ':';
                                methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                            } else if (cls3 == float[].class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(25, 0);
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldFloatArray", "([C)[F");
                                c5 = ':';
                                methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                            } else if (cls3 == float[][].class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(25, 0);
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldFloatArray2", "([C)[[F");
                                c5 = ':';
                                methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                            } else if (cls3.isEnum()) {
                                methodWriter2.visitVarInsn(25, 0);
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(25, 0);
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                                _getFieldDeser(context, methodWriter2, fieldInfo3);
                                java.lang.String strType = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class);
                                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                                str10 = str10;
                                sb2.append(str10);
                                sb2.append(JSONLexerBase);
                                sb2.append(";[C");
                                sb2.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
                                sb2.append(")Ljava/lang/Enum;");
                                methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, strType, "scanEnum", sb2.toString());
                                methodWriter2.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(cls3));
                                methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                str4 = JSONLexerBase;
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                                com.alibaba.fastjson.asm.Label label25 = new com.alibaba.fastjson.asm.Label();
                                methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label25);
                                _setFlag(methodWriter2, context, i11);
                                methodWriter2.visitLabel(label25);
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                                methodWriter2.visitInsn(89);
                                methodWriter2.visitVarInsn(54, context.var(str8));
                                methodWriter2.visitLdcInsn(-1);
                                label4 = label15;
                                methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label4);
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                                com.alibaba.fastjson.asm.Label label26 = label;
                                methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label26);
                                methodWriter2.visitVarInsn(21, context.var("matchedCount"));
                                methodWriter2.visitInsn(4);
                                methodWriter2.visitInsn(96);
                                methodWriter2.visitVarInsn(54, context.var("matchedCount"));
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                                methodWriter2.visitLdcInsn(4);
                                label2 = label8;
                                methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label2);
                                methodWriter2.visitLabel(label26);
                                if (i11 == i5 - 1) {
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                                    methodWriter2.visitLdcInsn(4);
                                    methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label4);
                                }
                                str3 = str9;
                                str = str8;
                                str2 = str10;
                                i6 = i5;
                                methodWriter = methodWriter2;
                                label3 = label4;
                            } else {
                                str10 = str10;
                                if (java.util.Collection.class.isAssignableFrom(cls3)) {
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitVarInsn(25, 0);
                                    methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo3), "[C");
                                    java.lang.Class<?> collectionItemClass = com.alibaba.fastjson.util.TypeUtils.getCollectionItemClass(type2);
                                    if (collectionItemClass == java.lang.String.class) {
                                        methodWriter2.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls3)));
                                        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldStringArray", "([CLjava/lang/Class;)" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) java.util.Collection.class));
                                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo3));
                                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                                        str4 = JSONLexerBase;
                                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                                        com.alibaba.fastjson.asm.Label label27 = new com.alibaba.fastjson.asm.Label();
                                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label27);
                                        _setFlag(methodWriter2, context, i11);
                                        methodWriter2.visitLabel(label27);
                                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                                        methodWriter2.visitInsn(89);
                                        methodWriter2.visitVarInsn(54, context.var(str8));
                                        methodWriter2.visitLdcInsn(-1);
                                        label4 = label15;
                                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label4);
                                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                                        com.alibaba.fastjson.asm.Label label28 = label;
                                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label28);
                                        methodWriter2.visitVarInsn(21, context.var("matchedCount"));
                                        methodWriter2.visitInsn(4);
                                        methodWriter2.visitInsn(96);
                                        methodWriter2.visitVarInsn(54, context.var("matchedCount"));
                                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                                        methodWriter2.visitLdcInsn(4);
                                        label2 = label8;
                                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label2);
                                        methodWriter2.visitLabel(label28);
                                        if (i11 == i5 - 1) {
                                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                                            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                                            methodWriter2.visitLdcInsn(4);
                                            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label4);
                                        }
                                        str3 = str9;
                                        str = str8;
                                        str2 = str10;
                                        i6 = i5;
                                        methodWriter = methodWriter2;
                                        label3 = label4;
                                    } else {
                                        label2 = label8;
                                        str3 = str9;
                                        str = str8;
                                        i6 = i5;
                                        str2 = str10;
                                        methodWriter = methodWriter2;
                                        _deserialze_list_obj(context, methodWriter2, label15, fieldInfo3, cls3, collectionItemClass, i11);
                                        label3 = label15;
                                        if (i11 == i6 - 1) {
                                            _deserialize_endCheck(context, methodWriter, label3);
                                        }
                                    }
                                } else {
                                    str = str8;
                                    str2 = str10;
                                    methodWriter = methodWriter2;
                                    label2 = label8;
                                    label3 = label15;
                                    i6 = i5;
                                    str3 = str9;
                                    _deserialze_obj(context, methodWriter, label3, fieldInfo3, cls3, i11);
                                    if (i11 == i6 - 1) {
                                        _deserialize_endCheck(context, methodWriter, label3);
                                    }
                                }
                            }
                            str10 = str10;
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            str4 = JSONLexerBase;
                            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                            com.alibaba.fastjson.asm.Label label29 = new com.alibaba.fastjson.asm.Label();
                            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label29);
                            _setFlag(methodWriter2, context, i11);
                            methodWriter2.visitLabel(label29);
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                            methodWriter2.visitInsn(89);
                            methodWriter2.visitVarInsn(54, context.var(str8));
                            methodWriter2.visitLdcInsn(-1);
                            label4 = label15;
                            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label4);
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                            com.alibaba.fastjson.asm.Label label210 = label;
                            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label210);
                            methodWriter2.visitVarInsn(21, context.var("matchedCount"));
                            methodWriter2.visitInsn(4);
                            methodWriter2.visitInsn(96);
                            methodWriter2.visitVarInsn(54, context.var("matchedCount"));
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                            methodWriter2.visitLdcInsn(4);
                            label2 = label8;
                            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label2);
                            methodWriter2.visitLabel(label210);
                            if (i11 == i5 - 1) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                                methodWriter2.visitLdcInsn(4);
                                methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label4);
                            }
                            str3 = str9;
                            str = str8;
                            str2 = str10;
                            i6 = i5;
                            methodWriter = methodWriter2;
                            label3 = label4;
                        }
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        str4 = JSONLexerBase;
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                        com.alibaba.fastjson.asm.Label label211 = new com.alibaba.fastjson.asm.Label();
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label211);
                        _setFlag(methodWriter2, context, i11);
                        methodWriter2.visitLabel(label211);
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                        methodWriter2.visitInsn(89);
                        methodWriter2.visitVarInsn(54, context.var(str8));
                        methodWriter2.visitLdcInsn(-1);
                        label4 = label15;
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label4);
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                        com.alibaba.fastjson.asm.Label label212 = label;
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label212);
                        methodWriter2.visitVarInsn(21, context.var("matchedCount"));
                        methodWriter2.visitInsn(4);
                        methodWriter2.visitInsn(96);
                        methodWriter2.visitVarInsn(54, context.var("matchedCount"));
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                        methodWriter2.visitLdcInsn(4);
                        label2 = label8;
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label2);
                        methodWriter2.visitLabel(label212);
                        if (i11 == i5 - 1) {
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                            methodWriter2.visitLdcInsn(4);
                            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label4);
                        }
                        str3 = str9;
                        str = str8;
                        str2 = str10;
                        i6 = i5;
                        methodWriter = methodWriter2;
                        label3 = label4;
                    }
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    str4 = JSONLexerBase;
                    methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                    com.alibaba.fastjson.asm.Label label213 = new com.alibaba.fastjson.asm.Label();
                    methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label213);
                    _setFlag(methodWriter2, context, i11);
                    methodWriter2.visitLabel(label213);
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                    methodWriter2.visitInsn(89);
                    methodWriter2.visitVarInsn(54, context.var(str8));
                    methodWriter2.visitLdcInsn(-1);
                    label4 = label15;
                    methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label4);
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                    com.alibaba.fastjson.asm.Label label214 = label;
                    methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label214);
                    methodWriter2.visitVarInsn(21, context.var("matchedCount"));
                    methodWriter2.visitInsn(4);
                    methodWriter2.visitInsn(96);
                    methodWriter2.visitVarInsn(54, context.var("matchedCount"));
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                    methodWriter2.visitLdcInsn(4);
                    label2 = label8;
                    methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label2);
                    methodWriter2.visitLabel(label214);
                    if (i11 == i5 - 1) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                        methodWriter2.visitLdcInsn(4);
                        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label4);
                    }
                    str3 = str9;
                    str = str8;
                    str2 = str10;
                    i6 = i5;
                    methodWriter = methodWriter2;
                    label3 = label4;
                }
                i11++;
                label15 = label3;
                methodWriter2 = methodWriter;
                str9 = str3;
                str8 = str;
                length = i6;
                str10 = str2;
                label8 = label2;
            }
            i5 = length;
            label = label18;
            methodWriter2.visitVarInsn(25, context.var("lexer"));
            str4 = JSONLexerBase;
            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
            com.alibaba.fastjson.asm.Label label215 = new com.alibaba.fastjson.asm.Label();
            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label215);
            _setFlag(methodWriter2, context, i11);
            methodWriter2.visitLabel(label215);
            methodWriter2.visitVarInsn(25, context.var("lexer"));
            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
            methodWriter2.visitInsn(89);
            methodWriter2.visitVarInsn(54, context.var(str8));
            methodWriter2.visitLdcInsn(-1);
            label4 = label15;
            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label4);
            methodWriter2.visitVarInsn(25, context.var("lexer"));
            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
            com.alibaba.fastjson.asm.Label label216 = label;
            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFLE, label216);
            methodWriter2.visitVarInsn(21, context.var("matchedCount"));
            methodWriter2.visitInsn(4);
            methodWriter2.visitInsn(96);
            methodWriter2.visitVarInsn(54, context.var("matchedCount"));
            methodWriter2.visitVarInsn(25, context.var("lexer"));
            methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
            methodWriter2.visitLdcInsn(4);
            label2 = label8;
            methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label2);
            methodWriter2.visitLabel(label216);
            if (i11 == i5 - 1) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, str8, str9);
                methodWriter2.visitLdcInsn(4);
                methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label4);
            }
            str3 = str9;
            str = str8;
            str2 = str10;
            i6 = i5;
            methodWriter = methodWriter2;
            label3 = label4;
            i11++;
            label15 = label3;
            methodWriter2 = methodWriter;
            str9 = str3;
            str8 = str;
            length = i6;
            str10 = str2;
            label8 = label2;
        }
        int i12 = length;
        com.alibaba.fastjson.asm.MethodWriter methodWriter3 = methodWriter2;
        com.alibaba.fastjson.asm.Label label30 = label15;
        java.lang.String str17 = str10;
        methodWriter3.visitLabel(label8);
        if (!context.clazz.isInterface() && !java.lang.reflect.Modifier.isAbstract(context.clazz.getModifiers())) {
            _batchSet(context, methodWriter3);
        }
        methodWriter3.visitLabel(label17);
        _setContext(context, methodWriter3);
        methodWriter3.visitVarInsn(25, context.var("instance"));
        java.lang.reflect.Method method = context.beanInfo.buildMethod;
        if (method != null) {
            methodWriter3.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(context.getInstClass()), method.getName(), "()" + com.alibaba.fastjson.util.ASMUtils.desc(method.getReturnType()));
        }
        methodWriter3.visitInsn(com.alibaba.fastjson.asm.Opcodes.ARETURN);
        methodWriter3.visitLabel(label30);
        _batchSet(context, methodWriter3);
        methodWriter3.visitVarInsn(25, 0);
        methodWriter3.visitVarInsn(25, 1);
        methodWriter3.visitVarInsn(25, 2);
        methodWriter3.visitVarInsn(25, 3);
        methodWriter3.visitVarInsn(25, context.var("instance"));
        methodWriter3.visitVarInsn(21, 4);
        int i13 = i12 / 32;
        if (i12 != 0 && i12 % 32 != 0) {
            i13++;
        }
        if (i13 == 1) {
            methodWriter3.visitInsn(4);
        } else {
            methodWriter3.visitIntInsn(16, i13);
        }
        methodWriter3.visitIntInsn(com.alibaba.fastjson.asm.Opcodes.NEWARRAY, 10);
        for (int i14 = 0; i14 < i13; i14++) {
            methodWriter3.visitInsn(89);
            if (i14 == 0) {
                methodWriter3.visitInsn(3);
            } else if (i14 == 1) {
                methodWriter3.visitInsn(4);
            } else {
                methodWriter3.visitIntInsn(16, i14);
            }
            methodWriter3.visitVarInsn(21, context.var("_asm_flag_" + i14));
            methodWriter3.visitInsn(79);
        }
        java.lang.String strType2 = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class);
        java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
        sb3.append(str17);
        java.lang.String str18 = DefaultJSONParser;
        sb3.append(str18);
        sb3.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;");
        methodWriter3.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, strType2, "parseRest", sb3.toString());
        methodWriter3.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(context.clazz));
        methodWriter3.visitInsn(com.alibaba.fastjson.asm.Opcodes.ARETURN);
        methodWriter3.visitLabel(label16);
        methodWriter3.visitVarInsn(25, 0);
        methodWriter3.visitVarInsn(25, 1);
        methodWriter3.visitVarInsn(25, 2);
        methodWriter3.visitVarInsn(25, 3);
        methodWriter3.visitVarInsn(21, 4);
        methodWriter3.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "deserialze", str17 + str18 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
        methodWriter3.visitInsn(com.alibaba.fastjson.asm.Opcodes.ARETURN);
        methodWriter3.visitMaxs(10, context.variantIndex);
        methodWriter3.visitEnd();
    }

    private void _deserialzeArrayMapping(com.alibaba.fastjson.asm.ClassWriter classWriter, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context) {
        java.lang.Class<com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer> cls;
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr;
        char c5;
        boolean z4;
        int i5;
        int i6;
        char c6;
        java.lang.Class<com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer> cls2 = com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("(L");
        java.lang.String str = DefaultJSONParser;
        sb.append(str);
        sb.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
        com.alibaba.fastjson.asm.MethodWriter methodWriter = new com.alibaba.fastjson.asm.MethodWriter(classWriter, 1, "deserialzeArrayMapping", sb.toString(), null, null);
        defineVarLexer(context, methodWriter);
        methodWriter.visitVarInsn(25, context.var("lexer"));
        methodWriter.visitVarInsn(25, 1);
        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "getSymbolTable", "()" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.SymbolTable.class));
        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanTypeName", "(" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.SymbolTable.class) + ")Ljava/lang/String;");
        methodWriter.visitVarInsn(58, context.var("typeName"));
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodWriter.visitVarInsn(25, context.var("typeName"));
        methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNULL, label);
        methodWriter.visitVarInsn(25, 1);
        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "getConfig", "()" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class));
        methodWriter.visitVarInsn(25, 0);
        methodWriter.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, com.alibaba.fastjson.util.ASMUtils.type(cls2), "beanInfo", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.util.JavaBeanInfo.class));
        methodWriter.visitVarInsn(25, context.var("typeName"));
        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, com.alibaba.fastjson.util.ASMUtils.type(cls2), "getSeeAlso", "(" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class) + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.util.JavaBeanInfo.class) + "Ljava/lang/String;)" + com.alibaba.fastjson.util.ASMUtils.desc(cls2));
        methodWriter.visitVarInsn(58, context.var("userTypeDeser"));
        methodWriter.visitVarInsn(25, context.var("userTypeDeser"));
        methodWriter.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.INSTANCEOF, com.alibaba.fastjson.util.ASMUtils.type(cls2));
        methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
        methodWriter.visitVarInsn(25, context.var("userTypeDeser"));
        methodWriter.visitVarInsn(25, 1);
        methodWriter.visitVarInsn(25, 2);
        methodWriter.visitVarInsn(25, 3);
        methodWriter.visitVarInsn(25, 4);
        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(cls2), "deserialzeArrayMapping", "(L" + str + ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
        methodWriter.visitInsn(com.alibaba.fastjson.asm.Opcodes.ARETURN);
        methodWriter.visitLabel(label);
        _createInstance(context, methodWriter);
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr2 = context.beanInfo.sortedFields;
        int length = fieldInfoArr2.length;
        int i7 = 0;
        while (i7 < length) {
            boolean z5 = i7 == length + (-1);
            int i8 = z5 ? 93 : 44;
            com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldInfoArr2[i7];
            java.lang.Class<?> cls3 = fieldInfo.fieldClass;
            java.lang.reflect.Type type = fieldInfo.fieldType;
            int i9 = length;
            if (cls3 == java.lang.Byte.TYPE || cls3 == java.lang.Short.TYPE || cls3 == java.lang.Integer.TYPE) {
                methodWriter = methodWriter;
                cls = cls2;
                fieldInfoArr = fieldInfoArr2;
                i9 = i9;
                c5 = 184;
                z4 = true;
                i5 = i7;
                methodWriter.visitVarInsn(25, context.var("lexer"));
                methodWriter.visitVarInsn(16, i8);
                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanInt", "(C)I");
                methodWriter.visitVarInsn(54, context.var_asm(fieldInfo));
            } else {
                fieldInfoArr = fieldInfoArr2;
                boolean z6 = z5;
                if (cls3 == java.lang.Byte.class) {
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitVarInsn(16, i8);
                    java.lang.String str2 = JSONLexerBase;
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, "scanInt", "(C)I");
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str2, "matchStat", "I");
                    methodWriter.visitLdcInsn(5);
                    methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label2);
                    methodWriter.visitInsn(1);
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter.visitLabel(label2);
                } else if (cls3 == java.lang.Short.class) {
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitVarInsn(16, i8);
                    java.lang.String str3 = JSONLexerBase;
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str3, "scanInt", "(C)I");
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str3, "matchStat", "I");
                    methodWriter.visitLdcInsn(5);
                    methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label3);
                    methodWriter.visitInsn(1);
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter.visitLabel(label3);
                } else if (cls3 == java.lang.Integer.class) {
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitVarInsn(16, i8);
                    java.lang.String str4 = JSONLexerBase;
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str4, "scanInt", "(C)I");
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str4, "matchStat", "I");
                    methodWriter.visitLdcInsn(5);
                    methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label4);
                    methodWriter.visitInsn(1);
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter.visitLabel(label4);
                } else if (cls3 == java.lang.Long.TYPE) {
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitVarInsn(16, i8);
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanLong", "(C)J");
                    methodWriter.visitVarInsn(55, context.var_asm(fieldInfo, 2));
                } else if (cls3 == java.lang.Long.class) {
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitVarInsn(16, i8);
                    java.lang.String str5 = JSONLexerBase;
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str5, "scanLong", "(C)J");
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str5, "matchStat", "I");
                    methodWriter.visitLdcInsn(5);
                    methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label5);
                    methodWriter.visitInsn(1);
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter.visitLabel(label5);
                } else if (cls3 == java.lang.Boolean.TYPE) {
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitVarInsn(16, i8);
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanBoolean", "(C)Z");
                    methodWriter.visitVarInsn(54, context.var_asm(fieldInfo));
                } else if (cls3 == java.lang.Float.TYPE) {
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitVarInsn(16, i8);
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFloat", "(C)F");
                    methodWriter.visitVarInsn(56, context.var_asm(fieldInfo));
                } else if (cls3 == java.lang.Float.class) {
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitVarInsn(16, i8);
                    java.lang.String str6 = JSONLexerBase;
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str6, "scanFloat", "(C)F");
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    com.alibaba.fastjson.asm.Label label6 = new com.alibaba.fastjson.asm.Label();
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str6, "matchStat", "I");
                    methodWriter.visitLdcInsn(5);
                    methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label6);
                    methodWriter.visitInsn(1);
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter.visitLabel(label6);
                } else if (cls3 == java.lang.Double.TYPE) {
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitVarInsn(16, i8);
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanDouble", "(C)D");
                    methodWriter.visitVarInsn(57, context.var_asm(fieldInfo, 2));
                } else if (cls3 == java.lang.Double.class) {
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitVarInsn(16, i8);
                    java.lang.String str7 = JSONLexerBase;
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str7, "scanDouble", "(C)D");
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    com.alibaba.fastjson.asm.Label label7 = new com.alibaba.fastjson.asm.Label();
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str7, "matchStat", "I");
                    methodWriter.visitLdcInsn(5);
                    methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label7);
                    methodWriter.visitInsn(1);
                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter.visitLabel(label7);
                } else if (cls3 == java.lang.Character.TYPE) {
                    methodWriter.visitVarInsn(25, context.var("lexer"));
                    methodWriter.visitVarInsn(16, i8);
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanString", "(C)Ljava/lang/String;");
                    methodWriter.visitInsn(3);
                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, "java/lang/String", "charAt", "(I)C");
                    methodWriter.visitVarInsn(54, context.var_asm(fieldInfo));
                } else {
                    if (cls3 == java.lang.String.class) {
                        methodWriter.visitVarInsn(25, context.var("lexer"));
                        methodWriter.visitVarInsn(16, i8);
                        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanString", "(C)Ljava/lang/String;");
                        c6 = ':';
                        methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    } else if (cls3 == java.math.BigDecimal.class) {
                        methodWriter.visitVarInsn(25, context.var("lexer"));
                        methodWriter.visitVarInsn(16, i8);
                        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanDecimal", "(C)Ljava/math/BigDecimal;");
                        c6 = ':';
                        methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    } else if (cls3 == java.util.Date.class) {
                        methodWriter.visitVarInsn(25, context.var("lexer"));
                        methodWriter.visitVarInsn(16, i8);
                        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanDate", "(C)Ljava/util/Date;");
                        c6 = ':';
                        methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    } else if (cls3 == java.util.UUID.class) {
                        methodWriter.visitVarInsn(25, context.var("lexer"));
                        methodWriter.visitVarInsn(16, i8);
                        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanUUID", "(C)Ljava/util/UUID;");
                        c6 = ':';
                        methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                    } else if (cls3.isEnum()) {
                        com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
                        com.alibaba.fastjson.asm.Label label9 = new com.alibaba.fastjson.asm.Label();
                        com.alibaba.fastjson.asm.Label label10 = new com.alibaba.fastjson.asm.Label();
                        com.alibaba.fastjson.asm.Label label11 = new com.alibaba.fastjson.asm.Label();
                        int i10 = i7;
                        cls = cls2;
                        methodWriter.visitVarInsn(25, context.var("lexer"));
                        java.lang.String str8 = JSONLexerBase;
                        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str8, "getCurrent", "()C");
                        methodWriter.visitInsn(89);
                        methodWriter.visitVarInsn(54, context.var("ch"));
                        methodWriter.visitLdcInsn(110);
                        methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label11);
                        methodWriter.visitVarInsn(21, context.var("ch"));
                        methodWriter.visitLdcInsn(34);
                        methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label8);
                        methodWriter.visitLabel(label11);
                        methodWriter.visitVarInsn(25, context.var("lexer"));
                        methodWriter.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls3)));
                        methodWriter.visitVarInsn(25, 1);
                        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getSymbolTable", "()" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.SymbolTable.class));
                        methodWriter.visitVarInsn(16, i8);
                        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str8, "scanEnum", "(Ljava/lang/Class;" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.SymbolTable.class) + "C)Ljava/lang/Enum;");
                        methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label10);
                        methodWriter.visitLabel(label8);
                        methodWriter.visitVarInsn(21, context.var("ch"));
                        methodWriter.visitLdcInsn(48);
                        methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPLT, label9);
                        methodWriter.visitVarInsn(21, context.var("ch"));
                        methodWriter.visitLdcInsn(57);
                        methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPGT, label9);
                        _getFieldDeser(context, methodWriter, fieldInfo);
                        methodWriter.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.EnumDeserializer.class));
                        methodWriter.visitVarInsn(25, context.var("lexer"));
                        methodWriter.visitVarInsn(16, i8);
                        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str8, "scanInt", "(C)I");
                        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.EnumDeserializer.class), "valueOf", "(I)Ljava/lang/Enum;");
                        methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label10);
                        methodWriter.visitLabel(label9);
                        methodWriter.visitVarInsn(25, 0);
                        methodWriter.visitVarInsn(25, context.var("lexer"));
                        methodWriter.visitVarInsn(16, i8);
                        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(cls), "scanEnum", "(L" + str8 + ";C)Ljava/lang/Enum;");
                        methodWriter.visitLabel(label10);
                        methodWriter.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(cls3));
                        methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                        i5 = i10;
                        c5 = 184;
                        z4 = true;
                    } else {
                        int i11 = i7;
                        cls = cls2;
                        if (java.util.Collection.class.isAssignableFrom(cls3)) {
                            java.lang.Class<?> collectionItemClass = com.alibaba.fastjson.util.TypeUtils.getCollectionItemClass(type);
                            if (collectionItemClass == java.lang.String.class) {
                                if (cls3 == java.util.List.class || cls3 == java.util.Collections.class || cls3 == java.util.ArrayList.class) {
                                    methodWriter.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.NEW, com.alibaba.fastjson.util.ASMUtils.type(java.util.ArrayList.class));
                                    methodWriter.visitInsn(89);
                                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(java.util.ArrayList.class), "<init>", "()V");
                                } else {
                                    methodWriter.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls3)));
                                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.util.TypeUtils.class), "createCollection", "(Ljava/lang/Class;)Ljava/util/Collection;");
                                }
                                methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                                methodWriter.visitVarInsn(25, context.var("lexer"));
                                methodWriter.visitVarInsn(25, context.var_asm(fieldInfo));
                                methodWriter.visitVarInsn(16, i8);
                                java.lang.String str9 = JSONLexerBase;
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str9, "scanStringArray", "(Ljava/util/Collection;C)V");
                                com.alibaba.fastjson.asm.Label label12 = new com.alibaba.fastjson.asm.Label();
                                methodWriter.visitVarInsn(25, context.var("lexer"));
                                methodWriter.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str9, "matchStat", "I");
                                methodWriter.visitLdcInsn(5);
                                methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label12);
                                methodWriter.visitInsn(1);
                                methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                                methodWriter.visitLabel(label12);
                                i6 = i11;
                                c5 = 184;
                            } else {
                                com.alibaba.fastjson.asm.Label label13 = new com.alibaba.fastjson.asm.Label();
                                methodWriter.visitVarInsn(25, context.var("lexer"));
                                java.lang.String str10 = JSONLexerBase;
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str10, "token", "()I");
                                methodWriter.visitVarInsn(54, context.var("token"));
                                methodWriter.visitVarInsn(21, context.var("token"));
                                int i12 = i11 == 0 ? 14 : 16;
                                methodWriter.visitLdcInsn(java.lang.Integer.valueOf(i12));
                                methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label13);
                                methodWriter.visitVarInsn(25, 1);
                                methodWriter.visitLdcInsn(java.lang.Integer.valueOf(i12));
                                java.lang.String str11 = DefaultJSONParser;
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str11, "throwException", "(I)V");
                                methodWriter.visitLabel(label13);
                                com.alibaba.fastjson.asm.Label label14 = new com.alibaba.fastjson.asm.Label();
                                com.alibaba.fastjson.asm.Label label15 = new com.alibaba.fastjson.asm.Label();
                                methodWriter.visitVarInsn(25, context.var("lexer"));
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str10, "getCurrent", "()C");
                                methodWriter.visitVarInsn(16, 91);
                                methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label14);
                                methodWriter.visitVarInsn(25, context.var("lexer"));
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str10, "next", "()C");
                                methodWriter.visitInsn(87);
                                methodWriter.visitVarInsn(25, context.var("lexer"));
                                methodWriter.visitLdcInsn(14);
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str10, "setToken", "(I)V");
                                methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label15);
                                methodWriter.visitLabel(label14);
                                methodWriter.visitVarInsn(25, context.var("lexer"));
                                methodWriter.visitLdcInsn(14);
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str10, "nextToken", "(I)V");
                                methodWriter.visitLabel(label15);
                                i6 = i11;
                                _newCollection(methodWriter, cls3, i6, false);
                                methodWriter.visitInsn(89);
                                methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                                _getCollectionFieldItemDeser(context, methodWriter, fieldInfo, collectionItemClass);
                                methodWriter.visitVarInsn(25, 1);
                                methodWriter.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(collectionItemClass)));
                                methodWriter.visitVarInsn(25, 3);
                                c5 = 184;
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, com.alibaba.fastjson.util.ASMUtils.type(cls), "parseArray", "(Ljava/util/Collection;" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class) + "L" + str11 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)V");
                            }
                            i5 = i6;
                            z4 = true;
                        } else {
                            c5 = 184;
                            if (cls3.isArray()) {
                                methodWriter.visitVarInsn(25, context.var("lexer"));
                                methodWriter.visitLdcInsn(14);
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "nextToken", "(I)V");
                                z4 = true;
                                methodWriter.visitVarInsn(25, 1);
                                methodWriter.visitVarInsn(25, 0);
                                methodWriter.visitLdcInsn(java.lang.Integer.valueOf(i11));
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(cls), "getFieldType", "(I)Ljava/lang/reflect/Type;");
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "parseObject", "(Ljava/lang/reflect/Type;)Ljava/lang/Object;");
                                methodWriter.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(cls3));
                                methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                                i5 = i11;
                                methodWriter = methodWriter;
                                i9 = i9;
                            } else {
                                z4 = true;
                                com.alibaba.fastjson.asm.Label label16 = new com.alibaba.fastjson.asm.Label();
                                com.alibaba.fastjson.asm.Label label17 = new com.alibaba.fastjson.asm.Label();
                                if (cls3 == java.util.Date.class) {
                                    methodWriter.visitVarInsn(25, context.var("lexer"));
                                    java.lang.String str12 = JSONLexerBase;
                                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str12, "getCurrent", "()C");
                                    methodWriter.visitLdcInsn(49);
                                    methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label16);
                                    methodWriter.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.NEW, com.alibaba.fastjson.util.ASMUtils.type(java.util.Date.class));
                                    methodWriter.visitInsn(89);
                                    methodWriter.visitVarInsn(25, context.var("lexer"));
                                    methodWriter.visitVarInsn(16, i8);
                                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str12, "scanLong", "(C)J");
                                    methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(java.util.Date.class), "<init>", "(J)V");
                                    methodWriter.visitVarInsn(58, context.var_asm(fieldInfo));
                                    methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label17);
                                }
                                methodWriter.visitLabel(label16);
                                _quickNextToken(context, methodWriter, 14);
                                i5 = i11;
                                i9 = i9;
                                methodWriter = methodWriter;
                                _deserObject(context, methodWriter, fieldInfo, cls3, i5);
                                methodWriter.visitVarInsn(25, context.var("lexer"));
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
                                methodWriter.visitLdcInsn(15);
                                methodWriter.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label17);
                                methodWriter.visitVarInsn(25, 0);
                                methodWriter.visitVarInsn(25, context.var("lexer"));
                                if (z6) {
                                    methodWriter.visitLdcInsn(15);
                                } else {
                                    methodWriter.visitLdcInsn(16);
                                }
                                methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(cls), "check", "(" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.JSONLexer.class) + "I)V");
                                methodWriter.visitLabel(label17);
                            }
                        }
                    }
                    i5 = i7;
                    cls = cls2;
                    c5 = 184;
                    z4 = true;
                }
                i5 = i7;
                cls = cls2;
                c5 = 184;
                z4 = true;
            }
            i7 = i5 + 1;
            methodWriter = methodWriter;
            length = i9;
            fieldInfoArr2 = fieldInfoArr;
            cls2 = cls;
        }
        com.alibaba.fastjson.asm.MethodWriter methodWriter2 = methodWriter;
        _batchSet(context, methodWriter2, false);
        com.alibaba.fastjson.asm.Label label18 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label19 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label20 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label21 = new com.alibaba.fastjson.asm.Label();
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        java.lang.String str13 = JSONLexerBase;
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str13, "getCurrent", "()C");
        methodWriter2.visitInsn(89);
        methodWriter2.visitVarInsn(54, context.var("ch"));
        methodWriter2.visitVarInsn(16, 44);
        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label19);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str13, "next", "()C");
        methodWriter2.visitInsn(87);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitLdcInsn(16);
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str13, "setToken", "(I)V");
        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label21);
        methodWriter2.visitLabel(label19);
        methodWriter2.visitVarInsn(21, context.var("ch"));
        methodWriter2.visitVarInsn(16, 93);
        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label20);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str13, "next", "()C");
        methodWriter2.visitInsn(87);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitLdcInsn(15);
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str13, "setToken", "(I)V");
        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label21);
        methodWriter2.visitLabel(label20);
        methodWriter2.visitVarInsn(21, context.var("ch"));
        methodWriter2.visitVarInsn(16, 26);
        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label18);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str13, "next", "()C");
        methodWriter2.visitInsn(87);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitLdcInsn(20);
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str13, "setToken", "(I)V");
        methodWriter2.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label21);
        methodWriter2.visitLabel(label18);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitLdcInsn(16);
        methodWriter2.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str13, "nextToken", "(I)V");
        methodWriter2.visitLabel(label21);
        methodWriter2.visitVarInsn(25, context.var("instance"));
        methodWriter2.visitInsn(com.alibaba.fastjson.asm.Opcodes.ARETURN);
        methodWriter2.visitMaxs(5, context.variantIndex);
        methodWriter2.visitEnd();
    }

    private void _deserialze_list_obj(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.asm.Label label, com.alibaba.fastjson.util.FieldInfo fieldInfo, java.lang.Class<?> cls, java.lang.Class<?> cls2, int i5) {
        java.lang.String str;
        java.lang.String str2;
        int i6;
        int i7;
        int i8;
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        java.lang.String str3 = JSONLexerBase;
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str3, "matchField", "([C)Z");
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label2);
        _setFlag(methodVisitor, context, i5);
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str3, "token", "()I");
        methodVisitor.visitLdcInsn(8);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label3);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str3, "nextToken", "(I)V");
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label2);
        methodVisitor.visitLabel(label3);
        com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label6 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str3, "token", "()I");
        methodVisitor.visitLdcInsn(21);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label5);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(14);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str3, "nextToken", "(I)V");
        _newCollection(methodVisitor, cls, i5, true);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label4);
        methodVisitor.visitLabel(label5);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str3, "token", "()I");
        methodVisitor.visitLdcInsn(14);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label6);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str3, "token", "()I");
        methodVisitor.visitLdcInsn(12);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label);
        _newCollection(methodVisitor, cls, i5, false);
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        _getCollectionFieldItemDeser(context, methodVisitor, fieldInfo, cls2);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
        methodVisitor.visitInsn(3);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        java.lang.String strType = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("(L");
        java.lang.String str4 = DefaultJSONParser;
        sb.append(str4);
        sb.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, strType, "deserialze", sb.toString());
        methodVisitor.visitVarInsn(58, context.var("list_item_value"));
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitVarInsn(25, context.var("list_item_value"));
        if (cls.isInterface()) {
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, com.alibaba.fastjson.util.ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        } else {
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        }
        methodVisitor.visitInsn(87);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label2);
        methodVisitor.visitLabel(label6);
        _newCollection(methodVisitor, cls, i5, false);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        boolean zIsPrimitive2 = com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(fieldInfo.fieldClass);
        _getCollectionFieldItemDeser(context, methodVisitor, fieldInfo, cls2);
        if (zIsPrimitive2) {
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class), "getFastMatchToken", "()I");
            methodVisitor.visitVarInsn(54, context.var("fastMatchToken"));
            methodVisitor.visitVarInsn(25, context.var("lexer"));
            methodVisitor.visitVarInsn(21, context.var("fastMatchToken"));
            str = "nextToken";
            str2 = str3;
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, str, "(I)V");
        } else {
            str = "nextToken";
            str2 = str3;
            methodVisitor.visitInsn(87);
            methodVisitor.visitLdcInsn(12);
            methodVisitor.visitVarInsn(54, context.var("fastMatchToken"));
            _quickNextToken(context, methodVisitor, 12);
        }
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str4, "getContext", "()" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        methodVisitor.visitVarInsn(58, context.var("listContext"));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitLdcInsn(fieldInfo.name);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str4, "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        methodVisitor.visitInsn(87);
        com.alibaba.fastjson.asm.Label label7 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitInsn(3);
        methodVisitor.visitVarInsn(54, context.var("i"));
        methodVisitor.visitLabel(label7);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, "token", "()I");
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, label8);
        methodVisitor.visitVarInsn(25, 0);
        java.lang.String str5 = context.className;
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
        java.lang.String str6 = str;
        sb2.append(fieldInfo.name);
        sb2.append("_asm_list_item_deser__");
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, str5, sb2.toString(), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
        methodVisitor.visitVarInsn(21, context.var("i"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class), "deserialze", "(L" + str4 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        methodVisitor.visitVarInsn(58, context.var("list_item_value"));
        methodVisitor.visitIincInsn(context.var("i"), 1);
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitVarInsn(25, context.var("list_item_value"));
        if (cls.isInterface()) {
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, com.alibaba.fastjson.util.ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
            i7 = 87;
            i6 = com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL;
        } else {
            java.lang.String strType2 = com.alibaba.fastjson.util.ASMUtils.type(cls);
            i6 = com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL;
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, strType2, "add", "(Ljava/lang/Object;)Z");
            i7 = 87;
        }
        methodVisitor.visitInsn(i7);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitMethodInsn(i6, str4, "checkListResolve", "(Ljava/util/Collection;)V");
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(i6, str2, "token", "()I");
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label7);
        if (zIsPrimitive2) {
            methodVisitor.visitVarInsn(25, context.var("lexer"));
            methodVisitor.visitVarInsn(21, context.var("fastMatchToken"));
            methodVisitor.visitMethodInsn(i6, str2, str6, "(I)V");
            i8 = com.alibaba.fastjson.asm.Opcodes.GOTO;
        } else {
            _quickNextToken(context, methodVisitor, 12);
            i8 = com.alibaba.fastjson.asm.Opcodes.GOTO;
        }
        methodVisitor.visitJumpInsn(i8, label7);
        methodVisitor.visitLabel(label8);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var("listContext"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str4, "setContext", "(" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class) + ")V");
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str2, "token", "()I");
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label);
        _quickNextTokenComma(context, methodVisitor);
        methodVisitor.visitLabel(label2);
    }

    private void _deserialze_obj(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.asm.Label label, com.alibaba.fastjson.util.FieldInfo fieldInfo, java.lang.Class<?> cls, int i5) {
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldName(fieldInfo), "[C");
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, JSONLexerBase, "matchField", "([C)Z");
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNE, label2);
        methodVisitor.visitInsn(1);
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label3);
        methodVisitor.visitLabel(label2);
        _setFlag(methodVisitor, context, i5);
        methodVisitor.visitVarInsn(21, context.var("matchedCount"));
        methodVisitor.visitInsn(4);
        methodVisitor.visitInsn(96);
        methodVisitor.visitVarInsn(54, context.var("matchedCount"));
        _deserObject(context, methodVisitor, fieldInfo, cls, i5);
        methodVisitor.visitVarInsn(25, 1);
        java.lang.String str = DefaultJSONParser;
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "getResolveStatus", "()I");
        methodVisitor.visitLdcInsn(1);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label3);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "getLastResolveTask", "()" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask.class));
        methodVisitor.visitVarInsn(58, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "getContext", "()" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.PUTFIELD, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask.class), "ownerContext", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        methodVisitor.visitVarInsn(25, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitLdcInsn(fieldInfo.name);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "getFieldDeserializer", "(Ljava/lang/String;)" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.FieldDeserializer.class));
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.PUTFIELD, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask.class), "fieldDeserializer", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.FieldDeserializer.class));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(0);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "setResolveStatus", "(I)V");
        methodVisitor.visitLabel(label3);
    }

    private void _getCollectionFieldItemDeser(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, java.lang.Class<?> cls) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_list_item_deser__", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getConfig", "()" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class));
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls)));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.ParserConfig.class), "getDeserializer", "(Ljava/lang/reflect/Type;)" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.PUTFIELD, context.className, fieldInfo.name + "_asm_list_item_deser__", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_list_item_deser__", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
    }

    private void _getFieldDeser(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldDeserName(fieldInfo), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNONNULL, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getConfig", "()" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class));
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass)));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.ParserConfig.class), "getDeserializer", "(Ljava/lang/reflect/Type;)" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.PUTFIELD, context.className, context.fieldDeserName(fieldInfo), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, context.className, context.fieldDeserName(fieldInfo), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
    }

    private void _init(com.alibaba.fastjson.asm.ClassWriter classWriter, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context) {
        int length = context.fieldInfoList.length;
        for (int i5 = 0; i5 < length; i5++) {
            new com.alibaba.fastjson.asm.FieldWriter(classWriter, 1, context.fieldName(context.fieldInfoList[i5]), "[C").visitEnd();
        }
        int length2 = context.fieldInfoList.length;
        for (int i6 = 0; i6 < length2; i6++) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo = context.fieldInfoList[i6];
            java.lang.Class<?> cls = fieldInfo.fieldClass;
            if (!cls.isPrimitive()) {
                if (java.util.Collection.class.isAssignableFrom(cls)) {
                    new com.alibaba.fastjson.asm.FieldWriter(classWriter, 1, fieldInfo.name + "_asm_list_item_deser__", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class)).visitEnd();
                } else {
                    new com.alibaba.fastjson.asm.FieldWriter(classWriter, 1, context.fieldDeserName(fieldInfo), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class)).visitEnd();
                }
            }
        }
        com.alibaba.fastjson.asm.MethodWriter methodWriter = new com.alibaba.fastjson.asm.MethodWriter(classWriter, 1, "<init>", "(" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class) + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.util.JavaBeanInfo.class) + ")V", null, null);
        methodWriter.visitVarInsn(25, 0);
        methodWriter.visitVarInsn(25, 1);
        methodWriter.visitVarInsn(25, 2);
        methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "<init>", "(" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class) + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.util.JavaBeanInfo.class) + ")V");
        int length3 = context.fieldInfoList.length;
        for (int i7 = 0; i7 < length3; i7++) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo2 = context.fieldInfoList[i7];
            methodWriter.visitVarInsn(25, 0);
            methodWriter.visitLdcInsn("\"" + fieldInfo2.name + "\":");
            methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, "java/lang/String", "toCharArray", "()[C");
            methodWriter.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.PUTFIELD, context.className, context.fieldName(fieldInfo2), "[C");
        }
        methodWriter.visitInsn(com.alibaba.fastjson.asm.Opcodes.RETURN);
        methodWriter.visitMaxs(4, 4);
        methodWriter.visitEnd();
    }

    private void _isFlag(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, int i5, com.alibaba.fastjson.asm.Label label) {
        methodVisitor.visitVarInsn(21, context.var("_asm_flag_" + (i5 / 32)));
        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(1 << i5));
        methodVisitor.visitInsn(com.alibaba.fastjson.asm.Opcodes.IAND);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFEQ, label);
    }

    private void _loadAndSet(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        java.lang.reflect.Type type = fieldInfo.fieldType;
        if (cls == java.lang.Boolean.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(21, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == java.lang.Byte.TYPE || cls == java.lang.Short.TYPE || cls == java.lang.Integer.TYPE || cls == java.lang.Character.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(21, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == java.lang.Long.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(22, context.var_asm(fieldInfo, 2));
            if (fieldInfo.method == null) {
                methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.PUTFIELD, com.alibaba.fastjson.util.ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass));
                return;
            }
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(context.getInstClass()), fieldInfo.method.getName(), com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.method));
            if (fieldInfo.method.getReturnType().equals(java.lang.Void.TYPE)) {
                return;
            }
            methodVisitor.visitInsn(87);
            return;
        }
        if (cls == java.lang.Float.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(23, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == java.lang.Double.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(24, context.var_asm(fieldInfo, 2));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == java.lang.String.class) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls.isEnum()) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
        } else if (!java.util.Collection.class.isAssignableFrom(cls)) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
        } else {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            if (com.alibaba.fastjson.util.TypeUtils.getCollectionItemClass(type) == java.lang.String.class) {
                methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
                methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(cls));
            } else {
                methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
            }
            _set(context, methodVisitor, fieldInfo);
        }
    }

    private void _newCollection(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, java.lang.Class<?> cls, int i5, boolean z4) {
        if (cls.isAssignableFrom(java.util.ArrayList.class) && !z4) {
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.NEW, "java/util/ArrayList");
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, "java/util/ArrayList", "<init>", "()V");
        } else if (cls.isAssignableFrom(java.util.LinkedList.class) && !z4) {
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.NEW, com.alibaba.fastjson.util.ASMUtils.type(java.util.LinkedList.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(java.util.LinkedList.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(java.util.HashSet.class)) {
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.NEW, com.alibaba.fastjson.util.ASMUtils.type(java.util.HashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(java.util.HashSet.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(java.util.TreeSet.class)) {
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.NEW, com.alibaba.fastjson.util.ASMUtils.type(java.util.TreeSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(java.util.TreeSet.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(java.util.LinkedHashSet.class)) {
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.NEW, com.alibaba.fastjson.util.ASMUtils.type(java.util.LinkedHashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(java.util.LinkedHashSet.class), "<init>", "()V");
        } else if (z4) {
            methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.NEW, com.alibaba.fastjson.util.ASMUtils.type(java.util.HashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(java.util.HashSet.class), "<init>", "()V");
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i5));
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESTATIC, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.util.TypeUtils.class), "createCollection", "(Ljava/lang/reflect/Type;)Ljava/util/Collection;");
        }
        methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, com.alibaba.fastjson.util.ASMUtils.type(cls));
    }

    private void _quickNextToken(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, int i5) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        java.lang.String str = JSONLexerBase;
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "getCurrent", "()C");
        if (i5 == 12) {
            methodVisitor.visitVarInsn(16, 123);
        } else {
            if (i5 != 14) {
                throw new java.lang.IllegalStateException();
            }
            methodVisitor.visitVarInsn(16, 91);
        }
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i5));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label2);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i5));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "nextToken", "(I)V");
        methodVisitor.visitLabel(label2);
    }

    private void _quickNextTokenComma(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        java.lang.String str = JSONLexerBase;
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "getCurrent", "()C");
        methodVisitor.visitInsn(89);
        methodVisitor.visitVarInsn(54, context.var("ch"));
        methodVisitor.visitVarInsn(16, 44);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label2);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label5);
        methodVisitor.visitLabel(label2);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 125);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label3);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(13);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label5);
        methodVisitor.visitLabel(label3);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 93);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label4);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label5);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 26);
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(20);
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.GOTO, label5);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, str, "nextToken", "()V");
        methodVisitor.visitLabel(label5);
    }

    private void _set(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        java.lang.reflect.Method method = fieldInfo.method;
        if (method == null) {
            methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.PUTFIELD, com.alibaba.fastjson.util.ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass));
            return;
        }
        methodVisitor.visitMethodInsn(method.getDeclaringClass().isInterface() ? com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE : com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, com.alibaba.fastjson.util.ASMUtils.type(fieldInfo.declaringClass), method.getName(), com.alibaba.fastjson.util.ASMUtils.desc(method));
        if (fieldInfo.method.getReturnType().equals(java.lang.Void.TYPE)) {
            return;
        }
        methodVisitor.visitInsn(87);
    }

    private void _setContext(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor) {
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var("context"));
        methodVisitor.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "setContext", "(" + com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class) + ")V");
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("childContext"));
        methodVisitor.visitJumpInsn(com.alibaba.fastjson.asm.Opcodes.IFNULL, label);
        methodVisitor.visitVarInsn(25, context.var("childContext"));
        methodVisitor.visitVarInsn(25, context.var("instance"));
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.PUTFIELD, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.ParseContext.class), "object", "Ljava/lang/Object;");
        methodVisitor.visitLabel(label);
    }

    private void _setFlag(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, int i5) {
        java.lang.String str = "_asm_flag_" + (i5 / 32);
        methodVisitor.visitVarInsn(21, context.var(str));
        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(1 << i5));
        methodVisitor.visitInsn(com.alibaba.fastjson.asm.Opcodes.IOR);
        methodVisitor.visitVarInsn(54, context.var(str));
    }

    private void defineVarLexer(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor) {
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitFieldInsn(com.alibaba.fastjson.asm.Opcodes.GETFIELD, DefaultJSONParser, "lexer", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.JSONLexer.class));
        methodVisitor.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.CHECKCAST, JSONLexerBase);
        methodVisitor.visitVarInsn(58, context.var("lexer"));
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer createJavaBeanDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo) throws java.lang.Exception {
        java.lang.String str;
        java.lang.Class<?> cls = javaBeanInfo.clazz;
        if (cls.isPrimitive()) {
            throw new java.lang.IllegalArgumentException("not support type :" + cls.getName());
        }
        java.lang.String str2 = "FastjsonASMDeserializer_" + this.seed.incrementAndGet() + "_" + cls.getSimpleName();
        java.lang.Package r5 = com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.class.getPackage();
        if (r5 != null) {
            java.lang.String name = r5.getName();
            java.lang.String str3 = name.replace('.', '/') + "/" + str2;
            str = name + "." + str2;
            str2 = str3;
        } else {
            str = str2;
        }
        com.alibaba.fastjson.asm.ClassWriter classWriter = new com.alibaba.fastjson.asm.ClassWriter();
        classWriter.visit(49, 33, str2, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), null);
        _init(classWriter, new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context(str2, parserConfig, javaBeanInfo, 3));
        _createInstance(classWriter, new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context(str2, parserConfig, javaBeanInfo, 3));
        _deserialze(classWriter, new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context(str2, parserConfig, javaBeanInfo, 5));
        _deserialzeArrayMapping(classWriter, new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context(str2, parserConfig, javaBeanInfo, 4));
        byte[] byteArray = classWriter.toByteArray();
        return (com.alibaba.fastjson.parser.deserializer.ObjectDeserializer) this.classLoader.defineClassPublic(str, byteArray, 0, byteArray.length).getConstructor(com.alibaba.fastjson.parser.ParserConfig.class, com.alibaba.fastjson.util.JavaBeanInfo.class).newInstance(parserConfig, javaBeanInfo);
    }

    private void _batchSet(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, boolean z4) {
        int length = context.fieldInfoList.length;
        for (int i5 = 0; i5 < length; i5++) {
            com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
            if (z4) {
                _isFlag(methodVisitor, context, i5, label);
            }
            _loadAndSet(context, methodVisitor, context.fieldInfoList[i5]);
            if (z4) {
                methodVisitor.visitLabel(label);
            }
        }
    }

    private void _createInstance(com.alibaba.fastjson.asm.ClassWriter classWriter, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context) {
        if (java.lang.reflect.Modifier.isPublic(context.beanInfo.defaultConstructor.getModifiers())) {
            com.alibaba.fastjson.asm.MethodWriter methodWriter = new com.alibaba.fastjson.asm.MethodWriter(classWriter, 1, "createInstance", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;)Ljava/lang/Object;", null, null);
            methodWriter.visitTypeInsn(com.alibaba.fastjson.asm.Opcodes.NEW, com.alibaba.fastjson.util.ASMUtils.type(context.getInstClass()));
            methodWriter.visitInsn(89);
            methodWriter.visitMethodInsn(com.alibaba.fastjson.asm.Opcodes.INVOKESPECIAL, com.alibaba.fastjson.util.ASMUtils.type(context.getInstClass()), "<init>", "()V");
            methodWriter.visitInsn(com.alibaba.fastjson.asm.Opcodes.ARETURN);
            methodWriter.visitMaxs(3, 3);
            methodWriter.visitEnd();
        }
    }
}
