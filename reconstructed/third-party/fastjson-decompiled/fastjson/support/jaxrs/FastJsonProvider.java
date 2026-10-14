package com.alibaba.fastjson.support.jaxrs;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@javax.ws.rs.Produces({"*/*"})
@javax.ws.rs.ext.Provider
@javax.ws.rs.Consumes({"*/*"})
public class FastJsonProvider implements javax.ws.rs.ext.MessageBodyReader<java.lang.Object>, javax.ws.rs.ext.MessageBodyWriter<java.lang.Object> {
    public static final java.lang.Class<?>[] DEFAULT_UNREADABLES = {java.io.InputStream.class, java.io.Reader.class};
    public static final java.lang.Class<?>[] DEFAULT_UNWRITABLES = {java.io.InputStream.class, java.io.OutputStream.class, java.io.Writer.class, javax.ws.rs.core.StreamingOutput.class, javax.ws.rs.core.Response.class};

    @java.lang.Deprecated
    public java.nio.charset.Charset charset;
    private java.lang.Class<?>[] clazzes;

    @java.lang.Deprecated
    public java.lang.String dateFormat;
    private com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig;

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializerFeature[] features;

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializeFilter[] filters;
    private boolean pretty;

    @javax.ws.rs.core.Context
    public javax.ws.rs.ext.Providers providers;

    public FastJsonProvider() {
        this.charset = java.nio.charset.Charset.forName("UTF-8");
        this.features = new com.alibaba.fastjson.serializer.SerializerFeature[0];
        this.filters = new com.alibaba.fastjson.serializer.SerializeFilter[0];
        this.fastJsonConfig = new com.alibaba.fastjson.support.config.FastJsonConfig();
        this.clazzes = null;
    }

    @java.lang.Deprecated
    public java.nio.charset.Charset getCharset() {
        return this.fastJsonConfig.getCharset();
    }

    @java.lang.Deprecated
    public java.lang.String getDateFormat() {
        return this.fastJsonConfig.getDateFormat();
    }

