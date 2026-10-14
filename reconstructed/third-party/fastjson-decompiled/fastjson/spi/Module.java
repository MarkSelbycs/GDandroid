package com.alibaba.fastjson.spi;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface Module {
    com.alibaba.fastjson.parser.deserializer.ObjectDeserializer createDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Class cls);

    com.alibaba.fastjson.serializer.ObjectSerializer createSerializer(com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, java.lang.Class cls);
}
