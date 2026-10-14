package com.alibaba.fastjson.support.spring;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.Deprecated
public class MappingFastJsonValue implements com.alibaba.fastjson.serializer.JSONSerializable {
    private static final int BrowserSecureMask = com.alibaba.fastjson.serializer.SerializerFeature.BrowserSecure.mask;
    private static final java.lang.String SECURITY_PREFIX = "/**/";
    private java.lang.String jsonpFunction;
    private java.lang.Object value;

    public MappingFastJsonValue(java.lang.Object obj) {
        this.value = obj;
    }

    public java.lang.String getJsonpFunction() {
        return this.jsonpFunction;
    }

    public java.lang.Object getValue() {
        return this.value;
    }

    public void setJsonpFunction(java.lang.String str) {
        this.jsonpFunction = str;
    }

    public void setValue(java.lang.Object obj) {
        this.value = obj;
    }

    @Override // com.alibaba.fastjson.serializer.JSONSerializable
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (this.jsonpFunction == null) {
            jSONSerializer.write(this.value);
            return;
        }
        int i6 = BrowserSecureMask;
        if ((i5 & i6) != 0 || serializeWriter.isEnabled(i6)) {
            serializeWriter.write(SECURITY_PREFIX);
        }
        serializeWriter.write(this.jsonpFunction);
        serializeWriter.write(40);
        jSONSerializer.write(this.value);
        serializeWriter.write(41);
    }
}
