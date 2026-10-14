package com.alibaba.fastjson.support.spring.messaging;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class MappingFastJsonMessageConverter extends org.springframework.messaging.converter.AbstractMessageConverter {
    private com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig;

    public MappingFastJsonMessageConverter() {
        super(new org.springframework.util.MimeType("application", "json", java.nio.charset.Charset.forName("UTF-8")));
        this.fastJsonConfig = new com.alibaba.fastjson.support.config.FastJsonConfig();
    }

    public boolean canConvertFrom(org.springframework.messaging.Message<?> message, java.lang.Class<?> cls) {
        return supports(cls);
    }

    public boolean canConvertTo(java.lang.Object obj, org.springframework.messaging.MessageHeaders messageHeaders) {
        return supports(obj.getClass());
    }

    public java.lang.Object convertFromInternal(org.springframework.messaging.Message<?> message, java.lang.Class<?> cls, java.lang.Object obj) {
        java.lang.Object payload = message.getPayload();
        if (payload instanceof byte[]) {
            return com.alibaba.fastjson.JSON.parseObject((byte[]) payload, this.fastJsonConfig.getCharset(), cls, this.fastJsonConfig.getParserConfig(), this.fastJsonConfig.getParseProcess(), com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE, this.fastJsonConfig.getFeatures());
        }
        if (payload instanceof java.lang.String) {
            return com.alibaba.fastjson.JSON.parseObject((java.lang.String) payload, cls, this.fastJsonConfig.getParserConfig(), this.fastJsonConfig.getParseProcess(), com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE, this.fastJsonConfig.getFeatures());
        }
        return null;
    }

    public java.lang.Object convertToInternal(java.lang.Object obj, org.springframework.messaging.MessageHeaders messageHeaders, java.lang.Object obj2) {
        if (byte[].class != getSerializedPayloadClass()) {
            return ((obj instanceof java.lang.String) && com.alibaba.fastjson.JSON.isValid((java.lang.String) obj)) ? obj : com.alibaba.fastjson.JSON.toJSONString(obj, this.fastJsonConfig.getSerializeConfig(), this.fastJsonConfig.getSerializeFilters(), this.fastJsonConfig.getDateFormat(), com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE, this.fastJsonConfig.getSerializerFeatures());
        }
        if (obj instanceof java.lang.String) {
            java.lang.String str = (java.lang.String) obj;
            if (com.alibaba.fastjson.JSON.isValid(str)) {
                return str.getBytes(this.fastJsonConfig.getCharset());
            }
        }
        return com.alibaba.fastjson.JSON.toJSONBytesWithFastJsonConfig(this.fastJsonConfig.getCharset(), obj, this.fastJsonConfig.getSerializeConfig(), this.fastJsonConfig.getSerializeFilters(), this.fastJsonConfig.getDateFormat(), com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE, this.fastJsonConfig.getSerializerFeatures());
    }

    public com.alibaba.fastjson.support.config.FastJsonConfig getFastJsonConfig() {
        return this.fastJsonConfig;
    }

    public void setFastJsonConfig(com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig) {
        this.fastJsonConfig = fastJsonConfig;
    }

    public boolean supports(java.lang.Class<?> cls) {
        return true;
    }
}
