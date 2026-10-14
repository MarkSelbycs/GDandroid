package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface PropertyProcessable extends com.alibaba.fastjson.parser.deserializer.ParseProcess {
    void apply(java.lang.String str, java.lang.Object obj);

    java.lang.reflect.Type getType(java.lang.String str);
}
