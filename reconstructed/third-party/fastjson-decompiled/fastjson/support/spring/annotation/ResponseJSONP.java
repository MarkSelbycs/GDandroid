package com.alibaba.fastjson.support.spring.annotation;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.annotation.Target({java.lang.annotation.ElementType.TYPE, java.lang.annotation.ElementType.METHOD})
@java.lang.annotation.Documented
@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
@org.springframework.web.bind.annotation.ResponseBody
public @interface ResponseJSONP {
    java.lang.String callback() default "callback";
}
