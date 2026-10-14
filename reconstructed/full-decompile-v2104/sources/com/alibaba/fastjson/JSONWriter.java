package com.alibaba.fastjson;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JSONWriter implements java.io.Closeable, java.io.Flushable {
    private com.alibaba.fastjson.JSONStreamContext context;
    private com.alibaba.fastjson.serializer.JSONSerializer serializer;
    private com.alibaba.fastjson.serializer.SerializeWriter writer;

    public JSONWriter(java.io.Writer writer) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(writer);
        this.writer = serializeWriter;
        this.serializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter);
    }

    private void afterWrite() {
        int i5;
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext = this.context;
        if (jSONStreamContext == null) {
            return;
        }
        switch (jSONStreamContext.state) {
            case com.alibaba.fastjson.JSONStreamContext.StartObject /* 1001 */:
            case com.alibaba.fastjson.JSONStreamContext.PropertyValue /* 1003 */:
                i5 = com.alibaba.fastjson.JSONStreamContext.PropertyKey;
                break;
            case com.alibaba.fastjson.JSONStreamContext.PropertyKey /* 1002 */:
                i5 = com.alibaba.fastjson.JSONStreamContext.PropertyValue;
                break;
            case com.alibaba.fastjson.JSONStreamContext.StartArray /* 1004 */:
                i5 = com.alibaba.fastjson.JSONStreamContext.ArrayValue;
                break;
            default:
                i5 = -1;
                break;
        }
        if (i5 != -1) {
            jSONStreamContext.state = i5;
        }
    }

    private void beforeWrite() {
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext = this.context;
        if (jSONStreamContext == null) {
            return;
        }
        int i5 = jSONStreamContext.state;
        if (i5 == 1002) {
            this.writer.write(58);
        } else if (i5 == 1003) {
            this.writer.write(44);
        } else {
            if (i5 != 1005) {
                return;
            }
            this.writer.write(44);
        }
    }

    private void beginStructure() {
        int i5 = this.context.state;
        switch (i5) {
            case com.alibaba.fastjson.JSONStreamContext.StartObject /* 1001 */:
            case com.alibaba.fastjson.JSONStreamContext.StartArray /* 1004 */:
                return;
            case com.alibaba.fastjson.JSONStreamContext.PropertyKey /* 1002 */:
                this.writer.write(58);
                return;
            case com.alibaba.fastjson.JSONStreamContext.PropertyValue /* 1003 */:
            default:
                throw new com.alibaba.fastjson.JSONException("illegal state : " + i5);
            case com.alibaba.fastjson.JSONStreamContext.ArrayValue /* 1005 */:
                this.writer.write(44);
                return;
        }
    }

    private void endStructure() {
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext = this.context.parent;
        this.context = jSONStreamContext;
        if (jSONStreamContext == null) {
            return;
        }
        int i5 = jSONStreamContext.state;
        int i6 = com.alibaba.fastjson.JSONStreamContext.PropertyKey;
        if (i5 != 1001) {
            if (i5 != 1002) {
                i6 = i5 != 1004 ? -1 : com.alibaba.fastjson.JSONStreamContext.ArrayValue;
            } else {
                i6 = com.alibaba.fastjson.JSONStreamContext.PropertyValue;
            }
        }
        if (i6 != -1) {
            jSONStreamContext.state = i6;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.writer.close();
    }

    public void config(com.alibaba.fastjson.serializer.SerializerFeature serializerFeature, boolean z4) {
        this.writer.config(serializerFeature, z4);
    }

    public void endArray() {
        this.writer.write(93);
        endStructure();
    }

    public void endObject() {
        this.writer.write(125);
        endStructure();
    }

    @Override // java.io.Flushable
    public void flush() throws java.io.IOException {
        this.writer.flush();
    }

    public void startArray() {
        if (this.context != null) {
            beginStructure();
        }
        this.context = new com.alibaba.fastjson.JSONStreamContext(this.context, com.alibaba.fastjson.JSONStreamContext.StartArray);
        this.writer.write(91);
    }

    public void startObject() {
        if (this.context != null) {
            beginStructure();
        }
        this.context = new com.alibaba.fastjson.JSONStreamContext(this.context, com.alibaba.fastjson.JSONStreamContext.StartObject);
        this.writer.write(123);
    }

    @java.lang.Deprecated
    public void writeEndArray() {
        endArray();
    }

    @java.lang.Deprecated
    public void writeEndObject() {
        endObject();
    }

    public void writeKey(java.lang.String str) {
        writeObject(str);
    }

    public void writeObject(java.lang.String str) {
        beforeWrite();
        this.serializer.write(str);
        afterWrite();
    }

    @java.lang.Deprecated
    public void writeStartArray() {
        startArray();
    }

    @java.lang.Deprecated
    public void writeStartObject() {
        startObject();
    }

    public void writeValue(java.lang.Object obj) {
        writeObject(obj);
    }

    public void writeObject(java.lang.Object obj) {
        beforeWrite();
        this.serializer.write(obj);
        afterWrite();
    }
}
