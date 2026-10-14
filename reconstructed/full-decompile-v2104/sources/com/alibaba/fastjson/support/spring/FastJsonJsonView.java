package com.alibaba.fastjson.support.spring;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FastJsonJsonView extends org.springframework.web.servlet.view.AbstractView {
    private static final java.util.regex.Pattern CALLBACK_PARAM_PATTERN = java.util.regex.Pattern.compile("[0-9A-Za-z_\\.]*");
    public static final java.lang.String DEFAULT_CONTENT_TYPE = "application/json;charset=UTF-8";
    public static final java.lang.String DEFAULT_JSONP_CONTENT_TYPE = "application/javascript";

    @java.lang.Deprecated
    public java.lang.String dateFormat;
    private java.util.Set<java.lang.String> renderedAttributes;

    @java.lang.Deprecated
    public java.nio.charset.Charset charset = java.nio.charset.Charset.forName("UTF-8");

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializerFeature[] features = new com.alibaba.fastjson.serializer.SerializerFeature[0];

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializeFilter[] filters = new com.alibaba.fastjson.serializer.SerializeFilter[0];
    private boolean disableCaching = true;
    private boolean updateContentLength = true;
    private boolean extractValueFromSingleKeyModel = false;
    private com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig = new com.alibaba.fastjson.support.config.FastJsonConfig();
    private java.lang.String[] jsonpParameterNames = {"jsonp", "callback"};

    public FastJsonJsonView() {
        setContentType(DEFAULT_CONTENT_TYPE);
        setExposePathVariables(false);
    }

    private java.lang.String getJsonpParameterValue(javax.servlet.http.HttpServletRequest httpServletRequest) {
        java.lang.String[] strArr = this.jsonpParameterNames;
        if (strArr == null) {
            return null;
        }
        for (java.lang.String str : strArr) {
            java.lang.String parameter = httpServletRequest.getParameter(str);
            if (com.alibaba.fastjson.util.IOUtils.isValidJsonpQueryParam(parameter)) {
                return parameter;
            }
            if (this.logger.isDebugEnabled()) {
                this.logger.debug("Ignoring invalid jsonp parameter value: " + parameter);
            }
        }
        return null;
    }

    public java.lang.Object filterModel(java.util.Map<java.lang.String, java.lang.Object> map) {
        java.util.HashMap map2 = new java.util.HashMap(map.size());
        java.util.Set<java.lang.String> setKeySet = !org.springframework.util.CollectionUtils.isEmpty(this.renderedAttributes) ? this.renderedAttributes : map.keySet();
        for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : map.entrySet()) {
            if (!(entry.getValue() instanceof org.springframework.validation.BindingResult) && setKeySet.contains(entry.getKey())) {
                map2.put(entry.getKey(), entry.getValue());
            }
        }
        if (this.extractValueFromSingleKeyModel && map2.size() == 1) {
            java.util.Iterator it = map2.entrySet().iterator();
            if (it.hasNext()) {
                return ((java.util.Map.Entry) it.next()).getValue();
            }
        }
        return map2;
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

    public boolean isExtractValueFromSingleKeyModel() {
        return this.extractValueFromSingleKeyModel;
    }

    public void prepareResponse(javax.servlet.http.HttpServletRequest httpServletRequest, javax.servlet.http.HttpServletResponse httpServletResponse) {
        setResponseContentType(httpServletRequest, httpServletResponse);
        httpServletResponse.setCharacterEncoding(this.fastJsonConfig.getCharset().name());
        if (this.disableCaching) {
            httpServletResponse.addHeader("Pragma", "no-cache");
            httpServletResponse.addHeader("Cache-Control", "no-cache, no-store, max-age=0");
            httpServletResponse.addDateHeader("Expires", 1L);
        }
    }

    public void renderMergedOutputModel(java.util.Map<java.lang.String, java.lang.Object> map, javax.servlet.http.HttpServletRequest httpServletRequest, javax.servlet.http.HttpServletResponse httpServletResponse) throws java.lang.Exception {
        java.lang.Object obj;
        java.lang.Object objFilterModel = filterModel(map);
        java.lang.String jsonpParameterValue = getJsonpParameterValue(httpServletRequest);
        if (jsonpParameterValue != null) {
            com.alibaba.fastjson.JSONPObject jSONPObject = new com.alibaba.fastjson.JSONPObject(jsonpParameterValue);
            jSONPObject.addParameter(objFilterModel);
            obj = jSONPObject;
        } else {
            obj = objFilterModel;
        }
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        int iWriteJSONStringWithFastJsonConfig = com.alibaba.fastjson.JSON.writeJSONStringWithFastJsonConfig(byteArrayOutputStream, this.fastJsonConfig.getCharset(), obj, this.fastJsonConfig.getSerializeConfig(), this.fastJsonConfig.getSerializeFilters(), this.fastJsonConfig.getDateFormat(), com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE, this.fastJsonConfig.getSerializerFeatures());
        if (this.updateContentLength) {
            httpServletResponse.setContentLength(iWriteJSONStringWithFastJsonConfig);
        }
        javax.servlet.ServletOutputStream outputStream = httpServletResponse.getOutputStream();
        byteArrayOutputStream.writeTo(outputStream);
        byteArrayOutputStream.close();
        outputStream.flush();
    }

    @java.lang.Deprecated
    public void setCharset(java.nio.charset.Charset charset) {
        this.fastJsonConfig.setCharset(charset);
    }

    @java.lang.Deprecated
    public void setDateFormat(java.lang.String str) {
        this.fastJsonConfig.setDateFormat(str);
    }

    public void setDisableCaching(boolean z4) {
        this.disableCaching = z4;
    }

    public void setExtractValueFromSingleKeyModel(boolean z4) {
        this.extractValueFromSingleKeyModel = z4;
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

    public void setJsonpParameterNames(java.util.Set<java.lang.String> set) {
        org.springframework.util.Assert.notEmpty(set, "jsonpParameterName cannot be empty");
        this.jsonpParameterNames = (java.lang.String[]) set.toArray(new java.lang.String[set.size()]);
    }

    public void setRenderedAttributes(java.util.Set<java.lang.String> set) {
        this.renderedAttributes = set;
    }

    public void setResponseContentType(javax.servlet.http.HttpServletRequest httpServletRequest, javax.servlet.http.HttpServletResponse httpServletResponse) {
        if (getJsonpParameterValue(httpServletRequest) != null) {
            httpServletResponse.setContentType(DEFAULT_JSONP_CONTENT_TYPE);
        } else {
            super.setResponseContentType(httpServletRequest, httpServletResponse);
        }
    }

    @java.lang.Deprecated
    public void setSerializerFeature(com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        this.fastJsonConfig.setSerializerFeatures(serializerFeatureArr);
    }

    public void setUpdateContentLength(boolean z4) {
        this.updateContentLength = z4;
    }
}
