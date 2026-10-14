package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ByteBufferCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.serializer.ByteBufferCodec instance = new com.alibaba.fastjson.serializer.ByteBufferCodec();

    public static class ByteBufferBean {
        public byte[] array;
        public int limit;
        public int position;

        public java.nio.ByteBuffer byteBuffer() {
            java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(this.array);
            byteBufferWrap.limit(this.limit);
            byteBufferWrap.position(this.position);
            return byteBufferWrap;
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) ((com.alibaba.fastjson.serializer.ByteBufferCodec.ByteBufferBean) defaultJSONParser.parseObject((java.lang.Class) com.alibaba.fastjson.serializer.ByteBufferCodec.ByteBufferBean.class)).byteBuffer();
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 14;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        java.nio.ByteBuffer byteBuffer = (java.nio.ByteBuffer) obj;
        byte[] bArrArray = byteBuffer.array();
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        serializeWriter.write(123);
        serializeWriter.writeFieldName("array");
        serializeWriter.writeByteArray(bArrArray);
        serializeWriter.writeFieldValue(',', "limit", byteBuffer.limit());
        serializeWriter.writeFieldValue(',', "position", byteBuffer.position());
        serializeWriter.write(125);
    }
}
