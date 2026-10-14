package com.alibaba.fastjson.support.spring.annotation;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.annotation.Target({java.lang.annotation.ElementType.ANNOTATION_TYPE})
@java.lang.annotation.Documented
@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
public @interface FastJsonFilter {
    java.lang.Class<?> clazz();

    java.lang.String[] props();
}
