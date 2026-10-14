package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class EnumCreatorDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    private final java.lang.reflect.Method creator;
    private final java.lang.Class paramType;

    public EnumCreatorDeserializer(java.lang.reflect.Method method) {
        this.creator = method;
        this.paramType = method.getParameterTypes()[0];
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        try {
            return (T) this.creator.invoke(null, defaultJSONParser.parseObject((java.lang.Class) this.paramType));
        } catch (java.lang.IllegalAccessException e5) {
            throw new com.alibaba.fastjson.JSONException("parse enum error", e5);
        } catch (java.lang.reflect.InvocationTargetException e6) {
            throw new com.alibaba.fastjson.JSONException("parse enum error", e6);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 0;
    }
}
