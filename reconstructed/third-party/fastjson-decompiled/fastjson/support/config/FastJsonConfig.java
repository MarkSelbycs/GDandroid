package com.alibaba.fastjson.support.config;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FastJsonConfig {
    private java.util.Map<java.lang.Class<?>, com.alibaba.fastjson.serializer.SerializeFilter> classSerializeFilters;
    private java.lang.String dateFormat;
    private com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess;
    private java.nio.charset.Charset charset = com.alibaba.fastjson.util.IOUtils.UTF8;
    private com.alibaba.fastjson.serializer.SerializeConfig serializeConfig = com.alibaba.fastjson.serializer.SerializeConfig.getGlobalInstance();
    private com.alibaba.fastjson.parser.ParserConfig parserConfig = com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance();
    private com.alibaba.fastjson.serializer.SerializerFeature[] serializerFeatures = {com.alibaba.fastjson.serializer.SerializerFeature.BrowserSecure};
    private com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilters = new com.alibaba.fastjson.serializer.SerializeFilter[0];
    private com.alibaba.fastjson.parser.Feature[] features = new com.alibaba.fastjson.parser.Feature[0];
    private boolean writeContentLength = true;

    public java.nio.charset.Charset getCharset() {
        return this.charset;
    }

    public java.util.Map<java.lang.Class<?>, com.alibaba.fastjson.serializer.SerializeFilter> getClassSerializeFilters() {
        return this.classSerializeFilters;
    }

    public java.lang.String getDateFormat() {
        return this.dateFormat;
    }

    public com.alibaba.fastjson.parser.Feature[] getFeatures() {
        return this.features;
    }

    public com.alibaba.fastjson.parser.deserializer.ParseProcess getParseProcess() {
        return this.parseProcess;
    }

    public com.alibaba.fastjson.parser.ParserConfig getParserConfig() {
        return this.parserConfig;
    }

    public com.alibaba.fastjson.serializer.SerializeConfig getSerializeConfig() {
        return this.serializeConfig;
    }

    public com.alibaba.fastjson.serializer.SerializeFilter[] getSerializeFilters() {
        return this.serializeFilters;
    }

    public com.alibaba.fastjson.serializer.SerializerFeature[] getSerializerFeatures() {
        return this.serializerFeatures;
    }

    public boolean isWriteContentLength() {
        return this.writeContentLength;
    }

    public void setCharset(java.nio.charset.Charset charset) {
        this.charset = charset;
    }

    public void setClassSerializeFilters(java.util.Map<java.lang.Class<?>, com.alibaba.fastjson.serializer.SerializeFilter> map) {
        if (map == null) {
            return;
        }
        for (java.util.Map.Entry<java.lang.Class<?>, com.alibaba.fastjson.serializer.SerializeFilter> entry : map.entrySet()) {
            this.serializeConfig.addFilter(entry.getKey(), entry.getValue());
        }
        this.classSerializeFilters = map;
    }

    public void setDateFormat(java.lang.String str) {
        this.dateFormat = str;
    }

    public void setFeatures(com.alibaba.fastjson.parser.Feature... featureArr) {
        this.features = featureArr;
    }

    public void setParseProcess(com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess) {
        this.parseProcess = parseProcess;
    }

    public void setParserConfig(com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        this.parserConfig = parserConfig;
    }

    public void setSerializeConfig(com.alibaba.fastjson.serializer.SerializeConfig serializeConfig) {
        this.serializeConfig = serializeConfig;
    }

    public void setSerializeFilters(com.alibaba.fastjson.serializer.SerializeFilter... serializeFilterArr) {
        this.serializeFilters = serializeFilterArr;
    }

    public void setSerializerFeatures(com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        this.serializerFeatures = serializerFeatureArr;
    }

    public void setWriteContentLength(boolean z4) {
        this.writeContentLength = z4;
    }
}
