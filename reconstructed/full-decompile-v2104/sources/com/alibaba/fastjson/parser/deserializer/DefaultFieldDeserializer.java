package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DefaultFieldDeserializer extends com.alibaba.fastjson.parser.deserializer.FieldDeserializer {
    public boolean customDeserilizer;
    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer fieldValueDeserilizer;

    public DefaultFieldDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Class<?> cls, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        super(cls, fieldInfo);
        boolean z4 = false;
        this.customDeserilizer = false;
        com.alibaba.fastjson.annotation.JSONField annotation = fieldInfo.getAnnotation();
        if (annotation != null) {
            java.lang.Class<?> clsDeserializeUsing = annotation.deserializeUsing();
            if (clsDeserializeUsing != null && clsDeserializeUsing != java.lang.Void.class) {
                z4 = true;
            }
            this.customDeserilizer = z4;
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.FieldDeserializer
    public int getFastMatchToken() {
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer = this.fieldValueDeserilizer;
        if (objectDeserializer != null) {
            return objectDeserializer.getFastMatchToken();
        }
        return 2;
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer getFieldValueDeserilizer(com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        if (this.fieldValueDeserilizer == null) {
            com.alibaba.fastjson.annotation.JSONField annotation = this.fieldInfo.getAnnotation();
            if (annotation == null || annotation.deserializeUsing() == java.lang.Void.class) {
                com.alibaba.fastjson.util.FieldInfo fieldInfo = this.fieldInfo;
                this.fieldValueDeserilizer = parserConfig.getDeserializer(fieldInfo.fieldClass, fieldInfo.fieldType);
            } else {
                try {
                    this.fieldValueDeserilizer = (com.alibaba.fastjson.parser.deserializer.ObjectDeserializer) annotation.deserializeUsing().newInstance();
                } catch (java.lang.Exception e5) {
                    throw new com.alibaba.fastjson.JSONException("create deserializeUsing ObjectDeserializer error", e5);
                }
            }
        }
        return this.fieldValueDeserilizer;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.FieldDeserializer
    public void parseField(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Object obj, java.lang.reflect.Type type, java.util.Map<java.lang.String, java.lang.Object> map) {
        java.lang.Object objDeserialze;
        com.alibaba.fastjson.util.FieldInfo fieldInfo;
        int i5;
        if (this.fieldValueDeserilizer == null) {
            getFieldValueDeserilizer(defaultJSONParser.getConfig());
        }
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = this.fieldValueDeserilizer;
        java.lang.reflect.Type fieldType = this.fieldInfo.fieldType;
        if (type instanceof java.lang.reflect.ParameterizedType) {
            com.alibaba.fastjson.parser.ParseContext context = defaultJSONParser.getContext();
            if (context != null) {
                context.type = type;
            }
            if (fieldType != type) {
                fieldType = com.alibaba.fastjson.util.FieldInfo.getFieldType(this.clazz, type, fieldType);
                if (deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer) {
                    deserializer = defaultJSONParser.getConfig().getDeserializer(fieldType);
                }
            }
        }
        java.lang.reflect.Type type2 = fieldType;
        if (!(deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) || (i5 = (fieldInfo = this.fieldInfo).parserFeatures) == 0) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo2 = this.fieldInfo;
            java.lang.String str = fieldInfo2.format;
            objDeserialze = (!(str == null && fieldInfo2.parserFeatures == 0) && (deserializer instanceof com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer)) ? ((com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer) deserializer).deserialze(defaultJSONParser, type2, fieldInfo2.name, str, fieldInfo2.parserFeatures) : deserializer.deserialze(defaultJSONParser, type2, fieldInfo2.name);
        } else {
            objDeserialze = ((com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer).deserialze(defaultJSONParser, type2, fieldInfo.name, i5);
        }
        if ((objDeserialze instanceof byte[]) && ("gzip".equals(this.fieldInfo.format) || "gzip,base64".equals(this.fieldInfo.format))) {
            try {
                java.util.zip.GZIPInputStream gZIPInputStream = new java.util.zip.GZIPInputStream(new java.io.ByteArrayInputStream((byte[]) objDeserialze));
                java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
                while (true) {
                    byte[] bArr = new byte[1024];
                    int i6 = gZIPInputStream.read(bArr);
                    if (i6 == -1) {
                        break;
                    } else if (i6 > 0) {
                        byteArrayOutputStream.write(bArr, 0, i6);
                    }
                }
                objDeserialze = byteArrayOutputStream.toByteArray();
            } catch (java.io.IOException e5) {
                throw new com.alibaba.fastjson.JSONException("unzip bytes error.", e5);
            }
        }
        if (defaultJSONParser.getResolveStatus() == 1) {
            com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask lastResolveTask = defaultJSONParser.getLastResolveTask();
            lastResolveTask.fieldDeserializer = this;
            lastResolveTask.ownerContext = defaultJSONParser.getContext();
            defaultJSONParser.setResolveStatus(0);
            return;
        }
        if (obj == null) {
            map.put(this.fieldInfo.name, objDeserialze);
        } else {
            setValue(obj, objDeserialze);
        }
    }

    public void parseFieldUnwrapped(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Object obj, java.lang.reflect.Type type, java.util.Map<java.lang.String, java.lang.Object> map) {
        throw new com.alibaba.fastjson.JSONException("TODO");
    }
}
