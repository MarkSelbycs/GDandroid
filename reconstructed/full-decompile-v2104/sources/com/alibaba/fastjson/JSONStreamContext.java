package com.alibaba.fastjson;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
class JSONStreamContext {
    public static final int ArrayValue = 1005;
    public static final int PropertyKey = 1002;
    public static final int PropertyValue = 1003;
    public static final int StartArray = 1004;
    public static final int StartObject = 1001;
    public final com.alibaba.fastjson.JSONStreamContext parent;
    public int state;

    public JSONStreamContext(com.alibaba.fastjson.JSONStreamContext jSONStreamContext, int i5) {
        this.parent = jSONStreamContext;
        this.state = i5;
    }
}
