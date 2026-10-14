package com.alibaba.fastjson.support.spring;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@org.springframework.web.bind.annotation.ControllerAdvice
@java.lang.Deprecated
@org.springframework.core.annotation.Order(Integer.MIN_VALUE)
public class FastJsonpResponseBodyAdvice implements org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice<java.lang.Object> {
    private static final java.util.regex.Pattern CALLBACK_PARAM_PATTERN = java.util.regex.Pattern.compile("[0-9A-Za-z_\\.]*");
    public static final java.lang.String[] DEFAULT_JSONP_QUERY_PARAM_NAMES = {"callback", "jsonp"};
    private final java.lang.String[] jsonpQueryParamNames;

    public FastJsonpResponseBodyAdvice() {
        this.jsonpQueryParamNames = DEFAULT_JSONP_QUERY_PARAM_NAMES;
    }

    public java.lang.Object beforeBodyWrite(java.lang.Object obj, org.springframework.core.MethodParameter methodParameter, org.springframework.http.MediaType mediaType, java.lang.Class<? extends org.springframework.http.converter.HttpMessageConverter<?>> cls, org.springframework.http.server.ServerHttpRequest serverHttpRequest, org.springframework.http.server.ServerHttpResponse serverHttpResponse) {
        com.alibaba.fastjson.support.spring.MappingFastJsonValue orCreateContainer = getOrCreateContainer(obj);
        beforeBodyWriteInternal(orCreateContainer, mediaType, methodParameter, serverHttpRequest, serverHttpResponse);
        return orCreateContainer;
    }

    public void beforeBodyWriteInternal(com.alibaba.fastjson.support.spring.MappingFastJsonValue mappingFastJsonValue, org.springframework.http.MediaType mediaType, org.springframework.core.MethodParameter methodParameter, org.springframework.http.server.ServerHttpRequest serverHttpRequest, org.springframework.http.server.ServerHttpResponse serverHttpResponse) {
        javax.servlet.http.HttpServletRequest servletRequest = ((org.springframework.http.server.ServletServerHttpRequest) serverHttpRequest).getServletRequest();
        for (java.lang.String str : this.jsonpQueryParamNames) {
            java.lang.String parameter = servletRequest.getParameter(str);
            if (parameter != null && isValidJsonpQueryParam(parameter)) {
                mappingFastJsonValue.setJsonpFunction(parameter);
                return;
            }
        }
    }

    public org.springframework.http.MediaType getContentType(org.springframework.http.MediaType mediaType, org.springframework.http.server.ServerHttpRequest serverHttpRequest, org.springframework.http.server.ServerHttpResponse serverHttpResponse) {
        return new org.springframework.http.MediaType("application", "javascript");
    }

    public com.alibaba.fastjson.support.spring.MappingFastJsonValue getOrCreateContainer(java.lang.Object obj) {
        return obj instanceof com.alibaba.fastjson.support.spring.MappingFastJsonValue ? (com.alibaba.fastjson.support.spring.MappingFastJsonValue) obj : new com.alibaba.fastjson.support.spring.MappingFastJsonValue(obj);
    }

    public boolean isValidJsonpQueryParam(java.lang.String str) {
        return CALLBACK_PARAM_PATTERN.matcher(str).matches();
    }

    public boolean supports(org.springframework.core.MethodParameter methodParameter, java.lang.Class<? extends org.springframework.http.converter.HttpMessageConverter<?>> cls) {
        return com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter.class.isAssignableFrom(cls);
    }

    public FastJsonpResponseBodyAdvice(java.lang.String... strArr) {
        org.springframework.util.Assert.isTrue(!org.springframework.util.ObjectUtils.isEmpty(strArr), "At least one query param name is required");
        this.jsonpQueryParamNames = strArr;
    }
}
