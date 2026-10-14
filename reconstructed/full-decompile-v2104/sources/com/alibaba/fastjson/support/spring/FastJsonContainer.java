package com.alibaba.fastjson.support.spring;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FastJsonContainer {
    private com.alibaba.fastjson.support.spring.PropertyPreFilters filters;
    private java.lang.Object value;

    public FastJsonContainer(java.lang.Object obj) {
        this.value = obj;
    }

    public com.alibaba.fastjson.support.spring.PropertyPreFilters getFilters() {
        return this.filters;
    }

    public java.lang.Object getValue() {
        return this.value;
    }

    public void setFilters(com.alibaba.fastjson.support.spring.PropertyPreFilters propertyPreFilters) {
        this.filters = propertyPreFilters;
    }

    public void setValue(java.lang.Object obj) {
        this.value = obj;
    }
}
