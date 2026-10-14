package com.alibaba.fastjson.support.spring;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@org.springframework.web.bind.annotation.ControllerAdvice
@org.springframework.core.annotation.Order
public class FastJsonViewResponseBodyAdvice implements org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice<java.lang.Object> {
    private com.alibaba.fastjson.support.spring.FastJsonContainer getOrCreateContainer(java.lang.Object obj) {
        return obj instanceof com.alibaba.fastjson.support.spring.FastJsonContainer ? (com.alibaba.fastjson.support.spring.FastJsonContainer) obj : new com.alibaba.fastjson.support.spring.FastJsonContainer(obj);
    }

    /* JADX INFO: renamed from: beforeBodyWrite, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ java.lang.Object m2beforeBodyWrite(java.lang.Object obj, org.springframework.core.MethodParameter methodParameter, org.springframework.http.MediaType mediaType, java.lang.Class cls, org.springframework.http.server.ServerHttpRequest serverHttpRequest, org.springframework.http.server.ServerHttpResponse serverHttpResponse) {
        return beforeBodyWrite(obj, methodParameter, mediaType, (java.lang.Class<? extends org.springframework.http.converter.HttpMessageConverter<?>>) cls, serverHttpRequest, serverHttpResponse);
    }

    public void beforeBodyWriteInternal(com.alibaba.fastjson.support.spring.FastJsonContainer fastJsonContainer, org.springframework.http.MediaType mediaType, org.springframework.core.MethodParameter methodParameter, org.springframework.http.server.ServerHttpRequest serverHttpRequest, org.springframework.http.server.ServerHttpResponse serverHttpResponse) {
        com.alibaba.fastjson.support.spring.annotation.FastJsonView fastJsonView = (com.alibaba.fastjson.support.spring.annotation.FastJsonView) methodParameter.getMethodAnnotation(com.alibaba.fastjson.support.spring.annotation.FastJsonView.class);
        com.alibaba.fastjson.support.spring.annotation.FastJsonFilter[] fastJsonFilterArrInclude = fastJsonView.include();
        com.alibaba.fastjson.support.spring.annotation.FastJsonFilter[] fastJsonFilterArrExclude = fastJsonView.exclude();
        com.alibaba.fastjson.support.spring.PropertyPreFilters propertyPreFilters = new com.alibaba.fastjson.support.spring.PropertyPreFilters();
        for (com.alibaba.fastjson.support.spring.annotation.FastJsonFilter fastJsonFilter : fastJsonFilterArrInclude) {
            propertyPreFilters.addFilter(fastJsonFilter.clazz(), fastJsonFilter.props());
        }
        for (com.alibaba.fastjson.support.spring.annotation.FastJsonFilter fastJsonFilter2 : fastJsonFilterArrExclude) {
            propertyPreFilters.addFilter(fastJsonFilter2.clazz(), new java.lang.String[0]).addExcludes(fastJsonFilter2.props());
        }
        fastJsonContainer.setFilters(propertyPreFilters);
    }

    public boolean supports(org.springframework.core.MethodParameter methodParameter, java.lang.Class<? extends org.springframework.http.converter.HttpMessageConverter<?>> cls) {
        return com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter.class.isAssignableFrom(cls) && methodParameter.hasMethodAnnotation(com.alibaba.fastjson.support.spring.annotation.FastJsonView.class);
    }

    public com.alibaba.fastjson.support.spring.FastJsonContainer beforeBodyWrite(java.lang.Object obj, org.springframework.core.MethodParameter methodParameter, org.springframework.http.MediaType mediaType, java.lang.Class<? extends org.springframework.http.converter.HttpMessageConverter<?>> cls, org.springframework.http.server.ServerHttpRequest serverHttpRequest, org.springframework.http.server.ServerHttpResponse serverHttpResponse) {
        com.alibaba.fastjson.support.spring.FastJsonContainer orCreateContainer = getOrCreateContainer(obj);
        beforeBodyWriteInternal(orCreateContainer, mediaType, methodParameter, serverHttpRequest, serverHttpResponse);
        return orCreateContainer;
    }
}
