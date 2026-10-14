package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PascalNameFilter implements com.alibaba.fastjson.serializer.NameFilter {
    @Override // com.alibaba.fastjson.serializer.NameFilter
    public java.lang.String process(java.lang.Object obj, java.lang.String str, java.lang.Object obj2) {
        if (str == null || str.length() == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        charArray[0] = java.lang.Character.toUpperCase(charArray[0]);
        return new java.lang.String(charArray);
    }
}
