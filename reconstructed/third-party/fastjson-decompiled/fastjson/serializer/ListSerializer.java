package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class ListSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.serializer.ListSerializer instance = new com.alibaba.fastjson.serializer.ListSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        char c5;
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        com.alibaba.fastjson.serializer.SerializerFeature serializerFeature = com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName;
        boolean z4 = serializeWriter.isEnabled(serializerFeature) || com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(i5, serializerFeature);
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter2 = jSONSerializer.out;
        java.lang.reflect.Type collectionItemType = z4 ? com.alibaba.fastjson.util.TypeUtils.getCollectionItemType(type) : null;
        if (obj == null) {
            serializeWriter2.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        java.util.List list = (java.util.List) obj;
        if (list.size() == 0) {
            serializeWriter2.append((java.lang.CharSequence) "[]");
            return;
        }
        com.alibaba.fastjson.serializer.SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            char c6 = ',';
            char c7 = ']';
            if (serializeWriter2.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat)) {
                serializeWriter2.append('[');
                jSONSerializer.incrementIndent();
                int i6 = 0;
                for (java.lang.Object obj3 : list) {
                    if (i6 != 0) {
                        serializeWriter2.append(c6);
                    }
                    jSONSerializer.println();
                    if (obj3 == null) {
                        jSONSerializer.out.writeNull();
                    } else if (jSONSerializer.containsReference(obj3)) {
                        jSONSerializer.writeReference(obj3);
                    } else {
                        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = jSONSerializer.getObjectWriter(obj3.getClass());
                        jSONSerializer.context = new com.alibaba.fastjson.serializer.SerialContext(serialContext, obj, obj2, 0, 0);
                        objectWriter.write(jSONSerializer, obj3, java.lang.Integer.valueOf(i6), collectionItemType, i5);
                    }
                    i6++;
                    c7 = c7;
                    c6 = ',';
                }
                jSONSerializer.decrementIdent();
                jSONSerializer.println();
                serializeWriter2.append(c7);
                return;
            }
            char c8 = ']';
            serializeWriter2.append('[');
            int size = list.size();
            int i7 = 0;
            while (i7 < size) {
                java.lang.Object obj4 = list.get(i7);
                if (i7 != 0) {
                    c5 = ',';
                    serializeWriter2.append(',');
                } else {
                    c5 = ',';
                }
                if (obj4 == null) {
                    serializeWriter2.append((java.lang.CharSequence) "null");
                } else {
                    java.lang.Class<?> cls = obj4.getClass();
                    if (cls == java.lang.Integer.class) {
                        serializeWriter2.writeInt(((java.lang.Integer) obj4).intValue());
                    } else {
                        if (cls == java.lang.Long.class) {
                            long jLongValue = ((java.lang.Long) obj4).longValue();
                            if (z4) {
                                serializeWriter2.writeLong(jLongValue);
                                serializeWriter2.write(76);
                            } else {
                                serializeWriter2.writeLong(jLongValue);
                            }
                        } else if ((com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect.mask & i5) != 0) {
                            jSONSerializer.getObjectWriter(obj4.getClass()).write(jSONSerializer, obj4, java.lang.Integer.valueOf(i7), collectionItemType, i5);
                            z4 = z4;
                        } else {
                            i7 = i7;
                            if (!serializeWriter2.disableCircularReferenceDetect) {
                                jSONSerializer.context = new com.alibaba.fastjson.serializer.SerialContext(serialContext, obj, obj2, 0, 0);
                            }
                            if (jSONSerializer.containsReference(obj4)) {
                                jSONSerializer.writeReference(obj4);
                            } else {
                                com.alibaba.fastjson.serializer.ObjectSerializer objectWriter2 = jSONSerializer.getObjectWriter(obj4.getClass());
                                if ((com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName.mask & i5) == 0 || !(objectWriter2 instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer)) {
                                    objectWriter2.write(jSONSerializer, obj4, java.lang.Integer.valueOf(i7), collectionItemType, i5);
                                } else {
                                    ((com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter2).writeNoneASM(jSONSerializer, obj4, java.lang.Integer.valueOf(i7), collectionItemType, i5);
                                }
                            }
                        }
                        i7++;
                        z4 = z4;
                        c8 = ']';
                    }
                }
                z4 = z4;
                i7++;
                z4 = z4;
                c8 = ']';
            }
            serializeWriter2.append(c8);
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
