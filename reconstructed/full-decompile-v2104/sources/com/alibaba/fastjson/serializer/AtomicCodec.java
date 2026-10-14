package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AtomicCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.serializer.AtomicCodec instance = new com.alibaba.fastjson.serializer.AtomicCodec();

    /* JADX WARN: Type inference failed for: r4v2, types: [T, java.util.concurrent.atomic.AtomicLongArray] */
    /* JADX WARN: Type inference failed for: r4v3, types: [T, java.util.concurrent.atomic.AtomicIntegerArray] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        if (defaultJSONParser.lexer.token() == 8) {
            defaultJSONParser.lexer.nextToken(16);
            return null;
        }
        com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray();
        defaultJSONParser.parseArray(jSONArray);
        int i5 = 0;
        if (type == java.util.concurrent.atomic.AtomicIntegerArray.class) {
            ?? r5 = (T) new java.util.concurrent.atomic.AtomicIntegerArray(jSONArray.size());
            while (i5 < jSONArray.size()) {
                r5.set(i5, jSONArray.getInteger(i5).intValue());
                i5++;
            }
            return r5;
        }
        ?? r6 = (T) new java.util.concurrent.atomic.AtomicLongArray(jSONArray.size());
        while (i5 < jSONArray.size()) {
            r6.set(i5, jSONArray.getLong(i5).longValue());
            i5++;
        }
        return r6;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 14;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj instanceof java.util.concurrent.atomic.AtomicInteger) {
            serializeWriter.writeInt(((java.util.concurrent.atomic.AtomicInteger) obj).get());
            return;
        }
        if (obj instanceof java.util.concurrent.atomic.AtomicLong) {
            serializeWriter.writeLong(((java.util.concurrent.atomic.AtomicLong) obj).get());
            return;
        }
        if (obj instanceof java.util.concurrent.atomic.AtomicBoolean) {
            serializeWriter.append((java.lang.CharSequence) (((java.util.concurrent.atomic.AtomicBoolean) obj).get() ? "true" : "false"));
            return;
        }
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int i6 = 0;
        if (obj instanceof java.util.concurrent.atomic.AtomicIntegerArray) {
            java.util.concurrent.atomic.AtomicIntegerArray atomicIntegerArray = (java.util.concurrent.atomic.AtomicIntegerArray) obj;
            int length = atomicIntegerArray.length();
            serializeWriter.write(91);
            while (i6 < length) {
                int i7 = atomicIntegerArray.get(i6);
                if (i6 != 0) {
                    serializeWriter.write(44);
                }
                serializeWriter.writeInt(i7);
                i6++;
            }
            serializeWriter.write(93);
            return;
        }
        java.util.concurrent.atomic.AtomicLongArray atomicLongArray = (java.util.concurrent.atomic.AtomicLongArray) obj;
        int length2 = atomicLongArray.length();
        serializeWriter.write(91);
        while (i6 < length2) {
            long j5 = atomicLongArray.get(i6);
            if (i6 != 0) {
                serializeWriter.write(44);
            }
            serializeWriter.writeLong(j5);
            i6++;
        }
        serializeWriter.write(93);
    }
}
