package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface PropertyPreFilter extends com.alibaba.fastjson.serializer.SerializeFilter {
    boolean apply(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.String str);
}
