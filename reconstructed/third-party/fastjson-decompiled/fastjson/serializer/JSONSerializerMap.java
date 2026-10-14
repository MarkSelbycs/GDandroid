package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.Deprecated
public class JSONSerializerMap extends com.alibaba.fastjson.serializer.SerializeConfig {
    public final boolean put(java.lang.Class<?> cls, com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer) {
        return super.put((java.lang.reflect.Type) cls, objectSerializer);
    }
}
