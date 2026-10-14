package com.alibaba.fastjson.support.springfox;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SwaggerJsonSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.support.springfox.SwaggerJsonSerializer instance = new com.alibaba.fastjson.support.springfox.SwaggerJsonSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        jSONSerializer.getWriter().write(((springfox.documentation.spring.web.json.Json) obj).value());
    }
}
