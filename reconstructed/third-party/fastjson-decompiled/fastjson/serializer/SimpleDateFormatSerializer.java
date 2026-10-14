package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SimpleDateFormatSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    private final java.lang.String pattern;

    public SimpleDateFormatSerializer(java.lang.String str) {
        this.pattern = str;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        if (obj == null) {
            jSONSerializer.out.writeNull();
            return;
        }
        java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(this.pattern, jSONSerializer.locale);
        simpleDateFormat.setTimeZone(jSONSerializer.timeZone);
        jSONSerializer.write(simpleDateFormat.format((java.util.Date) obj));
    }
}
