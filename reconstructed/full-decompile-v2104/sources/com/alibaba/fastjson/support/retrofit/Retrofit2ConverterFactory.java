package com.alibaba.fastjson.support.retrofit;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Retrofit2ConverterFactory extends retrofit2.Converter.Factory {
    private com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig;

    @java.lang.Deprecated
    private int featureValues;

    @java.lang.Deprecated
    private com.alibaba.fastjson.parser.Feature[] features;

    @java.lang.Deprecated
    private com.alibaba.fastjson.parser.ParserConfig parserConfig;

    @java.lang.Deprecated
    private com.alibaba.fastjson.serializer.SerializeConfig serializeConfig;

    @java.lang.Deprecated
    private com.alibaba.fastjson.serializer.SerializerFeature[] serializerFeatures;
    private static final c4.t MEDIA_TYPE = c4.t.b("application/json; charset=UTF-8");

    @java.lang.Deprecated
    private static final com.alibaba.fastjson.parser.Feature[] EMPTY_SERIALIZER_FEATURES = new com.alibaba.fastjson.parser.Feature[0];

    public final class RequestBodyConverter<T> implements retrofit2.Converter<T, c4.z> {
        public RequestBodyConverter() {
        }

        /* JADX INFO: renamed from: convert, reason: merged with bridge method [inline-methods] */
        public c4.z m1convert(T t5) throws java.io.IOException {
            try {
                return c4.z.d(com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.MEDIA_TYPE, com.alibaba.fastjson.JSON.toJSONBytesWithFastJsonConfig(com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getCharset(), t5, com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getSerializeConfig(), com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getSerializeFilters(), com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getDateFormat(), com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE, com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getSerializerFeatures()));
            } catch (java.lang.Exception e5) {
                throw new java.io.IOException("Could not write JSON: " + e5.getMessage(), e5);
            }
        }
    }

    public final class ResponseBodyConverter<T> implements retrofit2.Converter<c4.b0, T> {
        private java.lang.reflect.Type type;

        public ResponseBodyConverter(java.lang.reflect.Type type) {
            this.type = type;
        }

        public T convert(c4.b0 b0Var) throws java.io.IOException {
            try {
                try {
                    T t5 = (T) com.alibaba.fastjson.JSON.parseObject(b0Var.e(), com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getCharset(), this.type, com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getParserConfig(), com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getParseProcess(), com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE, com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getFeatures());
                    b0Var.close();
                    return t5;
                } catch (java.lang.Exception e5) {
                    throw new java.io.IOException("JSON parse error: " + e5.getMessage(), e5);
                }
            } catch (java.lang.Throwable th) {
                b0Var.close();
                throw th;
            }
        }
    }

    public Retrofit2ConverterFactory() {
        this.parserConfig = com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance();
        this.featureValues = com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE;
        this.fastJsonConfig = new com.alibaba.fastjson.support.config.FastJsonConfig();
    }

    public static com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory create() {
        return create(new com.alibaba.fastjson.support.config.FastJsonConfig());
    }

    public com.alibaba.fastjson.support.config.FastJsonConfig getFastJsonConfig() {
        return this.fastJsonConfig;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.parser.ParserConfig getParserConfig() {
        return this.fastJsonConfig.getParserConfig();
    }

    @java.lang.Deprecated
    public int getParserFeatureValues() {
        return com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.parser.Feature[] getParserFeatures() {
        return this.fastJsonConfig.getFeatures();
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializeConfig getSerializeConfig() {
        return this.fastJsonConfig.getSerializeConfig();
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializerFeature[] getSerializerFeatures() {
        return this.fastJsonConfig.getSerializerFeatures();
    }

    public retrofit2.Converter<java.lang.Object, c4.z> requestBodyConverter(java.lang.reflect.Type type, java.lang.annotation.Annotation[] annotationArr, java.lang.annotation.Annotation[] annotationArr2, retrofit2.Retrofit retrofit) {
        return new com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.RequestBodyConverter();
    }

    public retrofit2.Converter<c4.b0, java.lang.Object> responseBodyConverter(java.lang.reflect.Type type, java.lang.annotation.Annotation[] annotationArr, retrofit2.Retrofit retrofit) {
        return new com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.ResponseBodyConverter(type);
    }

    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setFastJsonConfig(com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig) {
        this.fastJsonConfig = fastJsonConfig;
        return this;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setParserConfig(com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        this.fastJsonConfig.setParserConfig(parserConfig);
        return this;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setParserFeatureValues(int i5) {
        return this;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setParserFeatures(com.alibaba.fastjson.parser.Feature[] featureArr) {
        this.fastJsonConfig.setFeatures(featureArr);
        return this;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setSerializeConfig(com.alibaba.fastjson.serializer.SerializeConfig serializeConfig) {
        this.fastJsonConfig.setSerializeConfig(serializeConfig);
        return this;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setSerializerFeatures(com.alibaba.fastjson.serializer.SerializerFeature[] serializerFeatureArr) {
        this.fastJsonConfig.setSerializerFeatures(serializerFeatureArr);
        return this;
    }

    public static com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory create(com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig) {
        java.util.Objects.requireNonNull(fastJsonConfig, "fastJsonConfig == null");
        return new com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory(fastJsonConfig);
    }

    public Retrofit2ConverterFactory(com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig) {
        this.parserConfig = com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance();
        this.featureValues = com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE;
        this.fastJsonConfig = fastJsonConfig;
    }
}
