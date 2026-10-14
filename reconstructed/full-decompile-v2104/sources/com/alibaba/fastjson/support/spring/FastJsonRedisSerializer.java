package com.alibaba.fastjson.support.spring;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FastJsonRedisSerializer<T> implements org.springframework.data.redis.serializer.RedisSerializer<T> {
    private com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig = new com.alibaba.fastjson.support.config.FastJsonConfig();
    private java.lang.Class<T> type;

    public FastJsonRedisSerializer(java.lang.Class<T> cls) {
        this.type = cls;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.springframework.data.redis.serializer.SerializationException */
    public T deserialize(byte[] bArr) throws org.springframework.data.redis.serializer.SerializationException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            return (T) com.alibaba.fastjson.JSON.parseObject(bArr, this.fastJsonConfig.getCharset(), this.type, this.fastJsonConfig.getParserConfig(), this.fastJsonConfig.getParseProcess(), com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE, this.fastJsonConfig.getFeatures());
        } catch (java.lang.Exception e5) {
            throw new org.springframework.data.redis.serializer.SerializationException("Could not deserialize: " + e5.getMessage(), e5);
        }
    }

    public com.alibaba.fastjson.support.config.FastJsonConfig getFastJsonConfig() {
        return this.fastJsonConfig;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.springframework.data.redis.serializer.SerializationException */
    public byte[] serialize(T t5) throws org.springframework.data.redis.serializer.SerializationException {
        if (t5 == null) {
            return new byte[0];
        }
        try {
            return com.alibaba.fastjson.JSON.toJSONBytesWithFastJsonConfig(this.fastJsonConfig.getCharset(), t5, this.fastJsonConfig.getSerializeConfig(), this.fastJsonConfig.getSerializeFilters(), this.fastJsonConfig.getDateFormat(), com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE, this.fastJsonConfig.getSerializerFeatures());
        } catch (java.lang.Exception e5) {
            throw new org.springframework.data.redis.serializer.SerializationException("Could not serialize: " + e5.getMessage(), e5);
        }
    }

    public void setFastJsonConfig(com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig) {
        this.fastJsonConfig = fastJsonConfig;
    }
}
