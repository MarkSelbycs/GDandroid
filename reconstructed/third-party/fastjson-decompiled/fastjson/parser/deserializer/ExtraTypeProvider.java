package com.alibaba.fastjson.parser.deserializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface ExtraTypeProvider extends com.alibaba.fastjson.parser.deserializer.ParseProcess {
    java.lang.reflect.Type getExtraType(java.lang.Object obj, java.lang.String str);
}
