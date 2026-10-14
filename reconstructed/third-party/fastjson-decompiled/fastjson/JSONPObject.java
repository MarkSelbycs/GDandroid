package com.alibaba.fastjson;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JSONPObject implements com.alibaba.fastjson.serializer.JSONSerializable {
    public static java.lang.String SECURITY_PREFIX = "/**/";
    private java.lang.String function;
    private final java.util.List<java.lang.Object> parameters = new java.util.ArrayList();

    public JSONPObject() {
    }

    public void addParameter(java.lang.Object obj) {
        this.parameters.add(obj);
    }

    public java.lang.String getFunction() {
        return this.function;
    }

    public java.util.List<java.lang.Object> getParameters() {
        return this.parameters;
    }

    public void setFunction(java.lang.String str) {
        this.function = str;
    }

    public java.lang.String toJSONString() {
        return toString();
    }

    public java.lang.String toString() {
        return com.alibaba.fastjson.JSON.toJSONString(this);
    }

    @Override // com.alibaba.fastjson.serializer.JSONSerializable
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        int i6 = com.alibaba.fastjson.serializer.SerializerFeature.BrowserSecure.mask;
        if ((i5 & i6) != 0 || serializeWriter.isEnabled(i6)) {
            serializeWriter.write(SECURITY_PREFIX);
        }
        serializeWriter.write(this.function);
        serializeWriter.write(40);
        for (int i7 = 0; i7 < this.parameters.size(); i7++) {
            if (i7 != 0) {
                serializeWriter.write(44);
            }
            jSONSerializer.write(this.parameters.get(i7));
        }
        serializeWriter.write(41);
    }

    public JSONPObject(java.lang.String str) {
        this.function = str;
    }
}
