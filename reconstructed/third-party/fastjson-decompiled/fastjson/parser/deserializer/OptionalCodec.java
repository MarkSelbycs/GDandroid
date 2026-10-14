package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class OptionalCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static com.alibaba.fastjson.parser.deserializer.OptionalCodec instance = new com.alibaba.fastjson.parser.deserializer.OptionalCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        if (type == java.util.OptionalInt.class) {
            java.lang.Integer numCastToInt = com.alibaba.fastjson.util.TypeUtils.castToInt(defaultJSONParser.parseObject((java.lang.Class) java.lang.Integer.class));
            return numCastToInt == null ? (T) java.util.OptionalInt.empty() : (T) java.util.OptionalInt.of(numCastToInt.intValue());
        }
        if (type == java.util.OptionalLong.class) {
            java.lang.Long lCastToLong = com.alibaba.fastjson.util.TypeUtils.castToLong(defaultJSONParser.parseObject((java.lang.Class) java.lang.Long.class));
            return lCastToLong == null ? (T) java.util.OptionalLong.empty() : (T) java.util.OptionalLong.of(lCastToLong.longValue());
        }
        if (type == java.util.OptionalDouble.class) {
            java.lang.Double dCastToDouble = com.alibaba.fastjson.util.TypeUtils.castToDouble(defaultJSONParser.parseObject((java.lang.Class) java.lang.Double.class));
            return dCastToDouble == null ? (T) java.util.OptionalDouble.empty() : (T) java.util.OptionalDouble.of(dCastToDouble.doubleValue());
        }
        java.lang.Object object = defaultJSONParser.parseObject(com.alibaba.fastjson.util.TypeUtils.unwrapOptional(type));
        return object == null ? (T) java.util.Optional.empty() : (T) java.util.Optional.of(object);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        if (obj == null) {
            jSONSerializer.writeNull();
            return;
        }
        if (obj instanceof java.util.Optional) {
            java.util.Optional optional = (java.util.Optional) obj;
            jSONSerializer.write(optional.isPresent() ? optional.get() : null);
            return;
        }
        if (obj instanceof java.util.OptionalDouble) {
            java.util.OptionalDouble optionalDouble = (java.util.OptionalDouble) obj;
            if (optionalDouble.isPresent()) {
                jSONSerializer.write(java.lang.Double.valueOf(optionalDouble.getAsDouble()));
                return;
            } else {
                jSONSerializer.writeNull();
                return;
            }
        }
        if (obj instanceof java.util.OptionalInt) {
            java.util.OptionalInt optionalInt = (java.util.OptionalInt) obj;
            if (optionalInt.isPresent()) {
                jSONSerializer.out.writeInt(optionalInt.getAsInt());
                return;
            } else {
                jSONSerializer.writeNull();
                return;
            }
        }
        if (!(obj instanceof java.util.OptionalLong)) {
            throw new com.alibaba.fastjson.JSONException("not support optional : " + obj.getClass());
        }
        java.util.OptionalLong optionalLong = (java.util.OptionalLong) obj;
        if (optionalLong.isPresent()) {
            jSONSerializer.out.writeLong(optionalLong.getAsLong());
        } else {
            jSONSerializer.writeNull();
        }
    }
}
