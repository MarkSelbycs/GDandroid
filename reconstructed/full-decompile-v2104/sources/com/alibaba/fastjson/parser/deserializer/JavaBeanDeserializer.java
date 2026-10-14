package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JavaBeanDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    private final java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> alterNameFieldDeserializers;
    private final com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler autoTypeCheckHandler;
    public final com.alibaba.fastjson.util.JavaBeanInfo beanInfo;
    public final java.lang.Class<?> clazz;
    private java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Object> extraFieldDeserializers;
    private java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> fieldDeserializerMap;
    private final com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializers;
    private transient long[] hashArray;
    private transient short[] hashArrayMapping;
    private transient long[] smartMatchHashArray;
    private transient short[] smartMatchHashArrayMapping;
    public final com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] sortedFieldDeserializers;

    public JavaBeanDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Class<?> cls) {
        this(parserConfig, cls, cls);
    }

    private java.lang.Object createFactoryInstance(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Object obj) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        return this.beanInfo.factoryMethod.invoke(null, obj);
    }

    public static com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer getSeeAlso(com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo, java.lang.String str) {
        com.alibaba.fastjson.annotation.JSONType jSONType = javaBeanInfo.jsonType;
        if (jSONType == null) {
            return null;
        }
        for (java.lang.Class<?> cls : jSONType.seeAlso()) {
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = parserConfig.getDeserializer(cls);
            if (deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) {
                com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer;
                com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo2 = javaBeanDeserializer.beanInfo;
                if (javaBeanInfo2.typeName.equals(str)) {
                    return javaBeanDeserializer;
                }
                com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer seeAlso = getSeeAlso(parserConfig, javaBeanInfo2, str);
                if (seeAlso != null) {
                    return seeAlso;
                }
            }
        }
        return null;
    }

    public static boolean isSetFlag(int i5, int[] iArr) {
        int i6;
        if (iArr != null && (i6 = i5 / 32) < iArr.length) {
            return ((1 << (i5 % 32)) & iArr[i6]) != 0;
        }
        return false;
    }

    public static void parseArray(java.util.Collection collection, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase = (com.alibaba.fastjson.parser.JSONLexerBase) defaultJSONParser.lexer;
        int i5 = jSONLexerBase.token();
        if (i5 == 8) {
            jSONLexerBase.nextToken(16);
            jSONLexerBase.token();
            return;
        }
        if (i5 != 14) {
            defaultJSONParser.throwException(i5);
        }
        if (jSONLexerBase.getCurrent() == '[') {
            jSONLexerBase.next();
            jSONLexerBase.setToken(14);
        } else {
            jSONLexerBase.nextToken(14);
        }
        if (jSONLexerBase.token() == 15) {
            jSONLexerBase.nextToken();
            return;
        }
        int i6 = 0;
        while (true) {
            collection.add(objectDeserializer.deserialze(defaultJSONParser, type, java.lang.Integer.valueOf(i6)));
            i6++;
            if (jSONLexerBase.token() != 16) {
                break;
            }
            if (jSONLexerBase.getCurrent() == '[') {
                jSONLexerBase.next();
                jSONLexerBase.setToken(14);
            } else {
                jSONLexerBase.nextToken(14);
            }
        }
        int i7 = jSONLexerBase.token();
        if (i7 != 15) {
            defaultJSONParser.throwException(i7);
        }
        if (jSONLexerBase.getCurrent() != ',') {
            jSONLexerBase.nextToken(16);
        } else {
            jSONLexerBase.next();
            jSONLexerBase.setToken(16);
        }
    }

    public void check(com.alibaba.fastjson.parser.JSONLexer jSONLexer, int i5) {
        if (jSONLexer.token() != i5) {
            throw new com.alibaba.fastjson.JSONException("syntax error");
        }
    }

    public java.lang.Object createInstance(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type) {
        java.lang.Object objNewInstance;
        if ((type instanceof java.lang.Class) && this.clazz.isInterface()) {
            return java.lang.reflect.Proxy.newProxyInstance(java.lang.Thread.currentThread().getContextClassLoader(), new java.lang.Class[]{(java.lang.Class) type}, new com.alibaba.fastjson.JSONObject());
        }
        com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo = this.beanInfo;
        java.lang.reflect.Constructor<?> constructor = javaBeanInfo.defaultConstructor;
        java.lang.Object obj = null;
        if (constructor == null && javaBeanInfo.factoryMethod == null) {
            return null;
        }
        java.lang.reflect.Method method = javaBeanInfo.factoryMethod;
        if (method != null && javaBeanInfo.defaultConstructorParameterSize > 0) {
            return null;
        }
        try {
            if (javaBeanInfo.defaultConstructorParameterSize == 0) {
                objNewInstance = constructor != null ? constructor.newInstance(new java.lang.Object[0]) : method.invoke(null, new java.lang.Object[0]);
            } else {
                com.alibaba.fastjson.parser.ParseContext context = defaultJSONParser.getContext();
                if (context == null || context.object == null) {
                    throw new com.alibaba.fastjson.JSONException("can't create non-static inner class instance.");
                }
                if (!(type instanceof java.lang.Class)) {
                    throw new com.alibaba.fastjson.JSONException("can't create non-static inner class instance.");
                }
                java.lang.String name = ((java.lang.Class) type).getName();
                java.lang.String strSubstring = name.substring(0, name.lastIndexOf(36));
                java.lang.Object obj2 = context.object;
                java.lang.String name2 = obj2.getClass().getName();
                if (!name2.equals(strSubstring)) {
                    com.alibaba.fastjson.parser.ParseContext parseContext = context.parent;
                    if (parseContext == null || parseContext.object == null || !("java.util.ArrayList".equals(name2) || "java.util.List".equals(name2) || "java.util.Collection".equals(name2) || "java.util.Map".equals(name2) || "java.util.HashMap".equals(name2))) {
                        obj = obj2;
                    } else if (parseContext.object.getClass().getName().equals(strSubstring)) {
                        obj = parseContext.object;
                    }
                    obj2 = obj;
                }
                if (obj2 == null || ((obj2 instanceof java.util.Collection) && ((java.util.Collection) obj2).isEmpty())) {
                    throw new com.alibaba.fastjson.JSONException("can't create non-static inner class instance.");
                }
                objNewInstance = constructor.newInstance(obj2);
            }
            if (defaultJSONParser != null && defaultJSONParser.lexer.isEnabled(com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty)) {
                for (com.alibaba.fastjson.util.FieldInfo fieldInfo : this.beanInfo.fields) {
                    if (fieldInfo.fieldClass == java.lang.String.class) {
                        try {
                            fieldInfo.set(objNewInstance, "");
                        } catch (java.lang.Exception e5) {
                            throw new com.alibaba.fastjson.JSONException("create instance error, class " + this.clazz.getName(), e5);
                        }
                    }
                }
            }
            return objNewInstance;
        } catch (com.alibaba.fastjson.JSONException e6) {
            throw e6;
        } catch (java.lang.Exception e7) {
            throw new com.alibaba.fastjson.JSONException("create instance error, class " + this.clazz.getName(), e7);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, 0);
    }

    public <T> T deserialzeArrayMapping(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Enum<?> enumScanEnum;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() != 14) {
            throw new com.alibaba.fastjson.JSONException("error");
        }
        java.lang.String strScanTypeName = jSONLexer.scanTypeName(defaultJSONParser.symbolTable);
        if (strScanTypeName != null) {
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer seeAlso = getSeeAlso(defaultJSONParser.getConfig(), this.beanInfo, strScanTypeName);
            if (seeAlso == null) {
                seeAlso = defaultJSONParser.getConfig().getDeserializer(defaultJSONParser.getConfig().checkAutoType(strScanTypeName, com.alibaba.fastjson.util.TypeUtils.getClass(type), jSONLexer.getFeatures()));
            }
            if (seeAlso instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) {
                return (T) ((com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) seeAlso).deserialzeArrayMapping(defaultJSONParser, type, obj, obj2);
            }
        }
        T t5 = (T) createInstance(defaultJSONParser, type);
        int i5 = 0;
        int length = this.sortedFieldDeserializers.length;
        while (true) {
            if (i5 >= length) {
                break;
            }
            char c5 = i5 == length + (-1) ? ']' : ',';
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = this.sortedFieldDeserializers[i5];
            java.lang.Class<?> cls = fieldDeserializer.fieldInfo.fieldClass;
            if (cls == java.lang.Integer.TYPE) {
                fieldDeserializer.setValue((java.lang.Object) t5, jSONLexer.scanInt(c5));
            } else if (cls == java.lang.String.class) {
                fieldDeserializer.setValue((java.lang.Object) t5, jSONLexer.scanString(c5));
            } else if (cls == java.lang.Long.TYPE) {
                fieldDeserializer.setValue(t5, jSONLexer.scanLong(c5));
            } else if (cls.isEnum()) {
                char current = jSONLexer.getCurrent();
                if (current == '\"' || current == 'n') {
                    enumScanEnum = jSONLexer.scanEnum(cls, defaultJSONParser.getSymbolTable(), c5);
                } else if (current < '0' || current > '9') {
                    enumScanEnum = scanEnum(jSONLexer, c5);
                } else {
                    enumScanEnum = ((com.alibaba.fastjson.parser.deserializer.EnumDeserializer) ((com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer) fieldDeserializer).getFieldValueDeserilizer(defaultJSONParser.getConfig())).valueOf(jSONLexer.scanInt(c5));
                }
                fieldDeserializer.setValue(t5, enumScanEnum);
            } else if (cls == java.lang.Boolean.TYPE) {
                fieldDeserializer.setValue(t5, jSONLexer.scanBoolean(c5));
            } else if (cls == java.lang.Float.TYPE) {
                fieldDeserializer.setValue(t5, java.lang.Float.valueOf(jSONLexer.scanFloat(c5)));
            } else if (cls == java.lang.Double.TYPE) {
                fieldDeserializer.setValue(t5, java.lang.Double.valueOf(jSONLexer.scanDouble(c5)));
            } else if (cls == java.util.Date.class && jSONLexer.getCurrent() == '1') {
                fieldDeserializer.setValue(t5, new java.util.Date(jSONLexer.scanLong(c5)));
            } else if (cls == java.math.BigDecimal.class) {
                fieldDeserializer.setValue(t5, jSONLexer.scanDecimal(c5));
            } else {
                jSONLexer.nextToken(14);
                com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                fieldDeserializer.setValue(t5, defaultJSONParser.parseObject(fieldInfo.fieldType, fieldInfo.name));
                if (jSONLexer.token() == 15) {
                    break;
                }
                check(jSONLexer, c5 == ']' ? 15 : 16);
            }
            i5++;
        }
        jSONLexer.nextToken(16);
        return t5;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer getFieldDeserializer(java.lang.String str) {
        return getFieldDeserializer(str, null);
    }

    public java.lang.reflect.Type getFieldType(int i5) {
        return this.sortedFieldDeserializers[i5].fieldInfo.fieldType;
    }

    public boolean parseField(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.String str, java.lang.Object obj, java.lang.reflect.Type type, java.util.Map<java.lang.String, java.lang.Object> map) {
        return parseField(defaultJSONParser, str, obj, type, map, null);
    }

    public java.lang.Object parseRest(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.Object obj2, int i5) {
        return parseRest(defaultJSONParser, type, obj, obj2, i5, new int[0]);
    }

    public java.lang.Enum<?> scanEnum(com.alibaba.fastjson.parser.JSONLexer jSONLexer, char c5) {
        throw new com.alibaba.fastjson.JSONException("illegal enum. " + jSONLexer.info());
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer smartMatch(java.lang.String str) {
        return smartMatch(str, null);
    }

    public JavaBeanDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Class<?> cls, java.lang.reflect.Type type) {
        this(parserConfig, com.alibaba.fastjson.util.JavaBeanInfo.build(cls, type, parserConfig.propertyNamingStrategy, parserConfig.fieldBased, parserConfig.compatibleWithJavaBean, parserConfig.isJacksonCompatible()));
    }

    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, int i5) {
        return (T) deserialze(defaultJSONParser, type, obj, null, i5, null);
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer getFieldDeserializer(java.lang.String str, int[] iArr) {
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer;
        if (str == null) {
            return null;
        }
        java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> map = this.fieldDeserializerMap;
        if (map != null && (fieldDeserializer = map.get(str)) != null) {
            return fieldDeserializer;
        }
        int i5 = 0;
        int length = this.sortedFieldDeserializers.length - 1;
        while (i5 <= length) {
            int i6 = (i5 + length) >>> 1;
            int iCompareTo = this.sortedFieldDeserializers[i6].fieldInfo.name.compareTo(str);
            if (iCompareTo < 0) {
                i5 = i6 + 1;
            } else {
                if (iCompareTo <= 0) {
                    if (isSetFlag(i6, iArr)) {
                        return null;
                    }
                    return this.sortedFieldDeserializers[i6];
                }
                length = i6 - 1;
            }
        }
        java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> map2 = this.alterNameFieldDeserializers;
        if (map2 != null) {
            return map2.get(str);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01df  */
    /* JADX WARN: Code duplicated, block: B:106:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:108:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:110:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:112:0x0218  */
    /* JADX WARN: Code duplicated, block: B:115:0x0222  */
    /* JADX WARN: Code duplicated, block: B:118:0x0227 A[LOOP:3: B:113:0x021d->B:118:0x0227, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:130:0x024d  */
    /* JADX WARN: Code duplicated, block: B:143:0x01dd A[EDGE_INSN: B:143:0x01dd->B:103:0x01dd BREAK  A[LOOP:2: B:63:0x0135->B:102:0x01d9], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:150:0x022a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x022b A[EDGE_INSN: B:151:0x022b->B:120:0x022b BREAK  A[LOOP:3: B:113:0x021d->B:118:0x0227], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:60:0x012a  */
    /* JADX WARN: Code duplicated, block: B:62:0x0132  */
    /* JADX WARN: Code duplicated, block: B:65:0x013a  */
    /* JADX WARN: Instruction removed from duplicated block: B:110:0x01f3, please report this as an issue */
    /* JADX WARN: Type inference failed for: r17v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    public boolean parseField(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.String str, java.lang.Object obj, java.lang.reflect.Type type, java.util.Map<java.lang.String, java.lang.Object> map, int[] iArr) {
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer;
        boolean z4;
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer defaultFieldDeserializer;
        ?? r17;
        int i5;
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializerArr;
        int i6;
        int i7;
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializerArr2;
        com.alibaba.fastjson.util.FieldInfo fieldInfo;
        java.lang.reflect.Field[] fieldArr;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i8 = com.alibaba.fastjson.parser.Feature.DisableFieldSmartMatch.mask;
        int i9 = com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty.mask;
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer2 = (jSONLexer.isEnabled(i8) || (i8 & this.beanInfo.parserFeatures) != 0) ? getFieldDeserializer(str) : (jSONLexer.isEnabled(i9) || (this.beanInfo.parserFeatures & i9) != 0) ? smartMatch(str) : smartMatch(str, iArr);
        int i10 = com.alibaba.fastjson.parser.Feature.SupportNonPublicField.mask;
        if (fieldDeserializer2 == null && (jSONLexer.isEnabled(i10) || (i10 & this.beanInfo.parserFeatures) != 0)) {
            if (this.extraFieldDeserializers == null) {
                java.util.concurrent.ConcurrentHashMap concurrentHashMap = new java.util.concurrent.ConcurrentHashMap(1, 0.75f, 1);
                for (java.lang.Class<?> superclass = this.clazz; superclass != null && superclass != java.lang.Object.class; superclass = superclass.getSuperclass()) {
                    java.lang.reflect.Field[] declaredFields = superclass.getDeclaredFields();
                    int length = declaredFields.length;
                    int i11 = 0;
                    while (i11 < length) {
                        java.lang.reflect.Field field = declaredFields[i11];
                        java.lang.String name = field.getName();
                        if (getFieldDeserializer(name) != null) {
                            fieldArr = declaredFields;
                        } else {
                            int modifiers = field.getModifiers();
                            if ((modifiers & 16) == 0 && (modifiers & 8) == 0) {
                                com.alibaba.fastjson.annotation.JSONField jSONField = (com.alibaba.fastjson.annotation.JSONField) com.alibaba.fastjson.util.TypeUtils.getAnnotation(field, com.alibaba.fastjson.annotation.JSONField.class);
                                if (jSONField != null) {
                                    java.lang.String strName = jSONField.name();
                                    fieldArr = declaredFields;
                                    if (!"".equals(strName)) {
                                        name = strName;
                                    }
                                } else {
                                    fieldArr = declaredFields;
                                }
                                concurrentHashMap.put(name, field);
                            } else {
                                fieldArr = declaredFields;
                            }
                        }
                        i11++;
                        fieldDeserializer2 = fieldDeserializer2;
                        declaredFields = fieldArr;
                    }
                }
                fieldDeserializer = fieldDeserializer2;
                this.extraFieldDeserializers = concurrentHashMap;
            } else {
                fieldDeserializer = fieldDeserializer2;
            }
            java.lang.Object obj2 = this.extraFieldDeserializers.get(str);
            if (obj2 == null) {
                z4 = true;
            } else if (obj2 instanceof com.alibaba.fastjson.parser.deserializer.FieldDeserializer) {
                defaultFieldDeserializer = (com.alibaba.fastjson.parser.deserializer.FieldDeserializer) obj2;
                jSONLexer = jSONLexer;
                r17 = 1;
            } else {
                java.lang.reflect.Field field2 = (java.lang.reflect.Field) obj2;
                field2.setAccessible(true);
                r17 = 1;
                jSONLexer = jSONLexer;
                defaultFieldDeserializer = new com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer(defaultJSONParser.getConfig(), this.clazz, new com.alibaba.fastjson.util.FieldInfo(str, field2.getDeclaringClass(), field2.getType(), field2.getGenericType(), field2, 0, 0, 0));
                this.extraFieldDeserializers.put(str, defaultFieldDeserializer);
            }
            if (defaultFieldDeserializer == null) {
                com.alibaba.fastjson.parser.JSONLexer jSONLexer2 = jSONLexer;
                i5 = 0;
                while (true) {
                    fieldDeserializerArr = this.sortedFieldDeserializers;
                    if (i5 < fieldDeserializerArr.length) {
                        i5 = -1;
                        break;
                    }
                    if (fieldDeserializerArr[i5] == defaultFieldDeserializer) {
                        break;
                    }
                    i5++;
                }
                if (i5 == -1 && iArr != null && str.startsWith("_") && isSetFlag(i5, iArr)) {
                    defaultJSONParser.parseExtra(obj, str);
                    return false;
                }
                jSONLexer2.nextTokenWithColon(defaultFieldDeserializer.getFastMatchToken());
                defaultFieldDeserializer.parseField(defaultJSONParser, obj, type, map);
                if (iArr != null) {
                    int i12 = i5 / 32;
                    iArr[i12] = iArr[i12] | (r17 << (i5 % 32));
                }
                return r17;
            }
            if (jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.IgnoreNotMatch)) {
                throw new com.alibaba.fastjson.JSONException("setter not found, class " + this.clazz.getName() + ", property " + str);
            }
            i6 = -1;
            i7 = 0;
            while (true) {
                fieldDeserializerArr2 = this.sortedFieldDeserializers;
                if (i7 < fieldDeserializerArr2.length) {
                    break;
                }
                com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer3 = fieldDeserializerArr2[i7];
                fieldInfo = fieldDeserializer3.fieldInfo;
                if (!fieldInfo.unwrapped && (fieldDeserializer3 instanceof com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer)) {
                    if (fieldInfo.field != null) {
                        com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer defaultFieldDeserializer2 = (com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer) fieldDeserializer3;
                        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer fieldValueDeserilizer = defaultFieldDeserializer2.getFieldValueDeserilizer(defaultJSONParser.getConfig());
                        if (fieldValueDeserilizer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) {
                            com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer4 = ((com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) fieldValueDeserilizer).getFieldDeserializer(str);
                            if (fieldDeserializer4 != null) {
                                try {
                                    java.lang.Object objCreateInstance = fieldInfo.field.get(obj);
                                    if (objCreateInstance == null) {
                                        objCreateInstance = ((com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) fieldValueDeserilizer).createInstance(defaultJSONParser, fieldInfo.fieldType);
                                        fieldDeserializer3.setValue(obj, objCreateInstance);
                                    }
                                    jSONLexer.nextTokenWithColon(defaultFieldDeserializer2.getFastMatchToken());
                                    fieldDeserializer4.parseField(defaultJSONParser, objCreateInstance, type, map);
                                    i6 = i7;
                                } catch (java.lang.Exception e5) {
                                    throw new com.alibaba.fastjson.JSONException("parse unwrapped field error.", e5);
                                }
                            } else {
                                continue;
                            }
                        } else if (fieldValueDeserilizer instanceof com.alibaba.fastjson.parser.deserializer.MapDeserializer) {
                            com.alibaba.fastjson.parser.deserializer.MapDeserializer mapDeserializer = (com.alibaba.fastjson.parser.deserializer.MapDeserializer) fieldValueDeserilizer;
                            try {
                                java.util.Map<java.lang.Object, java.lang.Object> mapCreateMap = (java.util.Map) fieldInfo.field.get(obj);
                                if (mapCreateMap == null) {
                                    mapCreateMap = mapDeserializer.createMap(fieldInfo.fieldType);
                                    fieldDeserializer3.setValue(obj, mapCreateMap);
                                }
                                jSONLexer.nextTokenWithColon();
                                mapCreateMap.put(str, defaultJSONParser.parse(str));
                                i6 = i7;
                            } catch (java.lang.Exception e6) {
                                throw new com.alibaba.fastjson.JSONException("parse unwrapped field error.", e6);
                            }
                        } else {
                            continue;
                        }
                    } else if (fieldInfo.method.getParameterTypes().length == 2) {
                        jSONLexer.nextTokenWithColon();
                        java.lang.Object obj3 = defaultJSONParser.parse(str);
                        try {
                            java.lang.reflect.Method method = fieldInfo.method;
                            java.lang.Object[] objArr = new java.lang.Object[2];
                            objArr[0] = str;
                            objArr[r17] = obj3;
                            method.invoke(obj, objArr);
                            i6 = i7;
                        } catch (java.lang.Exception e7) {
                            throw new com.alibaba.fastjson.JSONException("parse unwrapped field error.", e7);
                        }
                    } else {
                        continue;
                    }
                }
                i7++;
            }
            if (i6 != -1) {
                defaultJSONParser.parseExtra(obj, str);
                return false;
            }
            if (iArr != null) {
                int i13 = i6 / 32;
                iArr[i13] = iArr[i13] | (r17 << (i6 % 32));
            }
            return r17;
        }
        fieldDeserializer = fieldDeserializer2;
        z4 = true;
        defaultFieldDeserializer = fieldDeserializer;
        r17 = z4;
        if (defaultFieldDeserializer == null) {
            com.alibaba.fastjson.parser.JSONLexer jSONLexer3 = jSONLexer;
            i5 = 0;
            while (true) {
                fieldDeserializerArr = this.sortedFieldDeserializers;
                if (i5 < fieldDeserializerArr.length) {
                    i5 = -1;
                    break;
                }
                if (fieldDeserializerArr[i5] == defaultFieldDeserializer) {
                    break;
                    break;
                }
                i5++;
            }
            if (i5 == -1) {
            }
            jSONLexer3.nextTokenWithColon(defaultFieldDeserializer.getFastMatchToken());
            defaultFieldDeserializer.parseField(defaultJSONParser, obj, type, map);
            if (iArr != null) {
                int i14 = i5 / 32;
                iArr[i14] = iArr[i14] | (r17 << (i5 % 32));
            }
            return r17;
        }
        if (jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.IgnoreNotMatch)) {
            throw new com.alibaba.fastjson.JSONException("setter not found, class " + this.clazz.getName() + ", property " + str);
        }
        i6 = -1;
        i7 = 0;
        while (true) {
            fieldDeserializerArr2 = this.sortedFieldDeserializers;
            if (i7 < fieldDeserializerArr2.length) {
                break;
                break;
            }
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer5 = fieldDeserializerArr2[i7];
            fieldInfo = fieldDeserializer5.fieldInfo;
            if (!fieldInfo.unwrapped) {
            }
            i7++;
        }
        if (i6 != -1) {
            defaultJSONParser.parseExtra(obj, str);
            return false;
        }
        if (iArr != null) {
            int i15 = i6 / 32;
            iArr[i15] = iArr[i15] | (r17 << (i6 % 32));
        }
        return r17;
    }

    public java.lang.Object parseRest(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.Object obj2, int i5, int[] iArr) {
        return deserialze(defaultJSONParser, type, obj, obj2, i5, iArr);
    }

    public java.lang.Enum scanEnum(com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase, char[] cArr, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer) {
        com.alibaba.fastjson.parser.deserializer.EnumDeserializer enumDeserializer = objectDeserializer instanceof com.alibaba.fastjson.parser.deserializer.EnumDeserializer ? (com.alibaba.fastjson.parser.deserializer.EnumDeserializer) objectDeserializer : null;
        if (enumDeserializer == null) {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        long jScanEnumSymbol = jSONLexerBase.scanEnumSymbol(cArr);
        if (jSONLexerBase.matchStat <= 0) {
            return null;
        }
        java.lang.Enum enumByHashCode = enumDeserializer.getEnumByHashCode(jScanEnumSymbol);
        if (enumByHashCode == null) {
            if (jScanEnumSymbol == com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode) {
                return null;
            }
            if (jSONLexerBase.isEnabled(com.alibaba.fastjson.parser.Feature.ErrorOnEnumNotMatch)) {
                throw new com.alibaba.fastjson.JSONException("not match enum value, " + enumDeserializer.enumClass);
            }
        }
        return enumByHashCode;
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer smartMatch(java.lang.String str, int[] iArr) {
        boolean zStartsWith;
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = getFieldDeserializer(str, iArr);
        if (fieldDeserializer == null) {
            int i5 = 0;
            if (this.smartMatchHashArray == null) {
                long[] jArr = new long[this.sortedFieldDeserializers.length];
                int i6 = 0;
                while (true) {
                    com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                    if (i6 >= fieldDeserializerArr.length) {
                        break;
                    }
                    jArr[i6] = fieldDeserializerArr[i6].fieldInfo.nameHashCode;
                    i6++;
                }
                java.util.Arrays.sort(jArr);
                this.smartMatchHashArray = jArr;
            }
            int iBinarySearch = java.util.Arrays.binarySearch(this.smartMatchHashArray, com.alibaba.fastjson.util.TypeUtils.fnv1a_64_lower(str));
            if (iBinarySearch < 0) {
                iBinarySearch = java.util.Arrays.binarySearch(this.smartMatchHashArray, com.alibaba.fastjson.util.TypeUtils.fnv1a_64_extract(str));
            }
            if (iBinarySearch < 0) {
                zStartsWith = str.startsWith("is");
                if (zStartsWith) {
                    iBinarySearch = java.util.Arrays.binarySearch(this.smartMatchHashArray, com.alibaba.fastjson.util.TypeUtils.fnv1a_64_extract(str.substring(2)));
                }
            } else {
                zStartsWith = false;
            }
            if (iBinarySearch >= 0) {
                if (this.smartMatchHashArrayMapping == null) {
                    short[] sArr = new short[this.smartMatchHashArray.length];
                    java.util.Arrays.fill(sArr, (short) -1);
                    while (true) {
                        com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                        if (i5 >= fieldDeserializerArr2.length) {
                            break;
                        }
                        int iBinarySearch2 = java.util.Arrays.binarySearch(this.smartMatchHashArray, fieldDeserializerArr2[i5].fieldInfo.nameHashCode);
                        if (iBinarySearch2 >= 0) {
                            sArr[iBinarySearch2] = (short) i5;
                        }
                        i5++;
                    }
                    this.smartMatchHashArrayMapping = sArr;
                }
                short s5 = this.smartMatchHashArrayMapping[iBinarySearch];
                if (s5 != -1 && !isSetFlag(s5, iArr)) {
                    fieldDeserializer = this.sortedFieldDeserializers[s5];
                }
            }
            if (fieldDeserializer != null) {
                com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                if ((fieldInfo.parserFeatures & com.alibaba.fastjson.parser.Feature.DisableFieldSmartMatch.mask) != 0) {
                    return null;
                }
                java.lang.Class<?> cls = fieldInfo.fieldClass;
                if (zStartsWith && cls != java.lang.Boolean.TYPE && cls != java.lang.Boolean.class) {
                    return null;
                }
            }
        }
        return fieldDeserializer;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 25101. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r34, java.lang.reflect.Type r35, java.lang.Object r36, java.lang.Object r37, int r38, int[] r39) {
        /*
            Method dump skipped, instruction units count: 2510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object, int, int[]):java.lang.Object");
    }

    public JavaBeanDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo) {
        com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler autoTypeCheckHandlerNewInstance;
        this.clazz = javaBeanInfo.clazz;
        this.beanInfo = javaBeanInfo;
        com.alibaba.fastjson.annotation.JSONType jSONType = javaBeanInfo.jsonType;
        java.util.HashMap map = null;
        if (jSONType == null || jSONType.autoTypeCheckHandler() == com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler.class) {
            autoTypeCheckHandlerNewInstance = null;
        } else {
            try {
                autoTypeCheckHandlerNewInstance = javaBeanInfo.jsonType.autoTypeCheckHandler().newInstance();
            } catch (java.lang.Exception unused) {
                autoTypeCheckHandlerNewInstance = null;
            }
        }
        this.autoTypeCheckHandler = autoTypeCheckHandlerNewInstance;
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr = javaBeanInfo.sortedFields;
        this.sortedFieldDeserializers = new com.alibaba.fastjson.parser.deserializer.FieldDeserializer[fieldInfoArr.length];
        int length = fieldInfoArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo = javaBeanInfo.sortedFields[i5];
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializerCreateFieldDeserializer = parserConfig.createFieldDeserializer(parserConfig, javaBeanInfo, fieldInfo);
            this.sortedFieldDeserializers[i5] = fieldDeserializerCreateFieldDeserializer;
            if (length > 128) {
                if (this.fieldDeserializerMap == null) {
                    this.fieldDeserializerMap = new java.util.HashMap();
                }
                this.fieldDeserializerMap.put(fieldInfo.name, fieldDeserializerCreateFieldDeserializer);
            }
            for (java.lang.String str : fieldInfo.alternateNames) {
                if (map == null) {
                    map = new java.util.HashMap();
                }
                map.put(str, fieldDeserializerCreateFieldDeserializer);
            }
        }
        this.alterNameFieldDeserializers = map;
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr2 = javaBeanInfo.fields;
        this.fieldDeserializers = new com.alibaba.fastjson.parser.deserializer.FieldDeserializer[fieldInfoArr2.length];
        int length2 = fieldInfoArr2.length;
        for (int i6 = 0; i6 < length2; i6++) {
            this.fieldDeserializers[i6] = getFieldDeserializer(javaBeanInfo.fields[i6].name);
        }
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer getFieldDeserializer(long j5) {
        int i5 = 0;
        if (this.hashArray == null) {
            long[] jArr = new long[this.sortedFieldDeserializers.length];
            int i6 = 0;
            while (true) {
                com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                if (i6 >= fieldDeserializerArr.length) {
                    break;
                }
                jArr[i6] = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(fieldDeserializerArr[i6].fieldInfo.name);
                i6++;
            }
            java.util.Arrays.sort(jArr);
            this.hashArray = jArr;
        }
        int iBinarySearch = java.util.Arrays.binarySearch(this.hashArray, j5);
        if (iBinarySearch < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            short[] sArr = new short[this.hashArray.length];
            java.util.Arrays.fill(sArr, (short) -1);
            while (true) {
                com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                if (i5 >= fieldDeserializerArr2.length) {
                    break;
                }
                int iBinarySearch2 = java.util.Arrays.binarySearch(this.hashArray, com.alibaba.fastjson.util.TypeUtils.fnv1a_64(fieldDeserializerArr2[i5].fieldInfo.name));
                if (iBinarySearch2 >= 0) {
                    sArr[iBinarySearch2] = (short) i5;
                }
                i5++;
            }
            this.hashArrayMapping = sArr;
        }
        short s5 = this.hashArrayMapping[iBinarySearch];
        if (s5 != -1) {
            return this.sortedFieldDeserializers[s5];
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006a  */
    public java.lang.Object createInstance(java.util.Map<java.lang.String, java.lang.Object> map, com.alibaba.fastjson.parser.ParserConfig parserConfig) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        boolean z4;
        java.lang.reflect.Constructor<?> constructor;
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr;
        java.lang.Integer num;
        java.lang.Object objCast;
        float f5;
        double d5;
        java.lang.String jSONString;
        com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo = this.beanInfo;
        if (javaBeanInfo.creatorConstructor == null && javaBeanInfo.factoryMethod == null) {
            java.lang.Object objCreateInstance = createInstance((com.alibaba.fastjson.parser.DefaultJSONParser) null, this.clazz);
            for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : map.entrySet()) {
                java.lang.String key = entry.getKey();
                java.lang.Object value = entry.getValue();
                com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializerSmartMatch = smartMatch(key);
                if (fieldDeserializerSmartMatch != null) {
                    com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldDeserializerSmartMatch.fieldInfo;
                    java.lang.reflect.Field field = fieldInfo.field;
                    java.lang.reflect.Type type = fieldInfo.fieldType;
                    java.lang.Class<?> cls = fieldInfo.fieldClass;
                    com.alibaba.fastjson.annotation.JSONField annotation = fieldInfo.getAnnotation();
                    if (fieldInfo.declaringClass != null && (!cls.isInstance(value) || (annotation != null && annotation.deserializeUsing() != java.lang.Void.class))) {
                        if (value instanceof java.lang.String) {
                            jSONString = (java.lang.String) value;
                            if (!com.alibaba.fastjson.JSONValidator.from(jSONString).validate()) {
                                jSONString = com.alibaba.fastjson.JSON.toJSONString(value);
                            }
                        } else {
                            jSONString = com.alibaba.fastjson.JSON.toJSONString(value);
                        }
                        fieldDeserializerSmartMatch.parseField(new com.alibaba.fastjson.parser.DefaultJSONParser(jSONString), objCreateInstance, type, null);
                    } else {
                        if (field != null && fieldInfo.method == null) {
                            java.lang.Class<?> type2 = field.getType();
                            if (type2 == java.lang.Boolean.TYPE) {
                                if (value == java.lang.Boolean.FALSE) {
                                    field.setBoolean(objCreateInstance, false);
                                } else if (value == java.lang.Boolean.TRUE) {
                                    field.setBoolean(objCreateInstance, true);
                                }
                            } else if (type2 == java.lang.Integer.TYPE) {
                                if (value instanceof java.lang.Number) {
                                    field.setInt(objCreateInstance, ((java.lang.Number) value).intValue());
                                }
                            } else if (type2 == java.lang.Long.TYPE) {
                                if (value instanceof java.lang.Number) {
                                    field.setLong(objCreateInstance, ((java.lang.Number) value).longValue());
                                }
                            } else if (type2 == java.lang.Float.TYPE) {
                                if (value instanceof java.lang.Number) {
                                    field.setFloat(objCreateInstance, ((java.lang.Number) value).floatValue());
                                } else if (value instanceof java.lang.String) {
                                    java.lang.String str = (java.lang.String) value;
                                    if (str.length() <= 10) {
                                        f5 = com.alibaba.fastjson.util.TypeUtils.parseFloat(str);
                                    } else {
                                        f5 = java.lang.Float.parseFloat(str);
                                    }
                                    field.setFloat(objCreateInstance, f5);
                                }
                            } else if (type2 == java.lang.Double.TYPE) {
                                if (value instanceof java.lang.Number) {
                                    field.setDouble(objCreateInstance, ((java.lang.Number) value).doubleValue());
                                } else if (value instanceof java.lang.String) {
                                    java.lang.String str2 = (java.lang.String) value;
                                    if (str2.length() <= 10) {
                                        d5 = com.alibaba.fastjson.util.TypeUtils.parseDouble(str2);
                                    } else {
                                        d5 = java.lang.Double.parseDouble(str2);
                                    }
                                    field.setDouble(objCreateInstance, d5);
                                }
                            } else if (value != null && type == value.getClass()) {
                                field.set(objCreateInstance, value);
                            }
                        }
                        java.lang.String str3 = fieldInfo.format;
                        if (str3 != null && type == java.util.Date.class) {
                            objCast = com.alibaba.fastjson.util.TypeUtils.castToDate(value, str3);
                        } else if (str3 != null && (type instanceof java.lang.Class) && ((java.lang.Class) type).getName().equals("java.time.LocalDateTime")) {
                            objCast = com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec.castToLocalDateTime(value, str3);
                        } else if (type instanceof java.lang.reflect.ParameterizedType) {
                            objCast = com.alibaba.fastjson.util.TypeUtils.cast(value, (java.lang.reflect.ParameterizedType) type, parserConfig);
                        } else {
                            objCast = com.alibaba.fastjson.util.TypeUtils.cast(value, type, parserConfig);
                        }
                        fieldDeserializerSmartMatch.setValue(objCreateInstance, objCast);
                    }
                }
            }
            java.lang.reflect.Method method = this.beanInfo.buildMethod;
            if (method == null) {
                return objCreateInstance;
            }
            try {
                return method.invoke(objCreateInstance, new java.lang.Object[0]);
            } catch (java.lang.Exception e5) {
                throw new com.alibaba.fastjson.JSONException("build object error", e5);
            }
        }
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr2 = javaBeanInfo.fields;
        int length = fieldInfoArr2.length;
        java.lang.Object[] objArr = new java.lang.Object[length];
        java.util.HashMap map2 = null;
        for (int i5 = 0; i5 < length; i5++) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo2 = fieldInfoArr2[i5];
            java.lang.Object objValueOf = map.get(fieldInfo2.name);
            if (objValueOf == null) {
                java.lang.Class<?> cls2 = fieldInfo2.fieldClass;
                if (cls2 == java.lang.Integer.TYPE) {
                    objValueOf = 0;
                } else if (cls2 == java.lang.Long.TYPE) {
                    objValueOf = 0L;
                } else if (cls2 == java.lang.Short.TYPE) {
                    objValueOf = (short) 0;
                } else if (cls2 == java.lang.Byte.TYPE) {
                    objValueOf = (byte) 0;
                } else if (cls2 == java.lang.Float.TYPE) {
                    objValueOf = java.lang.Float.valueOf(0.0f);
                } else if (cls2 == java.lang.Double.TYPE) {
                    objValueOf = java.lang.Double.valueOf(0.0d);
                } else if (cls2 == java.lang.Character.TYPE) {
                    objValueOf = '0';
                } else if (cls2 == java.lang.Boolean.TYPE) {
                    objValueOf = java.lang.Boolean.FALSE;
                }
                if (map2 == null) {
                    map2 = new java.util.HashMap();
                }
                map2.put(fieldInfo2.name, java.lang.Integer.valueOf(i5));
            }
            objArr[i5] = objValueOf;
        }
        if (map2 != null) {
            for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry2 : map.entrySet()) {
                java.lang.String key2 = entry2.getKey();
                java.lang.Object value2 = entry2.getValue();
                com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializerSmartMatch2 = smartMatch(key2);
                if (fieldDeserializerSmartMatch2 != null && (num = (java.lang.Integer) map2.get(fieldDeserializerSmartMatch2.fieldInfo.name)) != null) {
                    objArr[num.intValue()] = value2;
                }
            }
        }
        com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo2 = this.beanInfo;
        if (javaBeanInfo2.creatorConstructor != null) {
            if (javaBeanInfo2.kotlin) {
                z4 = false;
                for (int i6 = 0; i6 < length; i6++) {
                    java.lang.Object obj = objArr[i6];
                    if (obj == null) {
                        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr3 = this.beanInfo.fields;
                        if (fieldInfoArr3 != null && i6 < fieldInfoArr3.length && fieldInfoArr3[i6].fieldClass == java.lang.String.class) {
                            z4 = true;
                        }
                    } else {
                        java.lang.Class<?> cls3 = obj.getClass();
                        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr4 = this.beanInfo.fields;
                        if (cls3 != fieldInfoArr4[i6].fieldClass) {
                            objArr[i6] = com.alibaba.fastjson.util.TypeUtils.cast(obj, (java.lang.Class) fieldInfoArr4[i6].fieldClass, parserConfig);
                        }
                    }
                }
            } else {
                z4 = false;
            }
            if (z4 && (constructor = this.beanInfo.kotlinDefaultConstructor) != null) {
                try {
                    java.lang.Object objNewInstance = constructor.newInstance(new java.lang.Object[0]);
                    for (int i7 = 0; i7 < length; i7++) {
                        java.lang.Object obj2 = objArr[i7];
                        if (obj2 != null && (fieldInfoArr = this.beanInfo.fields) != null && i7 < fieldInfoArr.length) {
                            fieldInfoArr[i7].set(objNewInstance, obj2);
                        }
                    }
                    return objNewInstance;
                } catch (java.lang.Exception e6) {
                    throw new com.alibaba.fastjson.JSONException("create instance error, " + this.beanInfo.creatorConstructor.toGenericString(), e6);
                }
            }
            try {
                return this.beanInfo.creatorConstructor.newInstance(objArr);
            } catch (java.lang.Exception e7) {
                throw new com.alibaba.fastjson.JSONException("create instance error, " + this.beanInfo.creatorConstructor.toGenericString(), e7);
            }
        }
        java.lang.reflect.Method method2 = javaBeanInfo2.factoryMethod;
        if (method2 == null) {
            return null;
        }
        try {
            return method2.invoke(null, objArr);
        } catch (java.lang.Exception e8) {
            throw new com.alibaba.fastjson.JSONException("create factory method error, " + this.beanInfo.factoryMethod.toString(), e8);
        }
    }
}
