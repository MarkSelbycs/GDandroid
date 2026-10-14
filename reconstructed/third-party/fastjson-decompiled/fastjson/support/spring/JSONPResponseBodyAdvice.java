package com.alibaba.fastjson.support.spring;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@org.springframework.web.bind.annotation.ControllerAdvice
@org.springframework.core.annotation.Order(Integer.MIN_VALUE)
public class JSONPResponseBodyAdvice implements org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice<java.lang.Object> {
    public final org.apache.commons.logging.Log logger = org.apache.commons.logging.LogFactory.getLog(getClass());

    public java.lang.Object beforeBodyWrite(java.lang.Object obj, org.springframework.core.MethodParameter methodParameter, org.springframework.http.MediaType mediaType, java.lang.Class<? extends org.springframework.http.converter.HttpMessageConverter<?>> cls, org.springframework.http.server.ServerHttpRequest serverHttpRequest, org.springframework.http.server.ServerHttpResponse serverHttpResponse) {
        com.alibaba.fastjson.support.spring.annotation.ResponseJSONP responseJSONP = (com.alibaba.fastjson.support.spring.annotation.ResponseJSONP) methodParameter.getMethodAnnotation(com.alibaba.fastjson.support.spring.annotation.ResponseJSONP.class);
        if (responseJSONP == null) {
            responseJSONP = (com.alibaba.fastjson.support.spring.annotation.ResponseJSONP) methodParameter.getContainingClass().getAnnotation(com.alibaba.fastjson.support.spring.annotation.ResponseJSONP.class);
        }
        java.lang.String parameter = ((org.springframework.http.server.ServletServerHttpRequest) serverHttpRequest).getServletRequest().getParameter(responseJSONP.callback());
        if (!com.alibaba.fastjson.util.IOUtils.isValidJsonpQueryParam(parameter)) {
            if (this.logger.isDebugEnabled()) {
                this.logger.debug("Invalid jsonp parameter value:" + parameter);
            }
            parameter = null;
        }
        com.alibaba.fastjson.JSONPObject jSONPObject = new com.alibaba.fastjson.JSONPObject(parameter);
        jSONPObject.addParameter(obj);
        beforeBodyWriteInternal(jSONPObject, mediaType, methodParameter, serverHttpRequest, serverHttpResponse);
        return jSONPObject;
    }

    public void beforeBodyWriteInternal(com.alibaba.fastjson.JSONPObject jSONPObject, org.springframework.http.MediaType mediaType, org.springframework.core.MethodParameter methodParameter, org.springframework.http.server.ServerHttpRequest serverHttpRequest, org.springframework.http.server.ServerHttpResponse serverHttpResponse) {
    }

    public org.springframework.http.MediaType getContentType(org.springframework.http.MediaType mediaType, org.springframework.http.server.ServerHttpRequest serverHttpRequest, org.springframework.http.server.ServerHttpResponse serverHttpResponse) {
        return com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter.APPLICATION_JAVASCRIPT;
    }

    public boolean supports(org.springframework.core.MethodParameter methodParameter, java.lang.Class<? extends org.springframework.http.converter.HttpMessageConverter<?>> cls) {
        return com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter.class.isAssignableFrom(cls) && (methodParameter.getContainingClass().isAnnotationPresent(com.alibaba.fastjson.support.spring.annotation.ResponseJSONP.class) || methodParameter.hasMethodAnnotation(com.alibaba.fastjson.support.spring.annotation.ResponseJSONP.class));
    }
}
