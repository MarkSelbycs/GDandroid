package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class EnumerationSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static com.alibaba.fastjson.serializer.EnumerationSerializer instance = new com.alibaba.fastjson.serializer.EnumerationSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        java.lang.reflect.Type type2 = null;
        int i6 = 0;
        if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) && (type instanceof java.lang.reflect.ParameterizedType)) {
            type2 = ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments()[0];
        }
        java.util.Enumeration enumeration = (java.util.Enumeration) obj;
        com.alibaba.fastjson.serializer.SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            serializeWriter.append('[');
            while (enumeration.hasMoreElements()) {
                java.lang.Object objNextElement = enumeration.nextElement();
                int i7 = i6 + 1;
                if (i6 != 0) {
                    serializeWriter.append(',');
                }
                if (objNextElement == null) {
                    serializeWriter.writeNull();
                } else {
                    jSONSerializer.getObjectWriter(objNextElement.getClass()).write(jSONSerializer, objNextElement, java.lang.Integer.valueOf(i7 - 1), type2, 0);
                }
                i6 = i7;
            }
            serializeWriter.append(']');
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
