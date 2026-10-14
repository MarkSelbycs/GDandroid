package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ThrowableDeserializer extends com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer {
    public ThrowableDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Class<?> cls) {
        super(parserConfig, cls, cls);
    }

    private java.lang.Throwable createException(java.lang.String str, java.lang.Throwable th, java.lang.Class<?> cls) throws java.lang.Exception {
        java.lang.reflect.Constructor<?> constructor = null;
        java.lang.reflect.Constructor<?> constructor2 = null;
        java.lang.reflect.Constructor<?> constructor3 = null;
        for (java.lang.reflect.Constructor<?> constructor4 : cls.getConstructors()) {
            java.lang.Class<?>[] parameterTypes = constructor4.getParameterTypes();
            if (parameterTypes.length == 0) {
                constructor3 = constructor4;
            } else if (parameterTypes.length == 1 && parameterTypes[0] == java.lang.String.class) {
                constructor2 = constructor4;
            } else if (parameterTypes.length == 2 && parameterTypes[0] == java.lang.String.class && parameterTypes[1] == java.lang.Throwable.class) {
                constructor = constructor4;
            }
        }
        if (constructor != null) {
            return (java.lang.Throwable) constructor.newInstance(str, th);
        }
        if (constructor2 != null) {
            return (java.lang.Throwable) constructor2.newInstance(str);
        }
        if (constructor3 != null) {
            return (java.lang.Throwable) constructor3.newInstance(new java.lang.Object[0]);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0036  */
    @Override // com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.lang.Class<?> clsCheckAutoType;
        java.lang.Object obj2;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer = null;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        }
        if (defaultJSONParser.getResolveStatus() == 2) {
            defaultJSONParser.setResolveStatus(0);
        } else if (jSONLexer.token() != 12) {
            throw new com.alibaba.fastjson.JSONException("syntax error");
        }
        if (type == null || !(type instanceof java.lang.Class)) {
            clsCheckAutoType = null;
        } else {
            clsCheckAutoType = (java.lang.Class) type;
            if (!java.lang.Throwable.class.isAssignableFrom(clsCheckAutoType)) {
                clsCheckAutoType = null;
            }
        }
        java.util.HashMap map = null;
        java.lang.Throwable th = null;
        java.lang.String strStringVal = null;
        java.lang.StackTraceElement[] stackTraceElementArr = null;
        while (true) {
            java.lang.String strScanSymbol = jSONLexer.scanSymbol(defaultJSONParser.getSymbolTable());
            if (strScanSymbol == null) {
                if (jSONLexer.token() == 13) {
                    jSONLexer.nextToken(16);
                    break;
                }
                if (jSONLexer.token() != 16 || !jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas)) {
                }
            }
            jSONLexer.nextTokenWithColon(4);
            if (com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY.equals(strScanSymbol)) {
                if (jSONLexer.token() != 4) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                clsCheckAutoType = defaultJSONParser.getConfig().checkAutoType(jSONLexer.stringVal(), java.lang.Throwable.class, jSONLexer.getFeatures());
                jSONLexer.nextToken(16);
            } else if ("message".equals(strScanSymbol)) {
                if (jSONLexer.token() == 8) {
                    strStringVal = null;
                } else {
                    if (jSONLexer.token() != 4) {
                        throw new com.alibaba.fastjson.JSONException("syntax error");
                    }
                    strStringVal = jSONLexer.stringVal();
                }
                jSONLexer.nextToken();
            } else if ("cause".equals(strScanSymbol)) {
                th = (java.lang.Throwable) deserialze(defaultJSONParser, null, "cause");
            } else if ("stackTrace".equals(strScanSymbol)) {
                stackTraceElementArr = (java.lang.StackTraceElement[]) defaultJSONParser.parseObject((java.lang.Class) java.lang.StackTraceElement[].class);
            } else {
                if (map == null) {
                    map = new java.util.HashMap();
                }
                map.put(strScanSymbol, defaultJSONParser.parse());
            }
            if (jSONLexer.token() == 13) {
                jSONLexer.nextToken(16);
                break;
            }
        }
        if (clsCheckAutoType == null) {
            obj2 = (T) new java.lang.Exception(strStringVal, th);
        } else {
            if (!java.lang.Throwable.class.isAssignableFrom(clsCheckAutoType)) {
                throw new com.alibaba.fastjson.JSONException("type not match, not Throwable. " + clsCheckAutoType.getName());
            }
            try {
                obj2 = (T) createException(strStringVal, th, clsCheckAutoType);
                if (obj2 == null) {
                    obj2 = (T) new java.lang.Exception(strStringVal, th);
                }
            } catch (java.lang.Exception e5) {
                throw new com.alibaba.fastjson.JSONException("create instance error", e5);
            }
        }
        if (stackTraceElementArr != null) {
            ((java.lang.Throwable) obj2).setStackTrace(stackTraceElementArr);
        }
        if (map != null) {
            if (clsCheckAutoType != null) {
                if (clsCheckAutoType == this.clazz) {
                    javaBeanDeserializer = this;
                } else {
                    com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = defaultJSONParser.getConfig().getDeserializer(clsCheckAutoType);
                    if (deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) {
                        javaBeanDeserializer = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer;
                    }
                }
            }
            if (javaBeanDeserializer != null) {
                for (java.util.Map.Entry entry : map.entrySet()) {
                    java.lang.String str = (java.lang.String) entry.getKey();
                    java.lang.Object value = entry.getValue();
                    com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(str);
                    if (fieldDeserializer != null) {
                        com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                        if (!fieldInfo.fieldClass.isInstance(value)) {
                            value = com.alibaba.fastjson.util.TypeUtils.cast(value, fieldInfo.fieldType, defaultJSONParser.getConfig());
                        }
                        fieldDeserializer.setValue(obj2, value);
                    }
                }
            }
        }
        return (T) obj2;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }
}
