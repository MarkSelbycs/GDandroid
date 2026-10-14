package com.alibaba.fastjson.support.spring;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FastjsonSockJsMessageCodec extends org.springframework.web.socket.sockjs.frame.AbstractSockJsMessageCodec {
    public char[] applyJsonQuoting(java.lang.String str) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter();
        try {
            new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(str);
            return serializeWriter.toCharArrayForSpringWebSocket();
        } finally {
            serializeWriter.close();
        }
    }

    public java.lang.String[] decode(java.lang.String str) throws java.io.IOException {
        return (java.lang.String[]) com.alibaba.fastjson.JSON.parseObject(str, java.lang.String[].class);
    }

    public java.lang.String[] decodeInputStream(java.io.InputStream inputStream) throws java.io.IOException {
        return (java.lang.String[]) com.alibaba.fastjson.JSON.parseObject(inputStream, java.lang.String[].class, new com.alibaba.fastjson.parser.Feature[0]);
    }
}
