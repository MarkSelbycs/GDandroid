package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ArraySerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    private final com.alibaba.fastjson.serializer.ObjectSerializer compObjectSerializer;
    private final java.lang.Class<?> componentType;

    public ArraySerializer(java.lang.Class<?> cls, com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer) {
        this.componentType = cls;
        this.compObjectSerializer = objectSerializer;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        java.lang.Object[] objArr = (java.lang.Object[]) obj;
        int length = objArr.length;
        com.alibaba.fastjson.serializer.SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            serializeWriter.append('[');
            for (int i6 = 0; i6 < length; i6++) {
                if (i6 != 0) {
                    serializeWriter.append(',');
                }
                java.lang.Object obj3 = objArr[i6];
                if (obj3 == null) {
                    if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty) && (obj instanceof java.lang.String[])) {
                        serializeWriter.writeString("");
                    } else {
                        serializeWriter.append((java.lang.CharSequence) "null");
                    }
                } else if (obj3.getClass() == this.componentType) {
                    this.compObjectSerializer.write(jSONSerializer, obj3, java.lang.Integer.valueOf(i6), null, 0);
                } else {
                    jSONSerializer.getObjectWriter(obj3.getClass()).write(jSONSerializer, obj3, java.lang.Integer.valueOf(i6), null, 0);
                }
            }
            serializeWriter.append(']');
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
