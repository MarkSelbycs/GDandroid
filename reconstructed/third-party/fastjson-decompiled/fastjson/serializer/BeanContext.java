package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class BeanContext {
    private final java.lang.Class<?> beanClass;
    private final com.alibaba.fastjson.util.FieldInfo fieldInfo;
    private final java.lang.String format;

    public BeanContext(java.lang.Class<?> cls, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        this.beanClass = cls;
        this.fieldInfo = fieldInfo;
        this.format = fieldInfo.getFormat();
    }

    public <T extends java.lang.annotation.Annotation> T getAnnation(java.lang.Class<T> cls) {
        return (T) this.fieldInfo.getAnnation(cls);
    }

    public java.lang.Class<?> getBeanClass() {
        return this.beanClass;
    }

    public int getFeatures() {
        return this.fieldInfo.serialzeFeatures;
    }

    public java.lang.reflect.Field getField() {
        return this.fieldInfo.field;
    }

    public java.lang.Class<?> getFieldClass() {
        return this.fieldInfo.fieldClass;
    }

    public java.lang.reflect.Type getFieldType() {
        return this.fieldInfo.fieldType;
    }

    public java.lang.String getFormat() {
        return this.format;
    }

    public java.lang.String getLabel() {
        return this.fieldInfo.label;
    }

    public java.lang.reflect.Method getMethod() {
        return this.fieldInfo.method;
    }

    public java.lang.String getName() {
        return this.fieldInfo.name;
    }

    public boolean isJsonDirect() {
        return this.fieldInfo.jsonDirect;
    }
}
