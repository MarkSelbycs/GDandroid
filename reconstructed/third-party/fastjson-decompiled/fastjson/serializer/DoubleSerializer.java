package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DoubleSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.serializer.DoubleSerializer instance = new com.alibaba.fastjson.serializer.DoubleSerializer();
    private java.text.DecimalFormat decimalFormat;

    public DoubleSerializer() {
        this.decimalFormat = null;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        double dDoubleValue = ((java.lang.Double) obj).doubleValue();
        if (java.lang.Double.isNaN(dDoubleValue) || java.lang.Double.isInfinite(dDoubleValue)) {
            serializeWriter.writeNull();
            return;
        }
        java.text.DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat == null) {
            serializeWriter.writeDouble(dDoubleValue, true);
        } else {
            serializeWriter.write(decimalFormat.format(dDoubleValue));
        }
    }

    public DoubleSerializer(java.text.DecimalFormat decimalFormat) {
        this.decimalFormat = decimalFormat;
    }

    public DoubleSerializer(java.lang.String str) {
        this(new java.text.DecimalFormat(str));
    }
}
