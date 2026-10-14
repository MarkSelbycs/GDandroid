package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FieldSerializer implements java.lang.Comparable<com.alibaba.fastjson.serializer.FieldSerializer> {
    public boolean browserCompatible;
    public boolean disableCircularReferenceDetect;
    private final java.lang.String double_quoted_fieldPrefix;
    public int features;
    public com.alibaba.fastjson.serializer.BeanContext fieldContext;
    public final com.alibaba.fastjson.util.FieldInfo fieldInfo;
    private java.lang.String format;
    public boolean persistenceXToMany;
    private com.alibaba.fastjson.serializer.FieldSerializer.RuntimeSerializerInfo runtimeInfo;
    public boolean serializeUsing = false;
    private java.lang.String single_quoted_fieldPrefix;
    private java.lang.String un_quoted_fieldPrefix;
    public boolean writeEnumUsingName;
    public boolean writeEnumUsingToString;
    public final boolean writeNull;

    public static class RuntimeSerializerInfo {
        public final com.alibaba.fastjson.serializer.ObjectSerializer fieldSerializer;
        public final java.lang.Class<?> runtimeFieldClass;

        public RuntimeSerializerInfo(com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer, java.lang.Class<?> cls) {
            this.fieldSerializer = objectSerializer;
            this.runtimeFieldClass = cls;
        }
    }

    public FieldSerializer(java.lang.Class<?> cls, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        boolean z4;
        com.alibaba.fastjson.annotation.JSONType jSONType;
        this.writeEnumUsingToString = false;
        this.writeEnumUsingName = false;
        this.disableCircularReferenceDetect = false;
        this.persistenceXToMany = false;
        this.fieldInfo = fieldInfo;
        this.fieldContext = new com.alibaba.fastjson.serializer.BeanContext(cls, fieldInfo);
        if (cls != null && (jSONType = (com.alibaba.fastjson.annotation.JSONType) com.alibaba.fastjson.util.TypeUtils.getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class)) != null) {
            for (com.alibaba.fastjson.serializer.SerializerFeature serializerFeature : jSONType.serialzeFeatures()) {
                if (serializerFeature == com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString) {
                    this.writeEnumUsingToString = true;
                } else if (serializerFeature == com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingName) {
                    this.writeEnumUsingName = true;
                } else if (serializerFeature == com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect) {
                    this.disableCircularReferenceDetect = true;
                } else {
                    com.alibaba.fastjson.serializer.SerializerFeature serializerFeature2 = com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible;
                    if (serializerFeature == serializerFeature2) {
                        this.features |= serializerFeature2.mask;
                        this.browserCompatible = true;
                    } else {
                        com.alibaba.fastjson.serializer.SerializerFeature serializerFeature3 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue;
                        if (serializerFeature == serializerFeature3) {
                            this.features |= serializerFeature3.mask;
                        }
                    }
                }
            }
        }
        fieldInfo.setAccessible();
        this.double_quoted_fieldPrefix = '\"' + fieldInfo.name + "\":";
        com.alibaba.fastjson.annotation.JSONField annotation = fieldInfo.getAnnotation();
        if (annotation != null) {
            com.alibaba.fastjson.serializer.SerializerFeature[] serializerFeatureArrSerialzeFeatures = annotation.serialzeFeatures();
            int length = serializerFeatureArrSerialzeFeatures.length;
            int i5 = 0;
            while (true) {
                if (i5 >= length) {
                    z4 = false;
                    break;
                } else {
                    if ((serializerFeatureArrSerialzeFeatures[i5].getMask() & com.alibaba.fastjson.serializer.SerializerFeature.WRITE_MAP_NULL_FEATURES) != 0) {
                        z4 = true;
                        break;
                    }
                    i5++;
                }
            }
            java.lang.String str = annotation.format();
            this.format = str;
            if (str.trim().length() == 0) {
                this.format = null;
            }
            for (com.alibaba.fastjson.serializer.SerializerFeature serializerFeature4 : annotation.serialzeFeatures()) {
                if (serializerFeature4 == com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString) {
                    this.writeEnumUsingToString = true;
                } else if (serializerFeature4 == com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingName) {
                    this.writeEnumUsingName = true;
                } else if (serializerFeature4 == com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect) {
                    this.disableCircularReferenceDetect = true;
                } else if (serializerFeature4 == com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible) {
                    this.browserCompatible = true;
                }
            }
            this.features = com.alibaba.fastjson.serializer.SerializerFeature.of(annotation.serialzeFeatures()) | this.features;
        } else {
            z4 = false;
        }
        this.writeNull = z4;
        this.persistenceXToMany = com.alibaba.fastjson.util.TypeUtils.isAnnotationPresentOneToMany(fieldInfo.method) || com.alibaba.fastjson.util.TypeUtils.isAnnotationPresentManyToMany(fieldInfo.method);
    }

    public java.lang.Object getPropertyValue(java.lang.Object obj) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        java.lang.Object obj2 = this.fieldInfo.get(obj);
        if (this.format == null || obj2 == null) {
            return obj2;
        }
        java.lang.Class<?> cls = this.fieldInfo.fieldClass;
        if (cls != java.util.Date.class && cls != java.sql.Date.class) {
            return obj2;
        }
        java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(this.format, com.alibaba.fastjson.JSON.defaultLocale);
        simpleDateFormat.setTimeZone(com.alibaba.fastjson.JSON.defaultTimeZone);
        return simpleDateFormat.format(obj2);
    }

    public java.lang.Object getPropertyValueDirect(java.lang.Object obj) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        java.lang.Object obj2 = this.fieldInfo.get(obj);
        if (!this.persistenceXToMany || com.alibaba.fastjson.util.TypeUtils.isHibernateInitialized(obj2)) {
            return obj2;
        }
        return null;
    }

    public void writePrefix(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (!serializeWriter.quoteFieldNames) {
            if (this.un_quoted_fieldPrefix == null) {
                this.un_quoted_fieldPrefix = this.fieldInfo.name + ":";
            }
            serializeWriter.write(this.un_quoted_fieldPrefix);
            return;
        }
        if (!com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(serializeWriter.features, this.fieldInfo.serialzeFeatures, com.alibaba.fastjson.serializer.SerializerFeature.UseSingleQuotes)) {
            serializeWriter.write(this.double_quoted_fieldPrefix);
            return;
        }
        if (this.single_quoted_fieldPrefix == null) {
            this.single_quoted_fieldPrefix = '\'' + this.fieldInfo.name + "':";
        }
        serializeWriter.write(this.single_quoted_fieldPrefix);
    }

    public void writeValue(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj) throws java.lang.Exception {
        java.lang.Class<?> cls;
        java.lang.Class<?> cls2;
        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter;
        if (this.runtimeInfo == null) {
            if (obj == null) {
                cls2 = this.fieldInfo.fieldClass;
                if (cls2 == java.lang.Byte.TYPE) {
                    cls2 = java.lang.Byte.class;
                } else if (cls2 == java.lang.Short.TYPE) {
                    cls2 = java.lang.Short.class;
                } else if (cls2 == java.lang.Integer.TYPE) {
                    cls2 = java.lang.Integer.class;
                } else if (cls2 == java.lang.Long.TYPE) {
                    cls2 = java.lang.Long.class;
                } else if (cls2 == java.lang.Float.TYPE) {
                    cls2 = java.lang.Float.class;
                } else if (cls2 == java.lang.Double.TYPE) {
                    cls2 = java.lang.Double.class;
                } else if (cls2 == java.lang.Boolean.TYPE) {
                    cls2 = java.lang.Boolean.class;
                }
            } else {
                cls2 = obj.getClass();
            }
            com.alibaba.fastjson.serializer.ObjectSerializer doubleSerializer = null;
            com.alibaba.fastjson.annotation.JSONField annotation = this.fieldInfo.getAnnotation();
            if (annotation == null || annotation.serializeUsing() == java.lang.Void.class) {
                if (this.format != null) {
                    if (cls2 == java.lang.Double.TYPE || cls2 == java.lang.Double.class) {
                        doubleSerializer = new com.alibaba.fastjson.serializer.DoubleSerializer(this.format);
                    } else if (cls2 == java.lang.Float.TYPE || cls2 == java.lang.Float.class) {
                        doubleSerializer = new com.alibaba.fastjson.serializer.FloatCodec(this.format);
                    }
                }
                objectWriter = doubleSerializer == null ? jSONSerializer.getObjectWriter(cls2) : doubleSerializer;
            } else {
                objectWriter = (com.alibaba.fastjson.serializer.ObjectSerializer) annotation.serializeUsing().newInstance();
                this.serializeUsing = true;
            }
            this.runtimeInfo = new com.alibaba.fastjson.serializer.FieldSerializer.RuntimeSerializerInfo(objectWriter, cls2);
        }
        com.alibaba.fastjson.serializer.FieldSerializer.RuntimeSerializerInfo runtimeSerializerInfo = this.runtimeInfo;
        int i5 = (this.disableCircularReferenceDetect ? this.fieldInfo.serialzeFeatures | com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect.mask : this.fieldInfo.serialzeFeatures) | this.features;
        if (obj == null) {
            com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
            if (this.fieldInfo.fieldClass == java.lang.Object.class && serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WRITE_MAP_NULL_FEATURES)) {
                serializeWriter.writeNull();
                return;
            }
            java.lang.Class<?> cls3 = runtimeSerializerInfo.runtimeFieldClass;
            if (java.lang.Number.class.isAssignableFrom(cls3)) {
                serializeWriter.writeNull(this.features, com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero.mask);
                return;
            }
            if (java.lang.String.class == cls3) {
                serializeWriter.writeNull(this.features, com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty.mask);
                return;
            }
            if (java.lang.Boolean.class == cls3) {
                serializeWriter.writeNull(this.features, com.alibaba.fastjson.serializer.SerializerFeature.WriteNullBooleanAsFalse.mask);
                return;
            }
            if (java.util.Collection.class.isAssignableFrom(cls3) || cls3.isArray()) {
                serializeWriter.writeNull(this.features, com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty.mask);
                return;
            }
            com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer = runtimeSerializerInfo.fieldSerializer;
            if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WRITE_MAP_NULL_FEATURES) && (objectSerializer instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer)) {
                serializeWriter.writeNull();
                return;
            } else {
                com.alibaba.fastjson.util.FieldInfo fieldInfo = this.fieldInfo;
                objectSerializer.write(jSONSerializer, null, fieldInfo.name, fieldInfo.fieldType, i5);
                return;
            }
        }
        if (this.fieldInfo.isEnum) {
            if (this.writeEnumUsingName) {
                jSONSerializer.out.writeString(((java.lang.Enum) obj).name());
                return;
            } else if (this.writeEnumUsingToString) {
                jSONSerializer.out.writeString(((java.lang.Enum) obj).toString());
                return;
            }
        }
        java.lang.Class<?> cls4 = obj.getClass();
        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter2 = (cls4 == runtimeSerializerInfo.runtimeFieldClass || this.serializeUsing) ? runtimeSerializerInfo.fieldSerializer : jSONSerializer.getObjectWriter(cls4);
        java.lang.String str = this.format;
        if (str != null && !(objectWriter2 instanceof com.alibaba.fastjson.serializer.DoubleSerializer) && !(objectWriter2 instanceof com.alibaba.fastjson.serializer.FloatCodec)) {
            if (objectWriter2 instanceof com.alibaba.fastjson.serializer.ContextObjectSerializer) {
                ((com.alibaba.fastjson.serializer.ContextObjectSerializer) objectWriter2).write(jSONSerializer, obj, this.fieldContext);
                return;
            } else {
                jSONSerializer.writeWithFormat(obj, str);
                return;
            }
        }
        com.alibaba.fastjson.util.FieldInfo fieldInfo2 = this.fieldInfo;
        if (fieldInfo2.unwrapped) {
            if (objectWriter2 instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer) {
                ((com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter2).write(jSONSerializer, obj, fieldInfo2.name, fieldInfo2.fieldType, i5, true);
                return;
            } else if (objectWriter2 instanceof com.alibaba.fastjson.serializer.MapSerializer) {
                ((com.alibaba.fastjson.serializer.MapSerializer) objectWriter2).write(jSONSerializer, obj, fieldInfo2.name, fieldInfo2.fieldType, i5, true);
                return;
            }
        }
        if ((this.features & com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName.mask) != 0 && cls4 != fieldInfo2.fieldClass && (objectWriter2 instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer)) {
            ((com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter2).write(jSONSerializer, obj, fieldInfo2.name, fieldInfo2.fieldType, i5, false);
            return;
        }
        if (this.browserCompatible && ((cls = fieldInfo2.fieldClass) == java.lang.Long.TYPE || cls == java.lang.Long.class)) {
            long jLongValue = ((java.lang.Long) obj).longValue();
            if (jLongValue > 9007199254740991L || jLongValue < -9007199254740991L) {
                jSONSerializer.getWriter().writeString(java.lang.Long.toString(jLongValue));
                return;
            }
        }
        com.alibaba.fastjson.util.FieldInfo fieldInfo3 = this.fieldInfo;
        objectWriter2.write(jSONSerializer, obj, fieldInfo3.name, fieldInfo3.fieldType, i5);
    }

    @Override // java.lang.Comparable
    public int compareTo(com.alibaba.fastjson.serializer.FieldSerializer fieldSerializer) {
        return this.fieldInfo.compareTo(fieldSerializer.fieldInfo);
    }
}
