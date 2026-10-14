package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PrimitiveArraySerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static com.alibaba.fastjson.serializer.PrimitiveArraySerializer instance = new com.alibaba.fastjson.serializer.PrimitiveArraySerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int i6 = 0;
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            serializeWriter.write(91);
            while (i6 < iArr.length) {
                if (i6 != 0) {
                    serializeWriter.write(44);
                }
                serializeWriter.writeInt(iArr[i6]);
                i6++;
            }
            serializeWriter.write(93);
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            serializeWriter.write(91);
            while (i6 < sArr.length) {
                if (i6 != 0) {
                    serializeWriter.write(44);
                }
                serializeWriter.writeInt(sArr[i6]);
                i6++;
            }
            serializeWriter.write(93);
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            serializeWriter.write(91);
            while (i6 < jArr.length) {
                if (i6 != 0) {
                    serializeWriter.write(44);
                }
                serializeWriter.writeLong(jArr[i6]);
                i6++;
            }
            serializeWriter.write(93);
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            serializeWriter.write(91);
            while (i6 < zArr.length) {
                if (i6 != 0) {
                    serializeWriter.write(44);
                }
                serializeWriter.write(zArr[i6]);
                i6++;
            }
            serializeWriter.write(93);
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            serializeWriter.write(91);
            while (i6 < fArr.length) {
                if (i6 != 0) {
                    serializeWriter.write(44);
                }
                float f5 = fArr[i6];
                if (java.lang.Float.isNaN(f5)) {
                    serializeWriter.writeNull();
                } else {
                    serializeWriter.append((java.lang.CharSequence) java.lang.Float.toString(f5));
                }
                i6++;
            }
            serializeWriter.write(93);
            return;
        }
        if (!(obj instanceof double[])) {
            if (obj instanceof byte[]) {
                serializeWriter.writeByteArray((byte[]) obj);
                return;
            } else {
                serializeWriter.writeString((char[]) obj);
                return;
            }
        }
        double[] dArr = (double[]) obj;
        serializeWriter.write(91);
        while (i6 < dArr.length) {
            if (i6 != 0) {
                serializeWriter.write(44);
            }
            double d5 = dArr[i6];
            if (java.lang.Double.isNaN(d5)) {
                serializeWriter.writeNull();
            } else {
                serializeWriter.append((java.lang.CharSequence) java.lang.Double.toString(d5));
            }
            i6++;
        }
        serializeWriter.write(93);
    }
}
