package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class FieldDeserializer {
    public com.alibaba.fastjson.serializer.BeanContext beanContext;
    public final java.lang.Class<?> clazz;
    public final com.alibaba.fastjson.util.FieldInfo fieldInfo;

    public FieldDeserializer(java.lang.Class<?> cls, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        this.clazz = cls;
        this.fieldInfo = fieldInfo;
    }

    private static boolean degradeValueAssignment(java.lang.reflect.Field field, java.lang.reflect.Method method, java.lang.Object obj, java.lang.Object obj2) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        if (setFieldValue(field, obj, obj2)) {
            return true;
        }
        try {
            obj.getClass().getDeclaredMethod("set" + method.getName().substring(3), method.getReturnType()).invoke(obj, obj2);
            return true;
        } catch (java.lang.IllegalAccessException | java.lang.NoSuchMethodException | java.lang.reflect.InvocationTargetException unused) {
            return false;
        }
    }

    private static boolean setFieldValue(java.lang.reflect.Field field, java.lang.Object obj, java.lang.Object obj2) throws java.lang.IllegalAccessException {
        if (field == null || java.lang.reflect.Modifier.isFinal(field.getModifiers())) {
            return false;
        }
        field.set(obj, obj2);
        return true;
    }

    public int getFastMatchToken() {
        return 0;
    }

    public java.lang.Class<?> getOwnerClass() {
        return this.clazz;
    }

    public abstract void parseField(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Object obj, java.lang.reflect.Type type, java.util.Map<java.lang.String, java.lang.Object> map);

    public void setValue(java.lang.Object obj, boolean z4) {
        setValue(obj, java.lang.Boolean.valueOf(z4));
    }

    public void setWrappedValue(java.lang.String str, java.lang.Object obj) {
        throw new com.alibaba.fastjson.JSONException("TODO");
    }

    public void setValue(java.lang.Object obj, int i5) {
        setValue(obj, java.lang.Integer.valueOf(i5));
    }

    public void setValue(java.lang.Object obj, long j5) {
        setValue(obj, java.lang.Long.valueOf(j5));
    }

    public void setValue(java.lang.Object obj, java.lang.String str) {
        setValue(obj, (java.lang.Object) str);
    }

    public void setValue(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.String str;
        if (obj2 == null && this.fieldInfo.fieldClass.isPrimitive()) {
            return;
        }
        com.alibaba.fastjson.util.FieldInfo fieldInfo = this.fieldInfo;
        if (fieldInfo.fieldClass == java.lang.String.class && (str = fieldInfo.format) != null && str.equals("trim")) {
            obj2 = ((java.lang.String) obj2).trim();
        }
        try {
            com.alibaba.fastjson.util.FieldInfo fieldInfo2 = this.fieldInfo;
            java.lang.reflect.Method method = fieldInfo2.method;
            if (method != null) {
                if (fieldInfo2.getOnly) {
                    java.lang.Class<?> cls = fieldInfo2.fieldClass;
                    if (cls == java.util.concurrent.atomic.AtomicInteger.class) {
                        java.util.concurrent.atomic.AtomicInteger atomicInteger = (java.util.concurrent.atomic.AtomicInteger) method.invoke(obj, new java.lang.Object[0]);
                        if (atomicInteger != null) {
                            atomicInteger.set(((java.util.concurrent.atomic.AtomicInteger) obj2).get());
                            return;
                        } else {
                            degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                            return;
                        }
                    }
                    if (cls == java.util.concurrent.atomic.AtomicLong.class) {
                        java.util.concurrent.atomic.AtomicLong atomicLong = (java.util.concurrent.atomic.AtomicLong) method.invoke(obj, new java.lang.Object[0]);
                        if (atomicLong != null) {
                            atomicLong.set(((java.util.concurrent.atomic.AtomicLong) obj2).get());
                            return;
                        } else {
                            degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                            return;
                        }
                    }
                    if (cls == java.util.concurrent.atomic.AtomicBoolean.class) {
                        java.util.concurrent.atomic.AtomicBoolean atomicBoolean = (java.util.concurrent.atomic.AtomicBoolean) method.invoke(obj, new java.lang.Object[0]);
                        if (atomicBoolean != null) {
                            atomicBoolean.set(((java.util.concurrent.atomic.AtomicBoolean) obj2).get());
                            return;
                        } else {
                            degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                            return;
                        }
                    }
                    if (java.util.Map.class.isAssignableFrom(method.getReturnType())) {
                        try {
                            java.util.Map map = (java.util.Map) method.invoke(obj, new java.lang.Object[0]);
                            if (map == null) {
                                if (obj2 != null) {
                                    degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                                    return;
                                }
                                return;
                            } else {
                                if (map == java.util.Collections.emptyMap()) {
                                    return;
                                }
                                if (map.isEmpty() && ((java.util.Map) obj2).isEmpty()) {
                                    return;
                                }
                                java.lang.String name = map.getClass().getName();
                                if (!name.equals("java.util.ImmutableCollections$Map1") && !name.equals("java.util.ImmutableCollections$MapN") && !name.startsWith("java.util.Collections$Unmodifiable")) {
                                    if (map.getClass().getName().equals("b3.z")) {
                                        degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                                        return;
                                    } else {
                                        map.putAll((java.util.Map) obj2);
                                        return;
                                    }
                                }
                                return;
                            }
                        } catch (java.lang.reflect.InvocationTargetException unused) {
                            degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                            return;
                        }
                    }
                    try {
                        java.util.Collection collection = (java.util.Collection) method.invoke(obj, new java.lang.Object[0]);
                        if (collection == null || obj2 == null) {
                            if (collection != null || obj2 == null) {
                                return;
                            }
                            degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                            return;
                        }
                        java.lang.String name2 = collection.getClass().getName();
                        if (collection != java.util.Collections.emptySet() && collection != java.util.Collections.emptyList() && name2 != "java.util.ImmutableCollections$ListN" && name2 != "java.util.ImmutableCollections$List12" && !name2.startsWith("java.util.Collections$Unmodifiable")) {
                            if (!collection.isEmpty()) {
                                collection.clear();
                            } else if (((java.util.Collection) obj2).isEmpty()) {
                                return;
                            }
                            if (!name2.equals("b3.y") && !name2.equals("b3.a0")) {
                                collection.addAll((java.util.Collection) obj2);
                                return;
                            }
                            degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                            return;
                        }
                        return;
                    } catch (java.lang.reflect.InvocationTargetException unused2) {
                        degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                        return;
                    }
                    throw new com.alibaba.fastjson.JSONException("set property error, " + this.clazz.getName() + "#" + this.fieldInfo.name, e);
                }
                method.invoke(obj, obj2);
                return;
            }
            java.lang.reflect.Field field = fieldInfo2.field;
            if (!fieldInfo2.getOnly) {
                if (field != null) {
                    field.set(obj, obj2);
                    return;
                }
                return;
            }
            java.lang.Class<?> cls2 = fieldInfo2.fieldClass;
            if (cls2 == java.util.concurrent.atomic.AtomicInteger.class) {
                java.util.concurrent.atomic.AtomicInteger atomicInteger2 = (java.util.concurrent.atomic.AtomicInteger) field.get(obj);
                if (atomicInteger2 != null) {
                    atomicInteger2.set(((java.util.concurrent.atomic.AtomicInteger) obj2).get());
                    return;
                }
                return;
            }
            if (cls2 == java.util.concurrent.atomic.AtomicLong.class) {
                java.util.concurrent.atomic.AtomicLong atomicLong2 = (java.util.concurrent.atomic.AtomicLong) field.get(obj);
                if (atomicLong2 != null) {
                    atomicLong2.set(((java.util.concurrent.atomic.AtomicLong) obj2).get());
                    return;
                }
                return;
            }
            if (cls2 == java.util.concurrent.atomic.AtomicBoolean.class) {
                java.util.concurrent.atomic.AtomicBoolean atomicBoolean2 = (java.util.concurrent.atomic.AtomicBoolean) field.get(obj);
                if (atomicBoolean2 != null) {
                    atomicBoolean2.set(((java.util.concurrent.atomic.AtomicBoolean) obj2).get());
                    return;
                }
                return;
            }
            if (java.util.Map.class.isAssignableFrom(cls2)) {
                java.util.Map map2 = (java.util.Map) field.get(obj);
                if (map2 != null && map2 != java.util.Collections.emptyMap() && !map2.getClass().getName().startsWith("java.util.Collections$Unmodifiable")) {
                    map2.putAll((java.util.Map) obj2);
                    return;
                }
                return;
            }
            java.util.Collection collection2 = (java.util.Collection) field.get(obj);
            if (collection2 != null && obj2 != null && collection2 != java.util.Collections.emptySet() && collection2 != java.util.Collections.emptyList() && !collection2.getClass().getName().startsWith("java.util.Collections$Unmodifiable")) {
                collection2.clear();
                collection2.addAll((java.util.Collection) obj2);
            }
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONException("set property error, " + this.clazz.getName() + "#" + this.fieldInfo.name, e5);
        }
    }
}