    public com.alibaba.fastjson.support.config.FastJsonConfig getFastJsonConfig() {
        return this.fastJsonConfig;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializerFeature[] getFeatures() {
        return this.fastJsonConfig.getSerializerFeatures();
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializeFilter[] getFilters() {
        return this.fastJsonConfig.getSerializeFilters();
    }

    public long getSize(java.lang.Object obj, java.lang.Class<?> cls, java.lang.reflect.Type type, java.lang.annotation.Annotation[] annotationArr, javax.ws.rs.core.MediaType mediaType) {
        return -1L;
    }

    public boolean hasMatchingMediaType(javax.ws.rs.core.MediaType mediaType) {
        if (mediaType == null) {
            return true;
        }
        java.lang.String subtype = mediaType.getSubtype();
        return "json".equalsIgnoreCase(subtype) || subtype.endsWith("+json") || "javascript".equals(subtype) || "x-javascript".equals(subtype) || "x-json".equals(subtype) || "x-www-form-urlencoded".equalsIgnoreCase(subtype) || subtype.endsWith("x-www-form-urlencoded");
    }

    public boolean isAssignableFrom(java.lang.Class<?> cls, java.lang.Class<?>[] clsArr) {
        if (cls == null) {
            return false;
        }
        for (java.lang.Class<?> cls2 : clsArr) {
            if (cls2.isAssignableFrom(cls)) {
                return false;
            }
        }
        return true;
    }

    public boolean isReadable(java.lang.Class<?> cls, java.lang.reflect.Type type, java.lang.annotation.Annotation[] annotationArr, javax.ws.rs.core.MediaType mediaType) {
        if (hasMatchingMediaType(mediaType) && isAssignableFrom(cls, DEFAULT_UNREADABLES)) {
            return isValidType(cls, annotationArr);
        }
        return false;
    }

    public boolean isValidType(java.lang.Class<?> cls, java.lang.annotation.Annotation[] annotationArr) {
        if (cls == null) {
            return false;
        }
        java.lang.Class<?>[] clsArr = this.clazzes;
        if (clsArr == null) {
            return true;
        }
        for (java.lang.Class<?> cls2 : clsArr) {
            if (cls2 == cls) {
                return true;
            }
        }
        return false;
    }

    public boolean isWriteable(java.lang.Class<?> cls, java.lang.reflect.Type type, java.lang.annotation.Annotation[] annotationArr, javax.ws.rs.core.MediaType mediaType) {
        if (hasMatchingMediaType(mediaType) && isAssignableFrom(cls, DEFAULT_UNWRITABLES)) {
            return isValidType(cls, annotationArr);
        }
        return false;
    }

    public com.alibaba.fastjson.support.config.FastJsonConfig locateConfigProvider(java.lang.Class<?> cls, javax.ws.rs.core.MediaType mediaType) {
        javax.ws.rs.ext.Providers providers = this.providers;
        if (providers != null) {
            javax.ws.rs.ext.ContextResolver contextResolver = providers.getContextResolver(com.alibaba.fastjson.support.config.FastJsonConfig.class, mediaType);
            if (contextResolver == null) {
                contextResolver = this.providers.getContextResolver(com.alibaba.fastjson.support.config.FastJsonConfig.class, (javax.ws.rs.core.MediaType) null);
            }
            if (contextResolver != null) {
                return (com.alibaba.fastjson.support.config.FastJsonConfig) contextResolver.getContext(cls);
            }
        }
        return this.fastJsonConfig;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.ws.rs.WebApplicationException */
    public java.lang.Object readFrom(java.lang.Class<java.lang.Object> cls, java.lang.reflect.Type type, java.lang.annotation.Annotation[] annotationArr, javax.ws.rs.core.MediaType mediaType, javax.ws.rs.core.MultivaluedMap<java.lang.String, java.lang.String> multivaluedMap, java.io.InputStream inputStream) throws javax.ws.rs.WebApplicationException, java.io.IOException {
        try {
            com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfigLocateConfigProvider = locateConfigProvider(cls, mediaType);
            return com.alibaba.fastjson.JSON.parseObject(inputStream, fastJsonConfigLocateConfigProvider.getCharset(), type, fastJsonConfigLocateConfigProvider.getParserConfig(), fastJsonConfigLocateConfigProvider.getParseProcess(), com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE, fastJsonConfigLocateConfigProvider.getFeatures());
        } catch (com.alibaba.fastjson.JSONException e5) {
            throw new javax.ws.rs.WebApplicationException(e5);
        }
    }

    @java.lang.Deprecated
    public void setCharset(java.nio.charset.Charset charset) {
        this.fastJsonConfig.setCharset(charset);
    }

    @java.lang.Deprecated
    public void setDateFormat(java.lang.String str) {
        this.fastJsonConfig.setDateFormat(str);
    }

    public void setFastJsonConfig(com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig) {
        this.fastJsonConfig = fastJsonConfig;
    }

    @java.lang.Deprecated
    public void setFeatures(com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        this.fastJsonConfig.setSerializerFeatures(serializerFeatureArr);
    }

    @java.lang.Deprecated
    public void setFilters(com.alibaba.fastjson.serializer.SerializeFilter... serializeFilterArr) {
        this.fastJsonConfig.setSerializeFilters(serializeFilterArr);
    }

    public com.alibaba.fastjson.support.jaxrs.FastJsonProvider setPretty(boolean z4) {
        this.pretty = z4;
        return this;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.ws.rs.WebApplicationException */
    public void writeTo(java.lang.Object obj, java.lang.Class<?> cls, java.lang.reflect.Type type, java.lang.annotation.Annotation[] annotationArr, javax.ws.rs.core.MediaType mediaType, javax.ws.rs.core.MultivaluedMap<java.lang.String, java.lang.Object> multivaluedMap, java.io.OutputStream outputStream) throws javax.ws.rs.WebApplicationException, java.io.IOException {
        com.alibaba.fastjson.serializer.SerializerFeature[] serializerFeatureArr;
        com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfigLocateConfigProvider = locateConfigProvider(cls, mediaType);
        com.alibaba.fastjson.serializer.SerializerFeature[] serializerFeatures = fastJsonConfigLocateConfigProvider.getSerializerFeatures();
        if (this.pretty) {
            if (serializerFeatures == null) {
                serializerFeatureArr = new com.alibaba.fastjson.serializer.SerializerFeature[]{com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat};
            } else {
                java.util.ArrayList arrayList = new java.util.ArrayList(java.util.Arrays.asList(serializerFeatures));
                arrayList.add(com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat);
                serializerFeatureArr = (com.alibaba.fastjson.serializer.SerializerFeature[]) arrayList.toArray(serializerFeatures);
            }
            fastJsonConfigLocateConfigProvider.setSerializerFeatures(serializerFeatureArr);
        }
        try {
            com.alibaba.fastjson.JSON.writeJSONStringWithFastJsonConfig(outputStream, fastJsonConfigLocateConfigProvider.getCharset(), obj, fastJsonConfigLocateConfigProvider.getSerializeConfig(), fastJsonConfigLocateConfigProvider.getSerializeFilters(), fastJsonConfigLocateConfigProvider.getDateFormat(), com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE, fastJsonConfigLocateConfigProvider.getSerializerFeatures());
            outputStream.flush();
        } catch (com.alibaba.fastjson.JSONException e5) {
            throw new javax.ws.rs.WebApplicationException(e5);
        }
    }

    public FastJsonProvider(java.lang.Class<?>[] clsArr) {
        this.charset = java.nio.charset.Charset.forName("UTF-8");
        this.features = new com.alibaba.fastjson.serializer.SerializerFeature[0];
        this.filters = new com.alibaba.fastjson.serializer.SerializeFilter[0];
        this.fastJsonConfig = new com.alibaba.fastjson.support.config.FastJsonConfig();
        this.clazzes = clsArr;
    }

    @java.lang.Deprecated
    public FastJsonProvider(java.lang.String str) {
        this.charset = java.nio.charset.Charset.forName("UTF-8");
        this.features = new com.alibaba.fastjson.serializer.SerializerFeature[0];
        this.filters = new com.alibaba.fastjson.serializer.SerializeFilter[0];
        com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig = new com.alibaba.fastjson.support.config.FastJsonConfig();
        this.fastJsonConfig = fastJsonConfig;
        this.clazzes = null;
        fastJsonConfig.setCharset(java.nio.charset.Charset.forName(str));
    }
}
