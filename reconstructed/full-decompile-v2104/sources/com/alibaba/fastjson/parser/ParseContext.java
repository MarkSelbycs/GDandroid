package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ParseContext {
    public final java.lang.Object fieldName;
    public final int level;
    public java.lang.Object object;
    public final com.alibaba.fastjson.parser.ParseContext parent;
    private transient java.lang.String path;
    public java.lang.reflect.Type type;

    public ParseContext(com.alibaba.fastjson.parser.ParseContext parseContext, java.lang.Object obj, java.lang.Object obj2) {
        this.parent = parseContext;
        this.object = obj;
        this.fieldName = obj2;
        this.level = parseContext == null ? 0 : parseContext.level + 1;
    }

    public java.lang.String toString() {
        if (this.path == null) {
            if (this.parent == null) {
                this.path = "$";
            } else if (this.fieldName instanceof java.lang.Integer) {
                this.path = this.parent.toString() + "[" + this.fieldName + "]";
            } else {
                this.path = this.parent.toString() + "." + this.fieldName;
            }
        }
        return this.path;
    }
}
